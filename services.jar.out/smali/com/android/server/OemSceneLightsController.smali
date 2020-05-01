.class public Lcom/android/server/OemSceneLightsController;
.super Ljava/lang/Object;
.source "OemSceneLightsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemSceneLightsController$BreathModeLedController;,
        Lcom/android/server/OemSceneLightsController$LightsMode;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field private static final LMODE_ALLOWALL:I

.field private static final LMODE_BREATH_MODE:I

.field public static final TAG:Ljava/lang/String; = "OemSceneLightsController"

.field private static sInstance:Lcom/android/server/OemSceneLightsController;


# instance fields
.field private lightsMode:I

.field private mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field private mBreathModeLedController:Lcom/android/server/OemSceneLightsController$BreathModeLedController;

.field private mContext:Landroid/content/Context;

.field private mLightsManager:Lcom/android/server/lights/LightsManager;

.field private mLock:Ljava/lang/Object;

.field private mNotificationLight:Lcom/android/server/lights/Light;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OemSceneLightsController;->DEBUG:Z

    .line 69
    sget-object v0, Lcom/android/server/OemSceneLightsController$LightsMode;->ALLOW_ALL:Lcom/android/server/OemSceneLightsController$LightsMode;

    invoke-virtual {v0}, Lcom/android/server/OemSceneLightsController$LightsMode;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sput v0, Lcom/android/server/OemSceneLightsController;->LMODE_ALLOWALL:I

    .line 70
    sget-object v0, Lcom/android/server/OemSceneLightsController$LightsMode;->BREATH_MODE:Lcom/android/server/OemSceneLightsController$LightsMode;

    invoke-virtual {v0}, Lcom/android/server/OemSceneLightsController$LightsMode;->ordinal()I

    move-result v0

    shl-int v0, v1, v0

    sput v0, Lcom/android/server/OemSceneLightsController;->LMODE_BREATH_MODE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OemSceneLightsController;->lightsMode:I

    .line 62
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/OemSceneLightsController;->mLock:Ljava/lang/Object;

    .line 80
    iput-object p1, p0, Lcom/android/server/OemSceneLightsController;->mContext:Landroid/content/Context;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OemSceneLightsController;->mResolver:Landroid/content/ContentResolver;

    .line 82
    const-class v1, Lcom/android/server/lights/LightsManager;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/lights/LightsManager;

    iput-object v1, p0, Lcom/android/server/OemSceneLightsController;->mLightsManager:Lcom/android/server/lights/LightsManager;

    .line 84
    iget-object v1, p0, Lcom/android/server/OemSceneLightsController;->mLightsManager:Lcom/android/server/lights/LightsManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OemSceneLightsController;->mNotificationLight:Lcom/android/server/lights/Light;

    .line 85
    const-class v1, Landroid/os/BatteryManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManagerInternal;

    iput-object v1, p0, Lcom/android/server/OemSceneLightsController;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 87
    iget-object v1, p0, Lcom/android/server/OemSceneLightsController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    :try_start_0
    iput v0, p0, Lcom/android/server/OemSceneLightsController;->lightsMode:I

    .line 89
    monitor-exit v1

    .line 90
    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/OemSceneLightsController;)Lcom/android/server/lights/Light;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemSceneLightsController;

    .line 47
    iget-object v0, p0, Lcom/android/server/OemSceneLightsController;->mNotificationLight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/OemSceneLightsController;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OemSceneLightsController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/server/OemSceneLightsController;->updateLightsMode(IZ)V

    return-void
.end method

.method public static canSetLights(III)Z
    .locals 2
    .param p0, "lightId"    # I
    .param p1, "lightMode"    # I
    .param p2, "brightnessMode"    # I

    .line 93
    sget-object v0, Lcom/android/server/OemSceneLightsController;->sInstance:Lcom/android/server/OemSceneLightsController;

    if-nez v0, :cond_0

    .line 94
    const-string v0, "OemSceneLightsController"

    const-string v1, "Not registerOIMCFunctions yet, just let it go!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v0, 0x1

    return v0

    .line 97
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/OemSceneLightsController;->getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneLightsController;

    move-result-object v0

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/OemSceneLightsController;->canSetLightsInModes(III)Z

    move-result v0

    return v0
.end method

.method private canSetLightsInBreathMode(III)Z
    .locals 4
    .param p1, "lightId"    # I
    .param p2, "lightMode"    # I
    .param p3, "brightnessMode"    # I

    .line 151
    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 152
    return v0

    .line 153
    :cond_0
    const/4 v2, 0x0

    if-eq p3, v1, :cond_2

    const/4 v1, 0x3

    if-eq p3, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/OemSceneLightsController;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    const/4 v3, 0x7

    .line 155
    invoke-virtual {v1, v3}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 162
    :cond_1
    const-string v0, "OemSceneLightsController"

    const-string/jumbo v1, "prohibit Led in breath mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return v2

    .line 156
    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 158
    return v2

    .line 160
    :cond_3
    return v0
.end method

.method private canSetLightsInModes(III)Z
    .locals 3
    .param p1, "lightId"    # I
    .param p2, "lightMode"    # I
    .param p3, "brightnessMode"    # I

    .line 140
    iget v0, p0, Lcom/android/server/OemSceneLightsController;->lightsMode:I

    sget v1, Lcom/android/server/OemSceneLightsController;->LMODE_ALLOWALL:I

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 141
    return v1

    .line 142
    :cond_0
    iget v0, p0, Lcom/android/server/OemSceneLightsController;->lightsMode:I

    sget v2, Lcom/android/server/OemSceneLightsController;->LMODE_BREATH_MODE:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 144
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/OemSceneLightsController;->canSetLightsInBreathMode(III)Z

    move-result v0

    return v0

    .line 146
    :cond_1
    sget-boolean v0, Lcom/android/server/OemSceneLightsController;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "OemSceneLightsController"

    const-string v2, "canSetLightsInModes => true for DEFAULT!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_2
    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneLightsController;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 73
    sget-object v0, Lcom/android/server/OemSceneLightsController;->sInstance:Lcom/android/server/OemSceneLightsController;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/android/server/OemSceneLightsController;

    invoke-direct {v0, p0}, Lcom/android/server/OemSceneLightsController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/OemSceneLightsController;->sInstance:Lcom/android/server/OemSceneLightsController;

    .line 76
    :cond_0
    sget-object v0, Lcom/android/server/OemSceneLightsController;->sInstance:Lcom/android/server/OemSceneLightsController;

    return-object v0
.end method

.method private updateLightsMode(IZ)V
    .locals 3
    .param p1, "lightsModeLock"    # I
    .param p2, "enable"    # Z

    .line 130
    iget-object v0, p0, Lcom/android/server/OemSceneLightsController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 132
    :try_start_0
    iget v2, p0, Lcom/android/server/OemSceneLightsController;->lightsMode:I

    shl-int/2addr v1, p1

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/OemSceneLightsController;->lightsMode:I

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 134
    :cond_0
    iget v2, p0, Lcom/android/server/OemSceneLightsController;->lightsMode:I

    shl-int/2addr v1, p1

    not-int v1, v1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/OemSceneLightsController;->lightsMode:I

    .line 136
    :goto_0
    monitor-exit v0

    .line 137
    return-void

    .line 136
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getBreathModeLedController()Lcom/android/server/OemSceneLightsController$BreathModeLedController;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/server/OemSceneLightsController;->mBreathModeLedController:Lcom/android/server/OemSceneLightsController$BreathModeLedController;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/android/server/OemSceneLightsController$BreathModeLedController;

    invoke-direct {v0, p0}, Lcom/android/server/OemSceneLightsController$BreathModeLedController;-><init>(Lcom/android/server/OemSceneLightsController;)V

    iput-object v0, p0, Lcom/android/server/OemSceneLightsController;->mBreathModeLedController:Lcom/android/server/OemSceneLightsController$BreathModeLedController;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneLightsController;->mBreathModeLedController:Lcom/android/server/OemSceneLightsController$BreathModeLedController;

    return-object v0
.end method
