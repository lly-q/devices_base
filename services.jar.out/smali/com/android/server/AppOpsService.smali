.class public Lcom/android/server/AppOpsService;
.super Lcom/android/internal/app/IAppOpsService$Stub;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;,
        Lcom/android/server/AppOpsService$ClientRestrictionState;,
        Lcom/android/server/AppOpsService$Restriction;,
        Lcom/android/server/AppOpsService$Shell;,
        Lcom/android/server/AppOpsService$ChangeRec;,
        Lcom/android/server/AppOpsService$ScreenCompatConfigUpdater;,
        Lcom/android/server/AppOpsService$ClientState;,
        Lcom/android/server/AppOpsService$ActiveCallback;,
        Lcom/android/server/AppOpsService$ModeCallback;,
        Lcom/android/server/AppOpsService$Op;,
        Lcom/android/server/AppOpsService$Ops;,
        Lcom/android/server/AppOpsService$UidState;,
        Lcom/android/server/AppOpsService$Constants;
    }
.end annotation


# static fields
.field private static final CURRENT_VERSION:I = 0x1

.field static final DEBUG:Z = false

.field private static final IS_SCREEN_COMPAT_ENABLED:Z

.field public static final IS_SUPPORT_CAMERA_NOTCH:Z

.field public static MODE_COMPAT:I = 0x0

.field public static MODE_FULL:I = 0x0

.field public static MODE_NONFULL:I = 0x0

.field private static final NO_VERSION:I = -0x1

.field private static final OPS_RESTRICTED_ON_SUSPEND:[I

.field private static final PROCESS_STATE_TO_UID_STATE:[I

.field private static final SCREEN_COMPAT_CONFIG_NAME:Ljava/lang/String; = "Screen_Compat_Config"

.field static final TAG:Ljava/lang/String; = "AppOps"

.field private static final UID_ANY:I = -0x2

.field static final UID_STATE_NAMES:[Ljava/lang/String;

.field static final UID_STATE_REJECT_ATTRS:[Ljava/lang/String;

.field static final UID_STATE_TIME_ATTRS:[Ljava/lang/String;

.field static final WRITE_DELAY:J = 0x1b7740L

.field public static mEnableIgnoreCutoutMode:Z

.field public static mScreenCompatIgnoreCutoutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mScreenCompatLock:Ljava/lang/Object;


# instance fields
.field final mActiveWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/AppOpsService$ActiveCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAppOpsManagerInternal:Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;

.field final mAudioRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/AppOpsService$Restriction;",
            ">;>;"
        }
    .end annotation
.end field

.field final mClients:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field private final mConstants:Lcom/android/server/AppOpsService$Constants;

.field mContext:Landroid/content/Context;

.field mFastWriteScheduled:Z

.field final mFile:Landroid/util/AtomicFile;

.field final mGetOnlineConfigRunner:Ljava/lang/Runnable;

.field final mHandler:Landroid/os/Handler;

.field mLastUptime:J

.field final mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mOpModeWatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOpUserRestrictions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$ClientRestrictionState;",
            ">;"
        }
    .end annotation
.end field

.field final mPackageModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field mProfileOwners:Landroid/util/SparseIntArray;

.field public mScreenCompatDefaultEnabledList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mScreenCompatDefaultFullscreenList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mScreenCompatSystemAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mScreenCompatThirdPartyAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScrrenCompatConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field final mUidStates:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/AppOpsService$UidState;",
            ">;"
        }
    .end annotation
.end field

.field final mWriteRunner:Ljava/lang/Runnable;

.field mWriteScheduled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 147
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/AppOpsService;->PROCESS_STATE_TO_UID_STATE:[I

    .line 170
    const-string/jumbo v1, "pers "

    const-string/jumbo v2, "top  "

    const-string v3, "fgsvc"

    const-string v4, "fg   "

    const-string v5, "bg   "

    const-string v6, "cch  "

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/AppOpsService;->UID_STATE_NAMES:[Ljava/lang/String;

    .line 179
    const-string/jumbo v1, "tp"

    const-string/jumbo v2, "tt"

    const-string/jumbo v3, "tfs"

    const-string/jumbo v4, "tf"

    const-string/jumbo v5, "tb"

    const-string/jumbo v6, "tc"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/AppOpsService;->UID_STATE_TIME_ATTRS:[Ljava/lang/String;

    .line 188
    const-string/jumbo v1, "rp"

    const-string/jumbo v2, "rt"

    const-string/jumbo v3, "rfs"

    const-string/jumbo v4, "rf"

    const-string/jumbo v5, "rb"

    const-string/jumbo v6, "rc"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/AppOpsService;->UID_STATE_REJECT_ATTRS:[Ljava/lang/String;

    .line 197
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/AppOpsService;->OPS_RESTRICTED_ON_SUSPEND:[I

    .line 608
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x3a

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/AppOpsService;->IS_SUPPORT_CAMERA_NOTCH:Z

    .line 609
    new-array v1, v0, [I

    const/16 v3, 0x23

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/server/AppOpsService;->IS_SUPPORT_CAMERA_NOTCH:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    nop

    :cond_1
    :goto_0
    sput-boolean v0, Lcom/android/server/AppOpsService;->IS_SCREEN_COMPAT_ENABLED:Z

    .line 612
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/AppOpsService;->mScreenCompatLock:Ljava/lang/Object;

    .line 618
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/AppOpsService;->mScreenCompatIgnoreCutoutList:Ljava/util/ArrayList;

    .line 619
    sput-boolean v2, Lcom/android/server/AppOpsService;->mEnableIgnoreCutoutMode:Z

    .line 620
    const/16 v0, 0x64

    sput v0, Lcom/android/server/AppOpsService;->MODE_COMPAT:I

    .line 621
    const/16 v0, 0x65

    sput v0, Lcom/android/server/AppOpsService;->MODE_NONFULL:I

    .line 622
    const/16 v0, 0x66

    sput v0, Lcom/android/server/AppOpsService;->MODE_FULL:I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x4
        0x4
        0x4
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
    .end array-data

    :array_1
    .array-data 4
        0x1c
        0x1b
        0x1a
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;Landroid/os/Handler;)V
    .locals 2
    .param p1, "storagePath"    # Ljava/io/File;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 876
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsService$Stub;-><init>()V

    .line 207
    new-instance v0, Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;-><init>(Lcom/android/server/AppOpsService;Lcom/android/server/AppOpsService$1;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mAppOpsManagerInternal:Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;

    .line 212
    new-instance v0, Lcom/android/server/AppOpsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/AppOpsService$1;-><init>(Lcom/android/server/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    .line 228
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 236
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    .line 467
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 468
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 469
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    .line 470
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 471
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    .line 567
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    .line 614
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mScreenCompatDefaultEnabledList:Ljava/util/ArrayList;

    .line 615
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mScreenCompatDefaultFullscreenList:Ljava/util/ArrayList;

    .line 616
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mScreenCompatSystemAppList:Ljava/util/ArrayList;

    .line 617
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mScreenCompatThirdPartyAppList:Ljava/util/ArrayList;

    .line 863
    new-instance v0, Lcom/android/server/AppOpsService$2;

    invoke-direct {v0, p0}, Lcom/android/server/AppOpsService$2;-><init>(Lcom/android/server/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mGetOnlineConfigRunner:Ljava/lang/Runnable;

    .line 877
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/LockGuard;->installLock(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 878
    new-instance v0, Landroid/util/AtomicFile;

    const-string v1, "appops"

    invoke-direct {v0, p1, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    .line 879
    iput-object p2, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 880
    new-instance v0, Lcom/android/server/AppOpsService$Constants;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/AppOpsService$Constants;-><init>(Lcom/android/server/AppOpsService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mConstants:Lcom/android/server/AppOpsService$Constants;

    .line 881
    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->readState()V

    .line 882
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/AppOpsService;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AppOpsService;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->resolveScreenCompatConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/AppOpsService;)Lcom/oneplus/config/ConfigObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AppOpsService;

    .line 131
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mScrrenCompatConfigObserver:Lcom/oneplus/config/ConfigObserver;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/AppOpsService;Lcom/oneplus/config/ConfigObserver;)Lcom/oneplus/config/ConfigObserver;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AppOpsService;
    .param p1, "x1"    # Lcom/oneplus/config/ConfigObserver;

    .line 131
    iput-object p1, p0, Lcom/android/server/AppOpsService;->mScrrenCompatConfigObserver:Lcom/oneplus/config/ConfigObserver;

    return-object p1
.end method

.method static synthetic access$300()[I
    .locals 1

    .line 131
    sget-object v0, Lcom/android/server/AppOpsService;->OPS_RESTRICTED_ON_SUSPEND:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AppOpsService;
    .param p1, "x1"    # Landroid/util/ArraySet;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .line 131
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 131
    invoke-static {p0}, Lcom/android/server/AppOpsService;->resolveUid(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/AppOpsService;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AppOpsService;

    .line 131
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/AppOpsService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AppOpsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/android/server/AppOpsService;->notifyWatchersOfChange(II)V

    return-void
.end method

.method private static addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;
    .locals 10
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AppOpsService$ChangeRec;",
            ">;>;II",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            ">;)",
            "Ljava/util/HashMap<",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AppOpsService$ChangeRec;",
            ">;>;"
        }
    .end annotation

    .line 1522
    .local p0, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .local p4, "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    if-nez p4, :cond_0

    .line 1523
    return-object p0

    .line 1525
    :cond_0
    if-nez p0, :cond_1

    .line 1526
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object p0, v0

    .line 1528
    :cond_1
    const/4 v0, 0x0

    .line 1529
    .local v0, "duplicate":Z
    invoke-virtual {p4}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 1530
    .local v1, "N":I
    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "duplicate":Z
    :goto_0
    if-ge v0, v1, :cond_6

    .line 1531
    invoke-virtual {p4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$ModeCallback;

    .line 1532
    .local v4, "cb":Lcom/android/server/AppOpsService$ModeCallback;
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1533
    .local v5, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    if-nez v5, :cond_2

    .line 1534
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v6

    .line 1535
    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1537
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1538
    .local v6, "reportCount":I
    move v7, v2

    .local v7, "j":I
    :goto_1
    if-ge v7, v6, :cond_4

    .line 1539
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AppOpsService$ChangeRec;

    .line 1540
    .local v8, "report":Lcom/android/server/AppOpsService$ChangeRec;
    iget v9, v8, Lcom/android/server/AppOpsService$ChangeRec;->op:I

    if-ne v9, p1, :cond_3

    iget-object v9, v8, Lcom/android/server/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    invoke-virtual {v9, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1541
    const/4 v3, 0x1

    .line 1542
    goto :goto_2

    .line 1538
    .end local v8    # "report":Lcom/android/server/AppOpsService$ChangeRec;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1546
    .end local v6    # "reportCount":I
    .end local v7    # "j":I
    :cond_4
    :goto_2
    if-nez v3, :cond_5

    .line 1547
    new-instance v6, Lcom/android/server/AppOpsService$ChangeRec;

    invoke-direct {v6, p1, p2, p3}, Lcom/android/server/AppOpsService$ChangeRec;-><init>(IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1530
    .end local v4    # "cb":Lcom/android/server/AppOpsService$ModeCallback;
    .end local v5    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1550
    .end local v0    # "i":I
    :cond_6
    return-object p0
.end method

.method private checkRestrictionLocked(IIILjava/lang/String;)I
    .locals 3
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 1844
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1845
    .local v0, "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    if-eqz v0, :cond_0

    .line 1846
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$Restriction;

    .line 1847
    .local v1, "r":Lcom/android/server/AppOpsService$Restriction;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, p4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1848
    iget v2, v1, Lcom/android/server/AppOpsService$Restriction;->mode:I

    return v2

    .line 1851
    .end local v1    # "r":Lcom/android/server/AppOpsService$Restriction;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private checkSystemUid(Ljava/lang/String;)V
    .locals 4
    .param p1, "function"    # Ljava/lang/String;

    .line 3933
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3934
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 3937
    return-void

    .line 3935
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must by called by the system"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private collectOps(Landroid/util/SparseIntArray;[I)Ljava/util/ArrayList;
    .locals 16
    .param p1, "uidOps"    # Landroid/util/SparseIntArray;
    .param p2, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseIntArray;",
            "[I)",
            "Ljava/util/ArrayList<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1192
    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 1193
    .local v2, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 1194
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v4

    .line 1195
    nop

    .local v3, "j":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1196
    new-instance v4, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v14}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIILjava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1195
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1200
    .end local v3    # "j":I
    :cond_0
    nop

    .restart local v3    # "j":I
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_3

    .line 1201
    aget v4, v1, v3

    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    .line 1202
    .local v4, "index":I
    if-ltz v4, :cond_2

    .line 1203
    if-nez v2, :cond_1

    .line 1204
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    .line 1206
    :cond_1
    new-instance v15, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object v5, v15

    invoke-direct/range {v5 .. v14}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIILjava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1200
    .end local v4    # "index":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1211
    .end local v3    # "j":I
    :cond_3
    return-object v2
.end method

.method private collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;
    .locals 26
    .param p1, "pkgOps"    # Lcom/android/server/AppOpsService$Ops;
    .param p2, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/AppOpsService$Ops;",
            "[I)",
            "Ljava/util/ArrayList<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1157
    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 1158
    .local v2, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1159
    .local v3, "elapsedNow":J
    const/4 v5, -0x1

    if-nez v1, :cond_3

    .line 1160
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v8

    .line 1161
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 1162
    invoke-virtual {v0, v8}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AppOpsService$Op;

    .line 1163
    .local v9, "curOp":Lcom/android/server/AppOpsService$Op;
    iget v10, v9, Lcom/android/server/AppOpsService$Op;->duration:I

    if-ne v10, v5, :cond_0

    const/4 v10, 0x1

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    .line 1164
    .local v10, "running":Z
    :goto_1
    if-eqz v10, :cond_1

    .line 1165
    iget-wide v11, v9, Lcom/android/server/AppOpsService$Op;->startRealtime:J

    sub-long v11, v3, v11

    goto :goto_2

    .line 1166
    :cond_1
    iget v11, v9, Lcom/android/server/AppOpsService$Op;->duration:I

    int-to-long v11, v11

    :goto_2
    move-wide v14, v11

    .line 1167
    .local v14, "duration":J
    new-instance v13, Landroid/app/AppOpsManager$OpEntry;

    iget v12, v9, Lcom/android/server/AppOpsService$Op;->op:I

    iget v11, v9, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-object v6, v9, Lcom/android/server/AppOpsService$Op;->time:[J

    iget-object v7, v9, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    long-to-int v5, v14

    move-wide/from16 v20, v3

    iget v3, v9, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .end local v3    # "elapsedNow":J
    .local v20, "elapsedNow":J
    iget-object v4, v9, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    move/from16 v16, v11

    move-object v11, v13

    move-object/from16 v22, v9

    move-object v9, v13

    move/from16 v13, v16

    .end local v9    # "curOp":Lcom/android/server/AppOpsService$Op;
    .local v22, "curOp":Lcom/android/server/AppOpsService$Op;
    move-wide/from16 v23, v14

    move-object v14, v6

    .end local v14    # "duration":J
    .local v23, "duration":J
    move-object v15, v7

    move/from16 v16, v5

    move/from16 v17, v10

    move/from16 v18, v3

    move-object/from16 v19, v4

    invoke-direct/range {v11 .. v19}, Landroid/app/AppOpsManager$OpEntry;-><init>(II[J[JIZILjava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1161
    .end local v10    # "running":Z
    .end local v22    # "curOp":Lcom/android/server/AppOpsService$Op;
    .end local v23    # "duration":J
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v3, v20

    const/4 v5, -0x1

    goto :goto_0

    .line 1188
    .end local v8    # "j":I
    .end local v20    # "elapsedNow":J
    .restart local v3    # "elapsedNow":J
    :cond_2
    move-wide/from16 v20, v3

    .end local v3    # "elapsedNow":J
    .restart local v20    # "elapsedNow":J
    goto :goto_6

    .line 1172
    .end local v20    # "elapsedNow":J
    .restart local v3    # "elapsedNow":J
    :cond_3
    move-wide/from16 v20, v3

    .end local v3    # "elapsedNow":J
    .restart local v20    # "elapsedNow":J
    move-object v3, v2

    const/4 v2, 0x0

    .local v2, "j":I
    .local v3, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :goto_3
    array-length v4, v1

    if-ge v2, v4, :cond_8

    .line 1173
    aget v4, v1, v2

    invoke-virtual {v0, v4}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$Op;

    .line 1174
    .local v4, "curOp":Lcom/android/server/AppOpsService$Op;
    if-eqz v4, :cond_7

    .line 1175
    if-nez v3, :cond_4

    .line 1176
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v5

    .line 1178
    :cond_4
    iget v5, v4, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    .line 1179
    .local v5, "running":Z
    :goto_4
    if-eqz v5, :cond_6

    .line 1180
    iget-wide v7, v4, Lcom/android/server/AppOpsService$Op;->startRealtime:J

    sub-long v7, v20, v7

    goto :goto_5

    .line 1181
    :cond_6
    iget v7, v4, Lcom/android/server/AppOpsService$Op;->duration:I

    int-to-long v7, v7

    :goto_5
    move-wide v14, v7

    .line 1182
    .restart local v14    # "duration":J
    new-instance v13, Landroid/app/AppOpsManager$OpEntry;

    iget v8, v4, Lcom/android/server/AppOpsService$Op;->op:I

    iget v9, v4, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-object v10, v4, Lcom/android/server/AppOpsService$Op;->time:[J

    iget-object v11, v4, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    long-to-int v12, v14

    iget v7, v4, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    iget-object v6, v4, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    move/from16 v16, v7

    move-object v7, v13

    move-object v0, v13

    move v13, v5

    move-wide/from16 v17, v14

    move/from16 v14, v16

    .end local v14    # "duration":J
    .local v17, "duration":J
    move-object v15, v6

    invoke-direct/range {v7 .. v15}, Landroid/app/AppOpsManager$OpEntry;-><init>(II[J[JIZILjava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1172
    .end local v4    # "curOp":Lcom/android/server/AppOpsService$Op;
    .end local v5    # "running":Z
    .end local v17    # "duration":J
    :cond_7
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    goto :goto_3

    .line 1188
    .end local v2    # "j":I
    :cond_8
    move-object v2, v3

    .end local v3    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .local v2, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :goto_6
    return-object v2
.end method

.method private commitUidPendingStateLocked(Lcom/android/server/AppOpsService$UidState;)V
    .locals 21
    .param p1, "uidState"    # Lcom/android/server/AppOpsService$UidState;

    move-object/from16 v6, p0

    .line 2268
    move-object/from16 v7, p1

    iget v0, v7, Lcom/android/server/AppOpsService$UidState;->state:I

    const/4 v1, 0x2

    const/4 v9, 0x1

    if-gt v0, v1, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v10, v0

    .line 2269
    .local v10, "lastForeground":Z
    iget v0, v7, Lcom/android/server/AppOpsService$UidState;->pendingState:I

    if-gt v0, v1, :cond_1

    move v0, v9

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move v11, v0

    .line 2270
    .local v11, "nowForeground":Z
    iget v0, v7, Lcom/android/server/AppOpsService$UidState;->pendingState:I

    iput v0, v7, Lcom/android/server/AppOpsService$UidState;->state:I

    .line 2271
    const-wide/16 v0, 0x0

    iput-wide v0, v7, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J

    .line 2272
    iget-boolean v0, v7, Lcom/android/server/AppOpsService$UidState;->hasForegroundWatchers:Z

    if-eqz v0, :cond_9

    if-eq v10, v11, :cond_9

    .line 2273
    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    sub-int/2addr v0, v9

    .local v0, "fgi":I
    :goto_2
    move v12, v0

    .end local v0    # "fgi":I
    .local v12, "fgi":I
    if-ltz v12, :cond_9

    .line 2274
    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v12}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2275
    goto/16 :goto_9

    .line 2277
    :cond_2
    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v12}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v13

    .line 2279
    .local v13, "code":I
    iget-object v0, v6, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/util/ArraySet;

    .line 2280
    .local v14, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    if-eqz v14, :cond_8

    .line 2281
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v9

    .local v0, "cbi":I
    :goto_3
    move v15, v0

    .end local v0    # "cbi":I
    .local v15, "cbi":I
    if-ltz v15, :cond_8

    .line 2282
    invoke-virtual {v14, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/AppOpsService$ModeCallback;

    .line 2283
    .local v5, "callback":Lcom/android/server/AppOpsService$ModeCallback;
    iget v0, v5, Lcom/android/server/AppOpsService$ModeCallback;->mFlags:I

    and-int/2addr v0, v9

    if-eqz v0, :cond_7

    iget v0, v7, Lcom/android/server/AppOpsService$UidState;->uid:I

    .line 2284
    invoke-virtual {v5, v0}, Lcom/android/server/AppOpsService$ModeCallback;->isWatchingUid(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2285
    goto/16 :goto_8

    .line 2287
    :cond_3
    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/4 v4, 0x4

    if-eqz v0, :cond_4

    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 2288
    invoke-virtual {v0, v13}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-ne v0, v4, :cond_4

    move v0, v9

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    move/from16 v16, v0

    .line 2289
    .local v16, "doAllPackages":Z
    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_7

    .line 2290
    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v9

    .local v0, "pkgi":I
    :goto_5
    move v3, v0

    .end local v0    # "pkgi":I
    .local v3, "pkgi":I
    if-ltz v3, :cond_7

    .line 2291
    iget-object v0, v7, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Ops;

    invoke-virtual {v0, v13}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/AppOpsService$Op;

    .line 2292
    .local v2, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v16, :cond_6

    if-eqz v2, :cond_5

    iget v0, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    if-ne v0, v4, :cond_5

    goto :goto_6

    .line 2290
    .end local v2    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_5
    move/from16 v20, v3

    move/from16 v17, v4

    move-object/from16 v18, v5

    goto :goto_7

    .line 2294
    .restart local v2    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_6
    :goto_6
    iget-object v1, v6, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;

    .line 2296
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget v4, v7, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v8, v7, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 2297
    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2294
    move-object v9, v1

    move-object v1, v6

    move-object/from16 v19, v2

    move-object v2, v5

    .end local v2    # "op":Lcom/android/server/AppOpsService$Op;
    .local v19, "op":Lcom/android/server/AppOpsService$Op;
    move/from16 v20, v3

    move-object/from16 v3, v17

    .end local v3    # "pkgi":I
    .local v20, "pkgi":I
    const/16 v17, 0x4

    move-object/from16 v18, v5

    move-object v5, v8

    .end local v5    # "callback":Lcom/android/server/AppOpsService$ModeCallback;
    .local v18, "callback":Lcom/android/server/AppOpsService$ModeCallback;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2290
    .end local v19    # "op":Lcom/android/server/AppOpsService$Op;
    :goto_7
    add-int/lit8 v0, v20, -0x1

    .end local v20    # "pkgi":I
    .restart local v0    # "pkgi":I
    move/from16 v4, v17

    move-object/from16 v5, v18

    const/4 v9, 0x1

    goto :goto_5

    .line 2281
    .end local v0    # "pkgi":I
    .end local v16    # "doAllPackages":Z
    .end local v18    # "callback":Lcom/android/server/AppOpsService$ModeCallback;
    :cond_7
    :goto_8
    add-int/lit8 v0, v15, -0x1

    .end local v15    # "cbi":I
    .local v0, "cbi":I
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 2273
    .end local v0    # "cbi":I
    .end local v13    # "code":I
    .end local v14    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    :cond_8
    :goto_9
    add-int/lit8 v0, v12, -0x1

    .end local v12    # "fgi":I
    .local v0, "fgi":I
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 2305
    .end local v0    # "fgi":I
    :cond_9
    return-void
.end method

.method static dumpCommandHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 3062
    const-string v0, "AppOps service (appops) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3063
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3064
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3065
    const-string v0, "  start [--user <USER_ID>] <PACKAGE | UID> <OP> "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3066
    const-string v0, "    Starts a given operation for a particular application."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3067
    const-string v0, "  stop [--user <USER_ID>] <PACKAGE | UID> <OP> "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3068
    const-string v0, "    Stops a given operation for a particular application."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3069
    const-string v0, "  set [--user <USER_ID>] <PACKAGE | UID> <OP> <MODE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3070
    const-string v0, "    Set the mode for a particular application and operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3071
    const-string v0, "  get [--user <USER_ID>] <PACKAGE | UID> [<OP>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3072
    const-string v0, "    Return the mode for a particular application and optional operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3073
    const-string v0, "  query-op [--user <USER_ID>] <OP> [<MODE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3074
    const-string v0, "    Print all packages that currently have the given op in the given mode."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3075
    const-string v0, "  reset [--user <USER_ID>] [<PACKAGE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3076
    const-string v0, "    Reset the given application or all applications to default modes."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3077
    const-string v0, "  write-settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3078
    const-string v0, "    Immediately write pending changes to storage."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3079
    const-string v0, "  read-settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3080
    const-string v0, "    Read the last written settings, replacing current state in RAM."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3081
    const-string v0, "  options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3082
    const-string v0, "    <PACKAGE> an Android package name."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3083
    const-string v0, "    <OP>      an AppOps operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3084
    const-string v0, "    <MODE>    one of allow, ignore, deny, or default"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3085
    const-string v0, "    <USER_ID> the user id under which the package is installed. If --user is not"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3086
    const-string v0, "              specified, the current user is assumed."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3087
    return-void
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3303
    const-string v0, "AppOps service (appops) dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3304
    const-string v0, "  -h"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3305
    const-string v0, "    Print this help text."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3306
    const-string v0, "  --op [OP]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3307
    const-string v0, "    Limit output to data associated with the given app op code."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3308
    const-string v0, "  --mode [MODE]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3309
    const-string v0, "    Limit output to data associated with the given app op mode."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3310
    const-string v0, "  --package [PACKAGE]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3311
    const-string v0, "    Limit output to data associated with the given package name."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3312
    return-void
.end method

.method private dumpTimesLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[JJLjava/text/SimpleDateFormat;Ljava/util/Date;)V
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "firstPrefix"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "times"    # [J
    .param p5, "now"    # J
    .param p7, "sdf"    # Ljava/text/SimpleDateFormat;
    .param p8, "date"    # Ljava/util/Date;

    move-object v0, p1

    .line 3316
    const/4 v1, 0x0

    .line 3317
    .local v1, "hasTime":Z
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    const-wide/16 v4, 0x0

    const/4 v6, 0x6

    if-ge v3, v6, :cond_1

    .line 3318
    aget-wide v7, p4, v3

    cmp-long v7, v7, v4

    if-eqz v7, :cond_0

    .line 3319
    const/4 v1, 0x1

    .line 3320
    goto :goto_1

    .line 3317
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3323
    .end local v3    # "i":I
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 3324
    return-void

    .line 3326
    :cond_2
    const/4 v3, 0x1

    .line 3327
    .local v3, "first":Z
    nop

    .local v2, "i":I
    :goto_2
    if-ge v2, v6, :cond_5

    .line 3328
    aget-wide v7, p4, v2

    cmp-long v7, v7, v4

    if-eqz v7, :cond_4

    .line 3329
    if-eqz v3, :cond_3

    move-object v7, p2

    goto :goto_3

    :cond_3
    move-object v7, p3

    :goto_3
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3330
    const/4 v3, 0x0

    .line 3331
    sget-object v7, Lcom/android/server/AppOpsService;->UID_STATE_NAMES:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3332
    const-string v7, " = "

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3333
    aget-wide v7, p4, v2

    move-object/from16 v9, p8

    invoke-virtual {v9, v7, v8}, Ljava/util/Date;->setTime(J)V

    .line 3334
    invoke-virtual/range {p7 .. p8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3335
    const-string v7, " ("

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3336
    aget-wide v7, p4, v2

    sub-long v7, v7, p5

    invoke-static {v7, v8, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3337
    const-string v7, ")"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 3327
    :cond_4
    move-object/from16 v9, p8

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3340
    .end local v2    # "i":I
    :cond_5
    move-object/from16 v9, p8

    return-void
.end method

.method private evalAllForegroundOpsLocked()V
    .locals 3

    .line 1678
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "uidi":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1679
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$UidState;

    .line 1680
    .local v1, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_0

    .line 1681
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Lcom/android/server/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 1678
    .end local v1    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1684
    .end local v0    # "uidi":I
    :cond_1
    return-void
.end method

.method private getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "edit"    # Z

    .line 2389
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 2391
    .local v0, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v0, :cond_0

    .line 2392
    const/4 v1, 0x0

    return-object v1

    .line 2394
    :cond_0
    invoke-direct {p0, v0, p1, p4}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v1

    return-object v1
.end method

.method private getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;
    .locals 4
    .param p1, "ops"    # Lcom/android/server/AppOpsService$Ops;
    .param p2, "code"    # I
    .param p3, "edit"    # Z

    .line 2398
    invoke-virtual {p1, p2}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Op;

    .line 2399
    .local v0, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v0, :cond_1

    .line 2400
    if-nez p3, :cond_0

    .line 2401
    const/4 v1, 0x0

    return-object v1

    .line 2403
    :cond_0
    new-instance v1, Lcom/android/server/AppOpsService$Op;

    iget-object v2, p1, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget-object v3, p1, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p2}, Lcom/android/server/AppOpsService$Op;-><init>(Lcom/android/server/AppOpsService$UidState;Ljava/lang/String;I)V

    move-object v0, v1

    .line 2404
    invoke-virtual {p1, p2, v0}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 2406
    :cond_1
    if-eqz p3, :cond_2

    .line 2407
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    .line 2409
    :cond_2
    return-object v0
.end method

.method private getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;
    .locals 11
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "edit"    # Z
    .param p4, "uidMismatchExpected"    # Z

    .line 2309
    invoke-direct {p0, p1, p3}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v0

    .line 2310
    .local v0, "uidState":Lcom/android/server/AppOpsService$UidState;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2311
    return-object v1

    .line 2314
    :cond_0
    iget-object v2, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v2, :cond_2

    .line 2315
    if-nez p3, :cond_1

    .line 2316
    return-object v1

    .line 2318
    :cond_1
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 2321
    :cond_2
    iget-object v2, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$Ops;

    .line 2322
    .local v2, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v2, :cond_a

    .line 2323
    if-nez p3, :cond_3

    .line 2324
    return-object v1

    .line 2326
    :cond_3
    const/4 v3, 0x0

    .line 2329
    .local v3, "isPrivileged":Z
    if-eqz p1, :cond_9

    .line 2330
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2332
    .local v4, "ident":J
    const/4 v6, -0x1

    .line 2334
    .local v6, "pkgUid":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    const/high16 v8, 0x10000000

    .line 2337
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 2335
    invoke-interface {v7, p2, v8, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 2338
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v7, :cond_5

    .line 2339
    iget v8, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move v6, v8

    .line 2340
    iget v8, v7, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    :goto_0
    move v3, v8

    goto :goto_1

    .line 2343
    :cond_5
    invoke-static {p2}, Lcom/android/server/AppOpsService;->resolveUid(Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v6, v8

    .line 2344
    if-ltz v6, :cond_6

    .line 2345
    const/4 v3, 0x0

    .line 2350
    .end local v7    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_6
    :goto_1
    goto :goto_2

    .line 2363
    .end local v6    # "pkgUid":I
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 2348
    .restart local v6    # "pkgUid":I
    :catch_0
    move-exception v7

    .line 2349
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v8, "AppOps"

    const-string v9, "Could not contact PackageManager"

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2351
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_2
    if-eq v6, p1, :cond_8

    .line 2354
    if-nez p4, :cond_7

    .line 2355
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "here"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2356
    .local v7, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v7}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 2357
    const-string v8, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad call: specified package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " under uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " but it is really "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2360
    .end local v7    # "ex":Ljava/lang/RuntimeException;
    :cond_7
    nop

    .line 2363
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2360
    return-object v1

    .line 2363
    .end local v6    # "pkgUid":I
    :cond_8
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2364
    goto :goto_4

    .line 2363
    :goto_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 2366
    .end local v4    # "ident":J
    :cond_9
    :goto_4
    new-instance v1, Lcom/android/server/AppOpsService$Ops;

    invoke-direct {v1, p2, v0, v3}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/AppOpsService$UidState;Z)V

    move-object v2, v1

    .line 2367
    iget-object v1, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2369
    .end local v3    # "isPrivileged":Z
    :cond_a
    return-object v2
.end method

.method private static getPackagesForUid(I)[Ljava/lang/String;
    .locals 2
    .param p0, "uid"    # I

    .line 3976
    const/4 v0, 0x0

    .line 3978
    .local v0, "packageNames":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 3981
    goto :goto_0

    .line 3979
    :catch_0
    move-exception v1

    .line 3982
    :goto_0
    if-nez v0, :cond_0

    .line 3983
    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v1

    .line 3985
    :cond_0
    return-object v0
.end method

.method private getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;
    .locals 5
    .param p1, "uid"    # I
    .param p2, "edit"    # Z

    .line 2245
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$UidState;

    .line 2246
    .local v0, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v0, :cond_1

    .line 2247
    if-nez p2, :cond_0

    .line 2248
    const/4 v1, 0x0

    return-object v1

    .line 2250
    :cond_0
    new-instance v1, Lcom/android/server/AppOpsService$UidState;

    invoke-direct {v1, p1}, Lcom/android/server/AppOpsService$UidState;-><init>(I)V

    move-object v0, v1

    .line 2251
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 2253
    :cond_1
    iget-wide v1, v0, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 2254
    iget-wide v1, v0, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J

    iget-wide v3, p0, Lcom/android/server/AppOpsService;->mLastUptime:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 2255
    invoke-direct {p0, v0}, Lcom/android/server/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/AppOpsService$UidState;)V

    goto :goto_0

    .line 2257
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/AppOpsService;->mLastUptime:J

    .line 2258
    iget-wide v1, v0, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J

    iget-wide v3, p0, Lcom/android/server/AppOpsService;->mLastUptime:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    .line 2259
    invoke-direct {p0, v0}, Lcom/android/server/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/AppOpsService$UidState;)V

    .line 2264
    :cond_3
    :goto_0
    return-object v0
.end method

.method private isOpRestrictedDueToSuspend(ILjava/lang/String;I)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 1827
    sget-object v0, Lcom/android/server/AppOpsService;->OPS_RESTRICTED_ON_SUSPEND:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1828
    const/4 v0, 0x0

    return v0

    .line 1830
    :cond_0
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 1831
    .local v0, "pmi":Landroid/content/pm/PackageManagerInternal;
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManagerInternal;->isPackageSuspended(Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method private isOpRestrictedLocked(IILjava/lang/String;)Z
    .locals 8
    .param p1, "uid"    # I
    .param p2, "code"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2413
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2414
    .local v0, "userHandle":I
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2416
    .local v1, "restrictionSetCount":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 2419
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$ClientRestrictionState;

    .line 2420
    .local v4, "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    invoke-virtual {v4, p2, p3, v0}, Lcom/android/server/AppOpsService$ClientRestrictionState;->hasRestriction(ILjava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2421
    invoke-static {p2}, Landroid/app/AppOpsManager;->opAllowSystemBypassRestriction(I)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 2423
    monitor-enter p0

    .line 2424
    :try_start_0
    invoke-direct {p0, p1, p3, v6, v2}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object v5

    .line 2426
    .local v5, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v5, :cond_0

    iget-boolean v7, v5, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z

    if-eqz v7, :cond_0

    .line 2427
    monitor-exit p0

    return v2

    .line 2429
    .end local v5    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2431
    :cond_1
    :goto_1
    return v6

    .line 2416
    .end local v4    # "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2434
    .end local v3    # "i":I
    :cond_3
    return v2
.end method

.method private isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1836
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1837
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1836
    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1838
    :catch_0
    move-exception v0

    .line 1839
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Could not talk to package manager service"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic lambda$1lQKm3WHEUQsD7KzYyJ5stQSc04(Lcom/android/server/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$NC5g1JY4YR6y4VePru4TO7AKp8M(Lcom/android/server/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/AppOpsService;->notifyOpActiveChanged(Landroid/util/ArraySet;IILjava/lang/String;Z)V

    return-void
.end method

.method public static synthetic lambda$UKMH8n9xZqCOX59uFPylskhjBgo(Lcom/android/server/AppOpsService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/AppOpsService;->notifyWatchersOfChange(II)V

    return-void
.end method

.method public static synthetic lambda$lxgFmOnGguOiLyfUZbyOpNBfTVw(Lcom/android/server/AppOpsService;Lcom/android/server/AppOpsService$ModeCallback;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AppOpsService;->notifyOpChanged(Lcom/android/server/AppOpsService$ModeCallback;IILjava/lang/String;)V

    return-void
.end method

.method private noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I
    .locals 10
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "proxyUid"    # I
    .param p5, "proxyPackageName"    # Ljava/lang/String;

    .line 1937
    monitor-enter p0

    .line 1938
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p2, p3, v1, v0}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object v2

    .line 1940
    .local v2, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v2, :cond_0

    .line 1943
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    .line 1945
    :cond_0
    invoke-direct {p0, v2, p1, v1}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v3

    .line 1946
    .local v3, "op":Lcom/android/server/AppOpsService$Op;
    invoke-direct {p0, p2, p1, p3}, Lcom/android/server/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1947
    monitor-exit p0

    return v1

    .line 1949
    :cond_1
    iget-object v4, v2, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 1950
    .local v4, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget v5, v3, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 1951
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Noting op not finished: uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " pkg "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/android/server/AppOpsService$Op;->time:[J

    iget v8, v4, Lcom/android/server/AppOpsService$UidState;->state:I

    aget-wide v7, v7, v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " duration="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    :cond_2
    iput v0, v3, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1956
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v5

    .line 1959
    .local v5, "switchCode":I
    iget-object v6, v4, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v6, :cond_4

    iget-object v6, v4, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v6

    if-ltz v6, :cond_4

    .line 1960
    iget-object v1, v4, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/android/server/AppOpsService$UidState;->evalMode(I)I

    move-result v1

    .line 1961
    .local v1, "uidMode":I
    if-eqz v1, :cond_3

    .line 1965
    iget-object v0, v3, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v6, v4, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    aput-wide v7, v0, v6

    .line 1966
    monitor-exit p0

    return v1

    .line 1968
    .end local v1    # "uidMode":I
    :cond_3
    goto :goto_1

    .line 1969
    :cond_4
    if-eq v5, p1, :cond_5

    invoke-direct {p0, v2, v5, v1}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v1

    goto :goto_0

    :cond_5
    move-object v1, v3

    .line 1970
    .local v1, "switchOp":Lcom/android/server/AppOpsService$Op;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/AppOpsService$Op;->getMode()I

    move-result v6

    .line 1971
    .local v6, "mode":I
    if-eqz v6, :cond_6

    .line 1975
    iget-object v0, v3, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v7, v4, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    aput-wide v8, v0, v7

    .line 1976
    monitor-exit p0

    return v6

    .line 1981
    .end local v1    # "switchOp":Lcom/android/server/AppOpsService$Op;
    .end local v6    # "mode":I
    :cond_6
    :goto_1
    iget-object v1, v3, Lcom/android/server/AppOpsService$Op;->time:[J

    iget v6, v4, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    aput-wide v7, v1, v6

    .line 1982
    iget-object v1, v3, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v6, v4, Lcom/android/server/AppOpsService$UidState;->state:I

    const-wide/16 v7, 0x0

    aput-wide v7, v1, v6

    .line 1983
    iput p4, v3, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 1984
    iput-object p5, v3, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    .line 1985
    monitor-exit p0

    return v0

    .line 1986
    .end local v2    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v3    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v4    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v5    # "switchCode":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private notifyOpActiveChanged(Landroid/util/ArraySet;IILjava/lang/String;Z)V
    .locals 6
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "active"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/AppOpsService$ActiveCallback;",
            ">;II",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 2182
    .local p1, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ActiveCallback;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2184
    .local v0, "identity":J
    :try_start_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 2185
    .local v2, "callbackCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 2186
    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$ActiveCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2188
    .local v4, "callback":Lcom/android/server/AppOpsService$ActiveCallback;
    :try_start_1
    iget-object v5, v4, Lcom/android/server/AppOpsService$ActiveCallback;->mCallback:Lcom/android/internal/app/IAppOpsActiveCallback;

    invoke-interface {v5, p2, p3, p4, p5}, Lcom/android/internal/app/IAppOpsActiveCallback;->opActiveChanged(IILjava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2191
    goto :goto_1

    .line 2189
    :catch_0
    move-exception v5

    .line 2185
    .end local v4    # "callback":Lcom/android/server/AppOpsService$ActiveCallback;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2194
    .end local v2    # "callbackCount":I
    .end local v3    # "i":I
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2195
    nop

    .line 2196
    return-void

    .line 2194
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V
    .locals 2
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            ">;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1495
    .local p1, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1496
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$ModeCallback;

    .line 1497
    .local v1, "callback":Lcom/android/server/AppOpsService$ModeCallback;
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/android/server/AppOpsService;->notifyOpChanged(Lcom/android/server/AppOpsService$ModeCallback;IILjava/lang/String;)V

    .line 1495
    .end local v1    # "callback":Lcom/android/server/AppOpsService$ModeCallback;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1499
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private notifyOpChanged(Lcom/android/server/AppOpsService$ModeCallback;IILjava/lang/String;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/server/AppOpsService$ModeCallback;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 1503
    const/4 v0, -0x2

    if-eq p3, v0, :cond_0

    iget v0, p1, Lcom/android/server/AppOpsService$ModeCallback;->mWatchingUid:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/android/server/AppOpsService$ModeCallback;->mWatchingUid:I

    if-eq v0, p3, :cond_0

    .line 1504
    return-void

    .line 1509
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1511
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p1, Lcom/android/server/AppOpsService$ModeCallback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v2, p2, p3, p4}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1515
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1512
    :catch_0
    move-exception v2

    .line 1515
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1516
    nop

    .line 1517
    return-void
.end method

.method private notifyWatchersOfChange(II)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I

    .line 3874
    monitor-enter p0

    .line 3875
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 3876
    .local v0, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    if-nez v0, :cond_0

    .line 3877
    monitor-exit p0

    return-void

    .line 3879
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .end local v0    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    move-object v0, v1

    .line 3880
    .local v0, "clonedCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3882
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V

    .line 3883
    return-void

    .line 3880
    .end local v0    # "clonedCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static onShellCommand(Lcom/android/server/AppOpsService$Shell;Ljava/lang/String;)I
    .locals 18
    .param p0, "shell"    # Lcom/android/server/AppOpsService$Shell;
    .param p1, "cmd"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 3090
    move-object/from16 v2, p1

    if-nez v2, :cond_0

    .line 3091
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AppOpsService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 3093
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 3094
    .local v3, "pw":Ljava/io/PrintWriter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    move-object v4, v0

    .line 3096
    .local v4, "err":Ljava/io/PrintWriter;
    const/4 v5, -0x1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "read-settings"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "start"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "reset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "stop"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_4
    const-string/jumbo v0, "set"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v7

    goto :goto_1

    :sswitch_5
    const-string v0, "get"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    goto :goto_1

    :sswitch_6
    const-string/jumbo v0, "query-op"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_7
    const-string/jumbo v0, "write-settings"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v5

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 3294
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AppOpsService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_f

    .line 3280
    :pswitch_0
    invoke-virtual {v1, v6, v4}, Lcom/android/server/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v0

    .line 3281
    .local v0, "res":I
    if-gez v0, :cond_2

    .line 3282
    return v0

    .line 3285
    :cond_2
    iget-object v6, v1, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 3286
    iget-object v6, v1, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget-object v8, v1, Lcom/android/server/AppOpsService$Shell;->mToken:Landroid/os/IBinder;

    iget v9, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    iget v10, v1, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    iget-object v11, v1, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-interface {v6, v8, v9, v10, v11}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 3291
    return v7

    .line 3289
    :cond_3
    return v5

    .line 3266
    .end local v0    # "res":I
    :pswitch_1
    invoke-virtual {v1, v6, v4}, Lcom/android/server/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v0

    .line 3267
    .restart local v0    # "res":I
    if-gez v0, :cond_4

    .line 3268
    return v0

    .line 3271
    :cond_4
    iget-object v6, v1, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 3272
    iget-object v8, v1, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget-object v9, v1, Lcom/android/server/AppOpsService$Shell;->mToken:Landroid/os/IBinder;

    iget v10, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    iget v11, v1, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    iget-object v12, v1, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-interface/range {v8 .. v13}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Z)I

    .line 3277
    return v7

    .line 3275
    :cond_5
    return v5

    .line 3254
    .end local v0    # "res":I
    :pswitch_2
    iget-object v0, v1, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 3255
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 3254
    invoke-virtual {v0, v6, v8, v5}, Lcom/android/server/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 3256
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3258
    .local v8, "token":J
    :try_start_1
    iget-object v0, v1, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    invoke-virtual {v0}, Lcom/android/server/AppOpsService;->readState()V

    .line 3259
    const-string v0, "Last settings read."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3261
    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3262
    nop

    .line 3263
    return v7

    .line 3261
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 3239
    .end local v8    # "token":J
    :pswitch_3
    iget-object v0, v1, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 3240
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 3239
    invoke-virtual {v0, v6, v8, v5}, Lcom/android/server/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 3241
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3243
    .restart local v8    # "token":J
    :try_start_3
    iget-object v6, v1, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    monitor-enter v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3244
    :try_start_4
    iget-object v0, v1, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v10, v1, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    iget-object v10, v10, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3245
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3246
    :try_start_5
    iget-object v0, v1, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    invoke-virtual {v0}, Lcom/android/server/AppOpsService;->writeState()V

    .line 3247
    const-string v0, "Current settings written."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 3249
    :try_start_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 3250
    nop

    .line 3251
    return v7

    .line 3245
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 3249
    :catchall_2
    move-exception v0

    :try_start_9
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 3203
    .end local v8    # "token":J
    :pswitch_4
    const/4 v0, 0x0

    .line 3204
    .local v0, "packageName":Ljava/lang/String;
    const/4 v6, -0x2

    move-object v8, v0

    move v0, v6

    .line 3205
    .local v0, "userId":I
    .local v8, "packageName":Ljava/lang/String;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    .line 3205
    .local v10, "argument":Ljava/lang/String;
    if-eqz v9, :cond_8

    .line 3206
    const-string v9, "--user"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3207
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v9

    .line 3208
    .local v9, "userStr":Ljava/lang/String;
    invoke-static {v9}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v11

    move v0, v11

    .line 3209
    .end local v9    # "userStr":Ljava/lang/String;
    goto :goto_2

    .line 3210
    :cond_6
    if-nez v8, :cond_7

    .line 3211
    move-object v8, v10

    goto :goto_2

    .line 3213
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: Unsupported argument: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3214
    return v5

    .line 3219
    .end local v10    # "argument":Ljava/lang/String;
    :cond_8
    if-ne v0, v6, :cond_9

    .line 3220
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    move v0, v6

    .line 3223
    :cond_9
    iget-object v6, v1, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v6, v0, v8}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V

    .line 3224
    const-string v6, "Reset all modes for: "

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3225
    if-ne v0, v5, :cond_a

    .line 3226
    const-string v6, "all users"

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 3228
    :cond_a
    const-string/jumbo v6, "user "

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3230
    :goto_3
    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3231
    if-nez v8, :cond_b

    .line 3232
    const-string v6, "all packages"

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 3234
    :cond_b
    const-string/jumbo v6, "package "

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3236
    :goto_4
    return v7

    .line 3175
    .end local v0    # "userId":I
    .end local v8    # "packageName":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {v1, v6, v4}, Lcom/android/server/AppOpsService$Shell;->parseUserOpMode(ILjava/io/PrintWriter;)I

    move-result v0

    .line 3176
    .local v0, "res":I
    if-gez v0, :cond_c

    .line 3177
    return v0

    .line 3179
    :cond_c
    iget-object v8, v1, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    new-array v6, v6, [I

    iget v9, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    aput v9, v6, v7

    invoke-interface {v8, v6}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v6

    .line 3181
    .local v6, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v6, :cond_12

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_d

    goto :goto_8

    .line 3185
    :cond_d
    move v8, v7

    .line 3185
    .local v8, "i":I
    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_11

    .line 3186
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager$PackageOps;

    .line 3187
    .local v9, "pkg":Landroid/app/AppOpsManager$PackageOps;
    const/4 v10, 0x0

    .line 3188
    .local v10, "hasMatch":Z
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v11

    .line 3189
    .local v11, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    move v12, v7

    .line 3189
    .local v12, "j":I
    :goto_6
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_f

    .line 3190
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/AppOpsManager$OpEntry;

    .line 3191
    .local v13, "ent":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v14

    iget v15, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    if-ne v14, v15, :cond_e

    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v14

    iget v15, v1, Lcom/android/server/AppOpsService$Shell;->mode:I

    if-ne v14, v15, :cond_e

    .line 3192
    const/4 v10, 0x1

    .line 3193
    goto :goto_7

    .line 3189
    .end local v13    # "ent":Landroid/app/AppOpsManager$OpEntry;
    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 3196
    .end local v12    # "j":I
    :cond_f
    :goto_7
    if-eqz v10, :cond_10

    .line 3197
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3185
    .end local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v10    # "hasMatch":Z
    .end local v11    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 3200
    .end local v8    # "i":I
    :cond_11
    return v7

    .line 3182
    :cond_12
    :goto_8
    const-string v8, "No operations."

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3183
    return v7

    .line 3122
    .end local v0    # "res":I
    .end local v6    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :pswitch_6
    invoke-virtual {v1, v7, v4}, Lcom/android/server/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v0

    .line 3123
    .restart local v0    # "res":I
    if-gez v0, :cond_13

    .line 3124
    return v0

    .line 3128
    :cond_13
    iget-object v8, v1, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    if-eqz v8, :cond_15

    .line 3129
    iget-object v8, v1, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v10, v1, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    iget-object v11, v1, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 3131
    iget v12, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    if-eq v12, v5, :cond_14

    new-array v9, v6, [I

    iget v6, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    aput v6, v9, v7

    nop

    .line 3129
    :cond_14
    invoke-interface {v8, v10, v11, v9}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v6

    .line 3129
    .restart local v6    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_9

    .line 3133
    .end local v6    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_15
    iget-object v8, v1, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v10, v1, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I

    .line 3135
    iget v11, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    if-eq v11, v5, :cond_16

    new-array v9, v6, [I

    iget v6, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    aput v6, v9, v7

    nop

    .line 3133
    :cond_16
    invoke-interface {v8, v10, v9}, Lcom/android/internal/app/IAppOpsService;->getUidOps(I[I)Ljava/util/List;

    move-result-object v6

    .line 3137
    .restart local v6    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_9
    if-eqz v6, :cond_1e

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_17

    goto/16 :goto_d

    .line 3145
    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 3146
    .local v8, "now":J
    move v10, v7

    .line 3146
    .local v10, "i":I
    :goto_a
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_1d

    .line 3147
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v11

    .line 3148
    .restart local v11    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    move v12, v7

    .line 3148
    .restart local v12    # "j":I
    :goto_b
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_1c

    .line 3149
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/AppOpsManager$OpEntry;

    .line 3150
    .restart local v13    # "ent":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v14

    invoke-static {v14}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3151
    const-string v14, ": "

    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3152
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v14

    invoke-static {v14}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3153
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_18

    .line 3154
    const-string v14, "; time="

    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3155
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v14

    sub-long v14, v8, v14

    invoke-static {v14, v15, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3156
    const-string v14, " ago"

    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3158
    :cond_18
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v14

    cmp-long v14, v14, v16

    if-eqz v14, :cond_19

    .line 3159
    const-string v14, "; rejectTime="

    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3160
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v14

    sub-long v14, v8, v14

    invoke-static {v14, v15, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3161
    const-string v14, " ago"

    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3163
    :cond_19
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v14

    if-ne v14, v5, :cond_1a

    .line 3164
    const-string v14, " (running)"

    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_c

    .line 3165
    :cond_1a
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v14

    if-eqz v14, :cond_1b

    .line 3166
    const-string v14, "; duration="

    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3167
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v14

    int-to-long v14, v14

    invoke-static {v14, v15, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3169
    :cond_1b
    :goto_c
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 3148
    .end local v13    # "ent":Landroid/app/AppOpsManager$OpEntry;
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_b

    .line 3146
    .end local v11    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v12    # "j":I
    :cond_1c
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_a

    .line 3172
    .end local v10    # "i":I
    :cond_1d
    return v7

    .line 3138
    .end local v8    # "now":J
    :cond_1e
    :goto_d
    const-string v8, "No operations."

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3139
    iget v8, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    if-le v8, v5, :cond_1f

    iget v8, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    const/16 v9, 0x55

    if-ge v8, v9, :cond_1f

    .line 3140
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Default mode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    .line 3141
    invoke-static {v9}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v9

    .line 3140
    invoke-static {v9}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3143
    :cond_1f
    return v7

    .line 3098
    .end local v0    # "res":I
    .end local v6    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :pswitch_7
    invoke-virtual {v1, v6, v4}, Lcom/android/server/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v0

    .line 3099
    .restart local v0    # "res":I
    if-gez v0, :cond_20

    .line 3100
    return v0

    .line 3102
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v6

    .line 3103
    .local v6, "modeStr":Ljava/lang/String;
    if-nez v6, :cond_21

    .line 3104
    const-string v7, "Error: Mode not specified."

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3105
    return v5

    .line 3108
    :cond_21
    invoke-static {v6, v4}, Lcom/android/server/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v8

    .line 3109
    .local v8, "mode":I
    if-gez v8, :cond_22

    .line 3110
    return v5

    .line 3113
    :cond_22
    iget-object v9, v1, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v9, :cond_23

    .line 3114
    iget-object v9, v1, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v10, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    iget v11, v1, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    iget-object v12, v1, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-interface {v9, v10, v11, v12, v8}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V

    goto :goto_e

    .line 3117
    :cond_23
    iget-object v9, v1, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v10, v1, Lcom/android/server/AppOpsService$Shell;->op:I

    iget v11, v1, Lcom/android/server/AppOpsService$Shell;->nonpackageUid:I

    invoke-interface {v9, v10, v11, v8}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    .line 3119
    :goto_e
    return v7

    .line 3294
    .end local v0    # "res":I
    .end local v6    # "modeStr":Ljava/lang/String;
    .end local v8    # "mode":I
    :goto_f
    return v0

    .line 3296
    :catch_0
    move-exception v0

    .line 3297
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3299
    .end local v0    # "e":Landroid/os/RemoteException;
    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x658cadaf -> :sswitch_7
        -0x458a76fa -> :sswitch_6
        0x18f56 -> :sswitch_5
        0x1bc62 -> :sswitch_4
        0x360802 -> :sswitch_3
        0x6761d4f -> :sswitch_2
        0x68ac462 -> :sswitch_1
        0x7c514e7a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method private pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V
    .locals 4
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 1294
    invoke-virtual {p1}, Lcom/android/server/AppOpsService$Op;->hasAnyTime()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1295
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, v0}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 1297
    .local v0, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v0, :cond_1

    .line 1298
    iget v1, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService$Ops;->remove(I)V

    .line 1299
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1300
    iget-object v1, v0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 1301
    .local v1, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1302
    .local v2, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-eqz v2, :cond_1

    .line 1303
    iget-object v3, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1304
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1305
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1307
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1308
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1314
    .end local v0    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v1    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v2    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_1
    return-void
.end method

.method private removeUidsForUserLocked(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .line 3924
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3925
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 3926
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 3927
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3924
    .end local v1    # "uid":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3930
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private resetScreenCompatConfig()V
    .locals 11

    .line 786
    const/16 v0, 0x46

    .line 787
    .local v0, "op":I
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0x46

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/android/server/AppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v1

    .line 788
    .local v1, "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v1, :cond_3

    .line 789
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$PackageOps;

    .line 791
    .local v4, "packageOp":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v5

    .line 792
    .local v5, "uid":I
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 793
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$OpEntry;

    .line 794
    .local v8, "ent":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v9

    if-ne v9, v2, :cond_1

    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v9

    sget v10, Lcom/android/server/AppOpsService;->MODE_COMPAT:I

    if-eq v9, v10, :cond_0

    .line 795
    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v9

    sget v10, Lcom/android/server/AppOpsService;->MODE_NONFULL:I

    if-eq v9, v10, :cond_0

    .line 796
    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v9

    sget v10, Lcom/android/server/AppOpsService;->MODE_FULL:I

    if-ne v9, v10, :cond_1

    .line 797
    :cond_0
    const/4 v9, 0x3

    invoke-virtual {p0, v2, v5, v6, v9}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 799
    .end local v8    # "ent":Landroid/app/AppOpsManager$OpEntry;
    :cond_1
    goto :goto_1

    .line 800
    .end local v4    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    .end local v5    # "uid":I
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 802
    :cond_3
    return-void
.end method

.method private static resolvePackageName(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3940
    if-nez p0, :cond_0

    .line 3941
    const-string/jumbo v0, "root"

    return-object v0

    .line 3942
    :cond_0
    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_1

    .line 3943
    const-string v0, "com.android.shell"

    return-object v0

    .line 3944
    :cond_1
    const/16 v0, 0x3f5

    if-ne p0, v0, :cond_2

    .line 3945
    const-string/jumbo v0, "media"

    return-object v0

    .line 3946
    :cond_2
    const/16 v0, 0x411

    if-ne p0, v0, :cond_3

    .line 3947
    const-string v0, "audioserver"

    return-object v0

    .line 3948
    :cond_3
    const/16 v0, 0x417

    if-ne p0, v0, :cond_4

    .line 3949
    const-string v0, "cameraserver"

    return-object v0

    .line 3950
    :cond_4
    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_5

    if-nez p1, :cond_5

    .line 3951
    const-string v0, "android"

    return-object v0

    .line 3953
    :cond_5
    return-object p1
.end method

.method private resolveScreenCompatConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 19
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    move-object/from16 v1, p0

    .line 631
    move-object/from16 v2, p1

    if-nez v2, :cond_0

    .line 632
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService;->updateDefaultForScreenCompat()V

    .line 633
    return-void

    .line 636
    :cond_0
    :try_start_0
    const-string v0, "AppOps"

    const-string v3, "[OnlineConfig] ScreenCompat: update config start"

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 638
    .local v3, "configList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 639
    .local v4, "full_configList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 640
    .local v5, "thirdPartyconfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 641
    .local v6, "ignoreconfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 642
    .local v7, "quickReolyImeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 642
    .local v0, "index":I
    :goto_0
    move v9, v0

    .line 642
    .end local v0    # "index":I
    .local v9, "index":I
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v9, v0, :cond_12

    .line 643
    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    move-object v10, v0

    .line 644
    .local v10, "json":Lorg/json/JSONObject;
    sget-boolean v0, Lcom/android/server/AppOpsService;->IS_SCREEN_COMPAT_ENABLED:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "op_screen_compat_enabled_config"

    const-string/jumbo v11, "name"

    .line 645
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 646
    const-string/jumbo v0, "value"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 647
    .local v0, "defaultEnabledAppListJsonArray":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v11

    .line 648
    .local v11, "size":I
    const/4 v12, 0x0

    .line 648
    .local v12, "i":I
    :goto_1
    if-ge v12, v11, :cond_2

    .line 649
    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 650
    .local v13, "pkg":Ljava/lang/String;
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    sget-boolean v14, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v14, :cond_1

    .line 652
    const-string v14, "AppOps"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ScreenCompat: add default enabled pkg:"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    .end local v13    # "pkg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 657
    .end local v0    # "defaultEnabledAppListJsonArray":Lorg/json/JSONArray;
    .end local v11    # "size":I
    .end local v12    # "i":I
    :cond_2
    goto/16 :goto_a

    :cond_3
    sget-boolean v0, Lcom/android/server/AppOpsService;->IS_SCREEN_COMPAT_ENABLED:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "op_screen_compat_full_config_mp1"

    const-string/jumbo v11, "name"

    .line 658
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 659
    const-string/jumbo v0, "value"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object v11, v0

    .line 660
    .local v11, "defaultEnabledAppListJsonArray":Lorg/json/JSONArray;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v0

    move v12, v0

    .line 661
    .local v12, "size":I
    const/4 v0, 0x0

    .line 662
    .local v0, "reset_gesture_prop":Z
    move v13, v0

    const/4 v0, 0x0

    .line 662
    .local v0, "i":I
    .local v13, "reset_gesture_prop":Z
    :goto_2
    move v14, v0

    .line 662
    .end local v0    # "i":I
    .local v14, "i":I
    if-ge v14, v12, :cond_7

    .line 663
    invoke-virtual {v11, v14}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 665
    .local v15, "pkg":Ljava/lang/String;
    if-nez v13, :cond_5

    if-eqz v15, :cond_5

    const-string/jumbo v0, "reset_gesture_prop:"

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v0, :cond_5

    .line 666
    const/4 v13, 0x1

    .line 668
    :try_start_1
    const-string v0, ":"

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, "split":[Ljava/lang/String;
    array-length v8, v0

    const/4 v2, 0x1

    if-le v8, v2, :cond_4

    .line 670
    aget-object v8, v0, v2

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 671
    .local v2, "value":I
    const-string v8, "AppOps"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4

    move-object/from16 v16, v11

    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    .line 671
    .end local v11    # "defaultEnabledAppListJsonArray":Lorg/json/JSONArray;
    .local v16, "defaultEnabledAppListJsonArray":Lorg/json/JSONArray;
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4

    move/from16 v17, v12

    :try_start_3
    const-string v12, "GestureButton: reset_gesture_prop to "

    .line 671
    .end local v12    # "size":I
    .local v17, "size":I
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const-string/jumbo v8, "persist.sys.gesture_button.horizontal_dis"

    const/4 v11, 0x1

    aget-object v12, v0, v11

    invoke-static {v8, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4

    .line 672
    .end local v0    # "split":[Ljava/lang/String;
    .end local v2    # "value":I
    goto :goto_3

    .line 674
    :catch_0
    move-exception v0

    goto :goto_4

    .line 674
    .end local v17    # "size":I
    .restart local v12    # "size":I
    :catch_1
    move-exception v0

    move/from16 v17, v12

    .line 674
    .end local v12    # "size":I
    .restart local v17    # "size":I
    goto :goto_4

    .line 676
    .end local v16    # "defaultEnabledAppListJsonArray":Lorg/json/JSONArray;
    .end local v17    # "size":I
    .restart local v11    # "defaultEnabledAppListJsonArray":Lorg/json/JSONArray;
    .restart local v12    # "size":I
    :cond_4
    move-object/from16 v16, v11

    move/from16 v17, v12

    .line 676
    .end local v11    # "defaultEnabledAppListJsonArray":Lorg/json/JSONArray;
    .end local v12    # "size":I
    .restart local v16    # "defaultEnabledAppListJsonArray":Lorg/json/JSONArray;
    .restart local v17    # "size":I
    :goto_3
    goto :goto_5

    .line 674
    .end local v16    # "defaultEnabledAppListJsonArray":Lorg/json/JSONArray;
    .end local v17    # "size":I
    .restart local v11    # "defaultEnabledAppListJsonArray":Lorg/json/JSONArray;
    .restart local v12    # "size":I
    :catch_2
    move-exception v0

    move-object/from16 v16, v11

    move/from16 v17, v12

    .line 675
    .end local v11    # "defaultEnabledAppListJsonArray":Lorg/json/JSONArray;
    .end local v12    # "size":I
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v16    # "defaultEnabledAppListJsonArray":Lorg/json/JSONArray;
    .restart local v17    # "size":I
    :goto_4
    :try_start_4
    const-string v2, "AppOps"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GestureButton: reset_gesture_prop failed "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 677
    .end local v0    # "ex":Ljava/lang/Exception;
    goto :goto_5

    .line 679
    .end local v16    # "defaultEnabledAppListJsonArray":Lorg/json/JSONArray;
    .end local v17    # "size":I
    .restart local v11    # "defaultEnabledAppListJsonArray":Lorg/json/JSONArray;
    .restart local v12    # "size":I
    :cond_5
    move-object/from16 v16, v11

    move/from16 v17, v12

    .line 679
    .end local v11    # "defaultEnabledAppListJsonArray":Lorg/json/JSONArray;
    .end local v12    # "size":I
    .restart local v16    # "defaultEnabledAppListJsonArray":Lorg/json/JSONArray;
    .restart local v17    # "size":I
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_6

    .line 681
    const-string v0, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ScreenCompat: add default full pkg:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    .end local v15    # "pkg":Ljava/lang/String;
    :cond_6
    :goto_5
    add-int/lit8 v0, v14, 0x1

    .line 662
    .end local v14    # "i":I
    .local v0, "i":I
    move-object/from16 v11, v16

    move/from16 v12, v17

    move-object/from16 v2, p1

    goto/16 :goto_2

    .line 684
    .end local v0    # "i":I
    .end local v13    # "reset_gesture_prop":Z
    .end local v16    # "defaultEnabledAppListJsonArray":Lorg/json/JSONArray;
    .end local v17    # "size":I
    :cond_7
    goto/16 :goto_a

    :cond_8
    sget-boolean v0, Lcom/android/server/AppOpsService;->IS_SCREEN_COMPAT_ENABLED:Z

    if-eqz v0, :cond_b

    const-string/jumbo v0, "op_screen_compat_3p_config"

    const-string/jumbo v2, "name"

    .line 685
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 686
    const-string/jumbo v0, "value"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 687
    .local v0, "defaultEnabledAppListJsonArray":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 688
    .local v2, "size":I
    const/4 v8, 0x0

    .line 688
    .local v8, "i":I
    :goto_6
    if-ge v8, v2, :cond_a

    .line 689
    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 690
    .local v11, "pkg":Ljava/lang/String;
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    sget-boolean v12, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v12, :cond_9

    .line 692
    const-string v12, "AppOps"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ScreenCompat: add 3p config pkg:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    .end local v11    # "pkg":Ljava/lang/String;
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 696
    .end local v0    # "defaultEnabledAppListJsonArray":Lorg/json/JSONArray;
    .end local v2    # "size":I
    .end local v8    # "i":I
    :cond_a
    goto/16 :goto_a

    :cond_b
    sget-boolean v0, Lcom/android/server/AppOpsService;->IS_SCREEN_COMPAT_ENABLED:Z

    if-eqz v0, :cond_f

    const-string/jumbo v0, "op_screen_compat_ignore_config"

    const-string/jumbo v2, "name"

    .line 697
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 698
    const-string/jumbo v0, "value"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 699
    .restart local v0    # "defaultEnabledAppListJsonArray":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 700
    .restart local v2    # "size":I
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/server/AppOpsService;->mEnableIgnoreCutoutMode:Z

    .line 701
    move v11, v8

    .line 701
    .local v11, "i":I
    :goto_7
    if-ge v11, v2, :cond_e

    .line 702
    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 703
    .local v12, "pkg":Ljava/lang/String;
    const-string/jumbo v13, "ignore_all"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 704
    const/4 v13, 0x1

    sput-boolean v13, Lcom/android/server/AppOpsService;->mEnableIgnoreCutoutMode:Z

    .line 705
    const-string v14, "AppOps"

    const-string v15, "ScreenCompat: ignore all cutout."

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    goto :goto_8

    .line 708
    :cond_c
    const/4 v13, 0x1

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    sget-boolean v14, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v14, :cond_d

    .line 710
    const-string v14, "AppOps"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ScreenCompat: add ignore config pkg:"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    .end local v12    # "pkg":Ljava/lang/String;
    :cond_d
    :goto_8
    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x0

    goto :goto_7

    .line 714
    .end local v0    # "defaultEnabledAppListJsonArray":Lorg/json/JSONArray;
    .end local v2    # "size":I
    .end local v11    # "i":I
    :cond_e
    goto :goto_a

    :cond_f
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->IS_SUPPORT_QUICK_REPLY:Z

    if-eqz v0, :cond_11

    const-string/jumbo v0, "op_quick_reply_ime_package_config"

    const-string/jumbo v2, "name"

    .line 715
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 716
    const-string/jumbo v0, "value"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 717
    .restart local v0    # "defaultEnabledAppListJsonArray":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 718
    .restart local v2    # "size":I
    const/4 v8, 0x0

    .line 718
    .restart local v8    # "i":I
    :goto_9
    if-ge v8, v2, :cond_11

    .line 719
    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 720
    .local v11, "pkg":Ljava/lang/String;
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    sget-boolean v12, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v12, :cond_10

    .line 722
    const-string v12, "AppOps"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "QuickReply: add ime package config pkg:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    .end local v11    # "pkg":Ljava/lang/String;
    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 642
    .end local v0    # "defaultEnabledAppListJsonArray":Lorg/json/JSONArray;
    .end local v2    # "size":I
    .end local v8    # "i":I
    .end local v10    # "json":Lorg/json/JSONObject;
    :cond_11
    :goto_a
    add-int/lit8 v0, v9, 0x1

    .line 642
    .end local v9    # "index":I
    .local v0, "index":I
    move-object/from16 v2, p1

    goto/16 :goto_0

    .line 727
    .end local v0    # "index":I
    :cond_12
    sget-object v2, Lcom/android/server/AppOpsService;->mScreenCompatLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 728
    :try_start_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 729
    iput-object v3, v1, Lcom/android/server/AppOpsService;->mScreenCompatDefaultEnabledList:Ljava/util/ArrayList;

    .line 731
    :cond_13
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 732
    iput-object v4, v1, Lcom/android/server/AppOpsService;->mScreenCompatDefaultFullscreenList:Ljava/util/ArrayList;

    .line 734
    :cond_14
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 735
    iput-object v5, v1, Lcom/android/server/AppOpsService;->mScreenCompatThirdPartyAppList:Ljava/util/ArrayList;

    .line 737
    :cond_15
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_16

    .line 738
    sput-object v6, Lcom/android/server/AppOpsService;->mScreenCompatIgnoreCutoutList:Ljava/util/ArrayList;

    .line 740
    :cond_16
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 741
    sput-object v7, Lcom/android/server/am/OemQuickReply;->OEM_IME_PACKAGE_LIST:Ljava/util/List;

    .line 743
    :cond_17
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 745
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService;->updateDefaultForScreenCompat()V

    .line 746
    const-string v0, "AppOps"

    const-string v2, "[OnlineConfig] ScreenCompat: update config complete"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 746
    .end local v3    # "configList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "full_configList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "thirdPartyconfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "ignoreconfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "quickReolyImeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_b

    .line 743
    .restart local v3    # "configList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "full_configList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "thirdPartyconfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "ignoreconfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "quickReolyImeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 749
    .end local v3    # "configList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "full_configList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "thirdPartyconfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "ignoreconfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "quickReolyImeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_3
    move-exception v0

    .line 750
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] ScreenCompatConfigUpdater, error message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_c

    .line 747
    :catch_4
    move-exception v0

    .line 748
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] ScreenCompatConfigUpdater, error message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_b
    nop

    .line 752
    :goto_c
    return-void
.end method

.method private static resolveUid(Ljava/lang/String;)I
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 3957
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 3958
    return v0

    .line 3960
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "audioserver"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "shell"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "media"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "root"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :sswitch_4
    const-string v1, "cameraserver"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 3972
    return v0

    .line 3970
    :pswitch_0
    const/16 v0, 0x417

    return v0

    .line 3968
    :pswitch_1
    const/16 v0, 0x411

    return v0

    .line 3966
    :pswitch_2
    const/16 v0, 0x3f5

    return v0

    .line 3964
    :pswitch_3
    const/16 v0, 0x7d0

    return v0

    .line 3962
    :pswitch_4
    return v2

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1dbbd58 -> :sswitch_4
        0x3580e2 -> :sswitch_3
        0x62f6fe4 -> :sswitch_2
        0x6855e30 -> :sswitch_1
        0x50251299 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private scheduleFastWriteLocked()V
    .locals 4

    .line 2380
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mFastWriteScheduled:Z

    if-nez v0, :cond_0

    .line 2381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 2382
    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mFastWriteScheduled:Z

    .line 2383
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2384
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2386
    :cond_0
    return-void
.end method

.method private scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V
    .locals 10
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "active"    # Z

    .line 2154
    const/4 v0, 0x0

    .line 2155
    .local v0, "dispatchedCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ActiveCallback;>;"
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2156
    .local v1, "callbackListCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 2157
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 2158
    .local v3, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$ActiveCallback;>;"
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$ActiveCallback;

    .line 2159
    .local v4, "callback":Lcom/android/server/AppOpsService$ActiveCallback;
    if-eqz v4, :cond_2

    .line 2160
    iget v5, v4, Lcom/android/server/AppOpsService$ActiveCallback;->mWatchingUid:I

    if-ltz v5, :cond_0

    iget v5, v4, Lcom/android/server/AppOpsService$ActiveCallback;->mWatchingUid:I

    if-eq v5, p2, :cond_0

    .line 2161
    goto :goto_1

    .line 2163
    :cond_0
    if-nez v0, :cond_1

    .line 2164
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v5

    .line 2166
    :cond_1
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2156
    .end local v3    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$ActiveCallback;>;"
    .end local v4    # "callback":Lcom/android/server/AppOpsService$ActiveCallback;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2169
    .end local v2    # "i":I
    :cond_3
    if-nez v0, :cond_4

    .line 2170
    return-void

    .line 2172
    :cond_4
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/server/-$$Lambda$AppOpsService$NC5g1JY4YR6y4VePru4TO7AKp8M;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$NC5g1JY4YR6y4VePru4TO7AKp8M;

    .line 2174
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 2172
    move-object v4, p0

    move-object v5, v0

    move-object v8, p3

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2175
    return-void
.end method

.method private scheduleWriteLocked()V
    .locals 4

    .line 2373
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-nez v0, :cond_0

    .line 2374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 2375
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2377
    :cond_0
    return-void
.end method

.method private setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "userHandle"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;

    .line 3848
    monitor-enter p0

    .line 3849
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ClientRestrictionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3851
    .local v0, "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    if-nez v0, :cond_0

    .line 3853
    :try_start_1
    new-instance v1, Lcom/android/server/AppOpsService$ClientRestrictionState;

    invoke-direct {v1, p0, p3}, Lcom/android/server/AppOpsService$ClientRestrictionState;-><init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 3856
    nop

    .line 3857
    :try_start_2
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3854
    :catch_0
    move-exception v1

    .line 3855
    .local v1, "e":Landroid/os/RemoteException;
    monitor-exit p0

    return-void

    .line 3860
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    invoke-virtual {v0, p1, p2, p5, p4}, Lcom/android/server/AppOpsService$ClientRestrictionState;->setRestriction(IZ[Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3861
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/-$$Lambda$AppOpsService$UKMH8n9xZqCOX59uFPylskhjBgo;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$UKMH8n9xZqCOX59uFPylskhjBgo;

    .line 3862
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3861
    invoke-static {v2, p0, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3865
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$ClientRestrictionState;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3866
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3867
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$ClientRestrictionState;->destroy()V

    .line 3869
    .end local v0    # "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    :cond_2
    monitor-exit p0

    .line 3870
    return-void

    .line 3869
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private upgradeLocked(I)V
    .locals 4
    .param p1, "oldVersion"    # I

    .line 2552
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 2553
    return-void

    .line 2555
    :cond_0
    const-string v1, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrading app-ops xml from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2556
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 2558
    :cond_1
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->upgradeRunAnyInBackgroundLocked()V

    .line 2563
    :goto_0
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V

    .line 2564
    return-void
.end method

.method private upgradeRunAnyInBackgroundLocked()V
    .locals 12

    .line 2516
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 2517
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$UidState;

    .line 2518
    .local v2, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v2, :cond_0

    .line 2519
    goto :goto_2

    .line 2521
    :cond_0
    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/16 v4, 0x40

    const/16 v5, 0x4e

    if-eqz v3, :cond_1

    .line 2522
    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    .line 2523
    .local v3, "idx":I
    if-ltz v3, :cond_1

    .line 2524
    iget-object v6, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    iget-object v7, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 2525
    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    .line 2524
    invoke-virtual {v6, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2528
    .end local v3    # "idx":I
    :cond_1
    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v3, :cond_2

    .line 2529
    goto :goto_2

    .line 2531
    :cond_2
    const/4 v3, 0x0

    .line 2532
    .local v3, "changed":Z
    move v6, v3

    move v3, v0

    .local v3, "j":I
    .local v6, "changed":Z
    :goto_1
    iget-object v7, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 2533
    iget-object v7, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppOpsService$Ops;

    .line 2534
    .local v7, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v7, :cond_3

    .line 2535
    invoke-virtual {v7, v4}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AppOpsService$Op;

    .line 2536
    .local v8, "op":Lcom/android/server/AppOpsService$Op;
    if-eqz v8, :cond_3

    iget v9, v8, Lcom/android/server/AppOpsService$Op;->mode:I

    iget v10, v8, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v10}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v10

    if-eq v9, v10, :cond_3

    .line 2537
    new-instance v9, Lcom/android/server/AppOpsService$Op;

    iget-object v10, v8, Lcom/android/server/AppOpsService$Op;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget-object v11, v8, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-direct {v9, v10, v11, v5}, Lcom/android/server/AppOpsService$Op;-><init>(Lcom/android/server/AppOpsService$UidState;Ljava/lang/String;I)V

    .line 2539
    .local v9, "copy":Lcom/android/server/AppOpsService$Op;
    iget v10, v8, Lcom/android/server/AppOpsService$Op;->mode:I

    iput v10, v9, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 2540
    invoke-virtual {v7, v5, v9}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 2541
    const/4 v6, 0x1

    .line 2532
    .end local v7    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v8    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v9    # "copy":Lcom/android/server/AppOpsService$Op;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2545
    .end local v3    # "j":I
    :cond_4
    if-eqz v6, :cond_5

    .line 2546
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Lcom/android/server/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 2516
    .end local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v6    # "changed":Z
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2549
    .end local v1    # "i":I
    :cond_6
    return-void
.end method

.method private verifyIncomingOp(I)V
    .locals 3
    .param p1, "op"    # I

    .line 2238
    if-ltz p1, :cond_0

    const/16 v0, 0x55

    if-ge p1, v0, :cond_0

    .line 2239
    return-void

    .line 2241
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad operation #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyIncomingUid(I)V
    .locals 5
    .param p1, "uid"    # I

    .line 2227
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2228
    return-void

    .line 2230
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2231
    return-void

    .line 2233
    :cond_1
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    .line 2234
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    .line 2233
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2235
    return-void
.end method


# virtual methods
.method public checkAudioOperation(IIILjava/lang/String;)I
    .locals 4
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 1806
    :try_start_0
    invoke-direct {p0, p4, p3}, Lcom/android/server/AppOpsService;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1810
    .local v0, "suspended":Z
    goto :goto_0

    .line 1807
    .end local v0    # "suspended":Z
    :catch_0
    move-exception v0

    .line 1809
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v0, 0x0

    .line 1812
    .local v0, "suspended":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1813
    const-string v1, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio disabled for suspended package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    const/4 v1, 0x1

    return v1

    .line 1817
    :cond_0
    monitor-enter p0

    .line 1818
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AppOpsService;->checkRestrictionLocked(IIILjava/lang/String;)I

    move-result v1

    .line 1819
    .local v1, "mode":I
    if-eqz v1, :cond_1

    .line 1820
    monitor-exit p0

    return v1

    .line 1822
    .end local v1    # "mode":I
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1823
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v1

    return v1

    .line 1822
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public checkOperation(IILjava/lang/String;)I
    .locals 4
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 1775
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1776
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1777
    invoke-static {p2, p3}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1778
    .local v0, "resolvedPackageName":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1779
    return v1

    .line 1781
    :cond_0
    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/AppOpsService;->isOpRestrictedDueToSuspend(ILjava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1782
    return v1

    .line 1784
    :cond_1
    monitor-enter p0

    .line 1785
    :try_start_0
    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1786
    monitor-exit p0

    return v1

    .line 1788
    :cond_2
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    move p1, v1

    .line 1789
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v2

    .line 1790
    .local v2, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 1791
    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_3

    .line 1792
    iget-object v1, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    monitor-exit p0

    return v1

    .line 1794
    :cond_3
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v1

    .line 1795
    .local v1, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v1, :cond_4

    .line 1796
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v3

    monitor-exit p0

    return v3

    .line 1798
    :cond_4
    iget v3, v1, Lcom/android/server/AppOpsService$Op;->mode:I

    monitor-exit p0

    return v3

    .line 1799
    .end local v1    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public checkPackage(ILjava/lang/String;)I
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1890
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1891
    monitor-enter p0

    .line 1892
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 1894
    .local v0, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v0, :cond_0

    .line 1895
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 1897
    :cond_0
    const/4 v1, 0x2

    monitor-exit p0

    return v1

    .line 1899
    .end local v0    # "ops":Lcom/android/server/AppOpsService$Ops;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 59
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    move-object/from16 v15, p0

    move-object/from16 v14, p2

    .line 3344
    move-object/from16 v13, p3

    iget-object v0, v15, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "AppOps"

    invoke-static {v0, v1, v14}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3346
    :cond_0
    const/4 v0, -0x1

    .line 3347
    .local v0, "dumpOp":I
    const/4 v1, 0x0

    .line 3348
    .local v1, "dumpPackage":Ljava/lang/String;
    const/4 v2, -0x1

    .line 3349
    .local v2, "dumpUid":I
    const/4 v3, -0x1

    .line 3351
    .local v3, "dumpMode":I
    const/4 v12, 0x0

    const/4 v11, 0x1

    if-eqz v13, :cond_d

    .line 3352
    move v4, v3

    move v3, v2

    move v2, v0

    move v0, v12

    .line 3352
    .local v0, "i":I
    .local v2, "dumpOp":I
    .local v3, "dumpUid":I
    .local v4, "dumpMode":I
    :goto_0
    array-length v5, v13

    if-ge v0, v5, :cond_c

    .line 3353
    aget-object v5, v13, v0

    .line 3354
    .local v5, "arg":Ljava/lang/String;
    const-string v6, "-h"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3355
    invoke-direct {v15, v14}, Lcom/android/server/AppOpsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 3356
    return-void

    .line 3357
    :cond_1
    const-string v6, "-a"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3357
    .end local v5    # "arg":Ljava/lang/String;
    goto/16 :goto_2

    .line 3359
    .restart local v5    # "arg":Ljava/lang/String;
    :cond_2
    const-string v6, "--op"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3360
    add-int/lit8 v0, v0, 0x1

    .line 3361
    array-length v6, v13

    if-lt v0, v6, :cond_3

    .line 3362
    const-string v6, "No argument for --op option"

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3363
    return-void

    .line 3365
    :cond_3
    aget-object v6, v13, v0

    invoke-static {v6, v14}, Lcom/android/server/AppOpsService$Shell;->access$700(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v2

    .line 3366
    if-gez v2, :cond_9

    .line 3367
    return-void

    .line 3369
    :cond_4
    const-string v6, "--package"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3370
    add-int/lit8 v6, v0, 0x1

    .line 3371
    .end local v0    # "i":I
    .local v6, "i":I
    array-length v0, v13

    if-lt v6, v0, :cond_5

    .line 3372
    const-string v0, "No argument for --package option"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3373
    return-void

    .line 3375
    :cond_5
    aget-object v1, v13, v6

    .line 3377
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const v7, 0xc02000

    invoke-interface {v0, v1, v7, v12}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v0

    .line 3381
    goto :goto_1

    .line 3380
    :catch_0
    move-exception v0

    .line 3382
    :goto_1
    if-gez v3, :cond_6

    .line 3383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown package: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3384
    return-void

    .line 3386
    :cond_6
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 3352
    .end local v3    # "dumpUid":I
    .local v0, "dumpUid":I
    move v3, v0

    move v0, v6

    goto :goto_2

    .line 3387
    .end local v6    # "i":I
    .local v0, "i":I
    .restart local v3    # "dumpUid":I
    :cond_7
    const-string v6, "--mode"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 3388
    add-int/lit8 v0, v0, 0x1

    .line 3389
    array-length v6, v13

    if-lt v0, v6, :cond_8

    .line 3390
    const-string v6, "No argument for --mode option"

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3391
    return-void

    .line 3393
    :cond_8
    aget-object v6, v13, v0

    invoke-static {v6, v14}, Lcom/android/server/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v4

    .line 3394
    if-gez v4, :cond_9

    .line 3395
    return-void

    .line 3352
    .end local v5    # "arg":Ljava/lang/String;
    :cond_9
    :goto_2
    add-int/2addr v0, v11

    goto/16 :goto_0

    .line 3397
    .restart local v5    # "arg":Ljava/lang/String;
    :cond_a
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_b

    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_b

    .line 3398
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown option: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3399
    return-void

    .line 3401
    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3402
    return-void

    .line 3407
    .end local v0    # "i":I
    .end local v5    # "arg":Ljava/lang/String;
    :cond_c
    move v10, v2

    move v5, v4

    move-object v4, v1

    goto :goto_3

    .line 3407
    .end local v4    # "dumpMode":I
    .local v0, "dumpOp":I
    .local v2, "dumpUid":I
    .local v3, "dumpMode":I
    :cond_d
    move v10, v0

    move-object v4, v1

    move v5, v3

    move v3, v2

    .line 3407
    .end local v0    # "dumpOp":I
    .end local v1    # "dumpPackage":Ljava/lang/String;
    .end local v2    # "dumpUid":I
    .local v3, "dumpUid":I
    .local v4, "dumpPackage":Ljava/lang/String;
    .local v5, "dumpMode":I
    .local v10, "dumpOp":I
    :goto_3
    monitor-enter p0

    .line 3408
    :try_start_1
    const-string v0, "Current AppOps Service state:"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3409
    iget-object v0, v15, Lcom/android/server/AppOpsService;->mConstants:Lcom/android/server/AppOpsService$Constants;

    invoke-virtual {v0, v14}, Lcom/android/server/AppOpsService$Constants;->dump(Ljava/io/PrintWriter;)V

    .line 3410
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 3412
    .local v6, "now":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    move-wide/from16 v19, v0

    .line 3413
    .local v19, "nowElapsed":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3414
    .local v0, "nowUptime":J
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v8, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3415
    .local v8, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 3416
    .local v9, "date":Ljava/util/Date;
    const/4 v2, 0x0

    .line 3417
    .local v2, "needSep":Z
    if-gez v10, :cond_f

    if-gez v5, :cond_f

    if-nez v4, :cond_f

    :try_start_2
    iget-object v11, v15, Lcom/android/server/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    if-eqz v11, :cond_f

    .line 3418
    const-string v11, "  Profile owners:"

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3419
    move v11, v12

    .line 3419
    .local v11, "poi":I
    :goto_4
    iget-object v12, v15, Lcom/android/server/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    if-ge v11, v12, :cond_e

    .line 3420
    const-string v12, "    User #"

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3421
    iget-object v12, v15, Lcom/android/server/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 3422
    const-string v12, ": "

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3423
    iget-object v12, v15, Lcom/android/server/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v12

    invoke-static {v14, v12}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3424
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3419
    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x0

    goto :goto_4

    .line 3426
    .end local v11    # "poi":I
    :cond_e
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 3802
    .end local v0    # "nowUptime":J
    .end local v2    # "needSep":Z
    .end local v6    # "now":J
    .end local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v9    # "date":Ljava/util/Date;
    .end local v19    # "nowElapsed":J
    :catchall_0
    move-exception v0

    move/from16 v26, v3

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    goto/16 :goto_45

    .line 3428
    .restart local v0    # "nowUptime":J
    .restart local v2    # "needSep":Z
    .restart local v6    # "now":J
    .restart local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v9    # "date":Ljava/util/Date;
    .restart local v19    # "nowElapsed":J
    :cond_f
    :goto_5
    :try_start_3
    iget-object v11, v15, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-lez v11, :cond_17

    .line 3429
    const/4 v11, 0x0

    .line 3430
    .local v11, "printedHeader":Z
    move v12, v11

    move v11, v2

    const/4 v2, 0x0

    .line 3430
    .local v2, "i":I
    .local v11, "needSep":Z
    .local v12, "printedHeader":Z
    :goto_6
    move/from16 v23, v11

    :try_start_4
    iget-object v11, v15, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 3430
    .end local v11    # "needSep":Z
    .local v23, "needSep":Z
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v2, v11, :cond_16

    .line 3431
    if-ltz v10, :cond_10

    iget-object v11, v15, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    if-eq v10, v11, :cond_10

    .line 3432
    nop

    .line 3430
    .end local v23    # "needSep":Z
    .restart local v11    # "needSep":Z
    :goto_7
    move/from16 v11, v23

    goto/16 :goto_a

    .line 3434
    .end local v11    # "needSep":Z
    .restart local v23    # "needSep":Z
    :cond_10
    const/4 v11, 0x0

    .line 3435
    .local v11, "printedOpHeader":Z
    move/from16 v24, v11

    iget-object v11, v15, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 3435
    .end local v11    # "printedOpHeader":Z
    .local v24, "printedOpHeader":Z
    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArraySet;

    .line 3436
    .local v11, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    move/from16 v16, v12

    const/4 v12, 0x0

    .line 3436
    .local v12, "j":I
    .local v16, "printedHeader":Z
    :goto_8
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v13

    if-ge v12, v13, :cond_15

    .line 3437
    invoke-virtual {v11, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AppOpsService$ModeCallback;

    .line 3438
    .local v13, "cb":Lcom/android/server/AppOpsService$ModeCallback;
    if-eqz v4, :cond_11

    move-object/from16 v26, v11

    iget v11, v13, Lcom/android/server/AppOpsService$ModeCallback;->mWatchingUid:I

    .line 3438
    .end local v11    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    .local v26, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    if-ltz v11, :cond_12

    iget v11, v13, Lcom/android/server/AppOpsService$ModeCallback;->mWatchingUid:I

    .line 3439
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    if-eq v3, v11, :cond_12

    .line 3440
    goto :goto_9

    .line 3442
    .end local v26    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    .restart local v11    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    :cond_11
    move-object/from16 v26, v11

    .line 3442
    .end local v11    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    .restart local v26    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    :cond_12
    const/16 v23, 0x1

    .line 3443
    if-nez v16, :cond_13

    .line 3444
    const-string v11, "  Op mode watchers:"

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3445
    const/16 v16, 0x1

    .line 3447
    :cond_13
    if-nez v24, :cond_14

    .line 3448
    const-string v11, "    Op "

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3449
    iget-object v11, v15, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-static {v11}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3450
    const-string v11, ":"

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3451
    const/16 v24, 0x1

    .line 3453
    :cond_14
    const-string v11, "      #"

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(I)V

    const-string v11, ": "

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3454
    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3436
    .end local v13    # "cb":Lcom/android/server/AppOpsService$ModeCallback;
    :goto_9
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v11, v26

    move-object/from16 v13, p3

    goto :goto_8

    .line 3430
    .end local v12    # "j":I
    .end local v24    # "printedOpHeader":Z
    .end local v26    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    :cond_15
    move/from16 v12, v16

    goto :goto_7

    .line 3430
    .end local v16    # "printedHeader":Z
    .end local v23    # "needSep":Z
    .local v11, "needSep":Z
    .local v12, "printedHeader":Z
    :goto_a
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v13, p3

    goto/16 :goto_6

    .line 3458
    .end local v2    # "i":I
    .end local v11    # "needSep":Z
    .end local v12    # "printedHeader":Z
    .restart local v23    # "needSep":Z
    :cond_16
    move/from16 v2, v23

    .line 3458
    .end local v23    # "needSep":Z
    .local v2, "needSep":Z
    :cond_17
    :try_start_5
    iget-object v11, v15, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-lez v11, :cond_1b

    if-gez v10, :cond_1b

    .line 3459
    const/4 v11, 0x0

    .line 3460
    .local v11, "printedHeader":Z
    move v12, v11

    move v11, v2

    const/4 v2, 0x0

    .line 3460
    .local v2, "i":I
    .local v11, "needSep":Z
    .restart local v12    # "printedHeader":Z
    :goto_b
    :try_start_6
    iget-object v13, v15, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v2, v13, :cond_1c

    .line 3461
    if-eqz v4, :cond_18

    iget-object v13, v15, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_18

    .line 3462
    goto :goto_d

    .line 3464
    :cond_18
    const/4 v11, 0x1

    .line 3465
    if-nez v12, :cond_19

    .line 3466
    const-string v13, "  Package mode watchers:"

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3467
    const/4 v12, 0x1

    .line 3469
    :cond_19
    const-string v13, "    Pkg "

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v13, v15, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3470
    const-string v13, ":"

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3471
    iget-object v13, v15, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/ArraySet;

    .line 3472
    .local v13, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    const/16 v16, 0x0

    .line 3472
    .local v16, "j":I
    :goto_c
    move/from16 v27, v16

    .line 3472
    .end local v16    # "j":I
    .local v27, "j":I
    move/from16 v28, v11

    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v11

    .line 3472
    .end local v11    # "needSep":Z
    .local v28, "needSep":Z
    move/from16 v29, v12

    move/from16 v12, v27

    if-ge v12, v11, :cond_1a

    .line 3473
    .end local v27    # "j":I
    .local v12, "j":I
    .local v29, "printedHeader":Z
    const-string v11, "      #"

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(I)V

    const-string v11, ": "

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3474
    invoke-virtual {v13, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3472
    add-int/lit8 v16, v12, 0x1

    .line 3472
    .end local v12    # "j":I
    .restart local v16    # "j":I
    move/from16 v11, v28

    move/from16 v12, v29

    goto :goto_c

    .line 3460
    .end local v13    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    .end local v16    # "j":I
    :cond_1a
    move/from16 v11, v28

    move/from16 v12, v29

    .line 3460
    .end local v28    # "needSep":Z
    .end local v29    # "printedHeader":Z
    .restart local v11    # "needSep":Z
    .local v12, "printedHeader":Z
    :goto_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 3478
    .end local v11    # "needSep":Z
    .end local v12    # "printedHeader":Z
    .local v2, "needSep":Z
    :cond_1b
    move v11, v2

    .line 3478
    .end local v2    # "needSep":Z
    .restart local v11    # "needSep":Z
    :cond_1c
    :try_start_7
    iget-object v2, v15, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-lez v2, :cond_21

    if-gez v10, :cond_21

    .line 3479
    const/4 v2, 0x0

    .line 3480
    .local v2, "printedHeader":Z
    move v12, v2

    const/4 v2, 0x0

    .line 3480
    .local v2, "i":I
    .restart local v12    # "printedHeader":Z
    :goto_e
    :try_start_8
    iget-object v13, v15, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v2, v13, :cond_20

    .line 3481
    iget-object v13, v15, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AppOpsService$ModeCallback;

    .line 3482
    .local v13, "cb":Lcom/android/server/AppOpsService$ModeCallback;
    if-eqz v4, :cond_1d

    move/from16 v30, v11

    iget v11, v13, Lcom/android/server/AppOpsService$ModeCallback;->mWatchingUid:I

    .line 3482
    .end local v11    # "needSep":Z
    .local v30, "needSep":Z
    if-ltz v11, :cond_1e

    iget v11, v13, Lcom/android/server/AppOpsService$ModeCallback;->mWatchingUid:I

    .line 3483
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    if-eq v3, v11, :cond_1e

    .line 3484
    nop

    .line 3480
    move/from16 v11, v30

    goto :goto_10

    .line 3486
    .end local v30    # "needSep":Z
    .restart local v11    # "needSep":Z
    :cond_1d
    move/from16 v30, v11

    .line 3486
    .end local v11    # "needSep":Z
    .restart local v30    # "needSep":Z
    :cond_1e
    const/4 v11, 0x1

    .line 3487
    .end local v30    # "needSep":Z
    .restart local v11    # "needSep":Z
    if-nez v12, :cond_1f

    .line 3488
    move/from16 v31, v11

    const-string v11, "  All op mode watchers:"

    .line 3488
    .end local v11    # "needSep":Z
    .local v31, "needSep":Z
    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3489
    const/4 v12, 0x1

    goto :goto_f

    .line 3491
    .end local v31    # "needSep":Z
    .restart local v11    # "needSep":Z
    :cond_1f
    move/from16 v31, v11

    .line 3491
    .end local v11    # "needSep":Z
    .restart local v31    # "needSep":Z
    :goto_f
    const-string v11, "    "

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3492
    iget-object v11, v15, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3493
    const-string v11, ": "

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 3480
    .end local v13    # "cb":Lcom/android/server/AppOpsService$ModeCallback;
    move/from16 v11, v31

    .line 3480
    .end local v31    # "needSep":Z
    .restart local v11    # "needSep":Z
    :goto_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 3496
    .end local v2    # "i":I
    .end local v12    # "printedHeader":Z
    :cond_20
    move/from16 v30, v11

    :cond_21
    :try_start_9
    iget-object v2, v15, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-lez v2, :cond_2b

    if-gez v5, :cond_2b

    .line 3497
    const/4 v11, 0x1

    .line 3498
    const/4 v2, 0x0

    .line 3499
    .local v2, "printedHeader":Z
    move v12, v2

    const/4 v2, 0x0

    .line 3499
    .local v2, "i":I
    .restart local v12    # "printedHeader":Z
    :goto_11
    :try_start_a
    iget-object v13, v15, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v2, v13, :cond_2a

    .line 3500
    iget-object v13, v15, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SparseArray;

    .line 3501
    .local v13, "activeWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$ActiveCallback;>;"
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v16

    if-gtz v16, :cond_22

    .line 3502
    nop

    .line 3499
    move-wide/from16 v34, v6

    move/from16 v32, v11

    goto/16 :goto_13

    .line 3504
    :cond_22
    move/from16 v32, v11

    const/4 v11, 0x0

    invoke-virtual {v13, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    .line 3504
    .end local v11    # "needSep":Z
    .local v32, "needSep":Z
    check-cast v16, Lcom/android/server/AppOpsService$ActiveCallback;

    move-object/from16 v33, v16

    .line 3505
    .local v33, "cb":Lcom/android/server/AppOpsService$ActiveCallback;
    if-ltz v10, :cond_23

    invoke-virtual {v13, v10}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v16

    if-gez v16, :cond_23

    .line 3506
    nop

    .line 3499
    move-wide/from16 v34, v6

    goto/16 :goto_13

    .line 3508
    :cond_23
    if-eqz v4, :cond_24

    move-wide/from16 v34, v6

    move-object/from16 v11, v33

    iget v6, v11, Lcom/android/server/AppOpsService$ActiveCallback;->mWatchingUid:I

    .line 3508
    .end local v6    # "now":J
    .end local v33    # "cb":Lcom/android/server/AppOpsService$ActiveCallback;
    .local v11, "cb":Lcom/android/server/AppOpsService$ActiveCallback;
    .local v34, "now":J
    if-ltz v6, :cond_25

    iget v6, v11, Lcom/android/server/AppOpsService$ActiveCallback;->mWatchingUid:I

    .line 3509
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    if-eq v3, v6, :cond_25

    .line 3510
    goto :goto_13

    .line 3512
    .end local v11    # "cb":Lcom/android/server/AppOpsService$ActiveCallback;
    .end local v34    # "now":J
    .restart local v6    # "now":J
    .restart local v33    # "cb":Lcom/android/server/AppOpsService$ActiveCallback;
    :cond_24
    move-wide/from16 v34, v6

    move-object/from16 v11, v33

    .line 3512
    .end local v6    # "now":J
    .end local v33    # "cb":Lcom/android/server/AppOpsService$ActiveCallback;
    .restart local v11    # "cb":Lcom/android/server/AppOpsService$ActiveCallback;
    .restart local v34    # "now":J
    :cond_25
    if-nez v12, :cond_26

    .line 3513
    const-string v6, "  All op active watchers:"

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3514
    const/4 v12, 0x1

    .line 3516
    :cond_26
    const-string v6, "    "

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3517
    iget-object v6, v15, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 3518
    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    .line 3517
    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3519
    const-string v6, " ->"

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3520
    const-string v6, "        ["

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3521
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 3522
    .local v6, "opCount":I
    const/4 v2, 0x0

    :goto_12
    if-ge v2, v6, :cond_29

    .line 3523
    if-lez v2, :cond_27

    .line 3524
    const/16 v7, 0x20

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 3526
    :cond_27
    invoke-virtual {v13, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-static {v7}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3527
    add-int/lit8 v7, v6, -0x1

    if-ge v2, v7, :cond_28

    .line 3528
    const/16 v7, 0x2c

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 3522
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 3531
    :cond_29
    const-string v7, "]"

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3532
    const-string v7, "        "

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3533
    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 3499
    .end local v6    # "opCount":I
    .end local v11    # "cb":Lcom/android/server/AppOpsService$ActiveCallback;
    .end local v13    # "activeWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$ActiveCallback;>;"
    :goto_13
    const/16 v22, 0x1

    add-int/lit8 v2, v2, 0x1

    move/from16 v11, v32

    move-wide/from16 v6, v34

    goto/16 :goto_11

    .line 3536
    .end local v2    # "i":I
    .end local v12    # "printedHeader":Z
    .end local v32    # "needSep":Z
    .end local v34    # "now":J
    .local v6, "now":J
    .local v11, "needSep":Z
    :cond_2a
    move-wide/from16 v34, v6

    move/from16 v32, v11

    const/16 v22, 0x1

    .line 3536
    .end local v6    # "now":J
    .end local v11    # "needSep":Z
    .restart local v32    # "needSep":Z
    .restart local v34    # "now":J
    goto :goto_14

    .line 3536
    .end local v32    # "needSep":Z
    .end local v34    # "now":J
    .restart local v6    # "now":J
    .restart local v11    # "needSep":Z
    :cond_2b
    move-wide/from16 v34, v6

    const/16 v22, 0x1

    .line 3536
    .end local v6    # "now":J
    .restart local v34    # "now":J
    :goto_14
    :try_start_b
    iget-object v2, v15, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-lez v2, :cond_35

    if-gez v5, :cond_35

    .line 3537
    const/4 v11, 0x1

    .line 3538
    const/4 v2, 0x0

    .line 3539
    .local v2, "printedHeader":Z
    move v6, v2

    const/4 v2, 0x0

    .line 3539
    .local v2, "i":I
    .local v6, "printedHeader":Z
    :goto_15
    :try_start_c
    iget-object v7, v15, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v2, v7, :cond_34

    .line 3540
    const/4 v7, 0x0

    .line 3541
    .local v7, "printedClient":Z
    iget-object v12, v15, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v12, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/AppOpsService$ClientState;

    .line 3542
    .local v12, "cs":Lcom/android/server/AppOpsService$ClientState;
    iget-object v13, v12, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-lez v13, :cond_33

    .line 3543
    const/4 v13, 0x0

    .line 3544
    .local v13, "printedStarted":Z
    move/from16 v16, v13

    move v13, v7

    move v7, v6

    const/4 v6, 0x0

    .line 3544
    .local v6, "j":I
    .local v7, "printedHeader":Z
    .local v13, "printedClient":Z
    .local v16, "printedStarted":Z
    :goto_16
    move/from16 v36, v3

    :try_start_d
    iget-object v3, v12, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    .line 3544
    .end local v3    # "dumpUid":I
    .local v36, "dumpUid":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v6, v3, :cond_32

    .line 3545
    iget-object v3, v12, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$Op;

    .line 3546
    .local v3, "op":Lcom/android/server/AppOpsService$Op;
    if-ltz v10, :cond_2c

    move/from16 v37, v11

    iget v11, v3, Lcom/android/server/AppOpsService$Op;->op:I

    .line 3546
    .end local v11    # "needSep":Z
    .local v37, "needSep":Z
    if-eq v11, v10, :cond_2d

    .line 3547
    goto :goto_17

    .line 3549
    .end local v37    # "needSep":Z
    .restart local v11    # "needSep":Z
    :cond_2c
    move/from16 v37, v11

    .line 3549
    .end local v11    # "needSep":Z
    .restart local v37    # "needSep":Z
    :cond_2d
    if-eqz v4, :cond_2e

    iget-object v11, v3, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2e

    .line 3550
    goto :goto_17

    .line 3552
    :cond_2e
    if-nez v7, :cond_2f

    .line 3553
    const-string v11, "  Clients:"

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3554
    const/4 v7, 0x1

    .line 3556
    :cond_2f
    if-nez v13, :cond_30

    .line 3557
    const-string v11, "    "

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v15, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v11, ":"

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3558
    const-string v11, "      "

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3559
    const/4 v13, 0x1

    .line 3561
    :cond_30
    if-nez v16, :cond_31

    .line 3562
    const-string v11, "      Started ops:"

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3563
    const/16 v16, 0x1

    .line 3565
    :cond_31
    const-string v11, "        "

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "uid="

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v11, v3, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 3566
    const-string v11, " pkg="

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v3, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3567
    const-string v11, " op="

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v11, v3, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v11}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 3544
    .end local v3    # "op":Lcom/android/server/AppOpsService$Op;
    :goto_17
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v36

    move/from16 v11, v37

    goto/16 :goto_16

    .line 3539
    .end local v6    # "j":I
    .end local v12    # "cs":Lcom/android/server/AppOpsService$ClientState;
    .end local v13    # "printedClient":Z
    .end local v16    # "printedStarted":Z
    .end local v37    # "needSep":Z
    .restart local v11    # "needSep":Z
    :cond_32
    move/from16 v37, v11

    move v6, v7

    .line 3539
    .end local v11    # "needSep":Z
    .restart local v37    # "needSep":Z
    goto :goto_18

    .line 3539
    .end local v7    # "printedHeader":Z
    .end local v36    # "dumpUid":I
    .end local v37    # "needSep":Z
    .local v3, "dumpUid":I
    .local v6, "printedHeader":Z
    .restart local v11    # "needSep":Z
    :cond_33
    move/from16 v36, v3

    move/from16 v37, v11

    .line 3539
    .end local v3    # "dumpUid":I
    .end local v11    # "needSep":Z
    .restart local v36    # "dumpUid":I
    .restart local v37    # "needSep":Z
    :goto_18
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v36

    move/from16 v11, v37

    goto/16 :goto_15

    .line 3572
    .end local v2    # "i":I
    .end local v6    # "printedHeader":Z
    .end local v36    # "dumpUid":I
    .end local v37    # "needSep":Z
    .restart local v3    # "dumpUid":I
    .restart local v11    # "needSep":Z
    :cond_34
    move/from16 v36, v3

    move/from16 v37, v11

    .line 3572
    .end local v3    # "dumpUid":I
    .end local v11    # "needSep":Z
    .restart local v36    # "dumpUid":I
    .restart local v37    # "needSep":Z
    goto :goto_19

    .line 3802
    .end local v0    # "nowUptime":J
    .end local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v9    # "date":Ljava/util/Date;
    .end local v19    # "nowElapsed":J
    .end local v34    # "now":J
    .end local v36    # "dumpUid":I
    .end local v37    # "needSep":Z
    .restart local v3    # "dumpUid":I
    :catchall_1
    move-exception v0

    move/from16 v26, v3

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    .line 3802
    .end local v3    # "dumpUid":I
    .restart local v36    # "dumpUid":I
    goto/16 :goto_45

    .line 3572
    .end local v36    # "dumpUid":I
    .restart local v0    # "nowUptime":J
    .restart local v3    # "dumpUid":I
    .restart local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v9    # "date":Ljava/util/Date;
    .restart local v11    # "needSep":Z
    .restart local v19    # "nowElapsed":J
    .restart local v34    # "now":J
    :cond_35
    move/from16 v36, v3

    .line 3572
    .end local v3    # "dumpUid":I
    .restart local v36    # "dumpUid":I
    :goto_19
    :try_start_e
    iget-object v2, v15, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    if-lez v2, :cond_3a

    if-gez v10, :cond_3a

    if-eqz v4, :cond_3a

    if-gez v5, :cond_3a

    .line 3574
    const/4 v2, 0x0

    .line 3575
    .local v2, "printedHeader":Z
    move v3, v2

    const/4 v2, 0x0

    .line 3575
    .local v2, "o":I
    .local v3, "printedHeader":Z
    :goto_1a
    :try_start_f
    iget-object v6, v15, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_3a

    .line 3576
    iget-object v6, v15, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v6

    .line 3577
    .local v6, "op":Ljava/lang/String;
    iget-object v7, v15, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    .line 3578
    .local v7, "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    move v12, v3

    const/4 v3, 0x0

    .line 3578
    .local v3, "i":I
    .local v12, "printedHeader":Z
    :goto_1b
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v3, v13, :cond_39

    .line 3579
    if-nez v12, :cond_36

    .line 3580
    const-string v13, "  Audio Restrictions:"

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3581
    const/4 v12, 0x1

    .line 3582
    const/4 v11, 0x1

    .line 3584
    :cond_36
    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 3585
    .local v13, "usage":I
    move/from16 v38, v11

    const-string v11, "    "

    .line 3585
    .end local v11    # "needSep":Z
    .local v38, "needSep":Z
    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3586
    const-string v11, " usage="

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v13}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3587
    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AppOpsService$Restriction;

    .line 3588
    .local v11, "r":Lcom/android/server/AppOpsService$Restriction;
    move-object/from16 v39, v6

    const-string v6, ": mode="

    .line 3588
    .end local v6    # "op":Ljava/lang/String;
    .local v39, "op":Ljava/lang/String;
    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v11, Lcom/android/server/AppOpsService$Restriction;->mode:I

    invoke-static {v6}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3589
    iget-object v6, v11, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_37

    .line 3590
    const-string v6, "      Exceptions:"

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3591
    const/4 v6, 0x0

    .line 3591
    .local v6, "j":I
    :goto_1c
    move-object/from16 v40, v7

    iget-object v7, v11, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    .line 3591
    .end local v7    # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    .local v40, "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v6, v7, :cond_38

    .line 3592
    const-string v7, "        "

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v11, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3591
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v7, v40

    goto :goto_1c

    .line 3578
    .end local v6    # "j":I
    .end local v11    # "r":Lcom/android/server/AppOpsService$Restriction;
    .end local v13    # "usage":I
    .end local v40    # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    .restart local v7    # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    :cond_37
    move-object/from16 v40, v7

    .line 3578
    .end local v7    # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    .restart local v40    # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    :cond_38
    add-int/lit8 v3, v3, 0x1

    move/from16 v11, v38

    move-object/from16 v6, v39

    move-object/from16 v7, v40

    goto :goto_1b

    .line 3575
    .end local v3    # "i":I
    .end local v38    # "needSep":Z
    .end local v39    # "op":Ljava/lang/String;
    .end local v40    # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    .local v11, "needSep":Z
    :cond_39
    add-int/lit8 v2, v2, 0x1

    move v3, v12

    goto/16 :goto_1a

    .line 3598
    .end local v2    # "o":I
    .end local v12    # "printedHeader":Z
    :cond_3a
    if-eqz v11, :cond_3b

    .line 3599
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_1d

    .line 3802
    .end local v0    # "nowUptime":J
    .end local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v9    # "date":Ljava/util/Date;
    .end local v11    # "needSep":Z
    .end local v19    # "nowElapsed":J
    .end local v34    # "now":J
    :catchall_2
    move-exception v0

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    move/from16 v26, v36

    goto/16 :goto_45

    .line 3601
    .restart local v0    # "nowUptime":J
    .restart local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v9    # "date":Ljava/util/Date;
    .restart local v11    # "needSep":Z
    .restart local v19    # "nowElapsed":J
    .restart local v34    # "now":J
    :cond_3b
    :goto_1d
    const/4 v2, 0x0

    .line 3601
    .local v2, "i":I
    :goto_1e
    move v13, v2

    .line 3601
    .end local v2    # "i":I
    .local v13, "i":I
    :try_start_10
    iget-object v2, v15, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v13, v2, :cond_6b

    .line 3602
    iget-object v2, v15, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$UidState;

    move-object v12, v2

    .line 3603
    .local v12, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v2, v12, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object v6, v2

    .line 3604
    .local v6, "opModes":Landroid/util/SparseIntArray;
    iget-object v2, v12, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    move-object v7, v2

    .line 3606
    .local v7, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-gez v10, :cond_3d

    if-nez v4, :cond_3d

    if-ltz v5, :cond_3c

    goto :goto_1f

    .line 3648
    :cond_3c
    move-object/from16 v47, v8

    move/from16 v46, v11

    move/from16 v44, v13

    goto/16 :goto_2c

    .line 3607
    :cond_3d
    :goto_1f
    if-ltz v10, :cond_3f

    :try_start_11
    iget-object v2, v12, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v2, :cond_3e

    iget-object v2, v12, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 3608
    invoke-virtual {v2, v10}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_3e

    goto :goto_20

    :cond_3e
    const/4 v2, 0x0

    goto :goto_21

    :cond_3f
    :goto_20
    move/from16 v2, v22

    .line 3609
    .local v2, "hasOp":Z
    :goto_21
    if-nez v4, :cond_40

    move/from16 v3, v22

    goto :goto_22

    :cond_40
    const/4 v3, 0x0

    .line 3610
    .local v3, "hasPackage":Z
    :goto_22
    if-gez v5, :cond_41

    move/from16 v16, v22

    goto :goto_23

    :cond_41
    const/16 v16, 0x0

    .line 3611
    .local v16, "hasMode":Z
    :goto_23
    if-nez v16, :cond_45

    if-eqz v6, :cond_45

    .line 3612
    move/from16 v17, v16

    const/16 v16, 0x0

    .line 3612
    .local v16, "opi":I
    .local v17, "hasMode":Z
    :goto_24
    move/from16 v41, v16

    .line 3612
    .end local v16    # "opi":I
    .local v41, "opi":I
    if-nez v17, :cond_43

    move/from16 v42, v2

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    .line 3612
    .end local v2    # "hasOp":Z
    .local v42, "hasOp":Z
    move/from16 v43, v3

    move/from16 v3, v41

    if-ge v3, v2, :cond_44

    .line 3613
    .end local v41    # "opi":I
    .local v3, "opi":I
    .local v43, "hasPackage":Z
    invoke-virtual {v6, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-ne v2, v5, :cond_42

    .line 3614
    const/16 v17, 0x1

    .line 3612
    :cond_42
    add-int/lit8 v16, v3, 0x1

    .line 3612
    .end local v3    # "opi":I
    .restart local v16    # "opi":I
    move/from16 v2, v42

    move/from16 v3, v43

    goto :goto_24

    .line 3618
    .end local v16    # "opi":I
    .end local v42    # "hasOp":Z
    .end local v43    # "hasPackage":Z
    .restart local v2    # "hasOp":Z
    .local v3, "hasPackage":Z
    :cond_43
    move/from16 v42, v2

    move/from16 v43, v3

    .line 3618
    .end local v2    # "hasOp":Z
    .end local v3    # "hasPackage":Z
    .restart local v42    # "hasOp":Z
    .restart local v43    # "hasPackage":Z
    :cond_44
    move/from16 v16, v17

    goto :goto_25

    .line 3618
    .end local v17    # "hasMode":Z
    .end local v42    # "hasOp":Z
    .end local v43    # "hasPackage":Z
    .restart local v2    # "hasOp":Z
    .restart local v3    # "hasPackage":Z
    .local v16, "hasMode":Z
    :cond_45
    move/from16 v42, v2

    move/from16 v43, v3

    .line 3618
    .end local v2    # "hasOp":Z
    .end local v3    # "hasPackage":Z
    .restart local v42    # "hasOp":Z
    .restart local v43    # "hasPackage":Z
    :goto_25
    if-eqz v7, :cond_4f

    .line 3619
    move/from16 v3, v43

    const/4 v2, 0x0

    .line 3620
    .end local v43    # "hasPackage":Z
    .local v2, "pkgi":I
    .restart local v3    # "hasPackage":Z
    :goto_26
    if-eqz v42, :cond_47

    if-eqz v3, :cond_47

    if-nez v16, :cond_46

    goto :goto_27

    .line 3638
    .end local v2    # "pkgi":I
    :cond_46
    move-object/from16 v47, v8

    move/from16 v46, v11

    move/from16 v44, v13

    goto/16 :goto_2a

    .line 3620
    .restart local v2    # "pkgi":I
    :cond_47
    :goto_27
    move/from16 v44, v13

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v13

    .line 3620
    .end local v13    # "i":I
    .local v44, "i":I
    if-ge v2, v13, :cond_4e

    .line 3622
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AppOpsService$Ops;

    .line 3623
    .local v13, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v42, :cond_48

    if-eqz v13, :cond_48

    invoke-virtual {v13, v10}, Lcom/android/server/AppOpsService$Ops;->indexOfKey(I)I

    move-result v17

    if-ltz v17, :cond_48

    .line 3624
    const/16 v42, 0x1

    .line 3626
    :cond_48
    if-nez v16, :cond_4c

    .line 3627
    move/from16 v17, v16

    const/16 v16, 0x0

    .line 3627
    .local v16, "opi":I
    .restart local v17    # "hasMode":Z
    :goto_28
    move/from16 v45, v16

    .line 3627
    .end local v16    # "opi":I
    .local v45, "opi":I
    if-nez v17, :cond_4a

    move/from16 v46, v11

    invoke-virtual {v13}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v11

    .line 3627
    .end local v11    # "needSep":Z
    .local v46, "needSep":Z
    move-object/from16 v47, v8

    move/from16 v8, v45

    if-ge v8, v11, :cond_4b

    .line 3628
    .end local v45    # "opi":I
    .local v8, "opi":I
    .local v47, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v13, v8}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AppOpsService$Op;

    iget v11, v11, Lcom/android/server/AppOpsService$Op;->mode:I

    if-ne v11, v5, :cond_49

    .line 3629
    const/16 v17, 0x1

    .line 3627
    :cond_49
    add-int/lit8 v16, v8, 0x1

    .line 3627
    .end local v8    # "opi":I
    .restart local v16    # "opi":I
    move/from16 v11, v46

    move-object/from16 v8, v47

    goto :goto_28

    .line 3633
    .end local v16    # "opi":I
    .end local v46    # "needSep":Z
    .end local v47    # "sdf":Ljava/text/SimpleDateFormat;
    .local v8, "sdf":Ljava/text/SimpleDateFormat;
    .restart local v11    # "needSep":Z
    :cond_4a
    move-object/from16 v47, v8

    move/from16 v46, v11

    .line 3633
    .end local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v11    # "needSep":Z
    .restart local v46    # "needSep":Z
    .restart local v47    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_4b
    move/from16 v16, v17

    goto :goto_29

    .line 3633
    .end local v17    # "hasMode":Z
    .end local v46    # "needSep":Z
    .end local v47    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v11    # "needSep":Z
    .local v16, "hasMode":Z
    :cond_4c
    move-object/from16 v47, v8

    move/from16 v46, v11

    .line 3633
    .end local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v11    # "needSep":Z
    .restart local v46    # "needSep":Z
    .restart local v47    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_29
    if-nez v3, :cond_4d

    iget-object v8, v13, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    if-eqz v8, :cond_4d

    .line 3634
    const/4 v3, 0x1

    .line 3621
    .end local v13    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    .line 3619
    move/from16 v13, v44

    move/from16 v11, v46

    move-object/from16 v8, v47

    goto :goto_26

    .line 3638
    .end local v2    # "pkgi":I
    .end local v46    # "needSep":Z
    .end local v47    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v11    # "needSep":Z
    :cond_4e
    move-object/from16 v47, v8

    move/from16 v46, v11

    .line 3638
    .end local v44    # "i":I
    .local v13, "i":I
    :goto_2a
    move/from16 v43, v3

    goto :goto_2b

    .line 3638
    .end local v3    # "hasPackage":Z
    .restart local v43    # "hasPackage":Z
    :cond_4f
    move-object/from16 v47, v8

    move/from16 v46, v11

    move/from16 v44, v13

    .line 3638
    .end local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v11    # "needSep":Z
    .end local v13    # "i":I
    .restart local v44    # "i":I
    .restart local v46    # "needSep":Z
    .restart local v47    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_2b
    :try_start_12
    iget-object v2, v12, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    if-eqz v2, :cond_50

    if-nez v42, :cond_50

    .line 3639
    :try_start_13
    iget-object v2, v12, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    if-lez v2, :cond_50

    .line 3640
    const/16 v42, 0x1

    .line 3643
    :cond_50
    if-eqz v42, :cond_6a

    if-eqz v43, :cond_6a

    if-nez v16, :cond_51

    .line 3644
    nop

    .line 3601
    move-wide/from16 v23, v0

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    move-wide/from16 v6, v34

    move/from16 v26, v36

    move/from16 v1, v44

    move-object/from16 v8, v47

    const/16 v32, 0x0

    goto/16 :goto_3b

    .line 3648
    .end local v16    # "hasMode":Z
    .end local v42    # "hasOp":Z
    .end local v43    # "hasPackage":Z
    :cond_51
    :goto_2c
    :try_start_14
    const-string v2, "  Uid "

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v12, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v14, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v2, ":"

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3649
    const-string v2, "    state="

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3650
    sget-object v2, Lcom/android/server/AppOpsService;->UID_STATE_NAMES:[Ljava/lang/String;

    iget v3, v12, Lcom/android/server/AppOpsService$UidState;->state:I

    aget-object v2, v2, v3

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3651
    iget v2, v12, Lcom/android/server/AppOpsService$UidState;->state:I

    iget v3, v12, Lcom/android/server/AppOpsService$UidState;->pendingState:I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    if-eq v2, v3, :cond_52

    .line 3652
    :try_start_15
    const-string v2, "    pendingState="

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3653
    sget-object v2, Lcom/android/server/AppOpsService;->UID_STATE_NAMES:[Ljava/lang/String;

    iget v3, v12, Lcom/android/server/AppOpsService$UidState;->pendingState:I

    aget-object v2, v2, v3

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 3655
    :cond_52
    :try_start_16
    iget-wide v2, v12, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    const-wide/16 v16, 0x0

    cmp-long v2, v2, v16

    if-eqz v2, :cond_53

    .line 3656
    :try_start_17
    const-string v2, "    pendingStateCommitTime="

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3657
    iget-wide v2, v12, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J

    invoke-static {v2, v3, v0, v1, v14}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3658
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 3660
    :cond_53
    :try_start_18
    iget v2, v12, Lcom/android/server/AppOpsService$UidState;->startNesting:I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    if-eqz v2, :cond_54

    .line 3661
    :try_start_19
    const-string v2, "    startNesting="

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3662
    iget v2, v12, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(I)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    .line 3664
    :cond_54
    :try_start_1a
    iget-object v2, v12, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    if-eqz v2, :cond_59

    if-ltz v5, :cond_55

    const/4 v2, 0x4

    if-ne v5, v2, :cond_59

    .line 3666
    :cond_55
    :try_start_1b
    const-string v2, "    foregroundOps:"

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3667
    const/4 v2, 0x0

    .line 3667
    .local v2, "j":I
    :goto_2d
    iget-object v3, v12, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_58

    .line 3668
    if-ltz v10, :cond_56

    iget-object v3, v12, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-eq v10, v3, :cond_56

    .line 3669
    goto :goto_2f

    .line 3671
    :cond_56
    const-string v3, "      "

    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3672
    iget-object v3, v12, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3673
    const-string v3, ": "

    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3674
    iget-object v3, v12, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_57

    const-string v3, "WATCHER"

    goto :goto_2e

    :cond_57
    const-string v3, "SILENT"

    :goto_2e
    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3667
    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 3676
    .end local v2    # "j":I
    :cond_58
    const-string v2, "    hasForegroundWatchers="

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3677
    iget-boolean v2, v12, Lcom/android/server/AppOpsService$UidState;->hasForegroundWatchers:Z

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 3679
    :cond_59
    const/16 v21, 0x1

    .line 3681
    .end local v46    # "needSep":Z
    .local v21, "needSep":Z
    if-eqz v6, :cond_5c

    .line 3682
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    .line 3683
    .local v2, "opModeCount":I
    const/4 v3, 0x0

    .line 3683
    .local v3, "j":I
    :goto_30
    if-ge v3, v2, :cond_5c

    .line 3684
    invoke-virtual {v6, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 3685
    .local v8, "code":I
    invoke-virtual {v6, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v11

    .line 3686
    .local v11, "mode":I
    if-ltz v10, :cond_5a

    if-eq v10, v8, :cond_5a

    .line 3687
    goto :goto_31

    .line 3689
    :cond_5a
    if-ltz v5, :cond_5b

    if-eq v5, v11, :cond_5b

    .line 3690
    goto :goto_31

    .line 3692
    :cond_5b
    const-string v13, "      "

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3693
    const-string v13, ": mode="

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v11}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    .line 3683
    .end local v8    # "code":I
    .end local v11    # "mode":I
    :goto_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 3697
    .end local v2    # "opModeCount":I
    .end local v3    # "j":I
    :cond_5c
    if-nez v7, :cond_5d

    .line 3698
    nop

    .line 3601
    move-wide/from16 v23, v0

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    move-wide/from16 v6, v34

    move/from16 v26, v36

    move/from16 v1, v44

    move-object/from16 v8, v47

    const/16 v32, 0x0

    goto/16 :goto_3a

    .line 3701
    :cond_5d
    const/4 v2, 0x0

    .line 3701
    .local v2, "pkgi":I
    :goto_32
    move v13, v2

    .line 3701
    .end local v2    # "pkgi":I
    .local v13, "pkgi":I
    :try_start_1c
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v13, v2, :cond_69

    .line 3702
    invoke-virtual {v7, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$Ops;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    move-object v11, v2

    .line 3703
    .local v11, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v4, :cond_5e

    :try_start_1d
    iget-object v2, v11, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    if-nez v2, :cond_5e

    .line 3704
    nop

    .line 3701
    move-wide/from16 v23, v0

    move-object/from16 v28, v4

    move/from16 v29, v5

    move-object v0, v6

    move-object/from16 v30, v7

    move/from16 v53, v10

    move-object/from16 v22, v12

    move/from16 v25, v13

    move-object v2, v14

    move-object v3, v15

    move-wide/from16 v6, v34

    move/from16 v26, v36

    move/from16 v1, v44

    move-object/from16 v8, v47

    const/16 v32, 0x0

    goto/16 :goto_39

    .line 3706
    :cond_5e
    const/4 v2, 0x0

    .line 3707
    .local v2, "printedPackage":Z
    move v3, v2

    const/4 v2, 0x0

    .line 3707
    .local v2, "j":I
    .local v3, "printedPackage":Z
    :goto_33
    move v8, v2

    .line 3707
    .end local v2    # "j":I
    .local v8, "j":I
    :try_start_1e
    invoke-virtual {v11}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v2

    if-ge v8, v2, :cond_68

    .line 3708
    invoke-virtual {v11, v8}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$Op;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    .line 3709
    .local v2, "op":Lcom/android/server/AppOpsService$Op;
    if-ltz v10, :cond_5f

    move-wide/from16 v48, v0

    :try_start_1f
    iget v0, v2, Lcom/android/server/AppOpsService$Op;->op:I

    .line 3709
    .end local v0    # "nowUptime":J
    .local v48, "nowUptime":J
    if-eq v10, v0, :cond_60

    .line 3710
    goto :goto_34

    .line 3712
    .end local v48    # "nowUptime":J
    .restart local v0    # "nowUptime":J
    :cond_5f
    move-wide/from16 v48, v0

    .line 3712
    .end local v0    # "nowUptime":J
    .restart local v48    # "nowUptime":J
    :cond_60
    if-ltz v5, :cond_61

    iget v0, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eq v5, v0, :cond_61

    .line 3713
    nop

    .line 3707
    .end local v2    # "op":Lcom/android/server/AppOpsService$Op;
    :goto_34
    move/from16 v50, v3

    move-object/from16 v28, v4

    move/from16 v29, v5

    move-object v0, v6

    move-object/from16 v30, v7

    move/from16 v31, v8

    move/from16 v53, v10

    move-object v5, v11

    move-object/from16 v22, v12

    move/from16 v25, v13

    move-object v2, v14

    move-object v3, v15

    move-wide/from16 v6, v34

    move/from16 v26, v36

    move/from16 v1, v44

    move-object/from16 v8, v47

    move-wide/from16 v23, v48

    const/16 v32, 0x0

    goto/16 :goto_38

    .line 3715
    .restart local v2    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_61
    if-nez v3, :cond_62

    .line 3716
    const-string v0, "    Package "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    .line 3717
    const/4 v3, 0x1

    .line 3719
    .end local v3    # "printedPackage":Z
    .local v0, "printedPackage":Z
    :cond_62
    move v0, v3

    :try_start_20
    const-string v1, "      "

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v2, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3720
    const-string v1, " ("

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3721
    iget v1, v2, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    move v3, v1

    .line 3722
    .local v3, "switchOp":I
    iget v1, v2, Lcom/android/server/AppOpsService$Op;->op:I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    if-eq v3, v1, :cond_64

    .line 3723
    :try_start_21
    const-string v1, " / switch "

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3724
    invoke-static {v3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3725
    invoke-virtual {v11, v3}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$Op;

    .line 3726
    .local v1, "switchObj":Lcom/android/server/AppOpsService$Op;
    if-eqz v1, :cond_63

    .line 3727
    move/from16 v50, v0

    iget v0, v1, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 3727
    .end local v0    # "printedPackage":Z
    .local v50, "printedPackage":Z
    goto :goto_35

    .line 3727
    .end local v50    # "printedPackage":Z
    .restart local v0    # "printedPackage":Z
    :cond_63
    move/from16 v50, v0

    .line 3727
    .end local v0    # "printedPackage":Z
    .restart local v50    # "printedPackage":Z
    invoke-static {v3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    .line 3728
    .local v0, "mode":I
    :goto_35
    move-object/from16 v51, v1

    const-string v1, "="

    .line 3728
    .end local v1    # "switchObj":Lcom/android/server/AppOpsService$Op;
    .local v51, "switchObj":Lcom/android/server/AppOpsService$Op;
    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_2

    .line 3728
    .end local v0    # "mode":I
    .end local v51    # "switchObj":Lcom/android/server/AppOpsService$Op;
    goto :goto_36

    .line 3730
    .end local v50    # "printedPackage":Z
    .local v0, "printedPackage":Z
    :cond_64
    move/from16 v50, v0

    .line 3730
    .end local v0    # "printedPackage":Z
    .restart local v50    # "printedPackage":Z
    :goto_36
    :try_start_22
    const-string v0, "): "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3731
    const-string v0, "          Access: "

    const-string v16, "                  "

    iget-object v1, v2, Lcom/android/server/AppOpsService$Op;->time:[J
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_4

    move-object/from16 v17, v1

    move-wide/from16 v23, v48

    move-object v1, v15

    .line 3731
    .end local v48    # "nowUptime":J
    .local v23, "nowUptime":J
    move/from16 v52, v13

    move-object v13, v2

    move-object v2, v14

    .line 3731
    .end local v2    # "op":Lcom/android/server/AppOpsService$Op;
    .local v13, "op":Lcom/android/server/AppOpsService$Op;
    .local v52, "pkgi":I
    move/from16 v27, v3

    move/from16 v26, v36

    move-object v3, v0

    .line 3731
    .end local v3    # "switchOp":I
    .end local v36    # "dumpUid":I
    .local v26, "dumpUid":I
    .local v27, "switchOp":I
    move-object/from16 v28, v4

    move-object/from16 v4, v16

    .line 3731
    .end local v4    # "dumpPackage":Ljava/lang/String;
    .local v28, "dumpPackage":Ljava/lang/String;
    move/from16 v29, v5

    move-object/from16 v5, v17

    .line 3731
    .end local v5    # "dumpMode":I
    .local v29, "dumpMode":I
    move-object v0, v6

    move-object/from16 v30, v7

    move/from16 v31, v8

    move-wide/from16 v6, v34

    move-object/from16 v8, v47

    :try_start_23
    invoke-direct/range {v1 .. v9}, Lcom/android/server/AppOpsService;->dumpTimesLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[JJLjava/text/SimpleDateFormat;Ljava/util/Date;)V

    .line 3734
    .end local v7    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v34    # "now":J
    .end local v47    # "sdf":Ljava/text/SimpleDateFormat;
    .local v0, "opModes":Landroid/util/SparseIntArray;
    .local v6, "now":J
    .local v8, "sdf":Ljava/text/SimpleDateFormat;
    .local v30, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .local v31, "j":I
    const-string v1, "          Reject: "

    const-string v2, "                  "

    iget-object v3, v13, Lcom/android/server/AppOpsService$Op;->rejectTime:[J
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_3

    move v4, v10

    move-object v10, v15

    .line 3734
    .end local v10    # "dumpOp":I
    .local v4, "dumpOp":I
    move/from16 v53, v4

    move-object v5, v11

    move/from16 v4, v22

    const/16 v16, 0x0

    move-object v11, v14

    .line 3734
    .end local v4    # "dumpOp":I
    .end local v11    # "ops":Lcom/android/server/AppOpsService$Ops;
    .local v5, "ops":Lcom/android/server/AppOpsService$Ops;
    .local v53, "dumpOp":I
    move-object/from16 v22, v12

    move/from16 v32, v16

    move-object v12, v1

    .line 3734
    .end local v12    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .local v22, "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object v4, v13

    move/from16 v1, v44

    move/from16 v25, v52

    move-object v13, v2

    .line 3734
    .end local v13    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v44    # "i":I
    .end local v52    # "pkgi":I
    .local v1, "i":I
    .local v4, "op":Lcom/android/server/AppOpsService$Op;
    .local v25, "pkgi":I
    move-object v2, v14

    move-object v14, v3

    move-object v3, v15

    move-wide v15, v6

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    :try_start_24
    invoke-direct/range {v10 .. v18}, Lcom/android/server/AppOpsService;->dumpTimesLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[JJLjava/text/SimpleDateFormat;Ljava/util/Date;)V

    .line 3737
    iget v10, v4, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_65

    .line 3738
    const-string v10, "          Running start at: "

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3739
    iget-wide v10, v4, Lcom/android/server/AppOpsService$Op;->startRealtime:J

    sub-long v10, v19, v10

    invoke-static {v10, v11, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3740
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_37

    .line 3741
    :cond_65
    iget v10, v4, Lcom/android/server/AppOpsService$Op;->duration:I

    if-eqz v10, :cond_66

    .line 3742
    const-string v10, "          duration="

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3743
    iget v10, v4, Lcom/android/server/AppOpsService$Op;->duration:I

    int-to-long v10, v10

    invoke-static {v10, v11, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3744
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3746
    :cond_66
    :goto_37
    iget v10, v4, Lcom/android/server/AppOpsService$Op;->startNesting:I

    if-eqz v10, :cond_67

    .line 3747
    const-string v10, "          startNesting="

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3748
    iget v10, v4, Lcom/android/server/AppOpsService$Op;->startNesting:I

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(I)V

    .line 3707
    .end local v4    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v27    # "switchOp":I
    :cond_67
    :goto_38
    add-int/lit8 v4, v31, 0x1

    .line 3707
    .end local v31    # "j":I
    .local v4, "j":I
    move/from16 v44, v1

    move-object v14, v2

    move-object v15, v3

    move v2, v4

    move-object v11, v5

    move-wide/from16 v34, v6

    move-object/from16 v47, v8

    move-object/from16 v12, v22

    move/from16 v13, v25

    move/from16 v36, v26

    move-object/from16 v4, v28

    move/from16 v5, v29

    move-object/from16 v7, v30

    move/from16 v3, v50

    move/from16 v10, v53

    const/16 v22, 0x1

    move-object v6, v0

    move-wide/from16 v0, v23

    goto/16 :goto_33

    .line 3802
    .end local v0    # "opModes":Landroid/util/SparseIntArray;
    .end local v1    # "i":I
    .end local v4    # "j":I
    .end local v5    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v6    # "now":J
    .end local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v9    # "date":Ljava/util/Date;
    .end local v19    # "nowElapsed":J
    .end local v21    # "needSep":Z
    .end local v22    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v23    # "nowUptime":J
    .end local v25    # "pkgi":I
    .end local v30    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v50    # "printedPackage":Z
    .end local v53    # "dumpOp":I
    .restart local v10    # "dumpOp":I
    :catchall_3
    move-exception v0

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    .line 3802
    .end local v10    # "dumpOp":I
    .restart local v53    # "dumpOp":I
    goto/16 :goto_45

    .line 3701
    .end local v26    # "dumpUid":I
    .end local v28    # "dumpPackage":Ljava/lang/String;
    .end local v29    # "dumpMode":I
    .end local v53    # "dumpOp":I
    .local v0, "nowUptime":J
    .local v4, "dumpPackage":Ljava/lang/String;
    .local v5, "dumpMode":I
    .local v6, "opModes":Landroid/util/SparseIntArray;
    .restart local v7    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v9    # "date":Ljava/util/Date;
    .restart local v10    # "dumpOp":I
    .restart local v12    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .local v13, "pkgi":I
    .restart local v19    # "nowElapsed":J
    .restart local v21    # "needSep":Z
    .restart local v34    # "now":J
    .restart local v36    # "dumpUid":I
    .restart local v44    # "i":I
    .restart local v47    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_68
    move-wide/from16 v23, v0

    move-object/from16 v28, v4

    move/from16 v29, v5

    move-object v0, v6

    move-object/from16 v30, v7

    move/from16 v53, v10

    move-object/from16 v22, v12

    move/from16 v25, v13

    move-object v2, v14

    move-object v3, v15

    move-wide/from16 v6, v34

    move/from16 v26, v36

    move/from16 v1, v44

    move-object/from16 v8, v47

    const/16 v32, 0x0

    .end local v4    # "dumpPackage":Ljava/lang/String;
    .end local v5    # "dumpMode":I
    .end local v7    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v10    # "dumpOp":I
    .end local v12    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v13    # "pkgi":I
    .end local v34    # "now":J
    .end local v36    # "dumpUid":I
    .end local v44    # "i":I
    .end local v47    # "sdf":Ljava/text/SimpleDateFormat;
    .local v0, "opModes":Landroid/util/SparseIntArray;
    .restart local v1    # "i":I
    .local v6, "now":J
    .restart local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v22    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v23    # "nowUptime":J
    .restart local v25    # "pkgi":I
    .restart local v26    # "dumpUid":I
    .restart local v28    # "dumpPackage":Ljava/lang/String;
    .restart local v29    # "dumpMode":I
    .restart local v30    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v53    # "dumpOp":I
    :goto_39
    add-int/lit8 v4, v25, 0x1

    .line 3701
    .end local v25    # "pkgi":I
    .local v4, "pkgi":I
    move/from16 v44, v1

    move-object v14, v2

    move-object v15, v3

    move v2, v4

    move-wide/from16 v34, v6

    move-object/from16 v47, v8

    move-object/from16 v12, v22

    move/from16 v36, v26

    move-object/from16 v4, v28

    move/from16 v5, v29

    move-object/from16 v7, v30

    move/from16 v10, v53

    const/16 v22, 0x1

    move-object v6, v0

    move-wide/from16 v0, v23

    goto/16 :goto_32

    .line 3601
    .end local v1    # "i":I
    .end local v6    # "now":J
    .end local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v22    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v23    # "nowUptime":J
    .end local v26    # "dumpUid":I
    .end local v28    # "dumpPackage":Ljava/lang/String;
    .end local v29    # "dumpMode":I
    .end local v30    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v53    # "dumpOp":I
    .local v0, "nowUptime":J
    .local v4, "dumpPackage":Ljava/lang/String;
    .restart local v5    # "dumpMode":I
    .restart local v10    # "dumpOp":I
    .restart local v34    # "now":J
    .restart local v36    # "dumpUid":I
    .restart local v44    # "i":I
    .restart local v47    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_69
    move-wide/from16 v23, v0

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    move-wide/from16 v6, v34

    move/from16 v26, v36

    move/from16 v1, v44

    move-object/from16 v8, v47

    const/16 v32, 0x0

    :goto_3a
    move/from16 v11, v21

    .end local v0    # "nowUptime":J
    .end local v4    # "dumpPackage":Ljava/lang/String;
    .end local v5    # "dumpMode":I
    .end local v10    # "dumpOp":I
    .end local v34    # "now":J
    .end local v36    # "dumpUid":I
    .end local v44    # "i":I
    .end local v47    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v1    # "i":I
    .restart local v6    # "now":J
    .restart local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v23    # "nowUptime":J
    .restart local v26    # "dumpUid":I
    .restart local v28    # "dumpPackage":Ljava/lang/String;
    .restart local v29    # "dumpMode":I
    .restart local v53    # "dumpOp":I
    goto :goto_3c

    .line 3601
    .end local v1    # "i":I
    .end local v6    # "now":J
    .end local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v21    # "needSep":Z
    .end local v23    # "nowUptime":J
    .end local v26    # "dumpUid":I
    .end local v28    # "dumpPackage":Ljava/lang/String;
    .end local v29    # "dumpMode":I
    .end local v53    # "dumpOp":I
    .restart local v0    # "nowUptime":J
    .restart local v4    # "dumpPackage":Ljava/lang/String;
    .restart local v5    # "dumpMode":I
    .restart local v10    # "dumpOp":I
    .restart local v34    # "now":J
    .restart local v36    # "dumpUid":I
    .restart local v44    # "i":I
    .restart local v46    # "needSep":Z
    .restart local v47    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_6a
    move-wide/from16 v23, v0

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    move-wide/from16 v6, v34

    move/from16 v26, v36

    move/from16 v1, v44

    move-object/from16 v8, v47

    const/16 v32, 0x0

    .end local v0    # "nowUptime":J
    .end local v4    # "dumpPackage":Ljava/lang/String;
    .end local v5    # "dumpMode":I
    .end local v10    # "dumpOp":I
    .end local v34    # "now":J
    .end local v36    # "dumpUid":I
    .end local v44    # "i":I
    .end local v47    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v1    # "i":I
    .restart local v6    # "now":J
    .restart local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v23    # "nowUptime":J
    .restart local v26    # "dumpUid":I
    .restart local v28    # "dumpPackage":Ljava/lang/String;
    .restart local v29    # "dumpMode":I
    .restart local v53    # "dumpOp":I
    :goto_3b
    move/from16 v11, v46

    .line 3601
    .end local v46    # "needSep":Z
    .local v11, "needSep":Z
    :goto_3c
    add-int/lit8 v0, v1, 0x1

    .line 3601
    .end local v1    # "i":I
    .local v0, "i":I
    move-object v14, v2

    move-object v15, v3

    move-wide/from16 v34, v6

    move/from16 v36, v26

    move-object/from16 v4, v28

    move/from16 v5, v29

    move/from16 v10, v53

    const/16 v22, 0x1

    move v2, v0

    move-wide/from16 v0, v23

    goto/16 :goto_1e

    .line 3753
    .end local v6    # "now":J
    .end local v23    # "nowUptime":J
    .end local v26    # "dumpUid":I
    .end local v28    # "dumpPackage":Ljava/lang/String;
    .end local v29    # "dumpMode":I
    .end local v53    # "dumpOp":I
    .local v0, "nowUptime":J
    .restart local v4    # "dumpPackage":Ljava/lang/String;
    .restart local v5    # "dumpMode":I
    .restart local v10    # "dumpOp":I
    .restart local v34    # "now":J
    .restart local v36    # "dumpUid":I
    :cond_6b
    move-wide/from16 v23, v0

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move/from16 v46, v11

    move-object v2, v14

    move-object v3, v15

    move-wide/from16 v6, v34

    move/from16 v26, v36

    const/16 v32, 0x0

    .end local v0    # "nowUptime":J
    .end local v4    # "dumpPackage":Ljava/lang/String;
    .end local v5    # "dumpMode":I
    .end local v10    # "dumpOp":I
    .end local v11    # "needSep":Z
    .end local v34    # "now":J
    .end local v36    # "dumpUid":I
    .restart local v6    # "now":J
    .restart local v23    # "nowUptime":J
    .restart local v26    # "dumpUid":I
    .restart local v28    # "dumpPackage":Ljava/lang/String;
    .restart local v29    # "dumpMode":I
    .restart local v46    # "needSep":Z
    .restart local v53    # "dumpOp":I
    if-eqz v46, :cond_6c

    .line 3754
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3757
    :cond_6c
    iget-object v0, v3, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 3758
    .local v0, "userRestrictionCount":I
    move/from16 v1, v32

    .line 3758
    .restart local v1    # "i":I
    :goto_3d
    if-ge v1, v0, :cond_75

    .line 3759
    iget-object v4, v3, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 3760
    .local v4, "token":Landroid/os/IBinder;
    iget-object v5, v3, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$ClientRestrictionState;

    .line 3761
    .local v5, "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  User restrictions for token "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3763
    iget-object v10, v5, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v10, :cond_6d

    .line 3764
    iget-object v10, v5, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v12

    goto :goto_3e

    :cond_6d
    move/from16 v12, v32

    :goto_3e
    move v10, v12

    .line 3765
    .local v10, "restrictionCount":I
    if-lez v10, :cond_72

    .line 3766
    const-string v11, "      Restricted ops:"

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3767
    move/from16 v11, v32

    .line 3767
    .local v11, "j":I
    :goto_3f
    if-ge v11, v10, :cond_72

    .line 3768
    iget-object v12, v5, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 3769
    .local v12, "userId":I
    iget-object v13, v5, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v13, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Z

    .line 3770
    .local v13, "restrictedOps":[Z
    if-nez v13, :cond_6e

    .line 3771
    nop

    .line 3767
    move/from16 v55, v0

    move-object/from16 v56, v4

    move-wide/from16 v57, v6

    const/4 v6, 0x1

    goto :goto_42

    .line 3773
    :cond_6e
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 3774
    .local v14, "restrictedOpsValue":Ljava/lang/StringBuilder;
    const-string v15, "["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3775
    array-length v15, v13

    .line 3776
    .local v15, "restrictedOpCount":I
    move/from16 v16, v32

    .line 3776
    .local v16, "k":I
    :goto_40
    move/from16 v54, v16

    .line 3776
    .end local v16    # "k":I
    .local v54, "k":I
    move/from16 v55, v0

    move/from16 v0, v54

    if-ge v0, v15, :cond_71

    .line 3777
    .end local v54    # "k":I
    .local v0, "k":I
    .local v55, "userRestrictionCount":I
    aget-boolean v16, v13, v0

    if-eqz v16, :cond_70

    .line 3778
    move-object/from16 v56, v4

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 3778
    .end local v4    # "token":Landroid/os/IBinder;
    .local v56, "token":Landroid/os/IBinder;
    move-wide/from16 v57, v6

    const/4 v6, 0x1

    if-le v4, v6, :cond_6f

    .line 3779
    .end local v6    # "now":J
    .local v57, "now":J
    const-string v4, ", "

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3781
    :cond_6f
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_41

    .line 3776
    .end local v56    # "token":Landroid/os/IBinder;
    .end local v57    # "now":J
    .restart local v4    # "token":Landroid/os/IBinder;
    .restart local v6    # "now":J
    :cond_70
    move-object/from16 v56, v4

    move-wide/from16 v57, v6

    const/4 v6, 0x1

    .line 3776
    .end local v4    # "token":Landroid/os/IBinder;
    .end local v6    # "now":J
    .restart local v56    # "token":Landroid/os/IBinder;
    .restart local v57    # "now":J
    :goto_41
    add-int/lit8 v16, v0, 0x1

    .line 3776
    .end local v0    # "k":I
    .restart local v16    # "k":I
    move/from16 v0, v55

    move-object/from16 v4, v56

    move-wide/from16 v6, v57

    goto :goto_40

    .line 3784
    .end local v16    # "k":I
    .end local v56    # "token":Landroid/os/IBinder;
    .end local v57    # "now":J
    .restart local v4    # "token":Landroid/os/IBinder;
    .restart local v6    # "now":J
    :cond_71
    move-object/from16 v56, v4

    move-wide/from16 v57, v6

    const/4 v6, 0x1

    .line 3784
    .end local v4    # "token":Landroid/os/IBinder;
    .end local v6    # "now":J
    .restart local v56    # "token":Landroid/os/IBinder;
    .restart local v57    # "now":J
    const-string v0, "]"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3785
    const-string v0, "        "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "user: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 3786
    const-string v0, " restricted ops: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3767
    .end local v12    # "userId":I
    .end local v13    # "restrictedOps":[Z
    .end local v14    # "restrictedOpsValue":Ljava/lang/StringBuilder;
    .end local v15    # "restrictedOpCount":I
    :goto_42
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, v55

    move-object/from16 v4, v56

    move-wide/from16 v6, v57

    goto/16 :goto_3f

    .line 3790
    .end local v11    # "j":I
    .end local v55    # "userRestrictionCount":I
    .end local v56    # "token":Landroid/os/IBinder;
    .end local v57    # "now":J
    .local v0, "userRestrictionCount":I
    .restart local v4    # "token":Landroid/os/IBinder;
    .restart local v6    # "now":J
    :cond_72
    move/from16 v55, v0

    move-object/from16 v56, v4

    move-wide/from16 v57, v6

    const/4 v6, 0x1

    .line 3790
    .end local v0    # "userRestrictionCount":I
    .end local v4    # "token":Landroid/os/IBinder;
    .end local v6    # "now":J
    .restart local v55    # "userRestrictionCount":I
    .restart local v56    # "token":Landroid/os/IBinder;
    .restart local v57    # "now":J
    iget-object v0, v5, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-eqz v0, :cond_73

    .line 3791
    iget-object v0, v5, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v12

    goto :goto_43

    :cond_73
    move/from16 v12, v32

    :goto_43
    move v0, v12

    .line 3792
    .local v0, "excludedPackageCount":I
    if-lez v0, :cond_74

    .line 3793
    const-string v4, "      Excluded packages:"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3794
    move/from16 v4, v32

    .line 3794
    .local v4, "j":I
    :goto_44
    if-ge v4, v0, :cond_74

    .line 3795
    iget-object v7, v5, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 3796
    .local v7, "userId":I
    iget-object v11, v5, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    .line 3797
    .local v11, "packageNames":[Ljava/lang/String;
    const-string v12, "        "

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v12, "user: "

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 3798
    const-string v12, " packages: "

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3794
    .end local v7    # "userId":I
    .end local v11    # "packageNames":[Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    .line 3758
    .end local v0    # "excludedPackageCount":I
    .end local v4    # "j":I
    .end local v5    # "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    .end local v10    # "restrictionCount":I
    .end local v56    # "token":Landroid/os/IBinder;
    :cond_74
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v55

    move-wide/from16 v6, v57

    goto/16 :goto_3d

    .line 3802
    .end local v1    # "i":I
    .end local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v9    # "date":Ljava/util/Date;
    .end local v19    # "nowElapsed":J
    .end local v23    # "nowUptime":J
    .end local v46    # "needSep":Z
    .end local v55    # "userRestrictionCount":I
    .end local v57    # "now":J
    :cond_75
    monitor-exit p0

    .line 3803
    return-void

    .line 3802
    .end local v26    # "dumpUid":I
    .end local v28    # "dumpPackage":Ljava/lang/String;
    .end local v29    # "dumpMode":I
    .end local v53    # "dumpOp":I
    .local v4, "dumpPackage":Ljava/lang/String;
    .local v5, "dumpMode":I
    .local v10, "dumpOp":I
    .restart local v36    # "dumpUid":I
    :catchall_4
    move-exception v0

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    move/from16 v26, v36

    .line 3802
    .end local v4    # "dumpPackage":Ljava/lang/String;
    .end local v5    # "dumpMode":I
    .end local v10    # "dumpOp":I
    .end local v36    # "dumpUid":I
    .restart local v26    # "dumpUid":I
    .restart local v28    # "dumpPackage":Ljava/lang/String;
    .restart local v29    # "dumpMode":I
    .restart local v53    # "dumpOp":I
    goto :goto_45

    .line 3802
    .end local v26    # "dumpUid":I
    .end local v28    # "dumpPackage":Ljava/lang/String;
    .end local v29    # "dumpMode":I
    .end local v53    # "dumpOp":I
    .local v3, "dumpUid":I
    .restart local v4    # "dumpPackage":Ljava/lang/String;
    .restart local v5    # "dumpMode":I
    .restart local v10    # "dumpOp":I
    :catchall_5
    move-exception v0

    move/from16 v26, v3

    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v53, v10

    move-object v2, v14

    move-object v3, v15

    .line 3802
    .end local v3    # "dumpUid":I
    .end local v4    # "dumpPackage":Ljava/lang/String;
    .end local v5    # "dumpMode":I
    .end local v10    # "dumpOp":I
    .restart local v26    # "dumpUid":I
    .restart local v28    # "dumpPackage":Ljava/lang/String;
    .restart local v29    # "dumpMode":I
    .restart local v53    # "dumpOp":I
    :goto_45
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    goto :goto_45
.end method

.method enforceManageAppOpsModes(III)V
    .locals 6
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "targetUid"    # I

    .line 1317
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1318
    return-void

    .line 1320
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1321
    .local v0, "callingUser":I
    monitor-enter p0

    .line 1322
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, p2, :cond_1

    .line 1323
    if-ltz p3, :cond_1

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1326
    monitor-exit p0

    return-void

    .line 1329
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1330
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_APP_OPS_MODES"

    .line 1331
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x0

    .line 1330
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1332
    return-void

    .line 1329
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 2109
    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 2110
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 2111
    invoke-static {p3, p4}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2112
    .local v0, "resolvedPackageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2113
    return-void

    .line 2115
    :cond_0
    instance-of v1, p1, Lcom/android/server/AppOpsService$ClientState;

    if-nez v1, :cond_1

    .line 2116
    return-void

    .line 2118
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/AppOpsService$ClientState;

    .line 2119
    .local v1, "client":Lcom/android/server/AppOpsService$ClientState;
    monitor-enter p0

    .line 2120
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p2, p3, v0, v2}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v2

    .line 2121
    .local v2, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v2, :cond_2

    .line 2122
    monitor-exit p0

    return-void

    .line 2124
    :cond_2
    iget-object v3, v1, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_4

    .line 2129
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2131
    .local v5, "identity":J
    :try_start_1
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 2132
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 2131
    invoke-virtual {v3, v0, v4, v7}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v3

    if-gez v3, :cond_3

    .line 2133
    const-string v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Finishing op="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for non-existing package="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " in uid="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2139
    :try_start_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    .line 2136
    return-void

    .line 2139
    :cond_3
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2140
    nop

    .line 2141
    const-string v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Operation not started: uid="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " pkg="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " op="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/android/server/AppOpsService$Op;->op:I

    .line 2142
    invoke-static {v7}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2141
    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    monitor-exit p0

    return-void

    .line 2139
    :catchall_0
    move-exception v3

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2145
    .end local v5    # "identity":J
    :cond_4
    invoke-virtual {p0, v2, v4}, Lcom/android/server/AppOpsService;->finishOperationLocked(Lcom/android/server/AppOpsService$Op;Z)V

    .line 2146
    iget v3, v2, Lcom/android/server/AppOpsService$Op;->startNesting:I

    if-gtz v3, :cond_5

    .line 2147
    invoke-direct {p0, p2, p3, p4, v4}, Lcom/android/server/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V

    .line 2149
    .end local v2    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_5
    monitor-exit p0

    .line 2150
    return-void

    .line 2149
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method finishOperationLocked(Lcom/android/server/AppOpsService$Op;Z)V
    .locals 6
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;
    .param p2, "finishNested"    # Z

    .line 2207
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2221
    :cond_0
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    .line 2222
    iget-object v0, p1, Lcom/android/server/AppOpsService$Op;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v2, v0, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    goto/16 :goto_3

    .line 2208
    :cond_1
    :goto_0
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    if-eq v0, v1, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    .line 2212
    :cond_2
    const-string v0, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finishing op nesting under-run: uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/AppOpsService$Op;->time:[J

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " nesting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2209
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/android/server/AppOpsService$Op;->startRealtime:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 2210
    iget-object v0, p1, Lcom/android/server/AppOpsService$Op;->time:[J

    iget-object v2, p1, Lcom/android/server/AppOpsService$Op;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v2, v2, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 2216
    :goto_2
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    if-lt v0, v1, :cond_4

    .line 2217
    iget-object v0, p1, Lcom/android/server/AppOpsService$Op;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v1, v0, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    .line 2219
    :cond_4
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->startNesting:I

    .line 2224
    :goto_3
    return-void
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .locals 7
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 1248
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_APP_OPS_STATS"

    .line 1249
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1248
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1250
    invoke-static {p1, p2}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1251
    .local v0, "resolvedPackageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1252
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1254
    :cond_0
    monitor-enter p0

    .line 1255
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object v1

    .line 1257
    .local v1, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    if-nez v1, :cond_1

    .line 1258
    monitor-exit p0

    return-object v4

    .line 1260
    :cond_1
    invoke-direct {p0, v1, p3}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1261
    .local v2, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez v2, :cond_2

    .line 1262
    monitor-exit p0

    return-object v4

    .line 1264
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1265
    .local v3, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v4, Landroid/app/AppOpsManager$PackageOps;

    iget-object v5, v1, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v6, v6, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-direct {v4, v5, v6, v2}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 1267
    .local v4, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1268
    monitor-exit p0

    return-object v3

    .line 1269
    .end local v1    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v2    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v4    # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .locals 13
    .param p1, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 1216
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_APP_OPS_STATS"

    .line 1217
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1216
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1218
    const/4 v0, 0x0

    .line 1219
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    monitor-enter p0

    .line 1220
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1221
    .local v1, "uidStateCount":I
    const/4 v2, 0x0

    move-object v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_0
    if-ge v0, v1, :cond_5

    .line 1222
    :try_start_1
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$UidState;

    .line 1223
    .local v4, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v5, v4, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v5, :cond_4

    iget-object v5, v4, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1224
    goto :goto_2

    .line 1226
    :cond_0
    iget-object v5, v4, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1227
    .local v5, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1228
    .local v6, "packageCount":I
    move-object v7, v3

    move v3, v2

    .local v3, "j":I
    .local v7, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_1
    if-ge v3, v6, :cond_3

    .line 1229
    :try_start_2
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AppOpsService$Ops;

    .line 1230
    .local v8, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    invoke-direct {p0, v8, p1}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v9

    .line 1231
    .local v9, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-eqz v9, :cond_2

    .line 1232
    if-nez v7, :cond_1

    .line 1233
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v10

    .line 1235
    :cond_1
    new-instance v10, Landroid/app/AppOpsManager$PackageOps;

    iget-object v11, v8, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v12, v8, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v12, v12, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-direct {v10, v11, v12, v9}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 1237
    .local v10, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1228
    .end local v8    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v9    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v10    # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1221
    .end local v3    # "j":I
    .end local v4    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v5    # "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v6    # "packageCount":I
    :cond_3
    move-object v3, v7

    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v3, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1241
    .end local v0    # "i":I
    .end local v1    # "uidStateCount":I
    :catchall_0
    move-exception v0

    move-object v7, v3

    goto :goto_3

    :cond_5
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1242
    return-object v3

    .line 1241
    .end local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :catchall_1
    move-exception v1

    move-object v7, v0

    move-object v0, v1

    .end local v0    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_3
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_3
.end method

.method public getToken(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 2
    .param p1, "clientToken"    # Landroid/os/IBinder;

    .line 1763
    monitor-enter p0

    .line 1764
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .line 1765
    .local v0, "cs":Lcom/android/server/AppOpsService$ClientState;
    if-nez v0, :cond_0

    .line 1766
    new-instance v1, Lcom/android/server/AppOpsService$ClientState;

    invoke-direct {v1, p0, p1}, Lcom/android/server/AppOpsService$ClientState;-><init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V

    move-object v0, v1

    .line 1767
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1769
    :cond_0
    monitor-exit p0

    return-object v0

    .line 1770
    .end local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUidOps(I[I)Ljava/util/List;
    .locals 6
    .param p1, "uid"    # I
    .param p2, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 1274
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_APP_OPS_STATS"

    .line 1275
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1274
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1276
    monitor-enter p0

    .line 1277
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v0

    .line 1278
    .local v0, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v0, :cond_0

    .line 1279
    monitor-exit p0

    return-object v4

    .line 1281
    :cond_0
    iget-object v1, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-direct {p0, v1, p2}, Lcom/android/server/AppOpsService;->collectOps(Landroid/util/SparseIntArray;[I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1282
    .local v1, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez v1, :cond_1

    .line 1283
    monitor-exit p0

    return-object v4

    .line 1285
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1286
    .local v2, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v3, Landroid/app/AppOpsManager$PackageOps;

    iget v5, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-direct {v3, v4, v5, v1}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 1288
    .local v3, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1289
    monitor-exit p0

    return-object v2

    .line 1290
    .end local v0    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v1    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v2    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v3    # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isOperationActive(IILjava/lang/String;)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 3900
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p2, :cond_0

    .line 3901
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WATCH_APPOPS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3903
    return v1

    .line 3906
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 3907
    invoke-static {p2, p3}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3908
    .local v0, "resolvedPackageName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 3909
    return v1

    .line 3911
    :cond_1
    monitor-enter p0

    .line 3912
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_4

    .line 3913
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$ClientState;

    .line 3914
    .local v4, "client":Lcom/android/server/AppOpsService$ClientState;
    iget-object v5, v4, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    .local v5, "j":I
    :goto_1
    if-ltz v5, :cond_3

    .line 3915
    iget-object v6, v4, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Op;

    .line 3916
    .local v6, "op":Lcom/android/server/AppOpsService$Op;
    iget v7, v6, Lcom/android/server/AppOpsService$Op;->op:I

    if-ne v7, p1, :cond_2

    iget v7, v6, Lcom/android/server/AppOpsService$Op;->uid:I

    if-ne v7, p2, :cond_2

    monitor-exit p0

    return v3

    .line 3914
    .end local v6    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 3912
    .end local v4    # "client":Lcom/android/server/AppOpsService$ClientState;
    .end local v5    # "j":I
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3919
    .end local v2    # "i":I
    :cond_4
    monitor-exit p0

    .line 3920
    return v1

    .line 3919
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method loadSystemAppList()V
    .locals 1

    .line 755
    sget-boolean v0, Lcom/android/server/AppOpsService;->IS_SUPPORT_CAMERA_NOTCH:Z

    return-void
.end method

.method public noteOperation(IILjava/lang/String;)I
    .locals 7
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 1926
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1927
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1928
    invoke-static {p2, p3}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1929
    .local v6, "resolvedPackageName":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 1930
    const/4 v0, 0x1

    return v0

    .line 1932
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteProxyOperation(ILjava/lang/String;ILjava/lang/String;)I
    .locals 11
    .param p1, "code"    # I
    .param p2, "proxyPackageName"    # Ljava/lang/String;
    .param p3, "proxiedUid"    # I
    .param p4, "proxiedPackageName"    # Ljava/lang/String;

    .line 1905
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1906
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1907
    .local v6, "proxyUid":I
    invoke-static {v6, p2}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1908
    .local v7, "resolveProxyPackageName":Ljava/lang/String;
    const/4 v8, 0x1

    if-nez v7, :cond_0

    .line 1909
    return v8

    .line 1911
    :cond_0
    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, v6

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    move-result v9

    .line 1913
    .local v9, "proxyMode":I
    if-nez v9, :cond_3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne v0, p3, :cond_1

    goto :goto_0

    .line 1916
    :cond_1
    invoke-static {p3, p4}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1917
    .local v10, "resolveProxiedPackageName":Ljava/lang/String;
    if-nez v10, :cond_2

    .line 1918
    return v8

    .line 1920
    :cond_2
    move-object v0, p0

    move v1, p1

    move v2, p3

    move-object v3, v10

    move v4, v9

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0

    .line 1914
    .end local v10    # "resolveProxiedPackageName":Ljava/lang/String;
    :cond_3
    :goto_0
    return v9
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 3058
    new-instance v0, Lcom/android/server/AppOpsService$Shell;

    invoke-direct {v0, p0, p0}, Lcom/android/server/AppOpsService$Shell;-><init>(Lcom/android/internal/app/IAppOpsService;Lcom/android/server/AppOpsService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/AppOpsService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 3059
    return-void
.end method

.method public packageRemoved(ILjava/lang/String;)V
    .locals 10
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1035
    monitor-enter p0

    .line 1036
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$UidState;

    .line 1037
    .local v0, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v0, :cond_0

    .line 1038
    monitor-exit p0

    return-void

    .line 1041
    :cond_0
    const/4 v1, 0x0

    .line 1044
    .local v1, "ops":Lcom/android/server/AppOpsService$Ops;
    iget-object v2, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v2, :cond_1

    .line 1045
    iget-object v2, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$Ops;

    move-object v1, v2

    .line 1049
    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1050
    invoke-static {p1}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_2

    .line 1051
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1055
    :cond_2
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1056
    .local v2, "clientCount":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_6

    .line 1057
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$ClientState;

    .line 1058
    .local v5, "client":Lcom/android/server/AppOpsService$ClientState;
    iget-object v6, v5, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-nez v6, :cond_3

    .line 1059
    goto :goto_2

    .line 1061
    :cond_3
    iget-object v6, v5, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1062
    .local v6, "opCount":I
    add-int/lit8 v7, v6, -0x1

    .local v7, "j":I
    :goto_1
    if-ltz v7, :cond_5

    .line 1063
    iget-object v8, v5, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AppOpsService$Op;

    .line 1064
    .local v8, "op":Lcom/android/server/AppOpsService$Op;
    iget v9, v8, Lcom/android/server/AppOpsService$Op;->uid:I

    if-ne p1, v9, :cond_4

    iget-object v9, v8, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1065
    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/android/server/AppOpsService;->finishOperationLocked(Lcom/android/server/AppOpsService$Op;Z)V

    .line 1066
    iget-object v9, v5, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1067
    iget v9, v8, Lcom/android/server/AppOpsService$Op;->startNesting:I

    if-gtz v9, :cond_4

    .line 1068
    iget v9, v8, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-direct {p0, v9, p1, p2, v3}, Lcom/android/server/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V

    .line 1062
    .end local v8    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_4
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 1056
    .end local v5    # "client":Lcom/android/server/AppOpsService$ClientState;
    .end local v6    # "opCount":I
    .end local v7    # "j":I
    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1075
    .end local v4    # "i":I
    :cond_6
    if-eqz v1, :cond_8

    .line 1076
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V

    .line 1078
    invoke-virtual {v1}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v4

    .line 1079
    .local v4, "opCount":I
    move v5, v3

    .local v5, "i":I
    :goto_3
    if-ge v5, v4, :cond_8

    .line 1080
    invoke-virtual {v1, v5}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Op;

    .line 1081
    .local v6, "op":Lcom/android/server/AppOpsService$Op;
    iget v7, v6, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_7

    .line 1082
    iget v7, v6, Lcom/android/server/AppOpsService$Op;->op:I

    iget v8, v6, Lcom/android/server/AppOpsService$Op;->uid:I

    iget-object v9, v6, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-direct {p0, v7, v8, v9, v3}, Lcom/android/server/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V

    .line 1079
    .end local v6    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1087
    .end local v0    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v1    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v2    # "clientCount":I
    .end local v4    # "opCount":I
    .end local v5    # "i":I
    :cond_8
    monitor-exit p0

    .line 1088
    return-void

    .line 1087
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public permissionToOpCode(Ljava/lang/String;)I
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .line 2200
    if-nez p1, :cond_0

    .line 2201
    const/4 v0, -0x1

    return v0

    .line 2203
    :cond_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public publish(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 885
    iput-object p1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    .line 886
    const-string v0, "appops"

    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 887
    const-class v0, Landroid/app/AppOpsManagerInternal;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mAppOpsManagerInternal:Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 888
    return-void
.end method

.method readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2596
    const-string/jumbo v0, "n"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2597
    .local v0, "pkgName":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 2599
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .line 2599
    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    .line 2600
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_4

    .line 2601
    :cond_1
    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    .line 2602
    goto :goto_0

    .line 2605
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2606
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "uid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2607
    invoke-virtual {p0, p1, v0}, Lcom/android/server/AppOpsService;->readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_1

    .line 2609
    :cond_3
    const-string v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <pkg>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2610
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2609
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2613
    .end local v2    # "tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 2614
    :cond_4
    return-void
.end method

.method readState()V
    .locals 13

    .line 2438
    const/4 v0, -0x1

    .line 2439
    .local v0, "oldVersion":I
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v1

    .line 2440
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2443
    :try_start_1
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2447
    .local v2, "stream":Ljava/io/FileInputStream;
    nop

    .line 2446
    nop

    .line 2448
    const/4 v3, 0x0

    .line 2449
    .local v3, "success":Z
    :try_start_2
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2451
    :try_start_3
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 2452
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2454
    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v6, v5

    .line 2454
    .local v6, "type":I
    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eq v5, v8, :cond_0

    if-eq v6, v7, :cond_0

    .line 2454
    .end local v6    # "type":I
    goto :goto_0

    .line 2459
    .restart local v6    # "type":I
    :cond_0
    if-ne v6, v8, :cond_9

    .line 2463
    const/4 v5, 0x0

    const-string/jumbo v8, "v"

    invoke-interface {v4, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2464
    .local v5, "versionString":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 2465
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v0, v8

    .line 2468
    :cond_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 2469
    .local v8, "outerDepth":I
    :cond_2
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v6, v9

    if-eq v9, v7, :cond_7

    const/4 v9, 0x3

    if-ne v6, v9, :cond_3

    .line 2470
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v8, :cond_7

    .line 2471
    :cond_3
    if-eq v6, v9, :cond_2

    const/4 v9, 0x4

    if-ne v6, v9, :cond_4

    .line 2472
    goto :goto_1

    .line 2475
    :cond_4
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 2476
    .local v9, "tagName":Ljava/lang/String;
    const-string/jumbo v10, "pkg"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2477
    invoke-virtual {p0, v4}, Lcom/android/server/AppOpsService;->readPackage(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 2478
    :cond_5
    const-string/jumbo v10, "uid"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2479
    invoke-virtual {p0, v4}, Lcom/android/server/AppOpsService;->readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 2481
    :cond_6
    const-string v10, "AppOps"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown element under <app-ops>: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2482
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2481
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2485
    .end local v9    # "tagName":Ljava/lang/String;
    :goto_2
    goto :goto_1

    .line 2486
    :cond_7
    const/4 v3, 0x1

    .line 2500
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "versionString":Ljava/lang/String;
    .end local v6    # "type":I
    .end local v8    # "outerDepth":I
    if-nez v3, :cond_8

    .line 2501
    :try_start_4
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2504
    :cond_8
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2506
    :goto_3
    goto/16 :goto_4

    .line 2505
    :catch_0
    move-exception v4

    .line 2507
    goto/16 :goto_4

    .line 2460
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "type":I
    :cond_9
    :try_start_6
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "no start tag found"

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2500
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    :catchall_0
    move-exception v4

    goto/16 :goto_5

    .line 2497
    :catch_1
    move-exception v4

    .line 2498
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_7
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2500
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    if-nez v3, :cond_a

    .line 2501
    :try_start_8
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2504
    :cond_a
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_3

    .line 2495
    :catch_2
    move-exception v4

    .line 2496
    .local v4, "e":Ljava/io/IOException;
    :try_start_a
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 2500
    .end local v4    # "e":Ljava/io/IOException;
    if-nez v3, :cond_b

    .line 2501
    :try_start_b
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 2504
    :cond_b
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_3

    .line 2493
    :catch_3
    move-exception v4

    .line 2494
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_d
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 2500
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-nez v3, :cond_c

    .line 2501
    :try_start_e
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 2504
    :cond_c
    :try_start_f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_3

    .line 2491
    :catch_4
    move-exception v4

    .line 2492
    .local v4, "e":Ljava/lang/NumberFormatException;
    :try_start_10
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 2500
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    if-nez v3, :cond_d

    .line 2501
    :try_start_11
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 2504
    :cond_d
    :try_start_12
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto/16 :goto_3

    .line 2489
    :catch_5
    move-exception v4

    .line 2490
    .local v4, "e":Ljava/lang/NullPointerException;
    :try_start_13
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 2500
    .end local v4    # "e":Ljava/lang/NullPointerException;
    if-nez v3, :cond_e

    .line 2501
    :try_start_14
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 2504
    :cond_e
    :try_start_15
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    goto/16 :goto_3

    .line 2487
    :catch_6
    move-exception v4

    .line 2488
    .local v4, "e":Ljava/lang/IllegalStateException;
    :try_start_16
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 2500
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    if-nez v3, :cond_f

    .line 2501
    :try_start_17
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 2504
    :cond_f
    :try_start_18
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    goto/16 :goto_3

    .line 2508
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .end local v3    # "success":Z
    :goto_4
    :try_start_19
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    .line 2509
    :try_start_1a
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    .line 2510
    monitor-enter p0

    .line 2511
    :try_start_1b
    invoke-direct {p0, v0}, Lcom/android/server/AppOpsService;->upgradeLocked(I)V

    .line 2512
    monitor-exit p0

    .line 2513
    return-void

    .line 2512
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    throw v1

    .line 2500
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "success":Z
    :goto_5
    if-nez v3, :cond_10

    .line 2501
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    .line 2504
    :cond_10
    :try_start_1d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_7
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    .line 2506
    goto :goto_6

    .line 2505
    :catch_7
    move-exception v5

    .line 2506
    :goto_6
    :try_start_1e
    throw v4

    .line 2508
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .end local v3    # "success":Z
    :catchall_2
    move-exception v2

    goto :goto_7

    .line 2444
    :catch_8
    move-exception v2

    .line 2445
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No existing app ops "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; starting empty"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2446
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    :try_start_1f
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    return-void

    .line 2508
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_7
    :try_start_20
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    :try_start_21
    throw v2

    .line 2509
    :catchall_3
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    throw v2
.end method

.method readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 25
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 2618
    move-object/from16 v3, p2

    const-string/jumbo v0, "n"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2619
    .local v5, "uid":I
    const-string/jumbo v0, "p"

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2620
    .local v6, "isPrivilegedString":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2621
    .local v7, "isPrivileged":Z
    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v6, :cond_3

    .line 2623
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 2624
    .local v0, "packageManager":Landroid/content/pm/IPackageManager;
    if-eqz v0, :cond_2

    .line 2625
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    .line 2626
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-interface {v11, v3, v9, v12}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    .line 2627
    .local v11, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v11, :cond_1

    .line 2628
    iget v12, v11, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v12, v8

    if-eqz v12, :cond_0

    move v12, v10

    goto :goto_0

    :cond_0
    move v12, v9

    :goto_0
    move v7, v12

    .line 2631
    .end local v11    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    goto :goto_1

    .line 2633
    :cond_2
    return-void

    .line 2635
    .end local v0    # "packageManager":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v0

    .line 2636
    .local v0, "e":Landroid/os/RemoteException;
    const-string v11, "AppOps"

    const-string v12, "Could not contact PackageManager"

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2637
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_2

    .line 2639
    :cond_3
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 2641
    :goto_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 2643
    .local v0, "outerDepth":I
    :goto_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    move v12, v11

    .line 2643
    .local v12, "type":I
    if-eq v11, v10, :cond_d

    const/4 v11, 0x3

    if-ne v12, v11, :cond_5

    .line 2644
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    if-le v13, v0, :cond_4

    goto :goto_4

    .line 2743
    :cond_4
    move/from16 v24, v0

    goto/16 :goto_d

    .line 2645
    :cond_5
    :goto_4
    if-eq v12, v11, :cond_c

    const/4 v13, 0x4

    if-ne v12, v13, :cond_6

    .line 2646
    nop

    .line 2641
    move/from16 v24, v0

    goto/16 :goto_c

    .line 2649
    :cond_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 2650
    .local v14, "tagName":Ljava/lang/String;
    const-string/jumbo v15, "op"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 2651
    invoke-direct {v1, v5, v10}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v15

    .line 2652
    .local v15, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v8, v15, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v8, :cond_7

    .line 2653
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    iput-object v8, v15, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 2656
    :cond_7
    new-instance v8, Lcom/android/server/AppOpsService$Op;

    const-string/jumbo v9, "n"

    .line 2657
    invoke-interface {v2, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v8, v15, v3, v9}, Lcom/android/server/AppOpsService$Op;-><init>(Lcom/android/server/AppOpsService$UidState;Ljava/lang/String;I)V

    .line 2659
    .local v8, "op":Lcom/android/server/AppOpsService$Op;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v9

    sub-int/2addr v9, v10

    .line 2659
    .local v9, "i":I
    :goto_5
    if-ltz v9, :cond_9

    .line 2660
    invoke-interface {v2, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 2661
    .local v4, "name":Ljava/lang/String;
    invoke-interface {v2, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    .line 2662
    .local v11, "value":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v18

    const/16 v19, 0x2

    const/16 v20, 0x5

    sparse-switch v18, :sswitch_data_0

    goto/16 :goto_6

    :sswitch_0
    const-string/jumbo v13, "tfs"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v13, 0x6

    goto/16 :goto_7

    :sswitch_1
    const-string/jumbo v13, "rfs"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v13, 0xc

    goto/16 :goto_7

    :sswitch_2
    const-string/jumbo v13, "tt"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    move/from16 v13, v20

    goto/16 :goto_7

    :sswitch_3
    const-string/jumbo v13, "tp"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v13, 0x4

    goto/16 :goto_7

    :sswitch_4
    const-string/jumbo v13, "tf"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v13, 0x7

    goto/16 :goto_7

    :sswitch_5
    const-string/jumbo v13, "tc"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v13, 0x9

    goto/16 :goto_7

    :sswitch_6
    const-string/jumbo v13, "tb"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v13, 0x8

    goto/16 :goto_7

    :sswitch_7
    const-string/jumbo v13, "rt"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v13, 0xb

    goto/16 :goto_7

    :sswitch_8
    const-string/jumbo v13, "rp"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v13, 0xa

    goto/16 :goto_7

    :sswitch_9
    const-string/jumbo v13, "rf"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v13, 0xd

    goto :goto_7

    :sswitch_a
    const-string/jumbo v13, "rc"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v13, 0xf

    goto :goto_7

    :sswitch_b
    const-string/jumbo v13, "rb"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v13, 0xe

    goto :goto_7

    :sswitch_c
    const-string/jumbo v13, "pu"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    move/from16 v13, v19

    goto :goto_7

    :sswitch_d
    const-string/jumbo v13, "pp"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v13, 0x3

    goto :goto_7

    :sswitch_e
    const-string/jumbo v13, "t"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v13, 0x10

    goto :goto_7

    :sswitch_f
    const-string/jumbo v13, "r"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v13, 0x11

    goto :goto_7

    :sswitch_10
    const-string/jumbo v13, "m"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v13, 0x0

    goto :goto_7

    :sswitch_11
    const-string v13, "d"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    move v13, v10

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v13, -0x1

    :goto_7
    packed-switch v13, :pswitch_data_0

    .line 2726
    const/16 v17, 0x3

    const/16 v20, 0x4

    const-string v13, "AppOps"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v0

    const-string v0, "Unknown attribute in \'op\' tag: "

    .line 2726
    .end local v0    # "outerDepth":I
    .local v24, "outerDepth":I
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2726
    .end local v4    # "name":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    goto/16 :goto_a

    .line 2723
    .end local v24    # "outerDepth":I
    .restart local v0    # "outerDepth":I
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v11    # "value":Ljava/lang/String;
    :pswitch_0
    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    aput-wide v18, v13, v10

    .line 2724
    goto :goto_8

    .line 2719
    :pswitch_1
    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->time:[J

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    aput-wide v18, v13, v10

    .line 2720
    goto :goto_8

    .line 2714
    :pswitch_2
    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    .line 2715
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    aput-wide v18, v13, v20

    .line 2716
    goto :goto_8

    .line 2710
    :pswitch_3
    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    .line 2711
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    const/16 v20, 0x4

    aput-wide v18, v13, v20

    .line 2712
    goto :goto_8

    .line 2706
    :pswitch_4
    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    .line 2707
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    const/16 v17, 0x3

    aput-wide v18, v13, v17

    .line 2708
    goto :goto_8

    .line 2702
    :pswitch_5
    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    .line 2703
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    aput-wide v22, v13, v19

    .line 2704
    goto :goto_8

    .line 2699
    :pswitch_6
    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    aput-wide v18, v13, v10

    .line 2700
    goto :goto_8

    .line 2695
    :pswitch_7
    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    .line 2696
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    const/16 v16, 0x0

    aput-wide v18, v13, v16

    .line 2697
    goto :goto_8

    .line 2692
    :pswitch_8
    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->time:[J

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    aput-wide v18, v13, v20

    .line 2693
    nop

    .line 2659
    .end local v0    # "outerDepth":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    .restart local v24    # "outerDepth":I
    :goto_8
    move/from16 v24, v0

    const/16 v17, 0x3

    const/16 v20, 0x4

    goto/16 :goto_a

    .line 2689
    .end local v24    # "outerDepth":I
    .restart local v0    # "outerDepth":I
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v11    # "value":Ljava/lang/String;
    :pswitch_9
    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->time:[J

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    const/16 v20, 0x4

    aput-wide v18, v13, v20

    .line 2690
    nop

    .line 2659
    move/from16 v24, v0

    const/16 v17, 0x3

    goto :goto_a

    .line 2686
    :pswitch_a
    const/16 v20, 0x4

    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->time:[J

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    const/16 v17, 0x3

    aput-wide v18, v13, v17

    .line 2687
    goto :goto_9

    .line 2682
    :pswitch_b
    const/16 v17, 0x3

    const/16 v20, 0x4

    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->time:[J

    .line 2683
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    aput-wide v21, v13, v19

    .line 2684
    goto :goto_9

    .line 2679
    :pswitch_c
    const/16 v17, 0x3

    const/16 v20, 0x4

    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->time:[J

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    aput-wide v18, v13, v10

    .line 2680
    goto :goto_9

    .line 2676
    :pswitch_d
    const/16 v17, 0x3

    const/16 v20, 0x4

    iget-object v13, v8, Lcom/android/server/AppOpsService$Op;->time:[J

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    const/16 v16, 0x0

    aput-wide v18, v13, v16

    .line 2677
    goto :goto_9

    .line 2673
    :pswitch_e
    const/16 v17, 0x3

    const/16 v20, 0x4

    iput-object v11, v8, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    .line 2674
    goto :goto_9

    .line 2670
    :pswitch_f
    const/16 v17, 0x3

    const/16 v20, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v8, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 2671
    goto :goto_9

    .line 2667
    :pswitch_10
    const/16 v17, 0x3

    const/16 v20, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v8, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 2668
    goto :goto_9

    .line 2664
    :pswitch_11
    const/16 v17, 0x3

    const/16 v20, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v8, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 2665
    nop

    .line 2659
    .end local v0    # "outerDepth":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    .restart local v24    # "outerDepth":I
    :goto_9
    move/from16 v24, v0

    :goto_a
    add-int/lit8 v9, v9, -0x1

    move/from16 v11, v17

    move/from16 v13, v20

    move/from16 v0, v24

    const/4 v4, 0x0

    const/4 v10, 0x1

    goto/16 :goto_5

    .line 2731
    .end local v9    # "i":I
    .end local v24    # "outerDepth":I
    .restart local v0    # "outerDepth":I
    :cond_9
    move/from16 v24, v0

    .line 2731
    .end local v0    # "outerDepth":I
    .restart local v24    # "outerDepth":I
    iget-object v0, v15, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Ops;

    .line 2732
    .local v0, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v0, :cond_a

    .line 2733
    new-instance v4, Lcom/android/server/AppOpsService$Ops;

    invoke-direct {v4, v3, v15, v7}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/AppOpsService$UidState;Z)V

    move-object v0, v4

    .line 2734
    iget-object v4, v15, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2736
    :cond_a
    iget v4, v8, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v0, v4, v8}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 2737
    .end local v0    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v8    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v15    # "uidState":Lcom/android/server/AppOpsService$UidState;
    goto :goto_b

    .line 2738
    .end local v24    # "outerDepth":I
    .local v0, "outerDepth":I
    :cond_b
    move/from16 v24, v0

    .line 2738
    .end local v0    # "outerDepth":I
    .restart local v24    # "outerDepth":I
    const-string v0, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown element under <pkg>: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2739
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2738
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2740
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2742
    .end local v14    # "tagName":Ljava/lang/String;
    :goto_b
    goto :goto_c

    .line 2641
    .end local v12    # "type":I
    .end local v24    # "outerDepth":I
    .restart local v0    # "outerDepth":I
    :cond_c
    move/from16 v24, v0

    .line 2641
    .end local v0    # "outerDepth":I
    .restart local v24    # "outerDepth":I
    :goto_c
    move/from16 v0, v24

    const/4 v4, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto/16 :goto_3

    .line 2743
    .end local v24    # "outerDepth":I
    .restart local v0    # "outerDepth":I
    .restart local v12    # "type":I
    :cond_d
    move/from16 v24, v0

    .line 2743
    .end local v0    # "outerDepth":I
    .restart local v24    # "outerDepth":I
    :goto_d
    const/4 v4, 0x0

    invoke-direct {v1, v5, v4}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v0

    .line 2744
    .local v0, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-eqz v0, :cond_e

    .line 2745
    iget-object v4, v1, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Lcom/android/server/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 2747
    :cond_e
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_11
        0x6d -> :sswitch_10
        0x72 -> :sswitch_f
        0x74 -> :sswitch_e
        0xe00 -> :sswitch_d
        0xe05 -> :sswitch_c
        0xe30 -> :sswitch_b
        0xe31 -> :sswitch_a
        0xe34 -> :sswitch_9
        0xe3e -> :sswitch_8
        0xe42 -> :sswitch_7
        0xe6e -> :sswitch_6
        0xe6f -> :sswitch_5
        0xe72 -> :sswitch_4
        0xe7c -> :sswitch_3
        0xe80 -> :sswitch_2
        0x1b8bf -> :sswitch_1
        0x1c041 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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

.method readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2568
    const-string/jumbo v0, "n"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2569
    .local v0, "uid":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 2571
    .local v2, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .line 2571
    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_5

    const/4 v3, 0x3

    if-ne v4, v3, :cond_1

    .line 2572
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v2, :cond_5

    .line 2573
    :cond_1
    if-eq v4, v3, :cond_0

    const/4 v3, 0x4

    if-ne v4, v3, :cond_2

    .line 2574
    goto :goto_0

    .line 2577
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2578
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "op"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2579
    const-string/jumbo v6, "n"

    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2580
    .local v6, "code":I
    const-string/jumbo v7, "m"

    invoke-interface {p1, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2581
    .local v7, "mode":I
    invoke-direct {p0, v0, v5}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v5

    .line 2582
    .local v5, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v8, v5, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-nez v8, :cond_3

    .line 2583
    new-instance v8, Landroid/util/SparseIntArray;

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v8, v5, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 2585
    :cond_3
    iget-object v8, v5, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2586
    .end local v5    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v6    # "code":I
    .end local v7    # "mode":I
    goto :goto_1

    .line 2587
    :cond_4
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <uid-ops>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2588
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2587
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2591
    .end local v3    # "tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 2592
    :cond_5
    return-void
.end method

.method public removeUser(I)V
    .locals 3
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3887
    const-string/jumbo v0, "removeUser"

    invoke-direct {p0, v0}, Lcom/android/server/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 3888
    monitor-enter p0

    .line 3889
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 3890
    .local v0, "tokenCount":I
    add-int/lit8 v1, v0, -0x1

    .line 3890
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 3891
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$ClientRestrictionState;

    .line 3892
    .local v2, "opRestrictions":Lcom/android/server/AppOpsService$ClientRestrictionState;
    invoke-virtual {v2, p1}, Lcom/android/server/AppOpsService$ClientRestrictionState;->removeUser(I)V

    .line 3890
    .end local v2    # "opRestrictions":Lcom/android/server/AppOpsService$ClientRestrictionState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3894
    .end local v1    # "i":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->removeUidsForUserLocked(I)V

    .line 3895
    .end local v0    # "tokenCount":I
    monitor-exit p0

    .line 3896
    return-void

    .line 3895
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetAllModes(ILjava/lang/String;)V
    .locals 29
    .param p1, "reqUserId"    # I
    .param p2, "reqPackageName"    # Ljava/lang/String;

    move-object/from16 v7, p0

    .line 1567
    move-object/from16 v8, p2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1568
    .local v6, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1569
    .local v5, "callingUid":I
    const-string/jumbo v14, "resetAllModes"

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v15, 0x0

    move v9, v6

    move v10, v5

    move/from16 v11, p1

    invoke-static/range {v9 .. v15}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1572
    .end local p1    # "reqUserId":I
    .local v9, "reqUserId":I
    const/4 v1, -0x1

    .line 1573
    .local v1, "reqUid":I
    if-eqz v8, :cond_0

    .line 1575
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v2, 0x2000

    invoke-interface {v0, v8, v2, v9}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 1579
    goto :goto_0

    .line 1577
    :catch_0
    move-exception v0

    .line 1582
    .end local v1    # "reqUid":I
    .local v10, "reqUid":I
    :cond_0
    :goto_0
    move v10, v1

    invoke-virtual {v7, v6, v5, v10}, Lcom/android/server/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 1584
    const/4 v1, 0x0

    .line 1585
    .local v1, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    monitor-enter p0

    .line 1586
    const/4 v0, 0x0

    .line 1587
    .local v0, "changed":Z
    :try_start_1
    iget-object v2, v7, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    add-int/lit8 v2, v2, -0x1

    move-object v11, v1

    .line 1587
    .end local v1    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .local v2, "i":I
    .local v11, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    :goto_1
    move v1, v2

    .line 1587
    .end local v2    # "i":I
    .local v1, "i":I
    if-ltz v1, :cond_12

    .line 1588
    :try_start_2
    iget-object v2, v7, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$UidState;

    .line 1590
    .local v2, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 1591
    .local v3, "opModes":Landroid/util/SparseIntArray;
    const/4 v4, -0x1

    if-eqz v3, :cond_6

    iget v13, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    if-eq v13, v10, :cond_2

    if-ne v10, v4, :cond_1

    goto :goto_2

    .line 1610
    :cond_1
    move-object/from16 v19, v3

    move/from16 v22, v5

    move/from16 v23, v6

    goto/16 :goto_7

    .line 1592
    :cond_2
    :goto_2
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    .line 1593
    .local v13, "uidOpCount":I
    add-int/lit8 v14, v13, -0x1

    .line 1593
    .local v14, "j":I
    :goto_3
    if-ltz v14, :cond_6

    .line 1594
    invoke-virtual {v3, v14}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    .line 1595
    .local v15, "code":I
    invoke-static {v15}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 1596
    invoke-virtual {v3, v14}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 1597
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-gtz v16, :cond_3

    .line 1598
    const/4 v12, 0x0

    :try_start_3
    iput-object v12, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 1662
    .end local v0    # "changed":Z
    .end local v1    # "i":I
    .end local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v3    # "opModes":Landroid/util/SparseIntArray;
    .end local v13    # "uidOpCount":I
    .end local v14    # "j":I
    .end local v15    # "code":I
    :catchall_0
    move-exception v0

    move/from16 v19, v5

    move/from16 v16, v6

    move-object v1, v11

    goto/16 :goto_12

    .line 1600
    .restart local v0    # "changed":Z
    .restart local v1    # "i":I
    .restart local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v3    # "opModes":Landroid/util/SparseIntArray;
    .restart local v13    # "uidOpCount":I
    .restart local v14    # "j":I
    .restart local v15    # "code":I
    :cond_3
    :goto_4
    :try_start_4
    iget v12, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v12}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    array-length v4, v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object/from16 v19, v3

    move-object v3, v11

    const/4 v11, 0x0

    .line 1600
    .end local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .local v3, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .local v19, "opModes":Landroid/util/SparseIntArray;
    :goto_5
    if-ge v11, v4, :cond_4

    :try_start_5
    aget-object v16, v12, v11

    move-object/from16 v20, v16

    .line 1601
    .local v20, "packageName":Ljava/lang/String;
    move/from16 v21, v4

    iget v4, v2, Lcom/android/server/AppOpsService$UidState;->uid:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move/from16 v22, v5

    :try_start_6
    iget-object v5, v7, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 1602
    .end local v5    # "callingUid":I
    .local v22, "callingUid":I
    invoke-virtual {v5, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1601
    move/from16 v23, v6

    move-object/from16 v6, v20

    :try_start_7
    invoke-static {v3, v15, v4, v6, v5}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v4

    .line 1601
    .end local v20    # "packageName":Ljava/lang/String;
    .local v6, "packageName":Ljava/lang/String;
    .local v23, "callingPid":I
    move-object v3, v4

    .line 1603
    iget v4, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    iget-object v5, v7, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 1604
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 1603
    invoke-static {v3, v15, v4, v6, v5}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v3, v4

    .line 1600
    .end local v6    # "packageName":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    move/from16 v4, v21

    move/from16 v5, v22

    move/from16 v6, v23

    goto :goto_5

    .line 1662
    .end local v0    # "changed":Z
    .end local v1    # "i":I
    .end local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v13    # "uidOpCount":I
    .end local v14    # "j":I
    .end local v15    # "code":I
    .end local v19    # "opModes":Landroid/util/SparseIntArray;
    :catchall_1
    move-exception v0

    move-object v1, v3

    goto/16 :goto_e

    .line 1662
    .end local v23    # "callingPid":I
    .local v6, "callingPid":I
    :catchall_2
    move-exception v0

    move-object v1, v3

    move/from16 v16, v6

    move/from16 v19, v22

    .line 1662
    .end local v6    # "callingPid":I
    .restart local v23    # "callingPid":I
    goto/16 :goto_12

    .line 1662
    .end local v22    # "callingUid":I
    .end local v23    # "callingPid":I
    .restart local v5    # "callingUid":I
    .restart local v6    # "callingPid":I
    :catchall_3
    move-exception v0

    move-object v1, v3

    move/from16 v19, v5

    move/from16 v16, v6

    goto/16 :goto_d

    .line 1593
    .restart local v0    # "changed":Z
    .restart local v1    # "i":I
    .restart local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v13    # "uidOpCount":I
    .restart local v14    # "j":I
    .restart local v19    # "opModes":Landroid/util/SparseIntArray;
    :cond_4
    move/from16 v22, v5

    move/from16 v23, v6

    move-object v11, v3

    .line 1593
    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .restart local v22    # "callingUid":I
    .restart local v23    # "callingPid":I
    goto :goto_6

    .line 1593
    .end local v19    # "opModes":Landroid/util/SparseIntArray;
    .end local v22    # "callingUid":I
    .end local v23    # "callingPid":I
    .local v3, "opModes":Landroid/util/SparseIntArray;
    .restart local v5    # "callingUid":I
    .restart local v6    # "callingPid":I
    .restart local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    :cond_5
    move-object/from16 v19, v3

    move/from16 v22, v5

    move/from16 v23, v6

    .line 1593
    .end local v3    # "opModes":Landroid/util/SparseIntArray;
    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .restart local v19    # "opModes":Landroid/util/SparseIntArray;
    .restart local v22    # "callingUid":I
    .restart local v23    # "callingPid":I
    :goto_6
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v3, v19

    move/from16 v5, v22

    move/from16 v6, v23

    const/4 v4, -0x1

    goto/16 :goto_3

    .line 1610
    .end local v13    # "uidOpCount":I
    .end local v14    # "j":I
    .end local v19    # "opModes":Landroid/util/SparseIntArray;
    .end local v22    # "callingUid":I
    .end local v23    # "callingPid":I
    .restart local v3    # "opModes":Landroid/util/SparseIntArray;
    .restart local v5    # "callingUid":I
    .restart local v6    # "callingPid":I
    :cond_6
    move-object/from16 v19, v3

    move/from16 v22, v5

    move/from16 v23, v6

    .line 1610
    .end local v3    # "opModes":Landroid/util/SparseIntArray;
    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .restart local v19    # "opModes":Landroid/util/SparseIntArray;
    .restart local v22    # "callingUid":I
    .restart local v23    # "callingPid":I
    :goto_7
    :try_start_8
    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v3, :cond_7

    .line 1611
    goto/16 :goto_c

    .line 1614
    :cond_7
    const/4 v3, -0x1

    if-eq v9, v3, :cond_8

    iget v3, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    .line 1615
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-eq v9, v3, :cond_8

    .line 1617
    goto/16 :goto_c

    .line 1620
    :cond_8
    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1621
    .local v3, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1622
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    const/16 v17, 0x0

    .line 1623
    .local v17, "uidChanged":Z
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1624
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1625
    .local v5, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1626
    .local v6, "packageName":Ljava/lang/String;
    if-eqz v8, :cond_9

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 1628
    goto :goto_8

    .line 1630
    :cond_9
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/AppOpsService$Ops;

    .line 1631
    .local v12, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    invoke-virtual {v12}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    .line 1631
    .local v13, "j":I
    :goto_9
    if-ltz v13, :cond_d

    .line 1632
    invoke-virtual {v12, v13}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AppOpsService$Op;

    .line 1633
    .local v14, "curOp":Lcom/android/server/AppOpsService$Op;
    iget v15, v14, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v15}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v15

    if-eqz v15, :cond_c

    iget v15, v14, Lcom/android/server/AppOpsService$Op;->mode:I

    move/from16 v24, v0

    iget v0, v14, Lcom/android/server/AppOpsService$Op;->op:I

    .line 1634
    .end local v0    # "changed":Z
    .local v24, "changed":Z
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    if-eq v15, v0, :cond_b

    .line 1635
    iget v0, v14, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    iput v0, v14, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 1636
    const/4 v0, 0x1

    .line 1637
    .end local v24    # "changed":Z
    .restart local v0    # "changed":Z
    const/16 v17, 0x1

    .line 1638
    iget v15, v14, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v25, v0

    iget v0, v14, Lcom/android/server/AppOpsService$Op;->uid:I

    .line 1638
    .end local v0    # "changed":Z
    .local v25, "changed":Z
    move-object/from16 v26, v3

    iget-object v3, v7, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 1638
    .end local v3    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .local v26, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    move-object/from16 v27, v5

    iget v5, v14, Lcom/android/server/AppOpsService$Op;->op:I

    .line 1639
    .end local v5    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .local v27, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 1638
    invoke-static {v11, v15, v0, v6, v3}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-object v3, v0

    .line 1640
    .end local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .local v3, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    :try_start_9
    iget v0, v14, Lcom/android/server/AppOpsService$Op;->op:I

    iget v5, v14, Lcom/android/server/AppOpsService$Op;->uid:I

    iget-object v11, v7, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 1641
    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArraySet;

    .line 1640
    invoke-static {v3, v0, v5, v6, v11}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v0

    move-object v3, v0

    .line 1642
    invoke-virtual {v14}, Lcom/android/server/AppOpsService$Op;->hasAnyTime()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1643
    invoke-virtual {v12, v13}, Lcom/android/server/AppOpsService$Ops;->removeAt(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1631
    .end local v14    # "curOp":Lcom/android/server/AppOpsService$Op;
    :cond_a
    move-object v11, v3

    move/from16 v0, v25

    goto :goto_b

    .line 1631
    .end local v25    # "changed":Z
    .end local v26    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v27    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .local v3, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v5    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .restart local v24    # "changed":Z
    :cond_b
    move-object/from16 v26, v3

    move-object/from16 v27, v5

    .line 1631
    .end local v3    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v5    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v26    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v27    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    goto :goto_a

    .line 1631
    .end local v24    # "changed":Z
    .end local v26    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v27    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v0    # "changed":Z
    .restart local v3    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v5    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_c
    move/from16 v24, v0

    move-object/from16 v26, v3

    move-object/from16 v27, v5

    .line 1631
    .end local v0    # "changed":Z
    .end local v3    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v5    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v24    # "changed":Z
    .restart local v26    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v27    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :goto_a
    move/from16 v0, v24

    .line 1631
    .end local v24    # "changed":Z
    .restart local v0    # "changed":Z
    :goto_b
    add-int/lit8 v13, v13, -0x1

    move-object/from16 v3, v26

    move-object/from16 v5, v27

    goto :goto_9

    .line 1647
    .end local v13    # "j":I
    .end local v26    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v27    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v3    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v5    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_d
    move/from16 v24, v0

    move-object/from16 v26, v3

    move-object/from16 v27, v5

    .line 1647
    .end local v0    # "changed":Z
    .end local v3    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v5    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v24    # "changed":Z
    .restart local v26    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v27    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :try_start_a
    invoke-virtual {v12}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 1648
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 1650
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v12    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v27    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_e
    nop

    .line 1622
    move/from16 v0, v24

    move-object/from16 v3, v26

    goto/16 :goto_8

    .line 1651
    .end local v24    # "changed":Z
    .end local v26    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v0    # "changed":Z
    .restart local v3    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_f
    move-object/from16 v26, v3

    .line 1651
    .end local v3    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v26    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-virtual {v2}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1652
    iget-object v3, v7, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    iget v5, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 1654
    :cond_10
    if-eqz v17, :cond_11

    .line 1655
    iget-object v3, v7, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Lcom/android/server/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 1587
    .end local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .end local v17    # "uidChanged":Z
    .end local v19    # "opModes":Landroid/util/SparseIntArray;
    .end local v26    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_11
    :goto_c
    add-int/lit8 v2, v1, -0x1

    .line 1587
    .end local v1    # "i":I
    .local v2, "i":I
    move/from16 v5, v22

    move/from16 v6, v23

    goto/16 :goto_1

    .line 1662
    .end local v0    # "changed":Z
    .end local v2    # "i":I
    .end local v22    # "callingUid":I
    .end local v23    # "callingPid":I
    .local v5, "callingUid":I
    .local v6, "callingPid":I
    :catchall_4
    move-exception v0

    move/from16 v19, v5

    move/from16 v16, v6

    move-object v1, v11

    .line 1662
    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .end local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .local v1, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .local v16, "callingPid":I
    .local v19, "callingUid":I
    .restart local v22    # "callingUid":I
    .restart local v23    # "callingPid":I
    :goto_d
    goto/16 :goto_12

    .line 1659
    .end local v1    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .end local v16    # "callingPid":I
    .end local v19    # "callingUid":I
    .end local v22    # "callingUid":I
    .end local v23    # "callingPid":I
    .restart local v0    # "changed":Z
    .restart local v5    # "callingUid":I
    .restart local v6    # "callingPid":I
    .restart local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    :cond_12
    move/from16 v22, v5

    move/from16 v23, v6

    .line 1659
    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .restart local v22    # "callingUid":I
    .restart local v23    # "callingPid":I
    if-eqz v0, :cond_13

    .line 1660
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 1660
    .end local v0    # "changed":Z
    goto :goto_f

    .line 1662
    :catchall_5
    move-exception v0

    move-object v1, v11

    .line 1662
    .end local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .end local v22    # "callingUid":I
    .end local v23    # "callingPid":I
    .restart local v1    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .restart local v16    # "callingPid":I
    .restart local v19    # "callingUid":I
    :goto_e
    move/from16 v19, v22

    move/from16 v16, v23

    goto/16 :goto_12

    .line 1662
    .end local v1    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .end local v16    # "callingPid":I
    .end local v19    # "callingUid":I
    .restart local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .restart local v22    # "callingUid":I
    .restart local v23    # "callingPid":I
    :cond_13
    :goto_f
    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 1663
    if-eqz v11, :cond_15

    .line 1664
    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/util/Map$Entry;

    .line 1665
    .local v12, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/server/AppOpsService$ModeCallback;

    .line 1666
    .local v13, "cb":Lcom/android/server/AppOpsService$ModeCallback;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/util/ArrayList;

    .line 1667
    .local v14, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    const/4 v1, 0x0

    .line 1667
    .local v1, "i":I
    :goto_11
    move v15, v1

    .line 1667
    .end local v1    # "i":I
    .local v15, "i":I
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v15, v1, :cond_14

    .line 1668
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/server/AppOpsService$ChangeRec;

    .line 1669
    .local v6, "rep":Lcom/android/server/AppOpsService$ChangeRec;
    iget-object v5, v7, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;

    iget v2, v6, Lcom/android/server/AppOpsService$ChangeRec;->op:I

    .line 1671
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v2, v6, Lcom/android/server/AppOpsService$ChangeRec;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget-object v3, v6, Lcom/android/server/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    .line 1669
    move-object v2, v7

    move-object/from16 v18, v3

    move-object v3, v13

    move-object/from16 v28, v0

    move-object v0, v5

    move/from16 v19, v22

    move-object/from16 v5, v16

    .line 1669
    .end local v22    # "callingUid":I
    .restart local v19    # "callingUid":I
    move-object/from16 v20, v6

    move/from16 v16, v23

    move-object/from16 v6, v18

    .line 1669
    .end local v6    # "rep":Lcom/android/server/AppOpsService$ChangeRec;
    .end local v23    # "callingPid":I
    .restart local v16    # "callingPid":I
    .local v20, "rep":Lcom/android/server/AppOpsService$ChangeRec;
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1667
    .end local v20    # "rep":Lcom/android/server/AppOpsService$ChangeRec;
    add-int/lit8 v1, v15, 0x1

    .line 1667
    .end local v15    # "i":I
    .restart local v1    # "i":I
    move-object/from16 v0, v28

    goto :goto_11

    .line 1673
    .end local v1    # "i":I
    .end local v12    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .end local v13    # "cb":Lcom/android/server/AppOpsService$ModeCallback;
    .end local v14    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    .end local v16    # "callingPid":I
    .end local v19    # "callingUid":I
    .restart local v22    # "callingUid":I
    .restart local v23    # "callingPid":I
    :cond_14
    move-object/from16 v28, v0

    move/from16 v19, v22

    move/from16 v16, v23

    .line 1673
    .end local v22    # "callingUid":I
    .end local v23    # "callingPid":I
    .restart local v16    # "callingPid":I
    .restart local v19    # "callingUid":I
    goto :goto_10

    .line 1675
    .end local v16    # "callingPid":I
    .end local v19    # "callingUid":I
    .restart local v22    # "callingUid":I
    .restart local v23    # "callingPid":I
    :cond_15
    move/from16 v19, v22

    move/from16 v16, v23

    .line 1675
    .end local v22    # "callingUid":I
    .end local v23    # "callingPid":I
    .restart local v16    # "callingPid":I
    .restart local v19    # "callingUid":I
    return-void

    .line 1662
    .end local v16    # "callingPid":I
    .end local v19    # "callingUid":I
    .restart local v22    # "callingUid":I
    .restart local v23    # "callingPid":I
    :catchall_6
    move-exception v0

    move/from16 v19, v22

    move/from16 v16, v23

    move-object v1, v11

    .line 1662
    .end local v22    # "callingUid":I
    .end local v23    # "callingPid":I
    .restart local v16    # "callingPid":I
    .restart local v19    # "callingUid":I
    goto :goto_12

    .line 1662
    .end local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .end local v16    # "callingPid":I
    .end local v19    # "callingUid":I
    .local v1, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .restart local v5    # "callingUid":I
    .local v6, "callingPid":I
    :catchall_7
    move-exception v0

    move/from16 v19, v5

    move/from16 v16, v6

    .line 1662
    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .restart local v16    # "callingPid":I
    .restart local v19    # "callingUid":I
    :goto_12
    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    throw v0

    :catchall_8
    move-exception v0

    goto :goto_12
.end method

.method public setAudioRestriction(IIII[Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "mode"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;

    .line 1857
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/server/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 1858
    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1859
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1860
    monitor-enter p0

    .line 1861
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1862
    .local v0, "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    if-nez v0, :cond_0

    .line 1863
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move-object v0, v1

    .line 1864
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1866
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1867
    if-eqz p4, :cond_3

    .line 1868
    new-instance v1, Lcom/android/server/AppOpsService$Restriction;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/AppOpsService$Restriction;-><init>(Lcom/android/server/AppOpsService$1;)V

    .line 1869
    .local v1, "r":Lcom/android/server/AppOpsService$Restriction;
    iput p4, v1, Lcom/android/server/AppOpsService$Restriction;->mode:I

    .line 1870
    if-eqz p5, :cond_2

    .line 1871
    array-length v2, p5

    .line 1872
    .local v2, "N":I
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v3, v1, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    .line 1873
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1874
    aget-object v4, p5, v3

    .line 1875
    .local v4, "pkg":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1876
    iget-object v5, v1, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1873
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1880
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1882
    .end local v0    # "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    .end local v1    # "r":Lcom/android/server/AppOpsService$Restriction;
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1884
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/-$$Lambda$AppOpsService$UKMH8n9xZqCOX59uFPylskhjBgo;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$UKMH8n9xZqCOX59uFPylskhjBgo;

    .line 1885
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1884
    invoke-static {v1, p0, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1886
    return-void

    .line 1882
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setMode(IILjava/lang/String;I)V
    .locals 8
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .line 1439
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 1443
    sget-boolean v0, Lcom/android/server/AppOpsService;->IS_SUPPORT_CAMERA_NOTCH:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/16 v0, 0x46

    if-ne p1, v0, :cond_1

    if-ne p4, v1, :cond_1

    .line 1445
    move v0, p4

    .line 1446
    .local v0, "oldMode":I
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mScreenCompatDefaultEnabledList:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/android/server/AppOpsService;->MODE_COMPAT:I

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    move p4, v2

    .line 1447
    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ScreenCompat: setMode set old="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    .end local v0    # "oldMode":I
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1452
    const/4 v0, 0x0

    .line 1453
    .local v0, "repCbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 1454
    monitor-enter p0

    .line 1455
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p2, v2}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v2

    .line 1456
    .local v2, "uidState":Lcom/android/server/AppOpsService$UidState;
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v1

    .line 1457
    .local v1, "op":Lcom/android/server/AppOpsService$Op;
    if-eqz v1, :cond_8

    .line 1458
    iget v3, v1, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eq v3, p4, :cond_8

    .line 1459
    iput p4, v1, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 1460
    if-eqz v2, :cond_2

    .line 1461
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Lcom/android/server/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 1463
    :cond_2
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 1464
    .local v3, "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    if-eqz v3, :cond_4

    .line 1465
    if-nez v0, :cond_3

    .line 1466
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v4

    .line 1468
    :cond_3
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 1470
    :cond_4
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    move-object v3, v4

    .line 1471
    if-eqz v3, :cond_6

    .line 1472
    if-nez v0, :cond_5

    .line 1473
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v4

    .line 1475
    :cond_5
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 1477
    :cond_6
    iget v4, v1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v4}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v4

    if-ne p4, v4, :cond_7

    .line 1480
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/AppOpsService;->pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 1482
    :cond_7
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V

    .line 1485
    .end local v1    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v3    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    :cond_8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1486
    if-eqz v0, :cond_9

    .line 1487
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/-$$Lambda$AppOpsService$1lQKm3WHEUQsD7KzYyJ5stQSc04;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$1lQKm3WHEUQsD7KzYyJ5stQSc04;

    .line 1489
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1487
    move-object v3, p0

    move-object v4, v0

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1491
    :cond_9
    return-void

    .line 1485
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setUidMode(III)V
    .locals 19
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I

    move-object/from16 v7, p0

    move/from16 v8, p2

    .line 1336
    move/from16 v9, p3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v7, v0, v1, v8}, Lcom/android/server/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 1337
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1338
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v10

    .line 1340
    .end local p1    # "code":I
    .local v10, "code":I
    monitor-enter p0

    .line 1341
    :try_start_0
    invoke-static {v10}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    .line 1343
    .local v0, "defaultMode":I
    const/4 v11, 0x0

    invoke-direct {v7, v8, v11}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v1

    .line 1344
    .local v1, "uidState":Lcom/android/server/AppOpsService$UidState;
    const/4 v12, 0x0

    if-nez v1, :cond_1

    .line 1345
    if-ne v9, v0, :cond_0

    .line 1346
    monitor-exit p0

    return-void

    .line 1348
    :cond_0
    new-instance v2, Lcom/android/server/AppOpsService$UidState;

    invoke-direct {v2, v8}, Lcom/android/server/AppOpsService$UidState;-><init>(I)V

    move-object v1, v2

    .line 1349
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 1350
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1351
    iget-object v2, v7, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1352
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    goto :goto_1

    .line 1353
    :cond_1
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-nez v2, :cond_2

    .line 1354
    if-eq v9, v0, :cond_6

    .line 1355
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 1356
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1357
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    goto :goto_1

    .line 1360
    :cond_2
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-ne v2, v9, :cond_3

    .line 1361
    monitor-exit p0

    return-void

    .line 1363
    :cond_3
    if-ne v9, v0, :cond_4

    .line 1364
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1365
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-gtz v2, :cond_5

    .line 1366
    iput-object v12, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    goto :goto_0

    .line 1369
    :cond_4
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1371
    :cond_5
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    .line 1373
    .end local v0    # "defaultMode":I
    .end local v1    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_6
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1375
    invoke-static/range {p2 .. p2}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v13

    .line 1376
    .local v13, "uidPackageNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1378
    .local v1, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    monitor-enter p0

    .line 1379
    :try_start_1
    iget-object v0, v7, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1380
    .local v0, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    if-eqz v0, :cond_9

    .line 1381
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1382
    .local v2, "callbackCount":I
    move-object v3, v1

    move v1, v11

    .local v1, "i":I
    .local v3, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :goto_2
    if-ge v1, v2, :cond_8

    .line 1383
    :try_start_2
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$ModeCallback;

    .line 1384
    .local v4, "callback":Lcom/android/server/AppOpsService$ModeCallback;
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 1385
    .local v5, "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {v5, v13}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1386
    if-nez v3, :cond_7

    .line 1387
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    move-object v3, v6

    .line 1389
    :cond_7
    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1382
    .end local v4    # "callback":Lcom/android/server/AppOpsService$ModeCallback;
    .end local v5    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1411
    .end local v0    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    .end local v1    # "i":I
    .end local v2    # "callbackCount":I
    :catchall_0
    move-exception v0

    move-object v1, v3

    goto/16 :goto_8

    .line 1393
    .restart local v0    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    :cond_8
    move-object v1, v3

    .end local v3    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v1, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_9
    :try_start_3
    array-length v2, v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v14, v1

    move-object v1, v0

    move v0, v11

    .end local v0    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    .local v1, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    .local v14, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :goto_3
    if-ge v0, v2, :cond_d

    :try_start_4
    aget-object v3, v13, v0

    .line 1394
    .local v3, "uidPackageName":Ljava/lang/String;
    iget-object v4, v7, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    move-object v1, v4

    .line 1395
    if-eqz v1, :cond_c

    .line 1396
    if-nez v14, :cond_a

    .line 1397
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 1399
    .end local v14    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v4, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    move-object v14, v4

    .end local v4    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v14    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_a
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v4

    .line 1400
    .local v4, "callbackCount":I
    move v5, v11

    .local v5, "i":I
    :goto_4
    if-ge v5, v4, :cond_c

    .line 1401
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$ModeCallback;

    .line 1402
    .local v6, "callback":Lcom/android/server/AppOpsService$ModeCallback;
    invoke-virtual {v14, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/ArraySet;

    .line 1403
    .local v15, "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v15, :cond_b

    .line 1404
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    move-object v15, v11

    .line 1405
    invoke-virtual {v14, v6, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1407
    :cond_b
    invoke-virtual {v15, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1400
    .end local v6    # "callback":Lcom/android/server/AppOpsService$ModeCallback;
    .end local v15    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    add-int/lit8 v5, v5, 0x1

    const/4 v11, 0x0

    goto :goto_4

    .line 1393
    .end local v3    # "uidPackageName":Ljava/lang/String;
    .end local v4    # "callbackCount":I
    .end local v5    # "i":I
    :cond_c
    add-int/lit8 v0, v0, 0x1

    const/4 v11, 0x0

    goto :goto_3

    .line 1411
    .end local v1    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    :catchall_1
    move-exception v0

    move-object v1, v14

    goto/16 :goto_8

    :cond_d
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1413
    if-nez v14, :cond_e

    .line 1414
    return-void

    .line 1417
    :cond_e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 1418
    invoke-virtual {v14, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/server/AppOpsService$ModeCallback;

    .line 1419
    .local v11, "callback":Lcom/android/server/AppOpsService$ModeCallback;
    invoke-virtual {v14, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/util/ArraySet;

    .line 1420
    .local v15, "reportedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v15, :cond_f

    .line 1421
    iget-object v6, v7, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;

    .line 1423
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v16, v12

    check-cast v16, Ljava/lang/String;

    .line 1421
    move-object v2, v7

    move-object v3, v11

    move-object v12, v6

    move-object/from16 v6, v16

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_7

    .line 1426
    :cond_f
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v12

    .line 1427
    .local v12, "reportedPackageCount":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_6
    move v6, v1

    .end local v1    # "j":I
    .local v6, "j":I
    if-ge v6, v12, :cond_10

    .line 1428
    invoke-virtual {v15, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Ljava/lang/String;

    .line 1429
    .local v16, "reportedPackageName":Ljava/lang/String;
    iget-object v5, v7, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$lxgFmOnGguOiLyfUZbyOpNBfTVw;

    .line 1431
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 1429
    move-object v2, v7

    move-object v3, v11

    move-object v8, v5

    move-object/from16 v5, v17

    move/from16 v17, v6

    move-object/from16 v6, v16

    .end local v6    # "j":I
    .local v17, "j":I
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1427
    .end local v16    # "reportedPackageName":Ljava/lang/String;
    add-int/lit8 v1, v17, 0x1

    .end local v17    # "j":I
    .restart local v1    # "j":I
    move/from16 v8, p2

    goto :goto_6

    .line 1417
    .end local v1    # "j":I
    .end local v11    # "callback":Lcom/android/server/AppOpsService$ModeCallback;
    .end local v12    # "reportedPackageCount":I
    .end local v15    # "reportedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_10
    :goto_7
    add-int/lit8 v0, v0, 0x1

    move/from16 v8, p2

    const/4 v12, 0x0

    goto :goto_5

    .line 1435
    .end local v0    # "i":I
    :cond_11
    return-void

    .line 1411
    .end local v14    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v1, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :catchall_2
    move-exception v0

    :goto_8
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 1373
    .end local v1    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v13    # "uidPackageNames":[Ljava/lang/String;
    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0
.end method

.method public setUserRestriction(IZLandroid/os/IBinder;I[Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "userHandle"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;

    .line 3828
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3829
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APP_OPS_RESTRICTIONS"

    .line 3830
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    .line 3829
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 3832
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p4, v0, :cond_2

    .line 3833
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 3835
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3837
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need INTERACT_ACROSS_USERS_FULL or INTERACT_ACROSS_USERS to interact cross user "

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3841
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 3842
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3843
    invoke-direct/range {p0 .. p5}, Lcom/android/server/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V

    .line 3844
    return-void
.end method

.method public setUserRestrictions(Landroid/os/Bundle;Landroid/os/IBinder;I)V
    .locals 9
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "userHandle"    # I

    .line 3813
    const-string/jumbo v0, "setUserRestrictions"

    invoke-direct {p0, v0}, Lcom/android/server/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 3814
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3815
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3816
    const/4 v0, 0x0

    move v1, v0

    .line 3816
    .local v1, "i":I
    :goto_0
    const/16 v2, 0x55

    if-ge v1, v2, :cond_1

    .line 3817
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToRestriction(I)Ljava/lang/String;

    move-result-object v8

    .line 3818
    .local v8, "restriction":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 3819
    invoke-virtual {p1, v8, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v7, 0x0

    move-object v2, p0

    move v3, v1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V

    .line 3816
    .end local v8    # "restriction":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3823
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 1143
    const-string v0, "AppOps"

    const-string v1, "Writing app ops before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    const/4 v0, 0x0

    .line 1145
    .local v0, "doWrite":Z
    monitor-enter p0

    .line 1146
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-eqz v1, :cond_0

    .line 1147
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 1148
    const/4 v0, 0x1

    .line 1150
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1151
    if-eqz v0, :cond_1

    .line 1152
    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->writeState()V

    .line 1154
    :cond_1
    return-void

    .line 1150
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public startOperation(Landroid/os/IBinder;IILjava/lang/String;Z)I
    .locals 16
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "startIfModeDefault"    # Z

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    .line 2043
    invoke-direct {v1, v3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 2044
    invoke-direct {v1, v2}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 2045
    invoke-static/range {p3 .. p4}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2046
    .local v4, "resolvedPackageName":Ljava/lang/String;
    const/4 v0, 0x1

    if-nez v4, :cond_0

    .line 2047
    return v0

    .line 2049
    :cond_0
    move-object/from16 v5, p1

    check-cast v5, Lcom/android/server/AppOpsService$ClientState;

    .line 2050
    .local v5, "client":Lcom/android/server/AppOpsService$ClientState;
    monitor-enter p0

    .line 2051
    const/4 v6, 0x0

    :try_start_0
    invoke-direct {v1, v3, v4, v0, v6}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object v7

    .line 2053
    .local v7, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v7, :cond_1

    .line 2056
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    .line 2058
    :cond_1
    invoke-direct {v1, v7, v2, v0}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v8

    .line 2059
    .local v8, "op":Lcom/android/server/AppOpsService$Op;
    invoke-direct {v1, v3, v2, v4}, Lcom/android/server/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2060
    monitor-exit p0

    return v0

    .line 2062
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v9

    .line 2063
    .local v9, "switchCode":I
    iget-object v10, v7, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 2066
    .local v10, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v11, v10, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/4 v12, 0x3

    if-eqz v11, :cond_5

    iget-object v11, v10, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v9}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v11

    if-ltz v11, :cond_5

    .line 2067
    iget-object v11, v10, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/server/AppOpsService$UidState;->evalMode(I)I

    move-result v11

    .line 2068
    .local v11, "uidMode":I
    if-eqz v11, :cond_4

    if-eqz p5, :cond_3

    if-eq v11, v12, :cond_4

    .line 2073
    :cond_3
    iget-object v0, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v6, v10, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    aput-wide v12, v0, v6

    .line 2074
    monitor-exit p0

    return v11

    .line 2076
    .end local v11    # "uidMode":I
    :cond_4
    goto :goto_1

    .line 2077
    :cond_5
    if-eq v9, v2, :cond_6

    invoke-direct {v1, v7, v9, v0}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v11

    goto :goto_0

    :cond_6
    move-object v11, v8

    .line 2078
    .local v11, "switchOp":Lcom/android/server/AppOpsService$Op;
    :goto_0
    invoke-virtual {v11}, Lcom/android/server/AppOpsService$Op;->getMode()I

    move-result v13

    .line 2079
    .local v13, "mode":I
    if-eqz v13, :cond_8

    if-eqz p5, :cond_7

    if-eq v13, v12, :cond_8

    .line 2084
    :cond_7
    iget-object v0, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v6, v10, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    aput-wide v14, v0, v6

    .line 2085
    monitor-exit p0

    return v13

    .line 2090
    .end local v11    # "switchOp":Lcom/android/server/AppOpsService$Op;
    .end local v13    # "mode":I
    :cond_8
    :goto_1
    iget v11, v8, Lcom/android/server/AppOpsService$Op;->startNesting:I

    if-nez v11, :cond_9

    .line 2091
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iput-wide v11, v8, Lcom/android/server/AppOpsService$Op;->startRealtime:J

    .line 2092
    iget-object v11, v8, Lcom/android/server/AppOpsService$Op;->time:[J

    iget v12, v10, Lcom/android/server/AppOpsService$UidState;->state:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    aput-wide v13, v11, v12

    .line 2093
    iget-object v11, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    iget v12, v10, Lcom/android/server/AppOpsService$UidState;->state:I

    const-wide/16 v13, 0x0

    aput-wide v13, v11, v12

    .line 2094
    const/4 v11, -0x1

    iput v11, v8, Lcom/android/server/AppOpsService$Op;->duration:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2095
    move-object/from16 v11, p4

    :try_start_1
    invoke-direct {v1, v2, v3, v11, v0}, Lcom/android/server/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V

    goto :goto_2

    .line 2097
    :cond_9
    move-object/from16 v11, p4

    :goto_2
    iget v12, v8, Lcom/android/server/AppOpsService$Op;->startNesting:I

    add-int/2addr v12, v0

    iput v12, v8, Lcom/android/server/AppOpsService$Op;->startNesting:I

    .line 2098
    iget v12, v10, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    add-int/2addr v12, v0

    iput v12, v10, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    .line 2099
    iget-object v0, v5, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    .line 2100
    iget-object v0, v5, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2102
    .end local v7    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v8    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v9    # "switchCode":I
    .end local v10    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_a
    monitor-exit p0

    .line 2104
    return v6

    .line 2102
    :catchall_0
    move-exception v0

    move-object/from16 v11, p4

    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method public startWatchingActive([ILcom/android/internal/app/IAppOpsActiveCallback;)V
    .locals 12
    .param p1, "ops"    # [I
    .param p2, "callback"    # Lcom/android/internal/app/IAppOpsActiveCallback;

    .line 1991
    const/4 v0, -0x1

    .line 1992
    .local v0, "watchedUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1993
    .local v7, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 1994
    .local v8, "callingPid":I
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WATCH_APPOPS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1996
    move v0, v7

    .line 1998
    :cond_0
    const/4 v9, 0x0

    if-eqz p1, :cond_1

    .line 1999
    const/16 v1, 0x54

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid op code in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2000
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1999
    invoke-static {p1, v9, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    .line 2002
    :cond_1
    if-nez p2, :cond_2

    .line 2003
    return-void

    .line 2005
    :cond_2
    monitor-enter p0

    .line 2006
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 2007
    .local v1, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$ActiveCallback;>;"
    if-nez v1, :cond_3

    .line 2008
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    .line 2009
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2011
    :cond_3
    move-object v10, v1

    .end local v1    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$ActiveCallback;>;"
    .local v10, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$ActiveCallback;>;"
    new-instance v11, Lcom/android/server/AppOpsService$ActiveCallback;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p2

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/AppOpsService$ActiveCallback;-><init>(Lcom/android/server/AppOpsService;Lcom/android/internal/app/IAppOpsActiveCallback;III)V

    move-object v1, v11

    .line 2013
    .local v1, "activeCallback":Lcom/android/server/AppOpsService$ActiveCallback;
    array-length v2, p1

    :goto_0
    if-ge v9, v2, :cond_4

    aget v3, p1, v9

    .line 2014
    .local v3, "op":I
    invoke-virtual {v10, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2013
    .end local v3    # "op":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2016
    .end local v1    # "activeCallback":Lcom/android/server/AppOpsService$ActiveCallback;
    .end local v10    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$ActiveCallback;>;"
    :cond_4
    monitor-exit p0

    .line 2017
    return-void

    .line 2016
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 1
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .line 1688
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/AppOpsService;->startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    .line 1689
    return-void
.end method

.method public startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    .locals 16
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    move-object/from16 v8, p0

    move/from16 v1, p1

    move-object/from16 v9, p2

    .line 1694
    const/4 v10, -0x1

    .line 1695
    .local v10, "watchedUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 1696
    .local v11, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 1701
    .local v12, "callingPid":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid op code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v13, -0x1

    const/16 v2, 0x54

    invoke-static {v1, v13, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 1703
    if-nez p4, :cond_0

    .line 1704
    return-void

    .line 1706
    :cond_0
    monitor-enter p0

    .line 1707
    if-eq v1, v13, :cond_1

    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1730
    :catchall_0
    move-exception v0

    move v14, v1

    goto/16 :goto_1

    .line 1707
    :cond_1
    move v0, v1

    :goto_0
    move v14, v0

    .line 1708
    .end local p1    # "op":I
    .local v14, "op":I
    :try_start_1
    iget-object v0, v8, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface/range {p4 .. p4}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ModeCallback;

    .line 1709
    .local v0, "cb":Lcom/android/server/AppOpsService$ModeCallback;
    if-nez v0, :cond_2

    .line 1710
    new-instance v15, Lcom/android/server/AppOpsService$ModeCallback;

    move-object v1, v15

    move-object v2, v8

    move-object/from16 v3, p4

    move v4, v10

    move/from16 v5, p3

    move v6, v11

    move v7, v12

    invoke-direct/range {v1 .. v7}, Lcom/android/server/AppOpsService$ModeCallback;-><init>(Lcom/android/server/AppOpsService;Lcom/android/internal/app/IAppOpsCallback;IIII)V

    move-object v0, v15

    .line 1711
    iget-object v1, v8, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface/range {p4 .. p4}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1713
    :cond_2
    if-eq v14, v13, :cond_4

    .line 1714
    iget-object v1, v8, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 1715
    .local v1, "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    if-nez v1, :cond_3

    .line 1716
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 1717
    iget-object v2, v8, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v14, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1719
    :cond_3
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1721
    .end local v1    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    :cond_4
    if-eqz v9, :cond_6

    .line 1722
    iget-object v1, v8, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 1723
    .restart local v1    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    if-nez v1, :cond_5

    .line 1724
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 1725
    iget-object v2, v8, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v9, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1727
    :cond_5
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1729
    .end local v1    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->evalAllForegroundOpsLocked()V

    .line 1730
    .end local v0    # "cb":Lcom/android/server/AppOpsService$ModeCallback;
    monitor-exit p0

    .line 1731
    return-void

    .line 1730
    :catchall_1
    move-exception v0

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public stopWatchingActive(Lcom/android/internal/app/IAppOpsActiveCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsActiveCallback;

    .line 2021
    if-nez p1, :cond_0

    .line 2022
    return-void

    .line 2024
    :cond_0
    monitor-enter p0

    .line 2025
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 2026
    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 2027
    .local v0, "activeCallbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$ActiveCallback;>;"
    if-nez v0, :cond_1

    .line 2028
    monitor-exit p0

    return-void

    .line 2030
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2031
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 2033
    if-nez v2, :cond_2

    .line 2034
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$ActiveCallback;

    invoke-virtual {v3}, Lcom/android/server/AppOpsService$ActiveCallback;->destroy()V

    .line 2031
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2037
    .end local v0    # "activeCallbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$ActiveCallback;>;"
    .end local v1    # "callbackCount":I
    .end local v2    # "i":I
    :cond_3
    monitor-exit p0

    .line 2038
    return-void

    .line 2037
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .line 1735
    if-nez p1, :cond_0

    .line 1736
    return-void

    .line 1738
    :cond_0
    monitor-enter p0

    .line 1739
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ModeCallback;

    .line 1740
    .local v0, "cb":Lcom/android/server/AppOpsService$ModeCallback;
    if-eqz v0, :cond_4

    .line 1741
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$ModeCallback;->unlinkToDeath()V

    .line 1742
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1743
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 1744
    .local v2, "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1745
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 1746
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1742
    .end local v2    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1749
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_4

    .line 1750
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 1751
    .restart local v2    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1752
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-gtz v3, :cond_3

    .line 1753
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1749
    .end local v2    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1757
    .end local v1    # "i":I
    :cond_4
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->evalAllForegroundOpsLocked()V

    .line 1758
    .end local v0    # "cb":Lcom/android/server/AppOpsService$ModeCallback;
    monitor-exit p0

    .line 1759
    return-void

    .line 1758
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public systemReady()V
    .locals 12

    .line 891
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mConstants:Lcom/android/server/AppOpsService$Constants;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService$Constants;->startMonitoring(Landroid/content/ContentResolver;)V

    .line 893
    monitor-enter p0

    .line 894
    const/4 v0, 0x0

    .line 895
    .local v0, "changed":Z
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_5

    .line 896
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$UidState;

    .line 898
    .local v2, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget v3, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v3}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 899
    .local v3, "packageNames":[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 900
    invoke-virtual {v2}, Lcom/android/server/AppOpsService$UidState;->clear()V

    .line 901
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 902
    const/4 v0, 0x1

    .line 903
    goto/16 :goto_3

    .line 906
    :cond_0
    iget-object v4, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 907
    .local v4, "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-nez v4, :cond_1

    .line 908
    goto :goto_3

    .line 911
    :cond_1
    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 912
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 913
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Ops;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 914
    .local v6, "ops":Lcom/android/server/AppOpsService$Ops;
    const/4 v7, -0x1

    .line 916
    .local v7, "curUid":I
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    iget-object v9, v6, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    const/16 v10, 0x2000

    iget-object v11, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v11, v11, Lcom/android/server/AppOpsService$UidState;->uid:I

    .line 918
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 916
    invoke-interface {v8, v9, v10, v11}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v8
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v7, v8

    .line 920
    goto :goto_2

    .line 919
    :catch_0
    move-exception v8

    .line 921
    :goto_2
    :try_start_2
    iget-object v8, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v8, v8, Lcom/android/server/AppOpsService$UidState;->uid:I

    if-eq v7, v8, :cond_2

    .line 922
    const-string v8, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Pruning old package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ": new uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 925
    const/4 v0, 0x1

    .line 927
    .end local v6    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v7    # "curUid":I
    :cond_2
    goto :goto_1

    .line 929
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 930
    iget-object v6, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 895
    .end local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v3    # "packageNames":[Ljava/lang/String;
    .end local v4    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 933
    .end local v1    # "i":I
    :cond_5
    if-eqz v0, :cond_6

    .line 934
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V

    .line 936
    .end local v0    # "changed":Z
    :cond_6
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 939
    sget-boolean v0, Lcom/android/server/AppOpsService;->IS_SCREEN_COMPAT_ENABLED:Z

    if-eqz v0, :cond_8

    .line 941
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5020019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mScreenCompatDefaultEnabledList:Ljava/util/ArrayList;

    .line 943
    sget-boolean v0, Lcom/android/server/AppOpsService;->IS_SUPPORT_CAMERA_NOTCH:Z

    if-eqz v0, :cond_7

    .line 945
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x502001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mScreenCompatThirdPartyAppList:Ljava/util/ArrayList;

    .line 954
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->updateDefaultForScreenCompat()V

    .line 955
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mGetOnlineConfigRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 959
    :cond_8
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 960
    .local v0, "packageSuspendFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 961
    const-string v1, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 962
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/AppOpsService$3;

    invoke-direct {v2, p0}, Lcom/android/server/AppOpsService$3;-><init>(Lcom/android/server/AppOpsService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 986
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 988
    .local v1, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    new-instance v2, Lcom/android/server/AppOpsService$4;

    invoke-direct {v2, p0}, Lcom/android/server/AppOpsService$4;-><init>(Lcom/android/server/AppOpsService;)V

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->setExternalSourcesPolicy(Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;)V

    .line 1005
    const-class v2, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManagerInternal;

    .line 1007
    .local v2, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    new-instance v3, Lcom/android/server/AppOpsService$5;

    invoke-direct {v3, p0}, Lcom/android/server/AppOpsService$5;-><init>(Lcom/android/server/AppOpsService;)V

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManagerInternal;->addExternalStoragePolicy(Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;)V

    .line 1032
    return-void

    .line 936
    .end local v0    # "packageSuspendFilter":Landroid/content/IntentFilter;
    .end local v1    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v2    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public uidRemoved(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 1091
    monitor-enter p0

    .line 1092
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1094
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V

    .line 1096
    :cond_0
    monitor-exit p0

    .line 1097
    return-void

    .line 1096
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateDefaultForScreenCompat()V
    .locals 4

    .line 804
    sget-boolean v0, Lcom/android/server/AppOpsService;->IS_SCREEN_COMPAT_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 805
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->loadSystemAppList()V

    .line 806
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->resetScreenCompatConfig()V

    .line 808
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 809
    .local v0, "userId":I
    sget-object v1, Lcom/android/server/AppOpsService;->mScreenCompatLock:Ljava/lang/Object;

    monitor-enter v1

    .line 810
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mScreenCompatDefaultEnabledList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 811
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {p0, v3, v0}, Lcom/android/server/AppOpsService;->updateDefaultForScreenCompatUser(Ljava/lang/String;I)V

    .line 812
    .end local v3    # "pkg":Ljava/lang/String;
    goto :goto_0

    .line 813
    :cond_1
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mScreenCompatDefaultFullscreenList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 814
    .restart local v3    # "pkg":Ljava/lang/String;
    invoke-virtual {p0, v3, v0}, Lcom/android/server/AppOpsService;->updateDefaultForScreenCompatUser(Ljava/lang/String;I)V

    .line 815
    .end local v3    # "pkg":Ljava/lang/String;
    goto :goto_1

    .line 816
    :cond_2
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mScreenCompatSystemAppList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 817
    .restart local v3    # "pkg":Ljava/lang/String;
    invoke-virtual {p0, v3, v0}, Lcom/android/server/AppOpsService;->updateDefaultForScreenCompatUser(Ljava/lang/String;I)V

    .line 818
    .end local v3    # "pkg":Ljava/lang/String;
    goto :goto_2

    .line 819
    :cond_3
    monitor-exit v1

    .line 820
    return-void

    .line 819
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updateDefaultForScreenCompat(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 837
    sget-boolean v0, Lcom/android/server/AppOpsService;->IS_SCREEN_COMPAT_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 838
    :cond_0
    if-eqz p1, :cond_8

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    goto/16 :goto_2

    .line 841
    :cond_1
    sget-object v0, Lcom/android/server/AppOpsService;->mScreenCompatLock:Ljava/lang/Object;

    monitor-enter v0

    .line 843
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mScreenCompatDefaultEnabledList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_2

    .line 844
    sget v1, Lcom/android/server/AppOpsService;->MODE_COMPAT:I

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mScreenCompatDefaultFullscreenList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mScreenCompatSystemAppList:Ljava/util/ArrayList;

    .line 845
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 846
    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    :goto_0
    sget v1, Lcom/android/server/AppOpsService;->MODE_FULL:I

    .line 847
    .local v1, "mode":I
    :goto_1
    if-ne v1, v2, :cond_5

    .line 848
    monitor-exit v0

    return-void

    .line 850
    :cond_5
    sget-boolean v3, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_6

    .line 851
    const-string v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ScreenCompat: updateDefaultForScreenCompat pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " caller:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 851
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :cond_6
    const/16 v3, 0x46

    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_7

    .line 857
    const-string v2, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ScreenCompat: updateDefaultForScreenCompat set mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    invoke-virtual {p0, v3, p2, p1, v1}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 861
    .end local v1    # "mode":I
    :cond_7
    monitor-exit v0

    .line 862
    return-void

    .line 861
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 839
    :cond_8
    :goto_2
    return-void
.end method

.method public updateDefaultForScreenCompatUser(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 822
    sget-boolean v0, Lcom/android/server/AppOpsService;->IS_SCREEN_COMPAT_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 823
    :cond_0
    if-nez p1, :cond_1

    .line 824
    return-void

    .line 827
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    .line 829
    .local v0, "uid":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 830
    invoke-virtual {p0, p1, v0}, Lcom/android/server/AppOpsService;->updateDefaultForScreenCompat(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    .end local v0    # "uid":I
    :cond_2
    goto :goto_0

    .line 832
    :catch_0
    move-exception v0

    .line 833
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AppOps"

    const-string v2, "ScreenCompat: updateDefaultForScreenCompat failed: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 835
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public updateUidProcState(II)V
    .locals 11
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .line 1100
    monitor-enter p0

    .line 1101
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v1

    .line 1102
    .local v1, "uidState":Lcom/android/server/AppOpsService$UidState;
    sget-object v2, Lcom/android/server/AppOpsService;->PROCESS_STATE_TO_UID_STATE:[I

    aget v2, v2, p2

    .line 1103
    .local v2, "newState":I
    if-eqz v1, :cond_7

    iget v3, v1, Lcom/android/server/AppOpsService$UidState;->pendingState:I

    if-eq v3, v2, :cond_7

    .line 1104
    iget v3, v1, Lcom/android/server/AppOpsService$UidState;->pendingState:I

    .line 1105
    .local v3, "oldPendingState":I
    iput v2, v1, Lcom/android/server/AppOpsService$UidState;->pendingState:I

    .line 1106
    iget v4, v1, Lcom/android/server/AppOpsService$UidState;->state:I

    if-lt v2, v4, :cond_3

    const/4 v4, 0x2

    if-gt v2, v4, :cond_0

    goto :goto_2

    .line 1110
    :cond_0
    iget-wide v5, v1, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    .line 1114
    iget v5, v1, Lcom/android/server/AppOpsService$UidState;->state:I

    if-gt v5, v0, :cond_1

    .line 1115
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mConstants:Lcom/android/server/AppOpsService$Constants;

    iget-wide v4, v4, Lcom/android/server/AppOpsService$Constants;->TOP_STATE_SETTLE_TIME:J

    .local v4, "settleTime":J
    :goto_0
    goto :goto_1

    .line 1116
    .end local v4    # "settleTime":J
    :cond_1
    iget v5, v1, Lcom/android/server/AppOpsService$UidState;->state:I

    if-gt v5, v4, :cond_2

    .line 1117
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mConstants:Lcom/android/server/AppOpsService$Constants;

    iget-wide v4, v4, Lcom/android/server/AppOpsService$Constants;->FG_SERVICE_STATE_SETTLE_TIME:J

    goto :goto_0

    .line 1119
    :cond_2
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mConstants:Lcom/android/server/AppOpsService$Constants;

    iget-wide v4, v4, Lcom/android/server/AppOpsService$Constants;->BG_STATE_SETTLE_TIME:J

    .line 1121
    .restart local v4    # "settleTime":J
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v4

    iput-wide v6, v1, Lcom/android/server/AppOpsService$UidState;->pendingStateCommitTime:J

    .end local v4    # "settleTime":J
    goto :goto_3

    .line 1109
    :cond_3
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/server/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/AppOpsService$UidState;)V

    .line 1123
    :cond_4
    :goto_3
    iget v4, v1, Lcom/android/server/AppOpsService$UidState;->startNesting:I

    if-eqz v4, :cond_7

    .line 1126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1127
    .local v4, "now":J
    iget-object v6, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    sub-int/2addr v6, v0

    .local v6, "i":I
    :goto_4
    if-ltz v6, :cond_7

    .line 1128
    iget-object v7, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppOpsService$Ops;

    .line 1129
    .local v7, "ops":Lcom/android/server/AppOpsService$Ops;
    invoke-virtual {v7}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v8

    sub-int/2addr v8, v0

    .local v8, "j":I
    :goto_5
    if-ltz v8, :cond_6

    .line 1130
    invoke-virtual {v7, v8}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AppOpsService$Op;

    .line 1131
    .local v9, "op":Lcom/android/server/AppOpsService$Op;
    iget v10, v9, Lcom/android/server/AppOpsService$Op;->startNesting:I

    if-lez v10, :cond_5

    .line 1132
    iget-object v10, v9, Lcom/android/server/AppOpsService$Op;->time:[J

    aput-wide v4, v10, v3

    .line 1133
    iget-object v10, v9, Lcom/android/server/AppOpsService$Op;->time:[J

    aput-wide v4, v10, v2

    .line 1129
    .end local v9    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_5
    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    .line 1127
    .end local v7    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v8    # "j":I
    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 1139
    .end local v1    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v2    # "newState":I
    .end local v3    # "oldPendingState":I
    .end local v4    # "now":J
    .end local v6    # "i":I
    :cond_7
    monitor-exit p0

    .line 1140
    return-void

    .line 1139
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method writeState()V
    .locals 26

    .line 2750
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v2

    .line 2753
    :try_start_0
    iget-object v0, v1, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v3, v0

    .line 2757
    .local v3, "stream":Ljava/io/FileOutputStream;
    nop

    .line 2756
    nop

    .line 2759
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Lcom/android/server/AppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 2762
    .local v4, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :try_start_2
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2763
    .local v5, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2764
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2765
    const-string v7, "app-ops"

    invoke-interface {v5, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2766
    const-string/jumbo v7, "v"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2768
    iget-object v6, v1, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 2769
    .local v6, "uidStateCount":I
    const/4 v8, 0x0

    .line 2769
    .local v8, "i":I
    :goto_0
    if-ge v8, v6, :cond_2

    .line 2770
    :try_start_3
    iget-object v9, v1, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AppOpsService$UidState;

    .line 2771
    .local v9, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v10, v9, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v10, :cond_1

    iget-object v10, v9, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 2772
    const-string/jumbo v10, "uid"

    invoke-interface {v5, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2773
    const-string/jumbo v10, "n"

    iget v11, v9, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2774
    iget-object v10, v9, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 2775
    .local v10, "uidOpModes":Landroid/util/SparseIntArray;
    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v11

    .line 2776
    .local v11, "opCount":I
    const/4 v12, 0x0

    .line 2776
    .local v12, "j":I
    :goto_1
    if-ge v12, v11, :cond_0

    .line 2777
    invoke-virtual {v10, v12}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v13

    .line 2778
    .local v13, "op":I
    invoke-virtual {v10, v12}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v14

    .line 2779
    .local v14, "mode":I
    const-string/jumbo v15, "op"

    invoke-interface {v5, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2780
    const-string/jumbo v15, "n"

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v0, v15, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2781
    const-string/jumbo v7, "m"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5, v0, v7, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2782
    const-string/jumbo v7, "op"

    invoke-interface {v5, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2776
    .end local v13    # "op":I
    .end local v14    # "mode":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 2784
    .end local v12    # "j":I
    :cond_0
    const-string/jumbo v7, "uid"

    invoke-interface {v5, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2769
    .end local v9    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v10    # "uidOpModes":Landroid/util/SparseIntArray;
    .end local v11    # "opCount":I
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2857
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6    # "uidStateCount":I
    .end local v8    # "i":I
    :catch_0
    move-exception v0

    move-object/from16 v20, v4

    goto/16 :goto_a

    .line 2788
    .restart local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v6    # "uidStateCount":I
    :cond_2
    if-eqz v4, :cond_f

    .line 2789
    const/4 v7, 0x0

    .line 2790
    .local v7, "lastPkg":Ljava/lang/String;
    move-object v8, v7

    const/4 v7, 0x0

    .line 2790
    .local v7, "i":I
    .local v8, "lastPkg":Ljava/lang/String;
    :goto_2
    :try_start_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_e

    .line 2791
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager$PackageOps;

    .line 2792
    .local v9, "pkg":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v10, :cond_4

    .line 2793
    if-eqz v8, :cond_3

    .line 2794
    :try_start_5
    const-string/jumbo v10, "pkg"

    invoke-interface {v5, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2796
    :cond_3
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 2797
    const-string/jumbo v10, "pkg"

    invoke-interface {v5, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2798
    const-string/jumbo v10, "n"

    invoke-interface {v5, v0, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2800
    :cond_4
    :try_start_6
    const-string/jumbo v10, "uid"

    invoke-interface {v5, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2801
    const-string/jumbo v10, "n"

    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2802
    monitor-enter p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 2803
    :try_start_7
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v10

    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v1, v10, v11, v12, v12}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/AppOpsService$Ops;

    move-result-object v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2807
    .local v10, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v10, :cond_5

    .line 2808
    :try_start_8
    const-string/jumbo v11, "p"

    iget-boolean v12, v10, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z

    invoke-static {v12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v0, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2812
    const/4 v12, 0x0

    goto :goto_3

    .line 2812
    .end local v10    # "ops":Lcom/android/server/AppOpsService$Ops;
    :catchall_0
    move-exception v0

    move-object/from16 v20, v4

    move/from16 v25, v6

    move-object/from16 v24, v8

    move-object/from16 v23, v9

    goto/16 :goto_8

    .line 2810
    .restart local v10    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_5
    :try_start_9
    const-string/jumbo v11, "p"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v0, v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2812
    .end local v10    # "ops":Lcom/android/server/AppOpsService$Ops;
    :goto_3
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2813
    :try_start_a
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v10

    .line 2814
    .local v10, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    move v11, v12

    .line 2814
    .local v11, "j":I
    :goto_4
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_d

    .line 2815
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/AppOpsManager$OpEntry;

    .line 2816
    .local v13, "op":Landroid/app/AppOpsManager$OpEntry;
    const-string/jumbo v14, "op"

    invoke-interface {v5, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2817
    const-string/jumbo v14, "n"

    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2818
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v14

    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v15

    invoke-static {v15}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v15
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eq v14, v15, :cond_6

    .line 2819
    :try_start_b
    const-string/jumbo v14, "m"

    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 2821
    :cond_6
    move v14, v12

    .line 2821
    .local v14, "k":I
    :goto_5
    const/4 v15, 0x6

    if-ge v14, v15, :cond_9

    .line 2822
    :try_start_c
    invoke-virtual {v13, v14}, Landroid/app/AppOpsManager$OpEntry;->getLastTimeFor(I)J

    move-result-wide v15

    move-wide/from16 v17, v15

    .line 2823
    .local v17, "time":J
    const-wide/16 v15, 0x0

    move-object/from16 v19, v13

    move-wide/from16 v12, v17

    cmp-long v17, v12, v15

    .line 2823
    .end local v13    # "op":Landroid/app/AppOpsManager$OpEntry;
    .end local v17    # "time":J
    .local v12, "time":J
    .local v19, "op":Landroid/app/AppOpsManager$OpEntry;
    if-eqz v17, :cond_7

    .line 2824
    sget-object v17, Lcom/android/server/AppOpsService;->UID_STATE_TIME_ATTRS:[Ljava/lang/String;

    aget-object v15, v17, v14

    .line 2825
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 2824
    move-object/from16 v20, v4

    const/4 v4, 0x0

    :try_start_d
    invoke-interface {v5, v4, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2824
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v20, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_6

    .line 2827
    .end local v20    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_7
    move-object/from16 v20, v4

    .line 2827
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v20    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_6
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTimeFor(I)J

    move-result-wide v15

    .line 2827
    .end local v19    # "op":Landroid/app/AppOpsManager$OpEntry;
    .local v0, "op":Landroid/app/AppOpsManager$OpEntry;
    move-wide/from16 v21, v15

    .line 2828
    .local v21, "rejectTime":J
    move-object/from16 v24, v8

    move-object/from16 v23, v9

    move-wide/from16 v8, v21

    const-wide/16 v15, 0x0

    cmp-long v4, v8, v15

    .line 2828
    .end local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v21    # "rejectTime":J
    .local v8, "rejectTime":J
    .local v23, "pkg":Landroid/app/AppOpsManager$PackageOps;
    .local v24, "lastPkg":Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 2829
    sget-object v4, Lcom/android/server/AppOpsService;->UID_STATE_REJECT_ATTRS:[Ljava/lang/String;

    aget-object v4, v4, v14

    .line 2830
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    .line 2829
    move/from16 v25, v6

    const/4 v6, 0x0

    invoke-interface {v5, v6, v4, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2829
    .end local v6    # "uidStateCount":I
    .end local v8    # "rejectTime":J
    .end local v12    # "time":J
    .local v25, "uidStateCount":I
    goto :goto_7

    .line 2821
    .end local v25    # "uidStateCount":I
    .restart local v6    # "uidStateCount":I
    :cond_8
    move/from16 v25, v6

    .line 2821
    .end local v6    # "uidStateCount":I
    .restart local v25    # "uidStateCount":I
    :goto_7
    add-int/lit8 v14, v14, 0x1

    move-object v13, v0

    move-object/from16 v4, v20

    move-object/from16 v9, v23

    move-object/from16 v8, v24

    move/from16 v6, v25

    const/4 v0, 0x0

    const/4 v12, 0x0

    goto :goto_5

    .line 2833
    .end local v0    # "op":Landroid/app/AppOpsManager$OpEntry;
    .end local v14    # "k":I
    .end local v20    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v23    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v24    # "lastPkg":Ljava/lang/String;
    .end local v25    # "uidStateCount":I
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "uidStateCount":I
    .local v8, "lastPkg":Ljava/lang/String;
    .restart local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v13    # "op":Landroid/app/AppOpsManager$OpEntry;
    :cond_9
    move-object/from16 v20, v4

    move/from16 v25, v6

    move-object/from16 v24, v8

    move-object/from16 v23, v9

    move-object v0, v13

    .line 2833
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v6    # "uidStateCount":I
    .end local v8    # "lastPkg":Ljava/lang/String;
    .end local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v13    # "op":Landroid/app/AppOpsManager$OpEntry;
    .restart local v0    # "op":Landroid/app/AppOpsManager$OpEntry;
    .restart local v20    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v23    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v24    # "lastPkg":Ljava/lang/String;
    .restart local v25    # "uidStateCount":I
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v4

    .line 2834
    .local v4, "dur":I
    if-eqz v4, :cond_a

    .line 2835
    const-string v6, "d"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v5, v9, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2837
    :cond_a
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getProxyUid()I

    move-result v6

    .line 2838
    .local v6, "proxyUid":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_b

    .line 2839
    const-string/jumbo v8, "pu"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    invoke-interface {v5, v12, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2841
    :cond_b
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getProxyPackageName()Ljava/lang/String;

    move-result-object v8

    .line 2842
    .local v8, "proxyPackageName":Ljava/lang/String;
    if-eqz v8, :cond_c

    .line 2843
    const-string/jumbo v9, "pp"

    const/4 v12, 0x0

    invoke-interface {v5, v12, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2845
    :cond_c
    const-string/jumbo v9, "op"

    const/4 v12, 0x0

    invoke-interface {v5, v12, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2814
    .end local v0    # "op":Landroid/app/AppOpsManager$OpEntry;
    .end local v4    # "dur":I
    .end local v6    # "proxyUid":I
    .end local v8    # "proxyPackageName":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v20

    move-object/from16 v9, v23

    move-object/from16 v8, v24

    move/from16 v6, v25

    const/4 v0, 0x0

    const/4 v12, 0x0

    goto/16 :goto_4

    .line 2847
    .end local v11    # "j":I
    .end local v20    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v23    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v24    # "lastPkg":Ljava/lang/String;
    .end local v25    # "uidStateCount":I
    .local v4, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v6, "uidStateCount":I
    .local v8, "lastPkg":Ljava/lang/String;
    .restart local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    :cond_d
    move-object/from16 v20, v4

    move/from16 v25, v6

    move-object/from16 v24, v8

    move-object/from16 v23, v9

    .line 2847
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v6    # "uidStateCount":I
    .end local v8    # "lastPkg":Ljava/lang/String;
    .end local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v20    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v23    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v24    # "lastPkg":Ljava/lang/String;
    .restart local v25    # "uidStateCount":I
    const-string/jumbo v0, "uid"

    const/4 v4, 0x0

    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 2790
    .end local v10    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v23    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, v20

    move-object/from16 v8, v24

    move/from16 v6, v25

    const/4 v0, 0x0

    goto/16 :goto_2

    .line 2812
    .end local v20    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v24    # "lastPkg":Ljava/lang/String;
    .end local v25    # "uidStateCount":I
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "uidStateCount":I
    .restart local v8    # "lastPkg":Ljava/lang/String;
    .restart local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    :catchall_1
    move-exception v0

    move-object/from16 v20, v4

    move/from16 v25, v6

    move-object/from16 v24, v8

    move-object/from16 v23, v9

    .line 2812
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v6    # "uidStateCount":I
    .end local v8    # "lastPkg":Ljava/lang/String;
    .end local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v20    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v23    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v24    # "lastPkg":Ljava/lang/String;
    .restart local v25    # "uidStateCount":I
    :goto_8
    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    throw v0

    :catchall_2
    move-exception v0

    goto :goto_8

    .line 2849
    .end local v7    # "i":I
    .end local v20    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v23    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v24    # "lastPkg":Ljava/lang/String;
    .end local v25    # "uidStateCount":I
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "uidStateCount":I
    .restart local v8    # "lastPkg":Ljava/lang/String;
    :cond_e
    move-object/from16 v20, v4

    move/from16 v25, v6

    .line 2849
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v6    # "uidStateCount":I
    .restart local v20    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v25    # "uidStateCount":I
    if-eqz v8, :cond_10

    .line 2850
    const-string/jumbo v0, "pkg"

    const/4 v4, 0x0

    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2850
    .end local v8    # "lastPkg":Ljava/lang/String;
    goto :goto_9

    .line 2854
    .end local v20    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v25    # "uidStateCount":I
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "uidStateCount":I
    :cond_f
    move-object/from16 v20, v4

    move/from16 v25, v6

    .line 2854
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v6    # "uidStateCount":I
    .restart local v20    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v25    # "uidStateCount":I
    :cond_10
    :goto_9
    const-string v0, "app-ops"

    const/4 v4, 0x0

    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2855
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2856
    iget-object v0, v1, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 2860
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v25    # "uidStateCount":I
    goto :goto_b

    .line 2857
    :catch_1
    move-exception v0

    goto :goto_a

    .line 2857
    .end local v20    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :catch_2
    move-exception v0

    move-object/from16 v20, v4

    .line 2858
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v0, "e":Ljava/io/IOException;
    .restart local v20    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_a
    :try_start_10
    const-string v4, "AppOps"

    const-string v5, "Failed to write state, restoring backup."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2859
    iget-object v4, v1, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2861
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .end local v20    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_b
    monitor-exit v2

    .line 2862
    return-void

    .line 2861
    :catchall_3
    move-exception v0

    goto :goto_c

    .line 2754
    :catch_3
    move-exception v0

    .line 2755
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2756
    monitor-exit v2

    return-void

    .line 2861
    .end local v0    # "e":Ljava/io/IOException;
    :goto_c
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    throw v0
.end method
