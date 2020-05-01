.class public Lcom/android/server/OemSceneModeController;
.super Ljava/lang/Object;
.source "OemSceneModeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemSceneModeController$BreathModeContentObserver;,
        Lcom/android/server/OemSceneModeController$GameModeBatterySaverContentObserver;,
        Lcom/android/server/OemSceneModeController$EsportStatusContentObserver;,
        Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;,
        Lcom/android/server/OemSceneModeController$GameModeManualContentObserver;,
        Lcom/android/server/OemSceneModeController$ReadModeAutoContentObserver;,
        Lcom/android/server/OemSceneModeController$ReadModeManualContentObserver;
    }
.end annotation


# static fields
.field private static final ACTION_DISABLE_GAME_MODE:Ljava/lang/String; = "com.oem.intent.action.DISABLE_GAME_MODE"

.field private static final ACTION_SHOW_DIALOG:Ljava/lang/String; = "com.oem.intent.action.SHOW_DIALOG"

.field private static final ACTION_SWITCH_ESPORT:Ljava/lang/String; = "com.oem.intent.action.SWITCH_ESPORT"

.field private static DBG:Z = false

.field private static final GAME_MODE_BATTERY_SAVER:Ljava/lang/String; = "game_mode_battery_saver"

.field private static final GAME_MODE_EVER_ENABLED_KEY:Ljava/lang/String; = "persist.sys.oem.gamemode_dirty"

.field private static final GAME_MODE_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "scene_modes_game"

.field private static final GAMING_MODE_NORMAL_SHOW_DELAYED:I = 0x1f4

.field private static final GAMING_MODE_SILENT_SHOW_DELAYED:I = 0xea60

.field private static final HAS_HW_KEYS:Z

.field public static final MODE_GAMEING_NO_DISTURB:I = 0x1

.field public static final MODE_READING:I = 0x0

.field private static final MSG_BREATH_MODE_CHANGED:I = 0x8

.field private static final MSG_CLEAR_GAME_MODE_SILENTLY_SHOW_FLAG:I = 0xc

.field private static final MSG_GAME_AUTO_CHANGED:I = 0x3

.field private static final MSG_GAME_BATTERY_SAVER_CHANGED:I = 0xb

.field private static final MSG_GAME_MANUAL_CHANGED:I = 0x2

.field private static final MSG_GAME_MODE_ON_TACKER_APPID:Ljava/lang/String; = "RBS8PPYT2W"

.field private static final MSG_GAME_MODE_TACKER_ADDING:I = 0xd

.field private static final MSG_READ_AUTO_CHANGED:I = 0x1

.field private static final MSG_READ_MANUAL_CHANGED:I = 0x0

.field private static final MSG_START_MONITOR:I = 0x4

.field private static final MSG_START_MONITOR_PASSIVE:I = 0x7

.field private static final MSG_STOP_MONITOR_PASSIVE:I = 0x6

.field private static final NOTIFICATION_GAME_MODE_ENABLED:I = 0x15be

.field private static final NOTIFY_TAG:Ljava/lang/String; = "SceneModeController"

.field private static final PROP_BRICK_MODE_DISABLE_NFC:Ljava/lang/String; = "persist.sys.brickmode.disablenfc"

.field private static final PROP_GAME_MODE_SCALE_DEUBG_KEY:Ljava/lang/String; = "persist.sys.gamemodescale.debug"

.field public static final SWITCHER_PASSIVE:I = 0x1

.field public static final SWITCHER_PROACTIVE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OemSceneModeController"

.field public static final TOAST_WINDOW_TIMEOUT:I = 0x7d0

.field private static final URI_BREATH_MODE:Landroid/net/Uri;

.field private static final URI_ESPORT_STATUS:Landroid/net/Uri;

.field private static final URI_GAME_AUTO:Landroid/net/Uri;

.field private static final URI_GAME_MANUAL:Landroid/net/Uri;

.field private static final URI_GAME_MODE_BATTERY_SAVER:Landroid/net/Uri;

.field private static final URI_READ_AUTO:Landroid/net/Uri;

.field private static final URI_READ_MANUAL:Landroid/net/Uri;

.field private static final VALUE_CLEAN:I = 0x1

.field private static final VALUE_CLEAN_EXEC:I = 0x2

.field private static final VALUE_CLOSE_POWERSAVE:Ljava/lang/String; = "0_0"

.field private static final VALUE_EXEC:I = 0x0

.field private static final VALUE_FORCE_OFF:Ljava/lang/String; = "force-off"

.field private static final VALUE_FORCE_ON:Ljava/lang/String; = "force-on"

.field private static final VALUE_OFF:Ljava/lang/String; = "0"

.field private static final VALUE_OFF_INT:I = 0x0

.field private static final VALUE_ON:Ljava/lang/String; = "1"

.field private static final VALUE_ON_INT:I = 0x1

.field private static sOemSceneModeController:Lcom/android/server/OemSceneModeController;


# instance fields
.field private mAm:Landroid/app/ActivityManager;

.field private mBreathModeObserver:Lcom/android/server/OemSceneModeController$BreathModeContentObserver;

.field private mBreathModeStatus:Z

.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurProcessName:Ljava/lang/String;

.field private mEsportStatusContentObserver:Lcom/android/server/OemSceneModeController$EsportStatusContentObserver;

.field private mFlinger:Landroid/os/IBinder;

.field private mGameModeAuto:Z

.field private mGameModeAutoObserver:Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;

.field private mGameModeBatterySaverObserver:Lcom/android/server/OemSceneModeController$GameModeBatterySaverContentObserver;

.field private mGameModeManual:Z

.field private mGameModeManualObserver:Lcom/android/server/OemSceneModeController$GameModeManualContentObserver;

.field private mGameModeShowUISilently:Z

.field private mGameModeStatus:Z

.field private mGamingModeMsgView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mIsMonitoringPassiveProvider:Z

.field private mIsMonitoringProactiveProvider:Z

.field private mIsToastShowing:Z

.field mMyLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

.field private mNeedExecPowerSavePolicy:Z

.field private mNeedRecoverCachedFuncs:Z

.field private mNeedToHandlerGameModeUIAfterScreenOn:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

.field private mOemSceneGameModePanel:Lcom/android/server/OemSceneGameModePanel;

.field private mOldPid:I

.field private mOldProcessName:Ljava/lang/String;

.field private mPowerSaveExecThread:Ljava/lang/Thread;

.field private mPowerSaverFeature:Z

.field private mReadModeAuto:Z

.field private mReadModeAutoObserver:Lcom/android/server/OemSceneModeController$ReadModeAutoContentObserver;

.field private mReadModeManual:Z

.field private mReadModeManualObserver:Lcom/android/server/OemSceneModeController$ReadModeManualContentObserver;

.field private mReadModeStatus:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mResumedPID:I

.field private mSaveParam:Ljava/lang/String;

.field private mShowGamingModeUIRunnable:Ljava/lang/Runnable;

.field private mShowingEnabledToast:Z

.field private mWManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 76
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    .line 117
    const-string v0, "1"

    const-string/jumbo v1, "qemu.hw.mainkeys"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/OemSceneModeController;->HAS_HW_KEYS:Z

    .line 122
    const-string/jumbo v0, "reading_mode_status_manual"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneModeController;->URI_READ_MANUAL:Landroid/net/Uri;

    .line 123
    const-string/jumbo v0, "rading_mode_status_auto"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneModeController;->URI_READ_AUTO:Landroid/net/Uri;

    .line 124
    const-string v0, "game_mode_status_manual"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneModeController;->URI_GAME_MANUAL:Landroid/net/Uri;

    .line 125
    const-string v0, "game_mode_status_auto"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneModeController;->URI_GAME_AUTO:Landroid/net/Uri;

    .line 126
    const-string v0, "game_mode_battery_saver"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneModeController;->URI_GAME_MODE_BATTERY_SAVER:Landroid/net/Uri;

    .line 127
    const-string v0, "esport_mode_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneModeController;->URI_ESPORT_STATUS:Landroid/net/Uri;

    .line 128
    const-string/jumbo v0, "op_breath_mode_status"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneModeController;->URI_BREATH_MODE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mReadModeAuto:Z

    .line 131
    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mReadModeManual:Z

    .line 132
    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    .line 133
    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeAuto:Z

    .line 134
    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeManual:Z

    .line 135
    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    .line 136
    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringProactiveProvider:Z

    .line 137
    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringPassiveProvider:Z

    .line 138
    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mIsToastShowing:Z

    .line 139
    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mShowingEnabledToast:Z

    .line 140
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mNeedExecPowerSavePolicy:Z

    .line 141
    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mNeedToHandlerGameModeUIAfterScreenOn:Z

    .line 142
    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mNeedRecoverCachedFuncs:Z

    .line 143
    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeShowUISilently:Z

    .line 144
    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mBreathModeStatus:Z

    .line 150
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mFlinger:Landroid/os/IBinder;

    .line 160
    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 163
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/OemSceneModeController;->mOldPid:I

    .line 164
    const-string v4, ""

    iput-object v4, p0, Lcom/android/server/OemSceneModeController;->mCurProcessName:Ljava/lang/String;

    .line 165
    const-string v4, ""

    iput-object v4, p0, Lcom/android/server/OemSceneModeController;->mOldProcessName:Ljava/lang/String;

    .line 166
    const-string v4, "0_0"

    iput-object v4, p0, Lcom/android/server/OemSceneModeController;->mSaveParam:Ljava/lang/String;

    .line 168
    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mPowerSaverFeature:Z

    .line 174
    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mGamingModeMsgView:Landroid/view/View;

    .line 175
    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mWManager:Landroid/view/WindowManager;

    .line 179
    iput v3, p0, Lcom/android/server/OemSceneModeController;->mResumedPID:I

    .line 352
    new-instance v2, Lcom/android/server/OemSceneModeController$1;

    invoke-direct {v2, p0}, Lcom/android/server/OemSceneModeController$1;-><init>(Lcom/android/server/OemSceneModeController;)V

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    .line 978
    new-instance v2, Lcom/android/server/OemSceneModeController$3;

    invoke-direct {v2, p0}, Lcom/android/server/OemSceneModeController$3;-><init>(Lcom/android/server/OemSceneModeController;)V

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1058
    new-instance v2, Lcom/android/server/OemSceneModeController$5;

    invoke-direct {v2, p0}, Lcom/android/server/OemSceneModeController$5;-><init>(Lcom/android/server/OemSceneModeController;)V

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mShowGamingModeUIRunnable:Ljava/lang/Runnable;

    .line 182
    iput-object p1, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    .line 185
    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mAm:Landroid/app/ActivityManager;

    .line 187
    new-array v1, v1, [I

    const/16 v2, 0x43

    aput v2, v1, v0

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mPowerSaverFeature:Z

    .line 191
    new-instance v1, Lcom/android/server/OemSceneModeController$ReadModeManualContentObserver;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v4}, Lcom/android/server/OemSceneModeController$ReadModeManualContentObserver;-><init>(Lcom/android/server/OemSceneModeController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/OemSceneModeController;->mReadModeManualObserver:Lcom/android/server/OemSceneModeController$ReadModeManualContentObserver;

    .line 192
    new-instance v1, Lcom/android/server/OemSceneModeController$ReadModeAutoContentObserver;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v4}, Lcom/android/server/OemSceneModeController$ReadModeAutoContentObserver;-><init>(Lcom/android/server/OemSceneModeController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/OemSceneModeController;->mReadModeAutoObserver:Lcom/android/server/OemSceneModeController$ReadModeAutoContentObserver;

    .line 193
    new-instance v1, Lcom/android/server/OemSceneModeController$GameModeManualContentObserver;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v4}, Lcom/android/server/OemSceneModeController$GameModeManualContentObserver;-><init>(Lcom/android/server/OemSceneModeController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/OemSceneModeController;->mGameModeManualObserver:Lcom/android/server/OemSceneModeController$GameModeManualContentObserver;

    .line 194
    new-instance v1, Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v4}, Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;-><init>(Lcom/android/server/OemSceneModeController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/OemSceneModeController;->mGameModeAutoObserver:Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;

    .line 195
    new-instance v1, Lcom/android/server/OemSceneModeController$EsportStatusContentObserver;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v4}, Lcom/android/server/OemSceneModeController$EsportStatusContentObserver;-><init>(Lcom/android/server/OemSceneModeController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/OemSceneModeController;->mEsportStatusContentObserver:Lcom/android/server/OemSceneModeController$EsportStatusContentObserver;

    .line 196
    new-instance v1, Lcom/android/server/OemSceneModeController$BreathModeContentObserver;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v4}, Lcom/android/server/OemSceneModeController$BreathModeContentObserver;-><init>(Lcom/android/server/OemSceneModeController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/OemSceneModeController;->mBreathModeObserver:Lcom/android/server/OemSceneModeController$BreathModeContentObserver;

    .line 199
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 200
    .local v1, "intentfilter":Landroid/content/IntentFilter;
    const-string v2, "com.oem.intent.action.DISABLE_GAME_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    const-string v2, "com.oem.intent.action.SWITCH_ESPORT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    const-string v2, "com.oem.intent.action.SHOW_DIALOG"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 208
    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/OemSceneModeController;->URI_READ_MANUAL:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/server/OemSceneModeController;->mReadModeManualObserver:Lcom/android/server/OemSceneModeController$ReadModeManualContentObserver;

    invoke-virtual {v2, v4, v0, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 209
    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/OemSceneModeController;->URI_READ_AUTO:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/server/OemSceneModeController;->mReadModeAutoObserver:Lcom/android/server/OemSceneModeController$ReadModeAutoContentObserver;

    invoke-virtual {v2, v4, v0, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 210
    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/OemSceneModeController;->URI_GAME_MANUAL:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/server/OemSceneModeController;->mGameModeManualObserver:Lcom/android/server/OemSceneModeController$GameModeManualContentObserver;

    invoke-virtual {v2, v4, v0, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 211
    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/OemSceneModeController;->URI_GAME_AUTO:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/server/OemSceneModeController;->mGameModeAutoObserver:Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;

    invoke-virtual {v2, v4, v0, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 212
    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/OemSceneModeController;->URI_ESPORT_STATUS:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/server/OemSceneModeController;->mEsportStatusContentObserver:Lcom/android/server/OemSceneModeController$EsportStatusContentObserver;

    invoke-virtual {v2, v4, v0, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 213
    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/OemSceneModeController;->URI_BREATH_MODE:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/server/OemSceneModeController;->mBreathModeObserver:Lcom/android/server/OemSceneModeController$BreathModeContentObserver;

    invoke-virtual {v2, v4, v0, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 215
    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "notification"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 217
    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mPowerSaverFeature:Z

    if-eqz v2, :cond_0

    .line 218
    new-instance v2, Lcom/android/server/OemSceneModeController$GameModeBatterySaverContentObserver;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v4, v5}, Lcom/android/server/OemSceneModeController$GameModeBatterySaverContentObserver;-><init>(Lcom/android/server/OemSceneModeController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeBatterySaverObserver:Lcom/android/server/OemSceneModeController$GameModeBatterySaverContentObserver;

    .line 219
    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/OemSceneModeController;->URI_GAME_MODE_BATTERY_SAVER:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/server/OemSceneModeController;->mGameModeBatterySaverObserver:Lcom/android/server/OemSceneModeController$GameModeBatterySaverContentObserver;

    invoke-virtual {v2, v4, v0, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 220
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getSaveParam()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemSceneModeController;->mSaveParam:Ljava/lang/String;

    .line 224
    :cond_0
    new-instance v0, Lcom/android/server/OemSceneGameModePanel;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v2, v3}, Lcom/android/server/OemSceneGameModePanel;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/OemSceneModeController;->mOemSceneGameModePanel:Lcom/android/server/OemSceneGameModePanel;

    .line 225
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    if-nez v0, :cond_1

    .line 226
    new-instance v0, Lnet/oneplus/odm/insight/tracker/OSTracker;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    const-string v3, "RBS8PPYT2W"

    invoke-direct {v0, v2, v3}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/OemSceneModeController;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 228
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/OemSceneModeController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemSceneModeController;

    .line 73
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringProactiveProvider:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/OemSceneModeController;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemSceneModeController;

    .line 73
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/OemSceneModeController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OemSceneModeController;

    .line 73
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->handleGameManualChanged()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/OemSceneModeController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OemSceneModeController;

    .line 73
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->handleGameAutoChanged()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/OemSceneModeController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OemSceneModeController;

    .line 73
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->handleGameBatterySaverChanged()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/OemSceneModeController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OemSceneModeController;

    .line 73
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->clearSilentlyShowGameUIFlags()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/OemSceneModeController;)Lnet/oneplus/odm/insight/tracker/OSTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemSceneModeController;

    .line 73
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/OemSceneModeController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OemSceneModeController;

    .line 73
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->showStatusLog()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/OemSceneModeController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemSceneModeController;

    .line 73
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mSaveParam:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/OemSceneModeController;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OemSceneModeController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/server/OemSceneModeController;->executePowerSavePolicy(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/OemSceneModeController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemSceneModeController;

    .line 73
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mNeedToHandlerGameModeUIAfterScreenOn:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/OemSceneModeController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OemSceneModeController;
    .param p1, "x1"    # Z

    .line 73
    iput-boolean p1, p0, Lcom/android/server/OemSceneModeController;->mNeedToHandlerGameModeUIAfterScreenOn:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/OemSceneModeController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemSceneModeController;

    .line 73
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeManual:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/OemSceneModeController;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemSceneModeController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/OemSceneModeController;->validateValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/OemSceneModeController;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OemSceneModeController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/server/OemSceneModeController;->notifyGameModeUI(ZZ)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/OemSceneModeController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemSceneModeController;

    .line 73
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/OemSceneModeController;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OemSceneModeController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/HashMap;

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/server/OemSceneModeController;->submit(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/OemSceneModeController;)Lcom/android/server/OemSceneGameModePanel;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemSceneModeController;

    .line 73
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mOemSceneGameModePanel:Lcom/android/server/OemSceneGameModePanel;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/OemSceneModeController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemSceneModeController;

    .line 73
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 73
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/OemSceneModeController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemSceneModeController;

    .line 73
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringPassiveProvider:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/OemSceneModeController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemSceneModeController;

    .line 73
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/OemSceneModeController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OemSceneModeController;
    .param p1, "x1"    # Z

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/OemSceneModeController;->notifyGameMode(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/OemSceneModeController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OemSceneModeController;

    .line 73
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->handleReadManualChanged()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/OemSceneModeController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OemSceneModeController;

    .line 73
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->handleReadAutoChanged()V

    return-void
.end method

.method private clearSilentlyShowGameUIFlags()V
    .locals 2

    .line 1026
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeController"

    const-string v1, "clearSilentlyShowGameUIFlags"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1028
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mNeedRecoverCachedFuncs:Z

    .line 1029
    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeShowUISilently:Z

    .line 1030
    return-void
.end method

.method private disableNfc()V
    .locals 3

    .line 1101
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 1102
    .local v0, "nfcAdapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1106
    :cond_0
    const-string/jumbo v1, "persist.sys.brickmode.disablenfc"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    .line 1108
    return-void

    .line 1103
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "OemSceneModeController"

    const-string/jumbo v2, "nfcAdapter is disable already."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    :cond_2
    return-void
.end method

.method private enableNfc()V
    .locals 3

    .line 1111
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "persist.sys.brickmode.disablenfc"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1112
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 1113
    .local v0, "nfcAdapter":Landroid/nfc/NfcAdapter;
    if-nez v0, :cond_0

    .line 1114
    const-string v1, "OemSceneModeController"

    const-string/jumbo v2, "nfcAdapter is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    return-void

    .line 1117
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "OemSceneModeController"

    const-string/jumbo v2, "nfcAdapter is enable already!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_1
    const-string/jumbo v1, "persist.sys.brickmode.disablenfc"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 1121
    .end local v0    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :cond_2
    return-void
.end method

.method private executePowerSavePolicy(Ljava/lang/String;Z)V
    .locals 11
    .param p1, "save_Param"    # Ljava/lang/String;
    .param p2, "optimize"    # Z

    .line 615
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[gameMode PowerSavePolicy] executePowerSavePolicy optimize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_15

    .line 617
    if-eqz p1, :cond_13

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_6

    .line 622
    :cond_1
    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mCurProcessName:Ljava/lang/String;

    .line 623
    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mAm:Landroid/app/ActivityManager;

    invoke-direct {p0, v2}, Lcom/android/server/OemSceneModeController;->getFgApp(Landroid/app/ActivityManager;)I

    move-result v2

    .line 624
    .local v2, "pid":I
    sget-boolean v3, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "OemSceneModeController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[gameMode PowerSavePolicy] executePowerSavePolicy, pid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " |save_Param:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_2
    const/4 v3, 0x1

    if-eq v2, v0, :cond_10

    const-string v0, ""

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mCurProcessName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_5

    .line 631
    :cond_3
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mFlinger:Landroid/os/IBinder;

    if-nez v0, :cond_4

    .line 632
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemSceneModeController;->mFlinger:Landroid/os/IBinder;

    .line 635
    :cond_4
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, "tmp":[Ljava/lang/String;
    array-length v4, v0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    .line 637
    sget-boolean v1, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "OemSceneModeController"

    const-string v3, "[gameMode PowerSavePolicy] executePowerSavePolicy, save_Param wrong format A"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_5
    return-void

    .line 641
    :cond_6
    aget-object v4, v0, v1

    invoke-virtual {p0, v4}, Lcom/android/server/OemSceneModeController;->isNumeric(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Lcom/android/server/OemSceneModeController;->isNumeric(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    goto/16 :goto_4

    .line 646
    :cond_7
    aget-object v4, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 647
    .local v4, "scale":I
    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 648
    .local v3, "fps":I
    if-eqz v4, :cond_8

    const/16 v5, 0x64

    if-le v4, v5, :cond_9

    :cond_8
    const/16 v4, 0x64

    .line 649
    :cond_9
    if-eqz v3, :cond_b

    const/16 v5, 0x3c

    if-le v3, v5, :cond_a

    goto :goto_1

    .line 651
    .end local v3    # "fps":I
    .local v9, "fps":I
    :cond_a
    :goto_0
    move v9, v3

    goto :goto_2

    .line 649
    .end local v9    # "fps":I
    .restart local v3    # "fps":I
    :cond_b
    :goto_1
    const/16 v3, 0x3c

    goto :goto_0

    .line 651
    .end local v3    # "fps":I
    .restart local v9    # "fps":I
    :goto_2
    const/16 v3, 0x50

    if-ne v4, v3, :cond_c

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->isGameModeScaleDebug()Z

    move-result v3

    if-eqz v3, :cond_c

    const/16 v3, 0xf

    .line 653
    .end local v4    # "scale":I
    .local v3, "scale":I
    move v10, v3

    goto :goto_3

    .end local v3    # "scale":I
    .restart local v4    # "scale":I
    :cond_c
    move v10, v4

    .end local v4    # "scale":I
    .local v10, "scale":I
    :goto_3
    sget-boolean v3, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v3, :cond_d

    const-string v3, "OemSceneModeController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[gameMode PowerSavePolicy] executePowerSavePolicy, pid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " |mCurProcessName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/OemSceneModeController;->mCurProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " |scale:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " |fps:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_d
    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mFlinger:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/OemSceneModeController;->mCurProcessName:Ljava/lang/String;

    move-object v3, p0

    move v5, v2

    move v7, v10

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/server/OemSceneModeController;->sendCmd(Landroid/os/IBinder;ILjava/lang/String;II)V

    .line 655
    iput v2, p0, Lcom/android/server/OemSceneModeController;->mOldPid:I

    .line 656
    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mCurProcessName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/OemSceneModeController;->mOldProcessName:Ljava/lang/String;

    .line 657
    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mNeedExecPowerSavePolicy:Z

    .line 658
    .end local v0    # "tmp":[Ljava/lang/String;
    .end local v2    # "pid":I
    .end local v9    # "fps":I
    .end local v10    # "scale":I
    goto/16 :goto_7

    .line 642
    .restart local v0    # "tmp":[Ljava/lang/String;
    .restart local v2    # "pid":I
    :cond_e
    :goto_4
    sget-boolean v1, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v1, :cond_f

    const-string v1, "OemSceneModeController"

    const-string v3, "[gameMode PowerSavePolicy] executePowerSavePolicy, save_Param wrong format B"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_f
    return-void

    .line 626
    .end local v0    # "tmp":[Ljava/lang/String;
    :cond_10
    :goto_5
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_11

    const-string v0, "OemSceneModeController"

    const-string v1, "[gameMode PowerSavePolicy] executePowerSavePolicy, current pid process is not right"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_11
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    if-eqz v0, :cond_12

    iput-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mNeedExecPowerSavePolicy:Z

    .line 628
    :cond_12
    return-void

    .line 618
    .end local v2    # "pid":I
    :cond_13
    :goto_6
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_14

    const-string v0, "OemSceneModeController"

    const-string v1, "[gameMode PowerSavePolicy] executePowerSavePolicy, save_Param is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_14
    return-void

    .line 659
    :cond_15
    iget v2, p0, Lcom/android/server/OemSceneModeController;->mOldPid:I

    if-eq v2, v0, :cond_17

    const-string v2, ""

    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mOldProcessName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 660
    sget-boolean v2, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v2, :cond_16

    const-string v2, "OemSceneModeController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[gameMode PowerSavePolicy] executePowerSavePolicy, mOldPid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/OemSceneModeController;->mOldPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " |mOldProcessName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mOldProcessName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " |scale:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " |fps:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_16
    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mFlinger:Landroid/os/IBinder;

    iget v5, p0, Lcom/android/server/OemSceneModeController;->mOldPid:I

    iget-object v6, p0, Lcom/android/server/OemSceneModeController;->mOldProcessName:Ljava/lang/String;

    const/16 v7, 0x64

    const/16 v8, 0x3c

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/OemSceneModeController;->sendCmd(Landroid/os/IBinder;ILjava/lang/String;II)V

    .line 662
    iput v0, p0, Lcom/android/server/OemSceneModeController;->mOldPid:I

    .line 663
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/OemSceneModeController;->mOldProcessName:Ljava/lang/String;

    .line 666
    :cond_17
    :goto_7
    return-void
.end method

.method private getBreathModeStatus()Z
    .locals 4

    .line 850
    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "op_breath_mode_status"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getFgApp(Landroid/app/ActivityManager;)I
    .locals 7
    .param p1, "mAm"    # Landroid/app/ActivityManager;

    .line 706
    const/4 v0, -0x1

    .line 707
    .local v0, "curPid":I
    const/4 v1, 0x0

    .line 708
    .local v1, "curApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 709
    .local v2, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 710
    .local v4, "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_0

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-nez v5, :cond_0

    .line 712
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 713
    move-object v1, v4

    .line 714
    iget v0, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 715
    iget-object v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/OemSceneModeController;->mCurProcessName:Ljava/lang/String;

    .line 716
    sget-boolean v3, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "OemSceneModeController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[gameMode PowerSavePolicy] executePowerSavePolicy, app.processName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " |pid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 720
    .end local v4    # "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    goto :goto_0

    .line 722
    :cond_1
    :goto_1
    return v0
.end method

.method private getGameModeAuto()Z
    .locals 4

    .line 807
    const-string v0, "force-on"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "game_mode_status_auto"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "game_mode_status_auto"

    .line 808
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 807
    :goto_1
    return v0
.end method

.method private getGameModeButtonBlocked()Z
    .locals 4

    .line 831
    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "game_mode_lock_buttons"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getGameModeHeadUpBlocked()Z
    .locals 4

    .line 826
    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "game_mode_block_notification"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getGameModeManual()Z
    .locals 4

    .line 812
    const-string v0, "force-on"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "game_mode_status_manual"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "game_mode_status_manual"

    .line 813
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 812
    :goto_1
    return v0
.end method

.method private getGameModeStatus()Z
    .locals 4

    .line 821
    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "game_mode_status"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getReadModeAuto()Z
    .locals 4

    .line 797
    const-string v0, "force-on"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "rading_mode_status_auto"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "rading_mode_status_auto"

    .line 798
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 797
    :goto_1
    return v0
.end method

.method private getReadModeManual()Z
    .locals 4

    .line 802
    const-string v0, "force-on"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "reading_mode_status_manual"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "reading_mode_status_manual"

    .line 803
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 802
    :goto_1
    return v0
.end method

.method private getReadModeStatus()Z
    .locals 4

    .line 817
    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "reading_mode_status"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getSaveParam()Ljava/lang/String;
    .locals 3

    .line 788
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "game_mode_battery_saver"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 789
    .local v0, "saveParam":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 790
    :cond_0
    const-string v0, "0_0"

    .line 792
    :cond_1
    return-object v0
.end method

.method private handleGameAutoChanged()V
    .locals 11

    .line 523
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeAuto()Z

    move-result v0

    .line 524
    .local v0, "game_auto":Z
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeManual()Z

    move-result v1

    .line 525
    .local v1, "game_manual":Z
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeStatus()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    .line 526
    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    .line 527
    .local v2, "mode_old_value":Z
    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->setGameModeAuto(Z)V

    .line 530
    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 531
    iput-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    goto :goto_0

    .line 533
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    .line 537
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/OemSceneModeController;->mGameModeAuto:Z

    const/4 v5, 0x0

    if-eq v0, v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v5

    .line 540
    .local v4, "auto_value_changed":Z
    :goto_1
    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mGameModeManual:Z

    .line 541
    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeAuto:Z

    .line 543
    const-string v6, "1"

    iget-object v7, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "esport_mode_enabled"

    const/4 v9, -0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 546
    .local v6, "needRecoverCachedFuncs":Z
    const-string v7, "GameMode"

    iget-boolean v8, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    const/4 v9, 0x2

    if-eqz v8, :cond_2

    move v8, v3

    goto :goto_2

    :cond_2
    move v8, v9

    :goto_2
    invoke-virtual {p0, v7, v8}, Lcom/android/server/OemSceneModeController;->updateOimcStatus(Ljava/lang/String;I)V

    .line 548
    iget-boolean v7, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    if-eq v2, v7, :cond_7

    .line 550
    iget-boolean v7, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    invoke-direct {p0, v7}, Lcom/android/server/OemSceneModeController;->setGameModeStatus(Z)Z

    .line 552
    if-eqz v4, :cond_4

    .line 553
    iget-boolean v7, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    if-nez v7, :cond_3

    .line 554
    iput-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mGameModeShowUISilently:Z

    .line 555
    iget-object v7, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 556
    iget-object v7, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const-wide/32 v9, 0xea60

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 558
    iput-boolean v6, p0, Lcom/android/server/OemSceneModeController;->mNeedRecoverCachedFuncs:Z

    .line 559
    sget-boolean v7, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v7, :cond_3

    const-string v7, "OemSceneModeController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mNeedRecoverCachedFuncs = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/android/server/OemSceneModeController;->mNeedRecoverCachedFuncs:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_3
    iget-boolean v7, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    iget-boolean v8, p0, Lcom/android/server/OemSceneModeController;->mGameModeShowUISilently:Z

    invoke-direct {p0, v7, v8}, Lcom/android/server/OemSceneModeController;->notifyGameModeUI(ZZ)V

    .line 564
    :cond_4
    iget-boolean v7, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Lcom/android/server/OemSceneModeController;->mNeedToHandlerGameModeUIAfterScreenOn:Z

    if-eqz v7, :cond_5

    .line 565
    invoke-direct {p0, v3, v5}, Lcom/android/server/OemSceneModeController;->notifyGameModeUI(ZZ)V

    .line 566
    iput-boolean v5, p0, Lcom/android/server/OemSceneModeController;->mNeedToHandlerGameModeUIAfterScreenOn:Z

    .line 569
    :cond_5
    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    if-eqz v3, :cond_a

    .line 570
    sget-boolean v3, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v3, :cond_6

    const-string v3, "OemSceneModeController"

    const-string v5, "add auto start game mode tracker data"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_6
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 572
    .local v3, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "type"

    const-string v7, "1"

    invoke-virtual {v3, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    const-string/jumbo v5, "gmode_start"

    invoke-direct {p0, v5, v3}, Lcom/android/server/OemSceneModeController;->submit(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 574
    .end local v3    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_3

    .line 576
    :cond_7
    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mPowerSaverFeature:Z

    if-eqz v3, :cond_a

    .line 577
    sget-boolean v3, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v3, :cond_8

    const-string v3, "OemSceneModeController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[gameMode PowerSavePolicy] mOldPid:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/OemSceneModeController;->mOldPid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " |mOldProcessName:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/OemSceneModeController;->mOldProcessName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " |mNeedExecPowerSavePolicy:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/OemSceneModeController;->mNeedExecPowerSavePolicy:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_8
    iget v3, p0, Lcom/android/server/OemSceneModeController;->mOldPid:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_9

    const-string v3, ""

    iget-object v5, p0, Lcom/android/server/OemSceneModeController;->mOldProcessName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mNeedExecPowerSavePolicy:Z

    if-eqz v3, :cond_a

    .line 579
    :cond_9
    invoke-direct {p0, v9}, Lcom/android/server/OemSceneModeController;->handleGameModePowerSavePolicy(I)V

    .line 583
    :cond_a
    :goto_3
    return-void
.end method

.method private handleGameBatterySaverChanged()V
    .locals 3

    .line 513
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getSaveParam()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemSceneModeController;->mSaveParam:Ljava/lang/String;

    .line 514
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[gameMode PowerSavePolicy] handleGameBatterySaverChanged, mSaveParam:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mSaveParam:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_0
    const-string v0, "0_0"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mSaveParam:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 516
    invoke-direct {p0, v1}, Lcom/android/server/OemSceneModeController;->handleGameModePowerSavePolicy(I)V

    goto :goto_0

    .line 517
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    if-eqz v0, :cond_2

    .line 518
    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mNeedExecPowerSavePolicy:Z

    .line 520
    :cond_2
    :goto_0
    return-void
.end method

.method private handleGameManualChanged()V
    .locals 6

    .line 481
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeAuto()Z

    move-result v0

    .line 482
    .local v0, "game_auto":Z
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeManual()Z

    move-result v1

    .line 483
    .local v1, "game_manual":Z
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeStatus()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    .line 484
    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    .line 485
    .local v2, "mode_old_value":Z
    invoke-direct {p0, v1}, Lcom/android/server/OemSceneModeController;->setGameModeManual(Z)V

    .line 488
    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    .line 491
    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mGameModeManual:Z

    .line 492
    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeAuto:Z

    .line 495
    const-string v3, "GameMode"

    iget-boolean v4, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    invoke-virtual {p0, v3, v4}, Lcom/android/server/OemSceneModeController;->updateOimcStatus(Ljava/lang/String;I)V

    .line 497
    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    if-eq v2, v3, :cond_2

    .line 499
    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    invoke-direct {p0, v3}, Lcom/android/server/OemSceneModeController;->setGameModeStatus(Z)Z

    .line 500
    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/OemSceneModeController;->notifyGameModeUI(ZZ)V

    .line 503
    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    if-eqz v3, :cond_2

    .line 504
    sget-boolean v3, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "OemSceneModeController"

    const-string v4, "add manual start game mode tracker data"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 506
    .local v3, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "type"

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    const-string/jumbo v4, "gmode_start"

    invoke-direct {p0, v4, v3}, Lcom/android/server/OemSceneModeController;->submit(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 510
    .end local v3    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method private handleGameModePowerSavePolicy(I)V
    .locals 3
    .param p1, "code"    # I

    .line 586
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[gameMode PowerSavePolicy] handleGameModePowerSavePolicy code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |mSaveParam: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mSaveParam:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/OemSceneModeController$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/OemSceneModeController$2;-><init>(Lcom/android/server/OemSceneModeController;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/OemSceneModeController;->mPowerSaveExecThread:Ljava/lang/Thread;

    .line 609
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const-string v0, "0_0"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mSaveParam:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mPowerSaveExecThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 612
    :cond_2
    return-void
.end method

.method private handleReadAutoChanged()V
    .locals 6

    .line 454
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getReadModeAuto()Z

    move-result v0

    .line 455
    .local v0, "read_auto":Z
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getReadModeManual()Z

    move-result v1

    .line 456
    .local v1, "read_manual":Z
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getReadModeStatus()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    .line 457
    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    .line 458
    .local v2, "mode_old_value":Z
    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->setReadModeAuto(Z)V

    .line 461
    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 462
    iput-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    goto :goto_0

    .line 464
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    .line 468
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mReadModeManual:Z

    .line 469
    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mReadModeAuto:Z

    .line 472
    const-string v4, "ReadMode"

    iget-boolean v5, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    :goto_1
    invoke-virtual {p0, v4, v3}, Lcom/android/server/OemSceneModeController;->updateOimcStatus(Ljava/lang/String;I)V

    .line 474
    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    if-eq v2, v3, :cond_2

    .line 476
    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    invoke-direct {p0, v3}, Lcom/android/server/OemSceneModeController;->setReadModeStatus(Z)Z

    .line 478
    :cond_2
    return-void
.end method

.method private handleReadManualChanged()V
    .locals 5

    .line 431
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getReadModeAuto()Z

    move-result v0

    .line 432
    .local v0, "read_auto":Z
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getReadModeManual()Z

    move-result v1

    .line 433
    .local v1, "read_manual":Z
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getReadModeStatus()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    .line 434
    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    .line 435
    .local v2, "mode_old_value":Z
    invoke-direct {p0, v1}, Lcom/android/server/OemSceneModeController;->setReadModeManual(Z)V

    .line 438
    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    .line 441
    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mReadModeManual:Z

    .line 442
    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mReadModeAuto:Z

    .line 445
    const-string v3, "ReadMode"

    iget-boolean v4, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    invoke-virtual {p0, v3, v4}, Lcom/android/server/OemSceneModeController;->updateOimcStatus(Ljava/lang/String;I)V

    .line 447
    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    if-eq v2, v3, :cond_1

    .line 449
    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    invoke-direct {p0, v3}, Lcom/android/server/OemSceneModeController;->setReadModeStatus(Z)Z

    .line 451
    :cond_1
    return-void
.end method

.method private isGameModeEverEnabled()Z
    .locals 3

    .line 964
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "persist.sys.oem.gamemode_dirty"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isGameModeScaleDebug()Z
    .locals 3

    .line 968
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "persist.sys.gamemodescale.debug"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private notifyBreathMode(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1092
    if-eqz p1, :cond_0

    .line 1093
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->disableNfc()V

    goto :goto_0

    .line 1096
    :cond_0
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->enableNfc()V

    .line 1098
    :goto_0
    return-void
.end method

.method private notifyGameMode(Z)V
    .locals 13
    .param p1, "enabled"    # Z

    .line 895
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 896
    .local v0, "requestCode":I
    const/16 v1, 0x15be

    if-eqz p1, :cond_4

    .line 897
    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mNotificationManager:Landroid/app/NotificationManager;

    new-instance v3, Landroid/app/NotificationChannel;

    const-string/jumbo v4, "scene_modes_game"

    iget-object v5, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    .line 899
    const v6, 0x50c0042

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    invoke-direct {v3, v4, v5, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 897
    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 901
    const-string v2, "1"

    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "esport_mode_enabled"

    const/4 v5, -0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 904
    .local v2, "esport_mode_status":Z
    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.oem.intent.action.DISABLE_GAME_MODE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x10000000

    invoke-static {v3, v0, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 906
    .local v3, "pendingIntentDisableGameMode":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.oem.intent.action.SWITCH_ESPORT"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v0, v7, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 908
    .local v4, "pendingIntentTriggerEsport":Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.oem.intent.action.SHOW_DIALOG"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v0, v8, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 910
    .local v5, "pendingIntentGameModeShowUI":Landroid/app/PendingIntent;
    new-instance v7, Landroid/app/Notification$Action$Builder;

    .line 912
    if-eqz v2, :cond_0

    .line 913
    iget-object v8, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    const v9, 0x50c0022

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 914
    :cond_0
    iget-object v8, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    const v9, 0x50c0025

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_0
    const v9, 0x108033e

    invoke-direct {v7, v9, v8, v4}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 916
    invoke-virtual {v7}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v7

    .line 917
    .local v7, "actionEsportTrigger":Landroid/app/Notification$Action;
    new-instance v8, Landroid/app/Notification$Action$Builder;

    iget-object v10, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    const v11, 0x50c0027

    .line 919
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 920
    invoke-virtual {v8}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v8

    .line 921
    .local v8, "actionDisableGameMode":Landroid/app/Notification$Action;
    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "scene_modes_game"

    invoke-direct {v9, v10, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 923
    if-eqz v2, :cond_1

    const v10, 0x5060004

    goto :goto_1

    :cond_1
    const v10, 0x5060017

    :goto_1
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 924
    if-eqz v2, :cond_2

    .line 925
    iget-object v6, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    const v10, 0x50c003d

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 926
    :cond_2
    iget-object v10, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 924
    :goto_2
    invoke-virtual {v9, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 928
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v10, 0x0

    .line 929
    invoke-virtual {v6, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 930
    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 931
    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 932
    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 934
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 935
    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 936
    .local v6, "mBuilder":Landroid/app/Notification$Builder;
    const v9, 0x50c0028

    if-eqz v2, :cond_3

    .line 937
    iget-object v10, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 938
    new-instance v10, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v10}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v11, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_3

    .line 940
    :cond_3
    iget-object v10, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 942
    :goto_3
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    .line 943
    .local v9, "notification":Landroid/app/Notification;
    iget-object v10, p0, Lcom/android/server/OemSceneModeController;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v11, "SceneModeController"

    sget-object v12, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v10, v11, v1, v9, v12}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 944
    .end local v2    # "esport_mode_status":Z
    .end local v3    # "pendingIntentDisableGameMode":Landroid/app/PendingIntent;
    .end local v4    # "pendingIntentTriggerEsport":Landroid/app/PendingIntent;
    .end local v5    # "pendingIntentGameModeShowUI":Landroid/app/PendingIntent;
    .end local v6    # "mBuilder":Landroid/app/Notification$Builder;
    .end local v7    # "actionEsportTrigger":Landroid/app/Notification$Action;
    .end local v8    # "actionDisableGameMode":Landroid/app/Notification$Action;
    .end local v9    # "notification":Landroid/app/Notification;
    goto :goto_4

    .line 946
    :cond_4
    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v3, "SceneModeController"

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v1, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 948
    :goto_4
    return-void
.end method

.method private notifyGameModeToast(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 951
    if-eqz p1, :cond_0

    .line 952
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mOemSceneGameModePanel:Lcom/android/server/OemSceneGameModePanel;

    invoke-virtual {v0}, Lcom/android/server/OemSceneGameModePanel;->show()V

    goto :goto_0

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mOemSceneGameModePanel:Lcom/android/server/OemSceneGameModePanel;

    invoke-virtual {v0}, Lcom/android/server/OemSceneGameModePanel;->hide()V

    .line 956
    :goto_0
    return-void
.end method

.method private notifyGameModeUI(ZZ)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "silent"    # Z

    .line 1032
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyGameModeUI enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "/ silent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_0
    if-eqz p1, :cond_4

    .line 1035
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mResumedPID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/OemSceneModeController;->mResumedPID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/ getFgApp() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mAm:Landroid/app/ActivityManager;

    invoke-direct {p0, v2}, Lcom/android/server/OemSceneModeController;->getFgApp(Landroid/app/ActivityManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    :cond_1
    if-eqz p2, :cond_3

    iget v0, p0, Lcom/android/server/OemSceneModeController;->mResumedPID:I

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mAm:Landroid/app/ActivityManager;

    invoke-direct {p0, v1}, Lcom/android/server/OemSceneModeController;->getFgApp(Landroid/app/ActivityManager;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 1037
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mNeedRecoverCachedFuncs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mNeedRecoverCachedFuncs:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    :cond_2
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mOemSceneGameModePanel:Lcom/android/server/OemSceneGameModePanel;

    iget-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mNeedRecoverCachedFuncs:Z

    invoke-virtual {v0, v1}, Lcom/android/server/OemSceneGameModePanel;->silentShow(Z)V

    goto :goto_0

    .line 1040
    :cond_3
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mShowGamingModeUIRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1043
    :goto_0
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->clearSilentlyShowGameUIFlags()V

    .line 1044
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mAm:Landroid/app/ActivityManager;

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->getFgApp(Landroid/app/ActivityManager;)I

    move-result v0

    iput v0, p0, Lcom/android/server/OemSceneModeController;->mResumedPID:I

    goto :goto_1

    .line 1046
    :cond_4
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mShowGamingModeUIRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1047
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mOemSceneGameModePanel:Lcom/android/server/OemSceneGameModePanel;

    invoke-virtual {v0}, Lcom/android/server/OemSceneGameModePanel;->hide()V

    .line 1049
    :goto_1
    return-void
.end method

.method private notifyReadMode(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 960
    return-void
.end method

.method private sendCmd(Landroid/os/IBinder;ILjava/lang/String;II)V
    .locals 4
    .param p1, "flinger"    # Landroid/os/IBinder;
    .param p2, "pid"    # I
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "scale"    # I
    .param p5, "fps"    # I

    .line 669
    if-eqz p3, :cond_3

    const-string v0, ""

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 674
    :cond_0
    const-string v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[gameMode PowerSavePolicy] processName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    if-eqz p1, :cond_1

    .line 677
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 679
    .local v0, "data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 680
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 681
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 682
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 683
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 684
    const/16 v1, 0xfa5

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 688
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 685
    :catch_0
    move-exception v1

    .line 686
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 688
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 689
    nop

    .line 690
    .end local v0    # "data":Landroid/os/Parcel;
    goto :goto_2

    .line 688
    .restart local v0    # "data":Landroid/os/Parcel;
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1

    .line 691
    .end local v0    # "data":Landroid/os/Parcel;
    :cond_1
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "OemSceneModeController"

    const-string v1, "[gameMode PowerSavePolicy] sendCmd, sf is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_2
    :goto_2
    return-void

    .line 670
    :cond_3
    :goto_3
    const-string v0, "OemSceneModeController"

    const-string v1, "[gameMode PowerSavePolicy] processName is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    return-void
.end method

.method private setBreathModeStatus(Z)Z
    .locals 4
    .param p1, "status"    # Z

    .line 1067
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "op_breath_mode_status"

    if-eqz p1, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1069
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[breathMode] setBreathModeStatus, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :cond_1
    return p1
.end method

.method private setGameModeAuto(Z)V
    .locals 4
    .param p1, "status"    # Z

    .line 843
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "game_mode_status_auto"

    if-eqz p1, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 844
    return-void
.end method

.method private setGameModeEverEnabled()V
    .locals 2

    .line 973
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeController"

    const-string v1, "[scene] setGameModeEverEnabled was called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :cond_0
    const-string/jumbo v0, "persist.sys.oem.gamemode_dirty"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    return-void
.end method

.method private setGameModeManual(Z)V
    .locals 4
    .param p1, "status"    # Z

    .line 846
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "game_mode_status_manual"

    if-eqz p1, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 847
    return-void
.end method

.method private setGameModeStatus(Z)Z
    .locals 4
    .param p1, "status"    # Z

    .line 855
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "game_mode_status"

    if-eqz p1, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 862
    invoke-direct {p0, p1}, Lcom/android/server/OemSceneModeController;->notifyGameMode(Z)V

    .line 864
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[gameMode] setGameModeStatus, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mPowerSaverFeature:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->handleGameModePowerSavePolicy(I)V

    .line 867
    :cond_2
    return p1
.end method

.method private setReadModeAuto(Z)V
    .locals 4
    .param p1, "status"    # Z

    .line 837
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "rading_mode_status_auto"

    if-eqz p1, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 838
    return-void
.end method

.method private setReadModeManual(Z)V
    .locals 4
    .param p1, "status"    # Z

    .line 840
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "reading_mode_status_manual"

    if-eqz p1, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 841
    return-void
.end method

.method private setReadModeStatus(Z)Z
    .locals 4
    .param p1, "status"    # Z

    .line 872
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "reading_mode_status"

    if-eqz p1, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 878
    invoke-direct {p0, p1}, Lcom/android/server/OemSceneModeController;->notifyReadMode(Z)V

    .line 880
    return p1
.end method

.method private showStatusLog()V
    .locals 4

    .line 403
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-nez v0, :cond_0

    return-void

    .line 404
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[scene] Read Manual: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mReadModeManual:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\t Game Manual: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mGameModeManual:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[scene] Read Auto: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mReadModeAuto:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\t Game Auto: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeAuto:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[scene] Read Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\t Game Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[scene] Proactive monitoring: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringProactiveProvider:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\t Passive monitoring: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringPassiveProvider:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[scene] Breath Mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mBreathModeStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[scene] -----------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 410
    const-string v1, "OemSceneModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[scene] values: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return-void
.end method

.method private submit(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1015
    .local p2, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1016
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1017
    if-eqz p2, :cond_0

    .line 1018
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1019
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "hashmap"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1020
    const-string v2, "appId"

    const-string v3, "RBS8PPYT2W"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1023
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1024
    return-void
.end method

.method private validateNetWorkACCValue(I)Z
    .locals 1
    .param p1, "value"    # I

    .line 780
    const/4 v0, 0x1

    if-eq v0, p1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method private validateValue(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 784
    const-string v0, "force-on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "force-off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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


# virtual methods
.method public handleBreathModeChanged()V
    .locals 3

    .line 773
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getBreathModeStatus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mBreathModeStatus:Z

    .line 774
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[breathMode] handleBreathModeChanged, mBreathModeStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mBreathModeStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_0
    const-string v0, "ZenMode"

    iget-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mBreathModeStatus:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/OemSceneModeController;->updateOimcStatus(Ljava/lang/String;I)V

    .line 776
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mBreathModeStatus:Z

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->notifyBreathMode(Z)V

    .line 777
    return-void
.end method

.method public handleStartMonitor()V
    .locals 3

    .line 727
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scene] start monitoring, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OemSceneModeController;->URI_READ_MANUAL:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OemSceneModeController;->URI_READ_AUTO:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OemSceneModeController;->URI_GAME_MANUAL:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OemSceneModeController;->URI_GAME_AUTO:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringProactiveProvider:Z

    .line 730
    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringPassiveProvider:Z

    .line 733
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->notifyReadMode(Z)V

    .line 734
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->notifyGameMode(Z)V

    .line 735
    return-void
.end method

.method public handleStartMonitorPassive()V
    .locals 2

    .line 739
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeController"

    const-string v1, "[scene] start monitoring passive switcher"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringPassiveProvider:Z

    .line 744
    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 745
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 746
    return-void
.end method

.method public handleStopMonitorPassive()V
    .locals 3

    .line 750
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeController"

    const-string v1, "[scene] stop monitoring passive switcher"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mReadModeManual:Z

    if-nez v0, :cond_1

    .line 755
    invoke-direct {p0, v2}, Lcom/android/server/OemSceneModeController;->setReadModeStatus(Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->notifyReadMode(Z)V

    .line 756
    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    .line 758
    const-string v0, "ReadMode"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/OemSceneModeController;->updateOimcStatus(Ljava/lang/String;I)V

    .line 762
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeManual:Z

    if-nez v0, :cond_2

    .line 763
    invoke-direct {p0, v2}, Lcom/android/server/OemSceneModeController;->setGameModeStatus(Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->notifyGameMode(Z)V

    .line 764
    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    .line 766
    const-string v0, "GameMode"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/OemSceneModeController;->updateOimcStatus(Ljava/lang/String;I)V

    .line 769
    :cond_2
    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringPassiveProvider:Z

    .line 770
    return-void
.end method

.method public hideGameModeUI()V
    .locals 2

    .line 1051
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/OemSceneModeController$4;

    invoke-direct {v1, p0}, Lcom/android/server/OemSceneModeController$4;-><init>(Lcom/android/server/OemSceneModeController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1057
    return-void
.end method

.method public isNumeric(Ljava/lang/String;)Z
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 696
    const-string v0, "[0-9]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 697
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 698
    .local v1, "isNum":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 699
    const/4 v2, 0x0

    return v2

    .line 701
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public preEvaluateModeStatus(II)Z
    .locals 4
    .param p1, "modeType"    # I
    .param p2, "switcherType"    # I

    .line 414
    const/4 v0, 0x0

    .line 415
    .local v0, "result":Z
    if-nez p1, :cond_2

    .line 416
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 417
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getReadModeAuto()Z

    move-result v2

    .line 418
    .local v2, "read_auto":Z
    if-eqz v2, :cond_0

    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringPassiveProvider:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 419
    .end local v2    # "read_auto":Z
    goto :goto_1

    .line 420
    :cond_1
    sget-boolean v1, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "OemSceneModeController"

    const-string v2, "[scene] Not yet supported"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 423
    :cond_2
    sget-boolean v1, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "OemSceneModeController"

    const-string v2, "[scene] Not yet supported"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->showStatusLog()V

    .line 426
    return v0
.end method

.method public startMonitor()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 233
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 234
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 236
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 237
    return-void
.end method

.method public startMonitorPassive()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 242
    return-void
.end method

.method public stopMonitorPassive()V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 247
    return-void
.end method

.method updateOimcStatus(Ljava/lang/String;I)V
    .locals 2
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "change"    # I

    .line 884
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mMyLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    if-nez v0, :cond_0

    .line 885
    const-class v0, Lcom/oneplus/server/OIMCService$LocalService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/server/OIMCService$LocalService;

    iput-object v0, p0, Lcom/android/server/OemSceneModeController;->mMyLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    .line 887
    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mMyLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    if-eqz v0, :cond_1

    .line 888
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mMyLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/oneplus/server/OIMCService$LocalService;->notifyModeChange(Ljava/lang/String;II)V

    goto :goto_0

    .line 890
    :cond_1
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "OemSceneModeController"

    const-string v1, "[scene] Error while updating OIMC modes"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_2
    :goto_0
    return-void
.end method
