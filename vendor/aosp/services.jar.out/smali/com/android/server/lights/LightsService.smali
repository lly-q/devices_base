.class public Lcom/android/server/lights/LightsService;
.super Lcom/android/server/SystemService;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lights/LightsService$LightImpl;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field private static DEBUG_ONEPLUS:Z = false

.field static final TAG:Ljava/lang/String; = "LightsService"

.field public static mMax_brightness:I

.field public static mScreenBrightness:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mH:Landroid/os/Handler;

.field final mLights:[Lcom/android/server/lights/LightsService$LightImpl;

.field private final mService:Lcom/android/server/lights/LightsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/lights/LightsService;->DEBUG:Z

    .line 53
    const/16 v1, 0x7f

    sput v1, Lcom/android/server/lights/LightsService;->mScreenBrightness:I

    .line 58
    sput v0, Lcom/android/server/lights/LightsService;->mMax_brightness:I

    .line 63
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/lights/LightsService;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 310
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 66
    const/16 v0, 0x8

    new-array v1, v0, [Lcom/android/server/lights/LightsService$LightImpl;

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    .line 338
    new-instance v1, Lcom/android/server/lights/LightsService$1;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$1;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    .line 349
    new-instance v1, Lcom/android/server/lights/LightsService$2;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$2;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    .line 313
    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    .line 316
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 317
    iget-object v2, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    new-instance v3, Lcom/android/server/lights/LightsService$LightImpl;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v4}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;ILcom/android/server/lights/LightsService$1;)V

    aput-object v3, v2, v1

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .line 42
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/lights/LightsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .line 42
    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->getVrDisplayMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 42
    sget-boolean v0, Lcom/android/server/lights/LightsService;->DEBUG_ONEPLUS:Z

    return v0
.end method

.method private getVrDisplayMode()I
    .locals 4

    .line 331
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 332
    .local v0, "currentUser":I
    invoke-virtual {p0}, Lcom/android/server/lights/LightsService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "vr_display_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    return v1
.end method

.method static native setLight_native(IIIIII)V
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 0
    .param p1, "phase"    # I

    .line 328
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 323
    const-class v0, Lcom/android/server/lights/LightsManager;

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 324
    return-void
.end method
