.class public Lnet/oneplus/odm/insight/FrameworkEventCollector;
.super Ljava/lang/Object;
.source "FrameworkEventCollector.java"


# static fields
.field public static final MSG_SUBMIT:I = 0x1

.field private static final MSG_SUBMIT_WITH_APPID:I = 0x2

.field private static final RECORD_INSTALL_UNINSTALL_APPID:Ljava/lang/String; = "7554P2RV0X"

.field private static final TAG:Ljava/lang/String; = "FrameworkEventCollector"

.field private static final TAG_VALUES:[Ljava/lang/String;

.field private static mTelephonyManager:Landroid/telephony/TelephonyManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDiagnoseManager:Landroid/os/OPDiagnoseManager;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mNeedRecordLogTagSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

.field private mSystemAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    const-string v0, "system_server_crash"

    const-string v1, "system_server_anr"

    const-string v2, "system_server_watchdog"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->TAG_VALUES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lnet/oneplus/odm/insight/FrameworkEventCollector;->TAG_VALUES:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mNeedRecordLogTagSet:Ljava/util/HashSet;

    .line 53
    iput-object p1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mContext:Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->initHandler()V

    .line 55
    const-string v0, "opdiagnose"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/OPDiagnoseManager;

    iput-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mDiagnoseManager:Landroid/os/OPDiagnoseManager;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/odm/insight/FrameworkEventCollector;)Lnet/oneplus/odm/insight/tracker/OSTracker;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/odm/insight/FrameworkEventCollector;

    .line 30
    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    return-object v0
.end method

.method static synthetic access$002(Lnet/oneplus/odm/insight/FrameworkEventCollector;Lnet/oneplus/odm/insight/tracker/OSTracker;)Lnet/oneplus/odm/insight/tracker/OSTracker;
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/odm/insight/FrameworkEventCollector;
    .param p1, "x1"    # Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 30
    iput-object p1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    return-object p1
.end method

.method static synthetic access$100(Lnet/oneplus/odm/insight/FrameworkEventCollector;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/odm/insight/FrameworkEventCollector;

    .line 30
    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 363
    invoke-static {p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 364
    .local v0, "mngr":Landroid/telephony/TelephonyManager;
    const-string v1, ""

    .line 365
    .local v1, "imeis":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    .line 368
    .local v2, "simCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 369
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 370
    add-int/lit8 v4, v3, 0x1

    if-ge v4, v2, :cond_0

    .line 371
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    .line 368
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 375
    .end local v3    # "i":I
    :catch_0
    move-exception v3

    .line 376
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "FrameworkEventCollector"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 373
    :catch_1
    move-exception v3

    .line 374
    .local v3, "e":Ljava/lang/SecurityException;
    const-string v4, "FrameworkEventCollector"

    invoke-virtual {v3}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    .end local v3    # "e":Ljava/lang/SecurityException;
    :cond_1
    nop

    .line 378
    :goto_1
    return-object v1
.end method

.method private getIMEI1(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 382
    invoke-static {p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 383
    .local v0, "mngr":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    .line 384
    .local v1, "sim1":I
    const-string v2, ""

    .line 386
    .local v2, "imei":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 391
    :goto_0
    goto :goto_1

    .line 389
    :catch_0
    move-exception v3

    .line 390
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "FrameworkEventCollector"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 387
    :catch_1
    move-exception v3

    .line 388
    .local v3, "e":Ljava/lang/SecurityException;
    const-string v4, "FrameworkEventCollector"

    invoke-virtual {v3}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/SecurityException;
    goto :goto_0

    .line 392
    :goto_1
    return-object v2
.end method

.method private static getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 396
    sget-object v0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 397
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 399
    :cond_0
    sget-object v0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private getVersionCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 344
    const-string v0, ""

    .line 345
    .local v0, "version":Ljava/lang/String;
    iget-object v1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 346
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    if-nez v1, :cond_0

    .line 347
    const-string v2, "FrameworkEventCollector"

    const-string v3, "PackageManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const-string v2, ""

    return-object v2

    .line 351
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 352
    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_1

    .line 353
    const-string v3, "FrameworkEventCollector"

    const-string v4, "PackageInfo is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const-string v3, ""

    return-object v3

    .line 356
    :cond_1
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 359
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 357
    :catch_0
    move-exception v2

    .line 358
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "FrameworkEventCollector"

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return-object v0
.end method

.method private getVersionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 324
    const-string v0, ""

    .line 325
    .local v0, "version":Ljava/lang/String;
    iget-object v1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 326
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    if-nez v1, :cond_0

    .line 327
    const-string v2, "FrameworkEventCollector"

    const-string v3, "PackageManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v2, ""

    return-object v2

    .line 331
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 332
    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_1

    .line 333
    const-string v3, "FrameworkEventCollector"

    const-string v4, "PackageInfo is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v3, ""

    return-object v3

    .line 336
    :cond_1
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 339
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 337
    :catch_0
    move-exception v2

    .line 338
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "FrameworkEventCollector"

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return-object v0
.end method

.method private initHandler()V
    .locals 2

    .line 271
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FrameworkEventCollector"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mHandlerThread:Landroid/os/HandlerThread;

    .line 272
    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 273
    new-instance v0, Lnet/oneplus/odm/insight/FrameworkEventCollector$1;

    iget-object v1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/oneplus/odm/insight/FrameworkEventCollector$1;-><init>(Lnet/oneplus/odm/insight/FrameworkEventCollector;Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mHandler:Landroid/os/Handler;

    .line 303
    return-void
.end method

.method private initSystemAppList()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mSystemAppList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 307
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x502001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mSystemAppList:Ljava/util/ArrayList;

    goto :goto_0

    .line 309
    :cond_0
    new-array v1, v0, [I

    aput v0, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x502001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mSystemAppList:Ljava/util/ArrayList;

    goto :goto_0

    .line 312
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Neither O2 or H2."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_2
    :goto_0
    return-void
.end method

.method private isForeground(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 318
    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 319
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 320
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private recordDiagnoseEvent(I)V
    .locals 2
    .param p1, "event"    # I

    .line 146
    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mDiagnoseManager:Landroid/os/OPDiagnoseManager;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mDiagnoseManager:Landroid/os/OPDiagnoseManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/OPDiagnoseManager;->addIssueCount(II)Z

    goto :goto_0

    .line 149
    :cond_0
    const-string v0, "FrameworkEventCollector"

    const-string v1, "mDiagnoseManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_0
    return-void
.end method

.method private recordSystemAppAnr(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 229
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v0, "system_app_anr"

    invoke-direct {p0, v0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->submit(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FrameworkEventCollector"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private recordSystemAppCrash(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 171
    if-nez p1, :cond_0

    .line 172
    const-string v0, "FrameworkEventCollector"

    const-string v1, "recordSystemAppCrash: packagename is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void

    .line 176
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 177
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "pn"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v1, "fg"

    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->isForeground(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v1, "pvn"

    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->getVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v1, "pvc"

    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->getVersionCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v1, "system_app_crash"

    invoke-direct {p0, v1, v0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->submit(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v0    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FrameworkEventCollector"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private recordThirdPartyAnr(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 237
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v0, "anr"

    invoke-direct {p0, v0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->submit(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FrameworkEventCollector"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private recordThirdpatyCrash(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 154
    if-nez p1, :cond_0

    .line 155
    const-string v0, "FrameworkEventCollector"

    const-string v1, "recordThirdpartyCrash: packagename is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void

    .line 159
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 160
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "pn"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v1, "fg"

    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->isForeground(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v1, "pvn"

    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->getVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v1, "pvc"

    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->getVersionCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v1, "crash"

    invoke-direct {p0, v1, v0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->submit(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v0    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FrameworkEventCollector"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private recordWatchDog(Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .line 135
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/mdm/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, "watchDogFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :cond_0
    goto :goto_0

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "FrameworkEventCollector"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private submit(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
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

    .line 244
    .local p2, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 245
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 246
    if-eqz p2, :cond_0

    .line 247
    const-string v1, "ro"

    invoke-static {}, Lnet/oneplus/odm/common/Util;->isRooted()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 249
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "hashmap"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 250
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 252
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    iget-object v1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 253
    return-void
.end method

.method private submit(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 258
    .local p2, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 259
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 260
    if-eqz p2, :cond_0

    .line 261
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 262
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "hashmap"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 263
    const-string v2, "appId"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 266
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    iget-object v1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 267
    return-void
.end method


# virtual methods
.method public recordAppAnr(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isBgAnr"    # Z

    .line 206
    if-nez p1, :cond_0

    .line 207
    const-string v0, "FrameworkEventCollector"

    const-string v1, "recordSystemAppAnr: packagename is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void

    .line 211
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->initSystemAppList()V

    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 213
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "pn"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v1, "fg"

    xor-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v1, "pvn"

    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->getVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v1, "pvc"

    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->getVersionCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mSystemAppList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mSystemAppList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    invoke-direct {p0, v0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->recordSystemAppAnr(Ljava/util/HashMap;)V

    goto :goto_0

    .line 220
    :cond_1
    invoke-direct {p0, v0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->recordThirdPartyAnr(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v0    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    goto :goto_1

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FrameworkEventCollector"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public recordAppCrash(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 188
    if-nez p1, :cond_0

    .line 189
    const-string v0, "FrameworkEventCollector"

    const-string v1, "recordSystemAppCrash: packagename is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-void

    .line 193
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->initSystemAppList()V

    .line 194
    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mSystemAppList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mSystemAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->recordSystemAppCrash(Ljava/lang/String;)V

    .line 196
    sget v0, Landroid/os/OPDiagnoseManager;->ISSUE_CRASH_APP:I

    invoke-direct {p0, v0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->recordDiagnoseEvent(I)V

    goto :goto_0

    .line 198
    :cond_1
    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->recordThirdpatyCrash(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    goto :goto_1

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FrameworkEventCollector"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public recordInstallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p1, "ts"    # Ljava/lang/String;
    .param p2, "pn"    # Ljava/lang/String;
    .param p3, "pvc"    # Ljava/lang/String;
    .param p4, "iug"    # Z
    .param p5, "src"    # Ljava/lang/String;

    .line 59
    if-nez p1, :cond_0

    .line 60
    const-string v0, "FrameworkEventCollector"

    const-string v1, "recordInstallInfo: install time is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void

    .line 63
    :cond_0
    if-nez p2, :cond_1

    .line 64
    const-string v0, "FrameworkEventCollector"

    const-string v1, "recordInstallInfo: install packagename is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void

    .line 67
    :cond_1
    if-nez p3, :cond_2

    .line 68
    const-string v0, "FrameworkEventCollector"

    const-string v1, "recordInstallInfo: package version is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void

    .line 71
    :cond_2
    if-nez p5, :cond_3

    .line 72
    const-string v0, "FrameworkEventCollector"

    const-string v1, "recordInstallInfo: package installer is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void

    .line 76
    :cond_3
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 77
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "ts"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v1, "pn"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "pvc"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "iug"

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "src"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 83
    const-string v1, "ch1"

    iget-object v2, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->getIMEI1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v1, "chs"

    iget-object v2, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_4
    const-string v1, "install"

    const-string v2, "7554P2RV0X"

    invoke-direct {p0, v1, v0, v2}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->submit(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v0    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FrameworkEventCollector"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public recordSystemError(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mNeedRecordLogTagSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    const-string v0, "system_server_watchdog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->recordWatchDog(Ljava/lang/String;)V

    .line 125
    sget v0, Landroid/os/OPDiagnoseManager;->ISSUE_BLOCK_SYSTEM_SERVER:I

    invoke-direct {p0, v0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->recordDiagnoseEvent(I)V

    .line 126
    return-void

    .line 128
    :cond_0
    sget v0, Landroid/os/OPDiagnoseManager;->ISSUE_CRASH_SYSTEM_SERVER:I

    invoke-direct {p0, v0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->recordDiagnoseEvent(I)V

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 130
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, v0}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->submit(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 132
    .end local v0    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public recordUninstallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "ts"    # Ljava/lang/String;
    .param p2, "pn"    # Ljava/lang/String;
    .param p3, "pvc"    # Ljava/lang/String;

    .line 93
    if-nez p1, :cond_0

    .line 94
    const-string v0, "FrameworkEventCollector"

    const-string v1, "recordInstallInfo: install time is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void

    .line 97
    :cond_0
    if-nez p2, :cond_1

    .line 98
    const-string v0, "FrameworkEventCollector"

    const-string v1, "recordInstallInfo: install packagename is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void

    .line 101
    :cond_1
    if-nez p3, :cond_2

    .line 102
    const-string v0, "FrameworkEventCollector"

    const-string v1, "recordInstallInfo: package version is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void

    .line 106
    :cond_2
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 107
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "ts"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v1, "pn"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v1, "pvc"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 111
    const-string v1, "ch1"

    iget-object v2, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->getIMEI1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v1, "chs"

    iget-object v2, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_3
    const-string v1, "uninstall"

    const-string v2, "7554P2RV0X"

    invoke-direct {p0, v1, v0, v2}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->submit(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v0    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FrameworkEventCollector"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
