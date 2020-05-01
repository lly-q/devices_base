.class public final Lcom/android/server/OemExService;
.super Lcom/oem/os/IOemExService$Stub;
.source "OemExService.java"


# static fields
.field private static final ACTION_BACK_COVER:Ljava/lang/String; = "com.oem.intent.action.THREE_BACK_COVER"

.field private static final ACTION_BLACK_MODE_INIT:Ljava/lang/String; = "android.settings.OEM_THEME_MODE.init"

.field private static final ACTION_INSTALL_COMMIT:Ljava/lang/String; = "com.oneplus.exservice.INTENT_PACKAGE_INSTALL_COMMIT"

.field private static final ACTION_OXYGEN_DARK_MODE_INIT:Ljava/lang/String; = "com.oneplus.oxygen.changetheme.init"

.field static final DEBUG:Z = true

.field private static final DEBUG_LOGV:Z

.field static final DEBUG_OEM_OBSERVER:Z = true

.field public static DEBUG_ONEPLUS:Z = false

.field private static final DOZE_MODE_RESET:Ljava/lang/String; = "doze_mode_reset"

.field private static final GET_ONLINECONFIG:I = 0xd348

.field private static final KERNEL_WAKEUP_SOURCES:Ljava/lang/String; = "/d/wakeup_sources"

.field private static MCL_AR_PACKAGE_NAME:Ljava/lang/String; = null

.field private static final MSG_SYSTEM_READY:I = 0x1

.field private static final PACKAGE_INSTALLER_STATUS_UNDEFINED:I = -0x3e8

.field private static final TAG:Ljava/lang/String; = "OemExService"

.field private static final VENDOR_APP_INSTALLED:Ljava/lang/String; = "vendor_app_installed"

.field private static mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private static mDropbox:Landroid/os/DropBoxManager;

.field private static mMapConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field private static mPackageInstallState:I

.field private static mPackageVerifierEnable:I

.field private static m_InstallingPkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static m_IsPkgInstallReceiverRegistered:Z


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mOnelineConfigHandler:Landroid/os/Handler;

.field private mPackageInstaller:Landroid/content/pm/PackageInstaller;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mSceneModeController:Lcom/android/server/OemSceneModeController;

.field private mSession:Landroid/content/pm/PackageInstaller$Session;

.field private volatile mSystemReady:Z

.field private mThreeKeyAudioPolicy:Lcom/oneplus/three_key/IThreeKeyPolicy;

.field private mThreeKeyVibratorPolicy:Lcom/oneplus/three_key/IThreeKeyPolicy;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private threekey:Lcom/oneplus/threekey/ThreeKey;

.field private threekeyhw:Lcom/oneplus/threekey/ThreeKeyHw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 108
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    .line 114
    const-string v0, "com.oneplus.omar"

    sput-object v0, Lcom/android/server/OemExService;->MCL_AR_PACKAGE_NAME:Ljava/lang/String;

    .line 145
    const-string/jumbo v0, "persist.debug.oemex.all"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/OemExService;->DEBUG_LOGV:Z

    .line 151
    sput v1, Lcom/android/server/OemExService;->mPackageVerifierEnable:I

    .line 153
    sput v1, Lcom/android/server/OemExService;->mPackageInstallState:I

    .line 157
    sput-boolean v1, Lcom/android/server/OemExService;->m_IsPkgInstallReceiverRegistered:Z

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/OemExService;->m_InstallingPkgMap:Ljava/util/HashMap;

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/OemExService;->mMapConfig:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 442
    invoke-direct {p0}, Lcom/oem/os/IOemExService$Stub;-><init>()V

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/OemExService;->mLock:Ljava/lang/Object;

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OemExService;->mSystemReady:Z

    .line 165
    new-instance v0, Lcom/android/server/OemExService$1;

    invoke-direct {v0, p0}, Lcom/android/server/OemExService$1;-><init>(Lcom/android/server/OemExService;)V

    iput-object v0, p0, Lcom/android/server/OemExService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 212
    new-instance v0, Lcom/android/server/OemExService$2;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/android/server/OemExService$2;-><init>(Lcom/android/server/OemExService;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/server/OemExService;->mOnelineConfigHandler:Landroid/os/Handler;

    .line 238
    new-instance v0, Lcom/android/server/OemExService$3;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/android/server/OemExService$3;-><init>(Lcom/android/server/OemExService;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/server/OemExService;->mHandler:Landroid/os/Handler;

    .line 443
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 444
    .local v0, "pm":Landroid/os/PowerManager;
    iput-object p1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    .line 445
    const-string v1, "OemExService"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OemExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 448
    sput-object v3, Lcom/android/server/OemExService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 449
    const-string v1, "dropbox"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/DropBoxManager;

    sput-object v1, Lcom/android/server/OemExService;->mDropbox:Landroid/os/DropBoxManager;

    .line 451
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/OemExService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .line 103
    iget-object v0, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 103
    sget v0, Lcom/android/server/OemExService;->mPackageInstallState:I

    return v0
.end method

.method static synthetic access$110()I
    .locals 2

    .line 103
    sget v0, Lcom/android/server/OemExService;->mPackageInstallState:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/android/server/OemExService;->mPackageInstallState:I

    return v0
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .line 103
    sget-object v0, Lcom/android/server/OemExService;->m_InstallingPkgMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 103
    sget-object v0, Lcom/android/server/OemExService;->MCL_AR_PACKAGE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 103
    sget-boolean v0, Lcom/android/server/OemExService;->DEBUG_LOGV:Z

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .line 103
    sget v0, Lcom/android/server/OemExService;->mPackageVerifierEnable:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/OemExService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .line 103
    invoke-direct {p0}, Lcom/android/server/OemExService;->ungisterPkgInstallReceiver()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/OemExService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OemExService;
    .param p1, "x1"    # Z

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->onSystemReady(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/OemExService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .line 103
    iget-object v0, p0, Lcom/android/server/OemExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/OemExService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OemExService;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->listAPKs(Ljava/lang/String;)V

    return-void
.end method

.method private getCommitCallback(ILjava/lang/String;)Landroid/content/IntentSender;
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 381
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.exservice.INTENT_PACKAGE_INSTALL_COMMIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 382
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string/jumbo v1, "pkgName"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    iget-object v1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {v1, p1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 388
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    return-object v2
.end method

.method private installAPKs(Ljava/io/File;)V
    .locals 18
    .param p1, "apkFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 310
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, "apkFilePath":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "vendor_app_installed"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, "strAppInstalled":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/OemExService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 313
    .local v5, "info":Landroid/content/pm/PackageInfo;
    if-nez v5, :cond_0

    .line 314
    const-string v0, "OemExService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[installAPKs]: PackageInfo is not valid on "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-void

    .line 317
    :cond_0
    if-eqz v3, :cond_1

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, v1, Lcom/android/server/OemExService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 318
    :cond_2
    invoke-direct {v1, v5}, Lcom/android/server/OemExService;->shouldUpdateAPK(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 355
    :cond_3
    move-object/from16 v11, p1

    goto/16 :goto_2

    .line 319
    :cond_4
    :goto_0
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 320
    .local v6, "pkgName":Ljava/lang/String;
    sget-object v0, Lcom/android/server/OemExService;->m_InstallingPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 321
    sget-boolean v0, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_5

    const-string v0, "OemExService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[installAPKs]: \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' is on installing progress"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_5
    return-void

    .line 324
    :cond_6
    sget-boolean v0, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_7

    const-string v0, "OemExService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[installAPKs]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_7
    const/4 v7, 0x0

    .line 326
    .local v7, "out":Ljava/io/OutputStream;
    const/4 v0, 0x0

    move-object v8, v0

    .line 329
    .local v8, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/OemExService;->registerPkgInstallReceiver()V

    .line 330
    sget v0, Lcom/android/server/OemExService;->mPackageInstallState:I

    const/4 v9, 0x1

    add-int/2addr v0, v9

    sput v0, Lcom/android/server/OemExService;->mPackageInstallState:I

    .line 332
    sget-object v0, Lcom/android/server/OemExService;->m_InstallingPkgMap:Ljava/util/HashMap;

    sget v10, Lcom/android/server/OemExService;->mPackageInstallState:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v0, v9}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 335
    .local v0, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    invoke-virtual {v0, v6}, Landroid/content/pm/PackageInstaller$SessionParams;->setAppPackageName(Ljava/lang/String;)V

    .line 337
    iget-object v9, v1, Lcom/android/server/OemExService;->mPackageInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v9, v0}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v9

    .line 338
    .local v9, "sessionId":I
    iget-object v10, v1, Lcom/android/server/OemExService;->mPackageInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v10, v9}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v10

    iput-object v10, v1, Lcom/android/server/OemExService;->mSession:Landroid/content/pm/PackageInstaller$Session;

    .line 340
    new-instance v10, Ljava/io/FileInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v11, p1

    :try_start_1
    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v8, v10

    .line 341
    iget-object v12, v1, Lcom/android/server/OemExService;->mSession:Landroid/content/pm/PackageInstaller$Session;

    const-string v13, "SilentPackageInstaller"

    const-wide/16 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v16

    invoke-virtual/range {v12 .. v17}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v10

    move-object v7, v10

    .line 342
    const/high16 v10, 0x10000

    new-array v10, v10, [B

    .line 344
    .local v10, "buffer":[B
    :goto_1
    invoke-virtual {v8, v10}, Ljava/io/InputStream;->read([B)I

    move-result v12

    move v13, v12

    .line 344
    .local v13, "c":I
    const/4 v14, -0x1

    if-eq v12, v14, :cond_8

    .line 345
    invoke-virtual {v7, v10, v4, v13}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 347
    :cond_8
    iget-object v4, v1, Lcom/android/server/OemExService;->mSession:Landroid/content/pm/PackageInstaller$Session;

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    .end local v0    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v10    # "buffer":[B
    .end local v13    # "c":I
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 350
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 351
    nop

    .line 350
    nop

    .line 352
    iget-object v0, v1, Lcom/android/server/OemExService;->mSession:Landroid/content/pm/PackageInstaller$Session;

    invoke-direct {v1, v9, v6}, Lcom/android/server/OemExService;->getCommitCallback(ILjava/lang/String;)Landroid/content/IntentSender;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    .line 353
    iget-object v0, v1, Lcom/android/server/OemExService;->mSession:Landroid/content/pm/PackageInstaller$Session;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$Session;->close()V

    .line 355
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "out":Ljava/io/OutputStream;
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v9    # "sessionId":I
    :goto_2
    return-void

    .line 349
    .restart local v6    # "pkgName":Ljava/lang/String;
    .restart local v7    # "out":Ljava/io/OutputStream;
    .restart local v8    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v11, p1

    :goto_3
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 350
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method private listAPKs(Ljava/lang/String;)V
    .locals 8
    .param p1, "apkPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 262
    invoke-direct {p0}, Lcom/android/server/OemExService;->waitStorageMounted()V

    .line 263
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    .local v0, "path":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lcom/android/server/OemExService;->mPackageInstallState:I

    if-nez v1, :cond_3

    .line 265
    sget-boolean v1, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    const-string v1, "OemExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[listAPKs]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OemExService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 267
    iget-object v1, p0, Lcom/android/server/OemExService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OemExService;->mPackageInstaller:Landroid/content/pm/PackageInstaller;

    .line 270
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 272
    .local v1, "apkFiles":[Ljava/io/File;
    iget-object v2, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "package_verifier_enable"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/server/OemExService;->mPackageVerifierEnable:I

    .line 275
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 276
    .local v4, "apkFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 277
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 278
    sget-boolean v5, Lcom/android/server/OemExService;->DEBUG_LOGV:Z

    if-eqz v5, :cond_1

    const-string v5, "OemExService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[listAPKs]: apkFile = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/server/OemExService;->installAPKs(Ljava/io/File;)V

    .line 275
    .end local v4    # "apkFile":Ljava/io/File;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 284
    .end local v1    # "apkFiles":[Ljava/io/File;
    :cond_3
    return-void
.end method

.method private onSystemReady(Z)V
    .locals 4
    .param p1, "firstBoot"    # Z

    .line 502
    const-string v0, "OemExService"

    const-string/jumbo v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OemExService;->mSystemReady:Z

    .line 506
    invoke-direct {p0}, Lcom/android/server/OemExService;->sendBroadcastForChangeTheme()V

    .line 508
    new-instance v1, Lcom/oneplus/threekey/ThreeKeyHw;

    iget-object v2, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/oneplus/threekey/ThreeKeyHw;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/OemExService;->threekeyhw:Lcom/oneplus/threekey/ThreeKeyHw;

    .line 514
    iget-object v1, p0, Lcom/android/server/OemExService;->threekeyhw:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-virtual {v1}, Lcom/oneplus/threekey/ThreeKeyHw;->init()V

    .line 519
    new-instance v1, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;

    iget-object v2, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/OemExService;->mThreeKeyAudioPolicy:Lcom/oneplus/three_key/IThreeKeyPolicy;

    .line 523
    new-instance v1, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;

    iget-object v2, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/OemExService;->mThreeKeyVibratorPolicy:Lcom/oneplus/three_key/IThreeKeyPolicy;

    .line 526
    :try_start_0
    new-instance v1, Lcom/oneplus/threekey/ThreeKey;

    iget-object v2, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/oneplus/threekey/ThreeKey;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    .line 527
    iget-object v1, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    iget-object v2, p0, Lcom/android/server/OemExService;->mThreeKeyAudioPolicy:Lcom/oneplus/three_key/IThreeKeyPolicy;

    invoke-virtual {v1, v2}, Lcom/oneplus/threekey/ThreeKey;->addThreeKeyPolicy(Lcom/oneplus/three_key/IThreeKeyPolicy;)V

    .line 528
    iget-object v1, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    iget-object v2, p0, Lcom/android/server/OemExService;->mThreeKeyVibratorPolicy:Lcom/oneplus/three_key/IThreeKeyPolicy;

    invoke-virtual {v1, v2}, Lcom/oneplus/threekey/ThreeKey;->addThreeKeyPolicy(Lcom/oneplus/three_key/IThreeKeyPolicy;)V

    .line 529
    iget-object v1, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    iget-object v2, p0, Lcom/android/server/OemExService;->threekeyhw:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-virtual {v2}, Lcom/oneplus/threekey/ThreeKeyHw;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oneplus/threekey/ThreeKey;->init(I)V
    :try_end_0
    .catch Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    goto :goto_0

    .line 530
    :catch_0
    move-exception v1

    .line 531
    .local v1, "e":Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException;
    const-string v2, "OemExService"

    const-string v3, "device is not support threekey"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    .line 536
    .end local v1    # "e":Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException;
    :goto_0
    new-array v1, v0, [I

    const/16 v2, 0x19

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 537
    sget-boolean v1, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    const-string v1, "OemExService"

    const-string v2, "[scene] satrtMonitorSceneChanging"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_0
    iget-object v1, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    if-nez v1, :cond_1

    .line 539
    new-instance v1, Lcom/android/server/OemSceneModeController;

    iget-object v2, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/OemSceneModeController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    .line 541
    :cond_1
    iget-object v1, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v1}, Lcom/android/server/OemSceneModeController;->startMonitor()V

    goto :goto_1

    .line 543
    :cond_2
    sget-boolean v1, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_3

    const-string v1, "OemExService"

    const-string v2, "[scene] Scene mode not supported"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_3
    :goto_1
    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v1

    sget-object v2, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->OPR_RETAIL:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    if-ne v1, v2, :cond_4

    if-eqz p1, :cond_4

    .line 551
    const-string v1, "/op2/apps/opr"

    invoke-virtual {p0, v1}, Lcom/android/server/OemExService;->startApkInstall(Ljava/lang/String;)V

    .line 558
    :cond_4
    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v1

    sget-object v2, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->MCL:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    if-ne v1, v2, :cond_5

    if-eqz p1, :cond_5

    .line 560
    const-string v1, "/op2/apps/mcl"

    invoke-virtual {p0, v1}, Lcom/android/server/OemExService;->startApkInstall(Ljava/lang/String;)V

    .line 574
    :cond_5
    iget-object v1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 575
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-array v0, v0, [I

    aput v3, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->isUpgrade()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    const-string/jumbo v0, "persist.sys.debug.app.h2"

    .line 576
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 577
    :cond_7
    const-string v0, "/vendor/etc/apps/h2"

    invoke-virtual {p0, v0}, Lcom/android/server/OemExService;->startApkInstall(Ljava/lang/String;)V

    .line 579
    :cond_8
    return-void
.end method

.method private registerPkgInstallReceiver()V
    .locals 5

    .line 393
    sget-boolean v0, Lcom/android/server/OemExService;->DEBUG_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "OemExService"

    const-string/jumbo v1, "registerPkgInstallReceiver"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_0
    sget-boolean v0, Lcom/android/server/OemExService;->m_IsPkgInstallReceiverRegistered:Z

    if-nez v0, :cond_1

    .line 396
    const-string v0, "com.oneplus.exservice.INTENT_PACKAGE_INSTALL_COMMIT"

    .line 397
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 398
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    iget-object v2, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/OemExService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 400
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/OemExService;->m_IsPkgInstallReceiverRegistered:Z

    .line 401
    sget-boolean v2, Lcom/android/server/OemExService;->DEBUG_LOGV:Z

    if-eqz v2, :cond_1

    const-string v2, "OemExService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "m_IsPkgInstallReceiverRegistered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/server/OemExService;->m_IsPkgInstallReceiverRegistered:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method private sendBroadcastForChangeTheme()V
    .locals 2

    .line 583
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.OEM_THEME_MODE.init"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 584
    .local v0, "blackModeIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 585
    const-string v1, "com.oneplus.skin"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    iget-object v1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 587
    return-void
.end method

.method private shouldUpdateAPK(Landroid/content/pm/PackageInfo;)Z
    .locals 7
    .param p1, "info"    # Landroid/content/pm/PackageInfo;

    .line 360
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 361
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/OemExService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 362
    iget v2, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 363
    .local v2, "apkVersion":I
    iget-object v3, p0, Lcom/android/server/OemExService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 364
    .local v3, "installedPkgVersion":I
    if-le v2, v3, :cond_0

    .line 365
    const-string v4, "OemExService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "We should update ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const/4 v0, 0x1

    return v0

    .line 368
    :cond_0
    sget-boolean v4, Lcom/android/server/OemExService;->DEBUG_LOGV:Z

    if-eqz v4, :cond_1

    const-string v4, "OemExService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]: installed=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\',  preloaded=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "apkVersion":I
    .end local v3    # "installedPkgVersion":I
    :cond_1
    goto :goto_0

    .line 372
    :catch_0
    move-exception v1

    .line 373
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "OemExService"

    const-string/jumbo v3, "shouldUpdateAPK error:"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private ungisterPkgInstallReceiver()V
    .locals 3

    .line 408
    sget-boolean v0, Lcom/android/server/OemExService;->DEBUG_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "OemExService"

    const-string/jumbo v1, "ungisterPkgInstallReceiver"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_0
    sget-boolean v0, Lcom/android/server/OemExService;->m_IsPkgInstallReceiverRegistered:Z

    if-eqz v0, :cond_2

    .line 411
    :try_start_0
    iget-object v0, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/OemExService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    goto :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 414
    :goto_0
    iget-object v0, p0, Lcom/android/server/OemExService;->mSession:Landroid/content/pm/PackageInstaller$Session;

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/android/server/OemExService;->mSession:Landroid/content/pm/PackageInstaller$Session;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$Session;->abandon()V

    .line 417
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/OemExService;->m_IsPkgInstallReceiverRegistered:Z

    .line 418
    sget-boolean v0, Lcom/android/server/OemExService;->DEBUG_LOGV:Z

    if-eqz v0, :cond_2

    const-string v0, "OemExService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "m_IsPkgInstallReceiverRegistered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/OemExService;->m_IsPkgInstallReceiverRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_2
    return-void
.end method

.method private waitStorageMounted()V
    .locals 5

    .line 288
    sget-boolean v0, Lcom/android/server/OemExService;->DEBUG_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "OemExService"

    const-string v1, "[waitStorageMounted]+"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 291
    .local v1, "waitTime":I
    :cond_1
    :try_start_0
    const-string/jumbo v2, "vold.internalSD.mount"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    .line 292
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 293
    add-int/lit8 v1, v1, 0x1

    .line 294
    sget-boolean v2, Lcom/android/server/OemExService;->DEBUG_LOGV:Z

    if-eqz v2, :cond_2

    const-string v2, "OemExService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "installAPKs: wait internalSD ready for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " s."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_2
    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    .line 296
    const-string v0, "OemExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "installAPKs: internal sd is not ready for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " s. Skip install."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    sget-boolean v0, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_3

    if-lez v1, :cond_3

    const-string v0, "OemExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "installAPKs: wait internalSD ready for totally "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " s."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_3
    return-void

    .line 302
    :cond_4
    sget-boolean v0, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_6

    if-lez v1, :cond_6

    const-string v0, "OemExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const-string/jumbo v3, "installAPKs: wait internalSD ready for totally "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " s."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-boolean v2, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_5

    if-lez v1, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "installAPKs: wait internalSD ready for totally "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " s."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OemExService"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    throw v0

    .line 300
    :catch_0
    move-exception v0

    .line 302
    sget-boolean v0, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_6

    if-lez v1, :cond_6

    const-string v0, "OemExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    .line 304
    :cond_6
    :goto_1
    sget-boolean v0, Lcom/android/server/OemExService;->DEBUG_LOGV:Z

    if-eqz v0, :cond_7

    const-string v0, "OemExService"

    const-string v2, "[waitStorageMounted]-"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_7
    return-void
.end method


# virtual methods
.method public addThreeKeyPolicy(Lcom/oneplus/three_key/IThreeKeyPolicy;)V
    .locals 2
    .param p1, "policy"    # Lcom/oneplus/three_key/IThreeKeyPolicy;

    .line 702
    const-string v0, "OemExService"

    const-string v1, "[setThreeKeyPolicy]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v0, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    invoke-virtual {v0, p1}, Lcom/oneplus/threekey/ThreeKey;->addThreeKeyPolicy(Lcom/oneplus/three_key/IThreeKeyPolicy;)V

    .line 704
    return-void
.end method

.method public disableDefaultThreeKey()V
    .locals 2

    .line 692
    iget-object v0, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    iget-object v1, p0, Lcom/android/server/OemExService;->mThreeKeyAudioPolicy:Lcom/oneplus/three_key/IThreeKeyPolicy;

    invoke-virtual {v0, v1}, Lcom/oneplus/threekey/ThreeKey;->removeThreeKeyPolicy(Lcom/oneplus/three_key/IThreeKeyPolicy;)V

    .line 693
    const-string v0, "OemExService"

    const-string v1, "[disableDefaultThreeKey]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    return-void
.end method

.method public dumpLightBugreport(Ljava/lang/String;)V
    .locals 20
    .param p1, "tag"    # Ljava/lang/String;

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v0

    .line 733
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v2, v0

    .line 734
    .local v2, "bufferWasEmpty":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 737
    .local v3, "elapsedStartTime":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    move-object v5, v0

    .line 738
    .local v5, "date":Ljava/util/Date;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 741
    .local v6, "sdf":Ljava/text/SimpleDateFormat;
    const-string/jumbo v0, "ro.build.display.id"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 743
    .local v7, "buildId":Ljava/lang/String;
    const-string/jumbo v0, "ro.build.fingerprint"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 746
    .local v8, "fingerprint":Ljava/lang/String;
    const-string/jumbo v0, "ro.build.version.sdk"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 748
    .local v9, "sdkVersion":Ljava/lang/String;
    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 750
    .local v10, "modelName":Ljava/lang/String;
    const-string/jumbo v0, "persist.sys.timezone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 753
    .local v11, "timeZone":Ljava/lang/String;
    const-string v0, "========================================================\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "== dumpstate: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0xa

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    const-string v0, "========================================================\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Build: "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Build fingerprint: \'"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    const-string v0, "DeviceID: null\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[ro.build.version.sdk]: ["

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x5d

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[ro.product.model]: ["

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[persist.sys.timezone]: ["

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    sget-object v0, Lcom/android/server/OemExService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_1

    .line 765
    const-string v0, "-------------------------------------------------------------------------------\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    sget-object v0, Lcom/android/server/OemExService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->getPidMap(Ljava/lang/StringBuilder;)V

    .line 769
    const-string v0, "-------------------------------------------------------------------------------\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    const-string v0, "DUMP OF SERVICE batterystats:\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    sget-object v0, Lcom/android/server/OemExService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v13, 0x0

    invoke-virtual {v0, v1, v13}, Lcom/android/server/am/ActivityManagerService;->dumpBatteryStats(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 774
    const-string v0, "========================================================\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    const-string v0, "== Checkins\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    const-string v0, "========================================================\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    const-string v0, "------ CHECKIN BATTERYSTATS (dumpsys -t 30 batterystats -c) ------\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    const-string v0, "-c"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 779
    .local v0, "args":[Ljava/lang/String;
    sget-object v13, Lcom/android/server/OemExService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v13, v1, v0}, Lcom/android/server/am/ActivityManagerService;->dumpBatteryStats(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 783
    .end local v0    # "args":[Ljava/lang/String;
    :cond_1
    const-string v0, "-------------------------------------------------------------------------------\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    const-string v0, "DUMP OF SERVICE sensorservice:\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    const-string v0, "------ KERNEL WAKE SOURCES (/d/wakeup_sources) ------\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    const/4 v0, 0x0

    .line 790
    .local v0, "line":Ljava/lang/String;
    :try_start_0
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/FileReader;

    new-instance v15, Ljava/io/File;

    const-string v12, "/d/wakeup_sources"

    invoke-direct {v15, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v14, v15}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v13, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 791
    .local v13, "reader":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    if-eqz v12, :cond_2

    .line 792
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    const/16 v12, 0xa

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 795
    :cond_2
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    .end local v0    # "line":Ljava/lang/String;
    .end local v13    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 796
    :catch_0
    move-exception v0

    .line 797
    .local v0, "e":Ljava/io/IOException;
    const-string v12, "OemExService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IOException : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 801
    .local v12, "elapsedEndTime":J
    sub-long v14, v12, v3

    long-to-double v14, v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v14, v14, v16

    .line 802
    .local v14, "elapsedSeconds":D
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v2

    const-string v2, "--------- "

    .line 802
    .end local v2    # "bufferWasEmpty":Z
    .local v18, "bufferWasEmpty":Z
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "s was the duration of dumpLightBugreport"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    sget-object v0, Lcom/android/server/OemExService;->mDropbox:Landroid/os/DropBoxManager;

    if-eqz v0, :cond_3

    .line 805
    sget-object v0, Lcom/android/server/OemExService;->mDropbox:Landroid/os/DropBoxManager;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v1

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 807
    :cond_3
    move-object/from16 v19, v1

    move-object/from16 v1, p1

    .line 807
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .local v19, "sb":Ljava/lang/StringBuilder;
    :goto_3
    return-void
.end method

.method public enalbeDefaultThreeKey()V
    .locals 2

    .line 697
    iget-object v0, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    iget-object v1, p0, Lcom/android/server/OemExService;->mThreeKeyAudioPolicy:Lcom/oneplus/three_key/IThreeKeyPolicy;

    invoke-virtual {v0, v1}, Lcom/oneplus/threekey/ThreeKey;->addThreeKeyPolicy(Lcom/oneplus/three_key/IThreeKeyPolicy;)V

    .line 698
    const-string v0, "OemExService"

    const-string v1, "[enableDefaultThreeKey]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    return-void
.end method

.method public getThreeKeyStatus()I
    .locals 3

    .line 719
    :try_start_0
    iget-object v0, p0, Lcom/android/server/OemExService;->threekeyhw:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-virtual {v0}, Lcom/oneplus/threekey/ThreeKeyHw;->getState()I

    move-result v0
    :try_end_0
    .catch Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 720
    :catch_0
    move-exception v0

    .line 721
    .local v0, "e":Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException;
    const-string v1, "OemExService"

    const-string/jumbo v2, "system unsupport for threekey"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    .end local v0    # "e":Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException;
    const/4 v0, 0x0

    return v0
.end method

.method public monitorSceneChanging(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 455
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x19

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 456
    sget-boolean v0, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OemExService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scene] monitorSceneChanging: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_0
    if-eqz p1, :cond_2

    .line 459
    iget-object v0, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    if-nez v0, :cond_1

    .line 460
    new-instance v0, Lcom/android/server/OemSceneModeController;

    iget-object v1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/OemSceneModeController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneModeController;->startMonitorPassive()V

    goto :goto_0

    .line 464
    :cond_2
    iget-object v0, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    if-eqz v0, :cond_4

    .line 465
    iget-object v0, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneModeController;->stopMonitorPassive()V

    goto :goto_0

    .line 469
    :cond_3
    sget-boolean v0, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_4

    const-string v0, "OemExService"

    const-string v1, "[scene] Scene mode not supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_4
    :goto_0
    return-void
.end method

.method public pauseExInputEvent()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 649
    return-void
.end method

.method public preEvaluateModeStatus(II)Z
    .locals 4
    .param p1, "modeType"    # I
    .param p2, "switcherType"    # I

    .line 475
    const/4 v0, 0x0

    .line 476
    .local v0, "result":Z
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x19

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 477
    sget-boolean v1, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    const-string v1, "OemExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[scene] preEvaluateModeStatus: modeType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " swithcer switcherType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_0
    iget-object v1, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    if-eqz v1, :cond_2

    .line 480
    iget-object v1, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/OemSceneModeController;->preEvaluateModeStatus(II)Z

    move-result v0

    goto :goto_0

    .line 483
    :cond_1
    sget-boolean v1, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_2

    const-string v1, "OemExService"

    const-string v2, "[scene] Scene mode not supported"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_2
    :goto_0
    return v0
.end method

.method public registerInputEvent(Lcom/oem/os/IOemExInputCallBack;I)Z
    .locals 1
    .param p1, "callBackAdd"    # Lcom/oem/os/IOemExInputCallBack;
    .param p2, "keycode"    # I

    .line 642
    const/4 v0, 0x1

    return v0
.end method

.method public removeThreeKeyPolicy(Lcom/oneplus/three_key/IThreeKeyPolicy;)V
    .locals 2
    .param p1, "policy"    # Lcom/oneplus/three_key/IThreeKeyPolicy;

    .line 707
    const-string v0, "OemExService"

    const-string v1, "[removeThreeKeyPolicy]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-object v0, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    invoke-virtual {v0, p1}, Lcom/oneplus/threekey/ThreeKey;->removeThreeKeyPolicy(Lcom/oneplus/three_key/IThreeKeyPolicy;)V

    .line 709
    return-void
.end method

.method public resetThreeKey()V
    .locals 2

    .line 712
    const-string v0, "OemExService"

    const-string v1, "[resetThreeKey]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v0, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    invoke-virtual {v0}, Lcom/oneplus/threekey/ThreeKey;->reset()V

    .line 714
    return-void
.end method

.method public resumeExInputEvent()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 652
    return-void
.end method

.method public setActivityManager(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;

    .line 810
    sput-object p1, Lcom/android/server/OemExService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 811
    return-void
.end method

.method public setGammaData(I)V
    .locals 0
    .param p1, "val"    # I

    .line 681
    return-void
.end method

.method public setHomeUpLock()Z
    .locals 2

    .line 675
    const-string v0, "OemExService"

    const-string v1, "[setHomeUpLock]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const/4 v0, 0x1

    return v0
.end method

.method public setInteractive(ZJ)Z
    .locals 1
    .param p1, "interactive"    # Z
    .param p2, "delayMillis"    # J

    .line 663
    const/4 v0, 0x1

    return v0
.end method

.method public setKeyMode(I)Z
    .locals 1
    .param p1, "keyMode"    # I

    .line 671
    const/4 v0, 0x1

    return v0
.end method

.method public setLaserSensorCrossTalk(I)V
    .locals 0
    .param p1, "val"    # I

    .line 689
    return-void
.end method

.method public setLaserSensorOffset(I)V
    .locals 0
    .param p1, "val"    # I

    .line 685
    return-void
.end method

.method public setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 667
    const/4 v0, 0x1

    return v0
.end method

.method public startApkInstall(Ljava/lang/String;)V
    .locals 2
    .param p1, "apkPath"    # Ljava/lang/String;

    .line 427
    sget v0, Lcom/android/server/OemExService;->mPackageInstallState:I

    if-nez v0, :cond_0

    .line 428
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/OemExService$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/OemExService$4;-><init>(Lcom/android/server/OemExService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 439
    :cond_0
    return-void
.end method

.method public startUevent(Ljava/lang/String;Lcom/oem/os/IOemUeventCallback;)Z
    .locals 1
    .param p1, "patch"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/oem/os/IOemUeventCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 655
    const/4 v0, 0x1

    return v0
.end method

.method public stopUevent(Lcom/oem/os/IOemUeventCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/oem/os/IOemUeventCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 659
    const/4 v0, 0x1

    return v0
.end method

.method public systemRunning(Z)V
    .locals 5
    .param p1, "firstBoot"    # Z

    .line 489
    iget-object v0, p0, Lcom/android/server/OemExService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 491
    :try_start_0
    iget-object v1, p0, Lcom/android/server/OemExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/android/server/OemExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 496
    :cond_0
    iget-object v1, p0, Lcom/android/server/OemExService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 497
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/OemExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 498
    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v0

    .line 499
    return-void

    .line 498
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterInputEvent(Lcom/oem/os/IOemExInputCallBack;)V
    .locals 0
    .param p1, "callBackRemove"    # Lcom/oem/os/IOemExInputCallBack;

    .line 646
    return-void
.end method
