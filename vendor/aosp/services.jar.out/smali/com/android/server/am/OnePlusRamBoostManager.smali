.class public Lcom/android/server/am/OnePlusRamBoostManager;
.super Ljava/lang/Object;
.source "OnePlusRamBoostManager.java"

# interfaces
.implements Lcom/oneplus/oimc/IOPFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusRamBoostManager$MyConfigUpdater;,
        Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;,
        Lcom/android/server/am/OnePlusRamBoostManager$AppPageCacheInfo;,
        Lcom/android/server/am/OnePlusRamBoostManager$SwitchContentObserver;
    }
.end annotation


# static fields
.field private static final CONFIG_NAME:Ljava/lang/String; = "RamBoost"

.field private static final DAY_IN_MS:J = 0x5265c00L

.field private static DEBUG:Z = false

.field private static final DEFAULT_END_HOTCOUTN:Ljava/lang/String; = "0"

.field private static ENABLE:Z = false

.field private static IOPPRELOAD:Z = false

.field private static final IOP_TIMEOUT:J = 0x2710L

.field private static final MAX_HIGH_USE_HOTCOUNT:I = 0x384

.field private static final MSG_DISABLE_RAMBOOST:I = 0x6

.field private static final MSG_GET_ONLINECONFIG:I = 0x1

.field private static final MSG_INIT_ONLINECONFIG:I = 0x2

.field private static final MSG_IOP_PREDICT:I = 0xb

.field private static final MSG_IOP_PRELOAD:I = 0xa

.field private static final MSG_IOP_RECORD:I = 0x9

.field private static final MSG_IOP_START:I = 0x8

.field private static final MSG_READ_XML:I = 0x7

.field private static final MSG_RESUME_HOTCOUNT:I = 0x4

.field private static final MSG_SWITCH_CHANGED:I = 0xc

.field private static final MSG_UPDATE_HIGHUSAGE_PKG:I = 0x5

.field private static final MSG_WRITE_HOTCOUNT:I = 0x3

.field private static final PROP_DEBUG:Ljava/lang/String; = "persist.sys.ramboost.debug"

.field private static final PROP_ENABLE:Ljava/lang/String; = "persist.sys.ramboost.enable"

.field private static final PROP_IOPPRELOAD:Ljava/lang/String; = "persist.sys.ramboost.ioppreload"

.field private static final PROP_ONLINE_HOTCOUNT:Ljava/lang/String; = "persist.sys.ramboost.olhotcount"

.field private static final PROP_ONLINE_IOP:Ljava/lang/String; = "persist.sys.ramboost.oliop"

.field private static final PROP_RESIDE_SWITCH:Ljava/lang/String; = "/proc/sys/vm/page_cache_reside_switch"

.field private static final RAMBOOST_FILE:Ljava/lang/String; = "/system/etc/ramboost.xml"

.field private static final SOCKET_NAME:Ljava/lang/String; = "ramboost"

.field public static final TAG:Ljava/lang/String; = "OnePlusSmartBoostManager"

.field private static final XML_ATTR_HOTCOUNT:Ljava/lang/String; = "hotcount"

.field private static final XML_ATTR_IOPPRELOAD:Ljava/lang/String; = "ioppreload"

.field private static final XML_ATTR_NAME:Ljava/lang/String; = "name"

.field private static final XML_ATTR_SWITCH:Ljava/lang/String; = "switch"

.field private static final XML_ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final XML_TAG_IOP:Ljava/lang/String; = "iop"

.field private static final XML_TAG_PKG:Ljava/lang/String; = "pkg"

.field private static final XML_TAG_RAMBOOST:Ljava/lang/String; = "ramboost"

.field private static mInstance:Lcom/android/server/am/OnePlusRamBoostManager;

.field private static mUserSwitch:Z


# instance fields
.field private URI_RAMBOOST_SWITCH:Landroid/net/Uri;

.field private mAppPageCacheInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/OnePlusRamBoostManager$AppPageCacheInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBlackHighUsageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBlackIopList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHighUsagePkgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIopPkgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mPageCachePkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

.field private mRamBoostThread:Landroid/os/HandlerThread;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSwitchContentObserver:Lcom/android/server/am/OnePlusRamBoostManager$SwitchContentObserver;

.field private suffixList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private usageMgr:Lcom/android/server/am/RestartProcessManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->ENABLE:Z

    .line 84
    sput-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->IOPPRELOAD:Z

    .line 85
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    .line 86
    sput-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->mUserSwitch:Z

    .line 103
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OnePlusRamBoostManager;->mInstance:Lcom/android/server/am/OnePlusRamBoostManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostThread:Landroid/os/HandlerThread;

    .line 105
    iput-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    .line 107
    iput-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 108
    iput-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mContext:Landroid/content/Context;

    .line 114
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mPageCachePkgMap:Ljava/util/HashMap;

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mHighUsagePkgList:Ljava/util/ArrayList;

    .line 117
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mBlackHighUsageList:Ljava/util/ArrayList;

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mBlackIopList:Ljava/util/ArrayList;

    .line 121
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mAppPageCacheInfoMap:Ljava/util/HashMap;

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mIopPkgList:Ljava/util/ArrayList;

    .line 124
    iput-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->usageMgr:Lcom/android/server/am/RestartProcessManager;

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, ".oppo.nearme.gamecenter"

    const-string v2, ".oppo"

    const-string v3, ".nearme.gamecenter"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->suffixList:Ljava/util/List;

    .line 134
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ramboost"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostThread:Landroid/os/HandlerThread;

    .line 135
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 136
    new-instance v0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;-><init>(Lcom/android/server/am/OnePlusRamBoostManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    .line 137
    const-string/jumbo v0, "persist.sys.ramboost.enable"

    sget-boolean v1, Lcom/android/server/am/OnePlusRamBoostManager;->ENABLE:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->ENABLE:Z

    .line 138
    const-string/jumbo v0, "persist.sys.ramboost.ioppreload"

    sget-boolean v1, Lcom/android/server/am/OnePlusRamBoostManager;->IOPPRELOAD:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->IOPPRELOAD:Z

    .line 139
    const-string/jumbo v0, "persist.sys.ramboost.debug"

    sget-boolean v1, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    .line 140
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 80
    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/am/OnePlusRamBoostManager;)Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusRamBoostManager;

    .line 80
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/OnePlusRamBoostManager;ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusRamBoostManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusRamBoostManager;->sendMsgIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/am/OnePlusRamBoostManager;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusRamBoostManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusRamBoostManager;->sendMsgIOPrefetchRecord(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/OnePlusRamBoostManager;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusRamBoostManager;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusRamBoostManager;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/OnePlusRamBoostManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusRamBoostManager;

    .line 80
    invoke-direct {p0}, Lcom/android/server/am/OnePlusRamBoostManager;->updateOnlineConfig()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/OnePlusRamBoostManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusRamBoostManager;

    .line 80
    invoke-direct {p0}, Lcom/android/server/am/OnePlusRamBoostManager;->sendMsgIOPrefetchPreload()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/am/OnePlusRamBoostManager;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusRamBoostManager;
    .param p1, "x1"    # J

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusRamBoostManager;->updateHighUsagePkg(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/OnePlusRamBoostManager;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusRamBoostManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusRamBoostManager;->writeHotCount(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/am/OnePlusRamBoostManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusRamBoostManager;
    .param p1, "x1"    # I

    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusRamBoostManager;->resumeHotCount(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/am/OnePlusRamBoostManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusRamBoostManager;

    .line 80
    invoke-direct {p0}, Lcom/android/server/am/OnePlusRamBoostManager;->disableRamBoost()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/OnePlusRamBoostManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusRamBoostManager;

    .line 80
    invoke-direct {p0}, Lcom/android/server/am/OnePlusRamBoostManager;->readXML()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/am/OnePlusRamBoostManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusRamBoostManager;
    .param p1, "x1"    # Z

    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusRamBoostManager;->updateSwitch(Z)V

    return-void
.end method

.method private connectServer()Landroid/net/LocalSocket;
    .locals 4

    .line 515
    :try_start_0
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string/jumbo v1, "ramboost"

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 516
    .local v0, "l":Landroid/net/LocalSocketAddress;
    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1}, Landroid/net/LocalSocket;-><init>()V

    .line 517
    .local v1, "s":Landroid/net/LocalSocket;
    const-string v2, "OnePlusSmartBoostManager"

    const-string/jumbo v3, "socket connect"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-virtual {v1, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 519
    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    return-object v1

    .line 522
    .end local v0    # "l":Landroid/net/LocalSocketAddress;
    .end local v1    # "s":Landroid/net/LocalSocket;
    :catch_0
    move-exception v0

    .line 523
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "OnePlusSmartBoostManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v1, 0x0

    return-object v1
.end method

.method private disableRamBoost()V
    .locals 6

    .line 500
    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusSmartBoostManager"

    const-string v1, "disableSmartBoost!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mAppPageCacheInfoMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 502
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mAppPageCacheInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 503
    .local v2, "pid":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mAppPageCacheInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusRamBoostManager$AppPageCacheInfo;

    .line 504
    .local v3, "arb":Lcom/android/server/am/OnePlusRamBoostManager$AppPageCacheInfo;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusRamBoostManager;->getEchoPath(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/OnePlusRamBoostManager;->echo(Ljava/lang/String;Ljava/lang/String;)Z

    .line 505
    .end local v2    # "pid":Ljava/lang/Integer;
    .end local v3    # "arb":Lcom/android/server/am/OnePlusRamBoostManager$AppPageCacheInfo;
    goto :goto_0

    .line 506
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mAppPageCacheInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 507
    monitor-exit v0

    .line 508
    return-void

    .line 507
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpList()V
    .locals 3

    .line 211
    const-string v0, "OnePlusSmartBoostManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPageCachePkgMap size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mPageCachePkgMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-string v0, "OnePlusSmartBoostManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mHighUsagePkgList size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mHighUsagePkgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void
.end method

.method private echo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 469
    const/4 v0, 0x0

    .line 470
    .local v0, "fos":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 471
    .local v1, "f":Ljava/io/File;
    const/4 v2, 0x1

    .line 473
    .local v2, "ret":Z
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 474
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 475
    const-string v3, "OnePlusSmartBoostManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception : file not exits :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    const/4 v3, 0x0

    .line 487
    if-eqz v0, :cond_0

    .line 488
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 489
    const/4 v0, 0x0

    goto :goto_0

    .line 491
    :catch_0
    move-exception v4

    .line 492
    .local v4, "ex":Ljava/io/IOException;
    const-string v5, "OnePlusSmartBoostManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO close failed : path="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",ex->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/4 v2, 0x0

    .end local v4    # "ex":Ljava/io/IOException;
    goto :goto_1

    .line 494
    :cond_0
    :goto_0
    nop

    .line 476
    :goto_1
    return v3

    .line 478
    :cond_1
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 479
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 480
    .local v3, "statebuffer":[B
    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 481
    sget-boolean v4, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "OnePlusSmartBoostManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "echo path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 487
    .end local v3    # "statebuffer":[B
    :cond_2
    nop

    .line 488
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 489
    :goto_2
    const/4 v0, 0x0

    goto :goto_4

    .line 491
    :catch_1
    move-exception v3

    .line 492
    .local v3, "ex":Ljava/io/IOException;
    const-string v4, "OnePlusSmartBoostManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    const-string v6, "IO close failed : path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",ex->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/4 v2, 0x0

    .line 495
    .end local v3    # "ex":Ljava/io/IOException;
    goto :goto_5

    .line 494
    :cond_3
    :goto_4
    goto :goto_5

    .line 486
    :catchall_0
    move-exception v3

    goto :goto_6

    .line 482
    :catch_2
    move-exception v3

    .line 483
    .restart local v3    # "ex":Ljava/io/IOException;
    :try_start_4
    const-string v4, "OnePlusSmartBoostManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "echo failed : path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",ex->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 484
    const/4 v2, 0x0

    .line 487
    .end local v3    # "ex":Ljava/io/IOException;
    if-eqz v0, :cond_3

    .line 488
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 491
    :catch_3
    move-exception v3

    .line 492
    .restart local v3    # "ex":Ljava/io/IOException;
    const-string v4, "OnePlusSmartBoostManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    .line 496
    .end local v3    # "ex":Ljava/io/IOException;
    :goto_5
    return v2

    .line 486
    :goto_6
    nop

    .line 487
    if-eqz v0, :cond_4

    .line 488
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 489
    const/4 v0, 0x0

    goto :goto_7

    .line 491
    :catch_4
    move-exception v4

    .line 492
    .restart local v4    # "ex":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO close failed : path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",ex->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OnePlusSmartBoostManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/4 v2, 0x0

    .end local v4    # "ex":Ljava/io/IOException;
    nop

    .line 494
    :cond_4
    :goto_7
    throw v3
.end method

.method private filterSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 272
    move-object v0, p1

    .line 273
    .local v0, "ret":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 274
    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->suffixList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 275
    .local v2, "regex":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 276
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    return-object v1

    .line 277
    .end local v2    # "regex":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 279
    :cond_1
    return-object v0
.end method

.method private getEchoPath(I)Ljava/lang/String;
    .locals 2
    .param p1, "pid"    # I

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/proc/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 432
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/page_hot_count"

    .line 433
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 434
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getHotCountFromHighList(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 444
    const/4 v0, 0x0

    .line 445
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mBlackHighUsageList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 446
    sget-boolean v1, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "OnePlusSmartBoostManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHotCountFromHighList # blacklist has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_0
    const-string v1, "0"

    return-object v1

    .line 449
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mHighUsagePkgList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 450
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mHighUsagePkgList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    .line 451
    sget-boolean v2, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "OnePlusSmartBoostManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHotCountFromHighList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "|index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_2
    if-ltz v0, :cond_4

    const/16 v2, 0x384

    if-lt v0, v2, :cond_3

    goto :goto_0

    .line 455
    :cond_3
    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 454
    :cond_4
    :goto_0
    const-string v2, "0"

    monitor-exit v1

    return-object v2

    .line 456
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static final getInstance()Lcom/android/server/am/OnePlusRamBoostManager;
    .locals 1

    .line 127
    sget-object v0, Lcom/android/server/am/OnePlusRamBoostManager;->mInstance:Lcom/android/server/am/OnePlusRamBoostManager;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-direct {v0}, Lcom/android/server/am/OnePlusRamBoostManager;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusRamBoostManager;->mInstance:Lcom/android/server/am/OnePlusRamBoostManager;

    .line 130
    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusRamBoostManager;->mInstance:Lcom/android/server/am/OnePlusRamBoostManager;

    return-object v0
.end method

.method private getPreloadString()Ljava/lang/String;
    .locals 5

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 621
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mIopPkgList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 622
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mIopPkgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    const/4 v2, 0x0

    monitor-exit v1

    return-object v2

    .line 623
    :cond_0
    const-string/jumbo v2, "iop_preload "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mIopPkgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 625
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .end local v3    # "str":Ljava/lang/String;
    goto :goto_0

    .line 627
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 627
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private getRamBoostSwitchStatus()Z
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "op_smartboost_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private isHighUsedPkg(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 438
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mHighUsagePkgList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 439
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mHighUsagePkgList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 440
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private readXML()I
    .locals 15

    .line 813
    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusSmartBoostManager"

    const-string/jumbo v1, "readXML"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/ramboost.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 815
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_2

    .line 816
    sget-boolean v1, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "OnePlusSmartBoostManager"

    const-string v3, "# readXml # file not exists"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_1
    return v2

    .line 819
    :cond_2
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 820
    .local v1, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v3, 0x0

    .line 821
    .local v3, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v4, 0x0

    .line 823
    .local v4, "doc":Lorg/w3c/dom/Document;
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    move-object v3, v5

    .line 824
    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v5

    move-object v4, v5

    .line 825
    const-string/jumbo v5, "ramboost"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 826
    .local v5, "nl":Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    .line 827
    .local v7, "nnm":Lorg/w3c/dom/NamedNodeMap;
    const-string/jumbo v8, "version"

    invoke-interface {v7, v8}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    .line 836
    .local v8, "version":Ljava/lang/String;
    const-string/jumbo v9, "pkg"

    invoke-interface {v4, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    move-object v5, v9

    .line 837
    if-nez v5, :cond_3

    .line 838
    const-string v9, "OnePlusSmartBoostManager"

    const-string v10, "# readXml # error # pkg nl = null"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 840
    :cond_3
    move-object v9, v7

    move v7, v6

    .line 840
    .local v7, "i":I
    .local v9, "nnm":Lorg/w3c/dom/NamedNodeMap;
    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v7, v10, :cond_5

    .line 841
    invoke-interface {v5, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    move-object v9, v10

    .line 842
    const-string/jumbo v10, "name"

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    .line 843
    .local v10, "pkgName":Ljava/lang/String;
    const-string/jumbo v11, "hotcount"

    invoke-interface {v9, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    .line 844
    .local v11, "hotCount":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mPageCachePkgMap:Ljava/util/HashMap;

    monitor-enter v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    :try_start_1
    iget-object v13, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mPageCachePkgMap:Ljava/util/HashMap;

    invoke-virtual {v13, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 847
    :try_start_2
    sget-boolean v12, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v12, :cond_4

    const-string v12, "OnePlusSmartBoostManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "PageCachePkgMap add # "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 840
    .end local v10    # "pkgName":Ljava/lang/String;
    .end local v11    # "hotCount":Ljava/lang/String;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 846
    .restart local v10    # "pkgName":Ljava/lang/String;
    .restart local v11    # "hotCount":Ljava/lang/String;
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6

    .line 851
    .end local v7    # "i":I
    .end local v10    # "pkgName":Ljava/lang/String;
    .end local v11    # "hotCount":Ljava/lang/String;
    :cond_5
    move-object v7, v9

    .line 851
    .end local v9    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .local v7, "nnm":Lorg/w3c/dom/NamedNodeMap;
    :goto_1
    const-string/jumbo v9, "iop"

    invoke-interface {v4, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    move-object v5, v9

    .line 852
    if-nez v5, :cond_6

    .line 853
    const-string v9, "OnePlusSmartBoostManager"

    const-string v10, "# readXml # error # iop nl = null"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 855
    :cond_6
    move-object v9, v7

    move v7, v6

    .line 855
    .local v7, "i":I
    .restart local v9    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    :goto_2
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v7, v10, :cond_8

    .line 856
    invoke-interface {v5, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    move-object v9, v10

    .line 857
    const-string/jumbo v10, "name"

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    .line 858
    .restart local v10    # "pkgName":Ljava/lang/String;
    sget-boolean v11, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v11, :cond_7

    const-string v11, "OnePlusSmartBoostManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IopPkgList add: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_7
    iget-object v11, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mIopPkgList:Ljava/util/ArrayList;

    monitor-enter v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 860
    :try_start_5
    iget-object v12, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mIopPkgList:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 861
    monitor-exit v11

    .line 855
    .end local v10    # "pkgName":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 861
    .restart local v10    # "pkgName":Ljava/lang/String;
    :catchall_1
    move-exception v6

    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 868
    .end local v5    # "nl":Lorg/w3c/dom/NodeList;
    .end local v7    # "i":I
    .end local v8    # "version":Ljava/lang/String;
    .end local v9    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .end local v10    # "pkgName":Ljava/lang/String;
    :cond_8
    :goto_3
    nop

    .line 869
    return v6

    .line 864
    :catch_0
    move-exception v5

    .line 865
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "OnePlusSmartBoostManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "# readXml # parse error ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 867
    return v2
.end method

.method private resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 12
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 683
    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusSmartBoostManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resolvePerfConfigFromJSON "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_0
    if-nez p1, :cond_1

    .line 685
    return-void

    .line 688
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 688
    .local v1, "index":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_14

    .line 689
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 690
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PkgMap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 691
    iget-object v3, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mPageCachePkgMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mPageCachePkgMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 693
    sget-boolean v4, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "OnePlusSmartBoostManager"

    const-string v5, "[OnlineConfig] clear PageCacheList"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 695
    :try_start_2
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 696
    .local v3, "pkgInfoJsonArray":Lorg/json/JSONArray;
    move v4, v0

    .line 696
    .local v4, "i":I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 697
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 698
    .local v5, "pkgInfoJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 700
    .local v6, "pkgName":Ljava/lang/String;
    const-string/jumbo v7, "hotcount"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 701
    .local v7, "hotCount":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 702
    iget-object v8, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mPageCachePkgMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 703
    :try_start_3
    iget-object v9, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mPageCachePkgMap:Ljava/util/HashMap;

    invoke-virtual {v9, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    sget-boolean v9, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v9, :cond_3

    const-string v9, "OnePlusSmartBoostManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[OnlineConfig] add pkg:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_3
    monitor-exit v8

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 696
    .end local v5    # "pkgInfoJsonObject":Lorg/json/JSONObject;
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "hotCount":Ljava/lang/String;
    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 694
    .end local v3    # "pkgInfoJsonArray":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    .line 709
    :cond_5
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "iop"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 710
    iget-object v3, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mIopPkgList:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 711
    :try_start_7
    iget-object v4, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mIopPkgList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 712
    sget-boolean v4, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v4, :cond_6

    const-string v4, "OnePlusSmartBoostManager"

    const-string v5, "[OnlineConfig] clear IopPkgList"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_6
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 714
    :try_start_8
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 715
    .local v3, "iopInfoJsonArray":Lorg/json/JSONArray;
    move v4, v0

    .line 715
    .restart local v4    # "i":I
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_9

    .line 716
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 717
    .local v5, "iopInfoJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 718
    .restart local v6    # "pkgName":Ljava/lang/String;
    if-eqz v6, :cond_8

    .line 719
    iget-object v7, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mIopPkgList:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 720
    :try_start_9
    iget-object v8, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mIopPkgList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    sget-boolean v8, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v8, :cond_7

    const-string v8, "OnePlusSmartBoostManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[OnlineConfig] add iop pkg: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_7
    monitor-exit v7

    goto :goto_4

    :catchall_2
    move-exception v0

    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 715
    .end local v5    # "iopInfoJsonObject":Lorg/json/JSONObject;
    .end local v6    # "pkgName":Ljava/lang/String;
    :cond_8
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 713
    .end local v3    # "iopInfoJsonArray":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :catchall_3
    move-exception v0

    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v0

    .line 726
    :cond_9
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "blackhigh"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 727
    iget-object v3, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mBlackHighUsageList:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 728
    :try_start_d
    iget-object v4, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mBlackHighUsageList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 729
    sget-boolean v4, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v4, :cond_a

    const-string v4, "OnePlusSmartBoostManager"

    const-string v5, "[OnlineConfig] clear mBlackHighUsageList"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_a
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 731
    :try_start_e
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 732
    .local v3, "blackJsonArray":Lorg/json/JSONArray;
    move v4, v0

    .line 732
    .restart local v4    # "i":I
    :goto_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_d

    .line 733
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 734
    .local v5, "blackJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 735
    .restart local v6    # "pkgName":Ljava/lang/String;
    if-eqz v6, :cond_c

    .line 736
    iget-object v7, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mBlackHighUsageList:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    .line 737
    :try_start_f
    iget-object v8, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mBlackHighUsageList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    sget-boolean v8, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v8, :cond_b

    const-string v8, "OnePlusSmartBoostManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[OnlineConfig] add black high-usage pkg: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_b
    monitor-exit v7

    goto :goto_6

    :catchall_4
    move-exception v0

    monitor-exit v7
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    throw v0
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    .line 732
    .end local v5    # "blackJsonObject":Lorg/json/JSONObject;
    .end local v6    # "pkgName":Ljava/lang/String;
    :cond_c
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 730
    .end local v3    # "blackJsonArray":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :catchall_5
    move-exception v0

    :try_start_11
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :try_start_12
    throw v0

    .line 743
    :cond_d
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "blackiop"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 744
    iget-object v3, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mBlackIopList:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    .line 745
    :try_start_13
    iget-object v4, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mBlackIopList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 746
    sget-boolean v4, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v4, :cond_e

    const-string v4, "OnePlusSmartBoostManager"

    const-string v5, "[OnlineConfig] clear mBlackIopList"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_e
    monitor-exit v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 748
    :try_start_14
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 749
    .restart local v3    # "blackJsonArray":Lorg/json/JSONArray;
    move v4, v0

    .line 749
    .restart local v4    # "i":I
    :goto_7
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_11

    .line 750
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 751
    .restart local v5    # "blackJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 752
    .restart local v6    # "pkgName":Ljava/lang/String;
    if-eqz v6, :cond_10

    .line 753
    iget-object v7, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mBlackIopList:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    .line 754
    :try_start_15
    iget-object v8, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mBlackIopList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    sget-boolean v8, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v8, :cond_f

    const-string v8, "OnePlusSmartBoostManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[OnlineConfig] add black iop pkg: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_f
    monitor-exit v7

    goto :goto_8

    :catchall_6
    move-exception v0

    monitor-exit v7
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    :try_start_16
    throw v0
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0

    .line 749
    .end local v5    # "blackJsonObject":Lorg/json/JSONObject;
    .end local v6    # "pkgName":Ljava/lang/String;
    :cond_10
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 747
    .end local v3    # "blackJsonArray":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :catchall_7
    move-exception v0

    :try_start_17
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    :try_start_18
    throw v0

    .line 760
    :cond_11
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "switch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 761
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 762
    .local v3, "onlineEnable":Ljava/lang/String;
    const-string/jumbo v4, "persist.sys.ramboost.olhotcount"

    invoke-direct {p0, v4, v3}, Lcom/android/server/am/OnePlusRamBoostManager;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    const-string v4, "OnePlusSmartBoostManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] smartboost switch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    .end local v3    # "onlineEnable":Ljava/lang/String;
    :cond_12
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ioppreload"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 766
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 767
    .local v3, "onlineIop":Ljava/lang/String;
    const-string/jumbo v4, "persist.sys.ramboost.oliop"

    invoke-direct {p0, v4, v3}, Lcom/android/server/am/OnePlusRamBoostManager;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const-string v4, "OnePlusSmartBoostManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] smartboost ioppreload: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "onlineIop":Ljava/lang/String;
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 771
    .end local v1    # "index":I
    :cond_14
    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusRamBoostManager;->updateSwitch(Z)V

    .line 772
    const-string v0, "OnePlusSmartBoostManager"

    const-string v1, "[OnlineConfig] smartboost updated complete"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_18} :catch_1
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0

    goto :goto_9

    .line 775
    :catch_0
    move-exception v0

    .line 776
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OnePlusSmartBoostManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] smartboost Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_a

    .line 773
    :catch_1
    move-exception v0

    .line 774
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "OnePlusSmartBoostManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] smartboost JSONException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_9
    nop

    .line 778
    :goto_a
    return-void
.end method

.method private resumeHotCount(I)Z
    .locals 4
    .param p1, "pid"    # I

    .line 421
    const/4 v0, 0x0

    .line 422
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mAppPageCacheInfoMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 423
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mAppPageCacheInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 424
    const/4 v0, 0x1

    .line 425
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    sget-boolean v1, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const-string v1, "OnePlusSmartBoostManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resumeHotCount: pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_2
    return v0

    .line 425
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private sendMsgIOPrefetchPreload()I
    .locals 8

    .line 593
    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->IOPPRELOAD:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 594
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/OnePlusRamBoostManager;->getPreloadString()Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, "cmd":Ljava/lang/String;
    if-nez v0, :cond_1

    return v1

    .line 596
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 599
    .local v2, "data":[B
    invoke-direct {p0}, Lcom/android/server/am/OnePlusRamBoostManager;->connectServer()Landroid/net/LocalSocket;

    move-result-object v3

    move-object v4, v3

    .line 599
    .local v4, "s":Landroid/net/LocalSocket;
    if-nez v3, :cond_2

    .line 600
    return v1

    .line 603
    :cond_2
    :try_start_0
    invoke-virtual {v4}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 604
    .local v3, "out":Ljava/io/OutputStream;
    sget-boolean v5, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "OnePlusSmartBoostManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "iop_preload=>\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_3
    array-length v5, v2

    int-to-short v5, v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusRamBoostManager;->shortToBytes(S)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 606
    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    .line 608
    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    .end local v3    # "out":Ljava/io/OutputStream;
    nop

    .line 614
    const/4 v1, 0x0

    return v1

    .line 610
    :catch_0
    move-exception v3

    .line 611
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 612
    return v1
.end method

.method private sendMsgIOPrefetchRecord(Ljava/lang/String;)I
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "iop_record "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, "cmd":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 574
    .local v1, "data":[B
    invoke-direct {p0}, Lcom/android/server/am/OnePlusRamBoostManager;->connectServer()Landroid/net/LocalSocket;

    move-result-object v2

    move-object v3, v2

    .line 574
    .local v3, "s":Landroid/net/LocalSocket;
    const/4 v4, -0x1

    if-nez v2, :cond_0

    .line 575
    return v4

    .line 578
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 579
    .local v2, "out":Ljava/io/OutputStream;
    const-string v5, "OnePlusSmartBoostManager"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    array-length v5, v1

    int-to-short v5, v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusRamBoostManager;->shortToBytes(S)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/OutputStream;->write([B)V

    .line 581
    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 583
    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    .end local v2    # "out":Ljava/io/OutputStream;
    nop

    .line 589
    const/4 v2, 0x0

    return v2

    .line 585
    :catch_0
    move-exception v2

    .line 586
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 587
    return v4
.end method

.method private sendMsgIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "pid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/lang/String;

    .line 536
    const/4 v0, 0x0

    .line 537
    .local v0, "inIopPkgList":Z
    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mIopPkgList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 538
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mIopPkgList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .line 539
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "iop_start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 541
    .local v1, "cmd":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 544
    .local v2, "data":[B
    invoke-direct {p0}, Lcom/android/server/am/OnePlusRamBoostManager;->connectServer()Landroid/net/LocalSocket;

    move-result-object v3

    move-object v4, v3

    .line 544
    .local v4, "s":Landroid/net/LocalSocket;
    const/4 v5, -0x1

    if-nez v3, :cond_0

    .line 545
    return v5

    .line 548
    :cond_0
    :try_start_1
    const-string v3, "OnePlusSmartBoostManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cmd: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const-string v3, "OnePlusSmartBoostManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-virtual {v4}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 551
    .local v3, "out":Ljava/io/OutputStream;
    array-length v6, v2

    int-to-short v6, v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusRamBoostManager;->shortToBytes(S)[B

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v8, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 552
    array-length v6, v2

    invoke-virtual {v3, v2, v8, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 553
    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 557
    .end local v3    # "out":Ljava/io/OutputStream;
    nop

    .line 558
    if-lez p1, :cond_1

    .line 559
    iget-object v3, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    const/16 v5, 0x9

    invoke-virtual {v3, v5}, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 560
    .local v3, "msg":Landroid/os/Message;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 561
    .local v5, "b":Landroid/os/Bundle;
    const-string/jumbo v6, "pkgName"

    invoke-virtual {v5, v6, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    invoke-virtual {v3, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 563
    iget-object v6, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    const-wide/16 v9, 0x2710

    invoke-virtual {v6, v3, v9, v10}, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 565
    .end local v3    # "msg":Landroid/os/Message;
    .end local v5    # "b":Landroid/os/Bundle;
    :cond_1
    return v8

    .line 554
    :catch_0
    move-exception v3

    .line 555
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 556
    return v5

    .line 539
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v2    # "data":[B
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "s":Landroid/net/LocalSocket;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private setPropValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 781
    const-string v0, ""

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 782
    .local v0, "curValue":Ljava/lang/String;
    const-string v1, "OnePlusSmartBoostManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setprop:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " |value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " |curValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 784
    return-void

    .line 788
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    goto :goto_0

    .line 789
    :catch_0
    move-exception v1

    .line 790
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OnePlusSmartBoostManager"

    const-string v3, "failed to set system property"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 793
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static shortToBytes(S)[B
    .locals 3
    .param p0, "n"    # S

    .line 529
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 530
    .local v0, "b":[B
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 531
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 532
    return-object v0
.end method

.method private updateHighUsagePkg(J)V
    .locals 3
    .param p1, "timeout"    # J

    .line 460
    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusSmartBoostManager"

    const-string/jumbo v1, "updateHighUsagePkg"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mHighUsagePkgList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 463
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->usageMgr:Lcom/android/server/am/RestartProcessManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/RestartProcessManager;->getHighUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mHighUsagePkgList:Ljava/util/ArrayList;

    .line 464
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 466
    return-void

    .line 464
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateOnlineConfig()V
    .locals 3

    .line 633
    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusSmartBoostManager"

    const-string/jumbo v1, "updateOnlineConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_0
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mContext:Landroid/content/Context;

    const-string v2, "RamBoost"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 635
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusRamBoostManager;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    .line 636
    return-void
.end method

.method private updateSwitch(Z)V
    .locals 3
    .param p1, "booting"    # Z

    .line 153
    invoke-direct {p0}, Lcom/android/server/am/OnePlusRamBoostManager;->getRamBoostSwitchStatus()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->mUserSwitch:Z

    .line 154
    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->mUserSwitch:Z

    if-nez v0, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/android/server/am/OnePlusRamBoostManager;->disableRamBoost()V

    .line 158
    :cond_0
    const-string/jumbo v0, "persist.sys.ramboost.olhotcount"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->mUserSwitch:Z

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->ENABLE:Z

    .line 159
    const-string/jumbo v0, "persist.sys.ramboost.oliop"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v2, Lcom/android/server/am/OnePlusRamBoostManager;->mUserSwitch:Z

    nop

    :cond_2
    sput-boolean v2, Lcom/android/server/am/OnePlusRamBoostManager;->IOPPRELOAD:Z

    .line 161
    const-string/jumbo v0, "persist.sys.ramboost.enable"

    sget-boolean v1, Lcom/android/server/am/OnePlusRamBoostManager;->ENABLE:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OnePlusRamBoostManager;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string/jumbo v0, "persist.sys.ramboost.ioppreload"

    sget-boolean v1, Lcom/android/server/am/OnePlusRamBoostManager;->IOPPRELOAD:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OnePlusRamBoostManager;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    if-eqz p1, :cond_4

    const-string v0, "/proc/sys/vm/page_cache_reside_switch"

    sget-boolean v1, Lcom/android/server/am/OnePlusRamBoostManager;->ENABLE:Z

    if-eqz v1, :cond_3

    const-string v1, "1"

    goto :goto_1

    :cond_3
    const-string v1, "0"

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OnePlusRamBoostManager;->echo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 165
    const-string v0, "OnePlusSmartBoostManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reside switch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusRamBoostManager;->ENABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_4
    return-void
.end method

.method private writeHotCount(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "hotCount"    # Ljava/lang/String;
    .param p3, "pid"    # I

    .line 399
    const/4 v0, 0x0

    .line 400
    .local v0, "ret":Z
    if-eqz p2, :cond_2

    .line 401
    invoke-direct {p0, p3}, Lcom/android/server/am/OnePlusRamBoostManager;->getEchoPath(I)Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, "path":Ljava/lang/String;
    invoke-direct {p0, v1, p2}, Lcom/android/server/am/OnePlusRamBoostManager;->echo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 403
    const-string v2, "OnePlusSmartBoostManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeHotCount FAILED!!! # "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",path= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_0
    const/4 v0, 0x1

    .line 406
    sget-boolean v2, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "OnePlusSmartBoostManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeHotCount # "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",path= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .end local v1    # "path":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 408
    :cond_2
    sget-boolean v1, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "OnePlusSmartBoostManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeHotCount # no "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in PkgMap."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    const-string v1, "0"

    if-eq v1, p2, :cond_4

    .line 412
    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mAppPageCacheInfoMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 413
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mAppPageCacheInfoMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/android/server/am/OnePlusRamBoostManager$AppPageCacheInfo;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/android/server/am/OnePlusRamBoostManager$AppPageCacheInfo;-><init>(Lcom/android/server/am/OnePlusRamBoostManager;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 417
    :cond_4
    :goto_1
    return v0
.end method


# virtual methods
.method public config(Ljava/lang/Object;)I
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 193
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 194
    .local v0, "cmd":Ljava/lang/String;
    const-string v1, "DEBUG true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 195
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    goto :goto_0

    .line 196
    :cond_0
    const-string v1, "DEBUG false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    sput-boolean v2, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    goto :goto_0

    .line 198
    :cond_1
    const-string/jumbo v1, "update highlist"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->removeMessages(I)V

    .line 200
    const-wide/32 v3, 0x5265c00

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusRamBoostManager;->updateHighUsagePkg(J)V

    .line 201
    const-string v1, "OnePlusSmartBoostManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mHighUsagePkgList size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mHighUsagePkgList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 202
    :cond_2
    const-string v1, "dump List"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 203
    invoke-direct {p0}, Lcom/android/server/am/OnePlusRamBoostManager;->dumpList()V

    goto :goto_0

    .line 205
    :cond_3
    const-string v1, "OnePlusSmartBoostManager"

    const-string/jumbo v3, "invalid config cmd!"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :goto_0
    return v2
.end method

.method public initEnv(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 143
    iput-object p1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mContext:Landroid/content/Context;

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mResolver:Landroid/content/ContentResolver;

    .line 145
    new-instance v0, Lcom/android/server/am/OnePlusRamBoostManager$SwitchContentObserver;

    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/am/OnePlusRamBoostManager$SwitchContentObserver;-><init>(Lcom/android/server/am/OnePlusRamBoostManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mSwitchContentObserver:Lcom/android/server/am/OnePlusRamBoostManager$SwitchContentObserver;

    .line 146
    const-string/jumbo v0, "op_smartboost_enable"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->URI_RAMBOOST_SWITCH:Landroid/net/Uri;

    .line 147
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->sendMessage(Landroid/os/Message;)Z

    .line 148
    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->getInstance()Lcom/android/server/am/RestartProcessManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->usageMgr:Lcom/android/server/am/RestartProcessManager;

    .line 149
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->URI_RAMBOOST_SWITCH:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mSwitchContentObserver:Lcom/android/server/am/OnePlusRamBoostManager$SwitchContentObserver;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 150
    return-void
.end method

.method public initOnlineConfig(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 216
    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusSmartBoostManager"

    const-string/jumbo v1, "initOnlineConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    new-instance v3, Lcom/android/server/am/OnePlusRamBoostManager$MyConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusRamBoostManager$MyConfigUpdater;-><init>(Lcom/android/server/am/OnePlusRamBoostManager;)V

    const-string v4, "RamBoost"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 218
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 219
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->sendMessage(Landroid/os/Message;)Z

    .line 220
    return-void
.end method

.method public notifyIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/lang/String;

    .line 283
    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->IOPPRELOAD:Z

    if-nez v0, :cond_0

    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mBlackIopList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OnePlusSmartBoostManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyIOPrefetchStart # iop black pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_1
    return-void

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 289
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 290
    .local v1, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "pid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 291
    const-string/jumbo v2, "pkgName"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v2, "codePath"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 294
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 295
    return-void
.end method

.method public notifyRamBoost(Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "start"    # Z

    .line 235
    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->ENABLE:Z

    if-nez v0, :cond_0

    return-void

    .line 236
    :cond_0
    const/4 v0, 0x0

    .line 237
    .local v0, "ret":Z
    if-eqz p3, :cond_5

    .line 238
    const/4 v1, 0x0

    .line 239
    .local v1, "hotCount":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mPageCachePkgMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 240
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mPageCachePkgMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusRamBoostManager;->filterSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v1, v3

    .line 241
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    if-nez v1, :cond_1

    .line 243
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusRamBoostManager;->getHotCountFromHighList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 245
    :cond_1
    if-eqz v1, :cond_2

    .line 246
    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 247
    .local v2, "msg":Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 248
    .local v3, "b":Landroid/os/Bundle;
    const-string/jumbo v4, "pkgName"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string/jumbo v4, "hotCount"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string/jumbo v4, "pid"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 251
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 252
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 253
    const/4 v0, 0x1

    .line 255
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "b":Landroid/os/Bundle;
    :cond_2
    sget-boolean v2, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-nez v2, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    const-string v2, "OnePlusSmartBoostManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeHotCount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .end local v1    # "hotCount":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 241
    .restart local v1    # "hotCount":Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 257
    .end local v1    # "hotCount":Ljava/lang/String;
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mAppPageCacheInfoMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 258
    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mAppPageCacheInfoMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 259
    const/4 v0, 0x1

    .line 260
    :cond_6
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 261
    sget-boolean v1, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-nez v1, :cond_7

    if-eqz v0, :cond_8

    :cond_7
    const-string v1, "OnePlusSmartBoostManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resumeHotCount: pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_8
    :goto_0
    return-void

    .line 260
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public start(Ljava/lang/Object;)I
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 176
    const-string v0, "OnePlusSmartBoostManager"

    const-string v1, "OIMC enable smartboost!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public stop(Ljava/lang/Object;)I
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 184
    const-string v0, "OnePlusSmartBoostManager"

    const-string v1, "OIMC disable smartboost!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->ENABLE:Z

    .line 186
    sput-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->IOPPRELOAD:Z

    .line 187
    return v0
.end method
