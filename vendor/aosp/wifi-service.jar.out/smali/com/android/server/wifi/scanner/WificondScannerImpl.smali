.class public Lcom/android/server/wifi/scanner/WificondScannerImpl;
.super Lcom/android/server/wifi/scanner/WifiScannerImpl;
.source "WificondScannerImpl.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;,
        Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MAX_APS_PER_SCAN:I = 0x20

.field public static final MAX_HIDDEN_NETWORK_IDS_PER_SCAN:I = 0x10

.field private static final MAX_SCAN_BUCKETS:I = 0x10

.field private static final SCAN_BUFFER_CAPACITY:I = 0xa

.field private static final SCAN_TIMEOUT_MS:J = 0x3a98L

.field private static final TAG:Ljava/lang/String; = "WificondScannerImpl"

.field public static final TIMEOUT_ALARM_TAG:Ljava/lang/String; = "WificondScannerImpl Scan Timeout"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private final mContext:Landroid/content/Context;

.field private final mEventHandler:Landroid/os/Handler;

.field private final mHwPnoScanSupported:Z

.field private final mIfaceName:Ljava/lang/String;

.field private mLastPnoScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;

.field private mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

.field private mLatestSingleScanResult:Landroid/net/wifi/WifiScanner$ScanData;

.field private mNativePnoScanResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeScanResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation
.end field

.field private mScanTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mSettingsLock"
    .end annotation
.end field

.field private final mSettingsLock:Ljava/lang/Object;

.field private final mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiMonitor;Lcom/android/server/wifi/scanner/ChannelHelper;Landroid/os/Looper;Lcom/android/server/wifi/Clock;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ifaceName"    # Ljava/lang/String;
    .param p3, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p4, "wifiMonitor"    # Lcom/android/server/wifi/WifiMonitor;
    .param p5, "channelHelper"    # Lcom/android/server/wifi/scanner/ChannelHelper;
    .param p6, "looper"    # Landroid/os/Looper;
    .param p7, "clock"    # Lcom/android/server/wifi/Clock;

    .line 103
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScannerImpl;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    .line 80
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanData;

    const/4 v1, 0x0

    new-array v2, v1, [Landroid/net/wifi/ScanResult;

    invoke-direct {v0, v1, v1, v2}, Landroid/net/wifi/WifiScanner$ScanData;-><init>(II[Landroid/net/wifi/ScanResult;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLatestSingleScanResult:Landroid/net/wifi/WifiScanner$ScanData;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    .line 86
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastPnoScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;

    .line 104
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mContext:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mIfaceName:Ljava/lang/String;

    .line 106
    iput-object p3, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 107
    iput-object p4, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    .line 108
    iput-object p5, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    .line 109
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p6, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mEventHandler:Landroid/os/Handler;

    .line 111
    iput-object p7, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mClock:Lcom/android/server/wifi/Clock;

    .line 114
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mHwPnoScanSupported:Z

    .line 117
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mIfaceName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mEventHandler:Landroid/os/Handler;

    const v2, 0x24011

    invoke-virtual {p4, v0, v2, v1}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 119
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mIfaceName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mEventHandler:Landroid/os/Handler;

    const v2, 0x24012

    invoke-virtual {p4, v0, v2, v1}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 121
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mIfaceName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mEventHandler:Landroid/os/Handler;

    const v2, 0x24005

    invoke-virtual {p4, v0, v2, v1}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/scanner/WificondScannerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WificondScannerImpl;

    .line 55
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->handleScanTimeout()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wifi/scanner/WificondScannerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WificondScannerImpl;

    .line 55
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->reportScanFailure()V

    return-void
.end method

.method private cancelScanTimeout()V
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mScanTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mScanTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 300
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mScanTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 302
    :cond_0
    monitor-exit v0

    .line 303
    return-void

    .line 302
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleScanTimeout()V
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    :try_start_0
    const-string v1, "WificondScannerImpl"

    const-string v2, "Timed out waiting for scan result from wificond"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->reportScanFailure()V

    .line 271
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mScanTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 272
    monitor-exit v0

    .line 273
    return-void

    .line 272
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static isAllChannelsScanned(Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;)Z
    .locals 2
    .param p0, "channelCollection"    # Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    .line 368
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->containsBand(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 369
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->containsBand(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 368
    :goto_0
    return v0
.end method

.method private isHwPnoScanRequired(Z)Z
    .locals 1
    .param p1, "isConnectedPno"    # Z

    .line 440
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mHwPnoScanSupported:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$dump$0(Lcom/android/server/wifi/ScanDetail;)Landroid/net/wifi/ScanResult;
    .locals 1
    .param p0, "r"    # Lcom/android/server/wifi/ScanDetail;

    .line 495
    invoke-virtual {p0}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$dump$1(Lcom/android/server/wifi/ScanDetail;)Landroid/net/wifi/ScanResult;
    .locals 1
    .param p0, "r"    # Lcom/android/server/wifi/ScanDetail;

    .line 502
    invoke-virtual {p0}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v0

    return-object v0
.end method

.method private pollLatestScanData()V
    .locals 11

    .line 373
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 374
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    if-nez v1, :cond_0

    .line 376
    monitor-exit v0

    return-void

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->getScanResults(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mNativeScanResults:Ljava/util/ArrayList;

    .line 380
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v1, "singleScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v2, 0x0

    .line 382
    .local v2, "numFilteredScanResults":I
    const/4 v3, 0x0

    move v4, v2

    move v2, v3

    .local v2, "i":I
    .local v4, "numFilteredScanResults":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mNativeScanResults:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 383
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mNativeScanResults:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/ScanDetail;

    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v5

    .line 384
    .local v5, "result":Landroid/net/wifi/ScanResult;
    invoke-static {v5}, Lcom/android/server/wifi/WifiGbk;->processScanResult(Landroid/net/wifi/ScanResult;)Z

    .line 385
    iget-wide v6, v5, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 386
    .local v6, "timestamp_ms":J
    iget-object v8, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-wide v8, v8, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->startTime:J

    cmp-long v8, v6, v8

    if-lez v8, :cond_1

    .line 387
    iget-object v8, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-object v8, v8, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->singleScanFreqs:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    iget v9, v5, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->containsChannel(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 389
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 392
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 382
    .end local v5    # "result":Landroid/net/wifi/ScanResult;
    .end local v6    # "timestamp_ms":J
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 395
    .end local v2    # "i":I
    :cond_3
    if-eqz v4, :cond_4

    .line 396
    const-string v2, "WificondScannerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Filtering out "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " scan results."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_4
    invoke-static {}, Lcom/android/server/wifi/WifiGbk;->ageBssCache()V

    .line 400
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-object v2, v2, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    if-eqz v2, :cond_6

    .line 401
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-boolean v2, v2, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->reportSingleScanFullResults:Z

    if-eqz v2, :cond_5

    .line 402
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 404
    .local v5, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v6, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-object v6, v6, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    invoke-interface {v6, v5, v3}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onFullScanResult(Landroid/net/wifi/ScanResult;I)V

    .line 406
    .end local v5    # "scanResult":Landroid/net/wifi/ScanResult;
    goto :goto_2

    .line 408
    :cond_5
    sget-object v2, Lcom/android/server/wifi/scanner/WificondScannerImpl;->SCAN_RESULT_SORT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 409
    new-instance v2, Landroid/net/wifi/WifiScanner$ScanData;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-object v5, v5, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->singleScanFreqs:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    .line 410
    invoke-static {v5}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->isAllChannelsScanned(Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;)Z

    move-result v9

    .line 411
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/net/wifi/ScanResult;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, [Landroid/net/wifi/ScanResult;

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Landroid/net/wifi/WifiScanner$ScanData;-><init>(IIIZ[Landroid/net/wifi/ScanResult;)V

    iput-object v2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLatestSingleScanResult:Landroid/net/wifi/WifiScanner$ScanData;

    .line 412
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-object v2, v2, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 413
    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanStatus(I)V

    .line 416
    :cond_6
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    .line 417
    .end local v1    # "singleScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v4    # "numFilteredScanResults":I
    monitor-exit v0

    .line 418
    return-void

    .line 417
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private pollLatestScanDataForPno()V
    .locals 9

    .line 330
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastPnoScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;

    if-nez v1, :cond_0

    .line 333
    monitor-exit v0

    return-void

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->getPnoScanResults(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mNativePnoScanResults:Ljava/util/ArrayList;

    .line 336
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v1, "hwPnoScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v2, 0x0

    .line 338
    .local v2, "numFilteredScanResults":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mNativePnoScanResults:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 339
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mNativePnoScanResults:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/ScanDetail;

    invoke-virtual {v4}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v4

    .line 340
    .local v4, "result":Landroid/net/wifi/ScanResult;
    invoke-static {v4}, Lcom/android/server/wifi/WifiGbk;->processScanResult(Landroid/net/wifi/ScanResult;)Z

    .line 341
    iget-wide v5, v4, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 342
    .local v5, "timestamp_ms":J
    iget-object v7, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastPnoScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;

    iget-wide v7, v7, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;->startTime:J

    cmp-long v7, v5, v7

    if-lez v7, :cond_1

    .line 343
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 345
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 338
    .end local v4    # "result":Landroid/net/wifi/ScanResult;
    .end local v5    # "timestamp_ms":J
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 349
    .end local v3    # "i":I
    :cond_2
    if-eqz v2, :cond_3

    .line 350
    const-string v3, "WificondScannerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Filtering out "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " pno scan results."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastPnoScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;

    iget-object v3, v3, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;->pnoScanEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    if-eqz v3, :cond_4

    .line 354
    nop

    .line 355
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/net/wifi/ScanResult;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/wifi/ScanResult;

    .line 356
    .local v3, "pnoScanResultsArray":[Landroid/net/wifi/ScanResult;
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastPnoScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;

    iget-object v4, v4, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;->pnoScanEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    invoke-interface {v4, v3}, Lcom/android/server/wifi/WifiNative$PnoEventHandler;->onPnoNetworkFound([Landroid/net/wifi/ScanResult;)V

    .line 358
    .end local v1    # "hwPnoScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v2    # "numFilteredScanResults":I
    .end local v3    # "pnoScanResultsArray":[Landroid/net/wifi/ScanResult;
    :cond_4
    monitor-exit v0

    .line 359
    return-void

    .line 358
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private reportPnoScanFailure()V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 319
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastPnoScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;

    if-eqz v1, :cond_1

    .line 320
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastPnoScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;

    iget-object v1, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;->pnoScanEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    if-eqz v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastPnoScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;

    iget-object v1, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;->pnoScanEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    invoke-interface {v1}, Lcom/android/server/wifi/WifiNative$PnoEventHandler;->onPnoScanFailed()V

    .line 324
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastPnoScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;

    .line 326
    :cond_1
    monitor-exit v0

    .line 327
    return-void

    .line 326
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private reportScanFailure()V
    .locals 3

    .line 306
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    if-eqz v1, :cond_1

    .line 308
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-object v1, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-object v1, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    const/4 v2, 0x3

    .line 310
    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanStatus(I)V

    .line 312
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    .line 314
    :cond_1
    monitor-exit v0

    .line 315
    return-void

    .line 314
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startHwPnoScan(Lcom/android/server/wifi/WifiNative$PnoSettings;)Z
    .locals 2
    .param p1, "pnoSettings"    # Lcom/android/server/wifi/WifiNative$PnoSettings;

    .line 427
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiNative;->startPnoScan(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$PnoSettings;)Z

    move-result v0

    return v0
.end method

.method private stopHwPnoScan()V
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->stopPnoScan(Ljava/lang/String;)Z

    .line 432
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 5

    .line 127
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->stopHwPnoScan()V

    .line 129
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    .line 130
    iput-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastPnoScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;

    .line 131
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mIfaceName:Ljava/lang/String;

    const v3, 0x24011

    iget-object v4, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wifi/WifiMonitor;->deregisterHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 133
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mIfaceName:Ljava/lang/String;

    const v3, 0x24012

    iget-object v4, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wifi/WifiMonitor;->deregisterHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 135
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mIfaceName:Ljava/lang/String;

    const v3, 0x24005

    iget-object v4, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wifi/WifiMonitor;->deregisterHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 137
    monitor-exit v0

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 490
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 491
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v1

    .line 492
    .local v1, "nowMs":J
    const-string v3, "Latest native scan results:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 493
    iget-object v3, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mNativeScanResults:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 494
    iget-object v3, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mNativeScanResults:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/scanner/-$$Lambda$WificondScannerImpl$CSjtYSyNiQ_mC6mOyQ4Gpky-lqY;->INSTANCE:Lcom/android/server/wifi/scanner/-$$Lambda$WificondScannerImpl$CSjtYSyNiQ_mC6mOyQ4Gpky-lqY;

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 496
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 497
    .local v3, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-static {p2, v3, v1, v2}, Lcom/android/server/wifi/util/ScanResultUtil;->dumpScanResults(Ljava/io/PrintWriter;Ljava/util/List;J)V

    .line 499
    .end local v3    # "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_0
    const-string v3, "Latest native pno scan results:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 500
    iget-object v3, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mNativePnoScanResults:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 501
    iget-object v3, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mNativePnoScanResults:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/scanner/-$$Lambda$WificondScannerImpl$VfxaUtYlcuU7--Z28abhvk42O2k;->INSTANCE:Lcom/android/server/wifi/scanner/-$$Lambda$WificondScannerImpl$VfxaUtYlcuU7--Z28abhvk42O2k;

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 503
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 504
    .local v3, "pnoScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-static {p2, v3, v1, v2}, Lcom/android/server/wifi/util/ScanResultUtil;->dumpScanResults(Ljava/io/PrintWriter;Ljava/util/List;J)V

    .line 506
    .end local v1    # "nowMs":J
    .end local v3    # "pnoScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_1
    monitor-exit v0

    .line 507
    return-void

    .line 506
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getChannelHelper()Lcom/android/server/wifi/scanner/ChannelHelper;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    return-object v0
.end method

.method public getLatestBatchedScanResults(Z)[Landroid/net/wifi/WifiScanner$ScanData;
    .locals 1
    .param p1, "flush"    # Z

    .line 423
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLatestSingleScanResults()Landroid/net/wifi/WifiScanner$ScanData;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLatestSingleScanResult:Landroid/net/wifi/WifiScanner$ScanData;

    return-object v0
.end method

.method public getScanCapabilities(Lcom/android/server/wifi/WifiNative$ScanCapabilities;)Z
    .locals 1
    .param p1, "capabilities"    # Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    .line 142
    const v0, 0x7fffffff

    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_scan_cache_size:I

    .line 143
    const/16 v0, 0x10

    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_scan_buckets:I

    .line 144
    const/16 v0, 0x20

    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_ap_cache_per_scan:I

    .line 145
    const/16 v0, 0x8

    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_rssi_sample_size:I

    .line 146
    const/16 v0, 0xa

    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_scan_reporting_threshold:I

    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 277
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x24005

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 284
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->pollLatestScanDataForPno()V

    .line 285
    goto :goto_0

    .line 279
    :pswitch_1
    const-string v0, "WificondScannerImpl"

    const-string v1, "Scan failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->cancelScanTimeout()V

    .line 281
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->reportScanFailure()V

    .line 282
    goto :goto_0

    .line 287
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->cancelScanTimeout()V

    .line 288
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->pollLatestScanData()V

    .line 289
    nop

    .line 293
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x24011
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isHwPnoSupported(Z)Z
    .locals 1
    .param p1, "isConnectedPno"    # Z

    .line 485
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->isHwPnoScanRequired(Z)Z

    move-result v0

    return v0
.end method

.method public pauseBatchedScan()V
    .locals 2

    .line 259
    const-string v0, "WificondScannerImpl"

    const-string v1, "pauseBatchedScan() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void
.end method

.method public resetHwPnoList()Z
    .locals 3

    .line 470
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 471
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastPnoScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;

    if-nez v1, :cond_0

    .line 472
    const-string v1, "WificondScannerImpl"

    const-string v2, "No PNO scan running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 475
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastPnoScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;

    .line 477
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->stopHwPnoScan()V

    .line 478
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 479
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public restartBatchedScan()V
    .locals 2

    .line 264
    const-string v0, "WificondScannerImpl"

    const-string v1, "restartBatchedScan() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void
.end method

.method public setHwPnoList(Lcom/android/server/wifi/WifiNative$PnoSettings;Lcom/android/server/wifi/WifiNative$PnoEventHandler;)Z
    .locals 5
    .param p1, "settings"    # Lcom/android/server/wifi/WifiNative$PnoSettings;
    .param p2, "eventHandler"    # Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    .line 446
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 447
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastPnoScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 448
    const-string v1, "WificondScannerImpl"

    const-string v3, "Already running a PNO scan"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    monitor-exit v0

    return v2

    .line 451
    :cond_0
    iget-boolean v1, p1, Lcom/android/server/wifi/WifiNative$PnoSettings;->isConnected:Z

    invoke-direct {p0, v1}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->isHwPnoScanRequired(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 452
    monitor-exit v0

    return v2

    .line 455
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->startHwPnoScan(Lcom/android/server/wifi/WifiNative$PnoSettings;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 456
    new-instance v1, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;

    iget-object v2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mClock:Lcom/android/server/wifi/Clock;

    .line 457
    invoke-virtual {v2}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v2

    iget-object v4, p1, Lcom/android/server/wifi/WifiNative$PnoSettings;->networkList:[Lcom/android/server/wifi/WifiNative$PnoNetwork;

    invoke-direct {v1, v2, v3, v4, p2}, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;-><init>(J[Lcom/android/server/wifi/WifiNative$PnoNetwork;Lcom/android/server/wifi/WifiNative$PnoEventHandler;)V

    iput-object v1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastPnoScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastPnoScanSettings;

    goto :goto_0

    .line 461
    :cond_2
    const-string v1, "WificondScannerImpl"

    const-string v2, "Failed to start PNO scan"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->reportPnoScanFailure()V

    .line 464
    :goto_0
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 465
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startBatchedScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z
    .locals 2
    .param p1, "settings"    # Lcom/android/server/wifi/WifiNative$ScanSettings;
    .param p2, "eventHandler"    # Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 248
    const-string v0, "WificondScannerImpl"

    const-string v1, "startBatchedScan() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public startSingleScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z
    .locals 21
    .param p1, "settings"    # Lcom/android/server/wifi/WifiNative$ScanSettings;
    .param p2, "eventHandler"    # Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 158
    move-object/from16 v9, p2

    const/4 v0, 0x0

    if-eqz v9, :cond_8

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 163
    :cond_0
    iget-object v10, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v10

    .line 164
    :try_start_0
    iget-object v3, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    if-eqz v3, :cond_1

    .line 165
    const-string v3, "WificondScannerImpl"

    const-string v4, "A single scan is already running"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    monitor-exit v10

    return v0

    .line 169
    :cond_1
    iget-object v3, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    invoke-virtual {v3}, Lcom/android/server/wifi/scanner/ChannelHelper;->createChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    move-result-object v3

    move-object v11, v3

    .line 170
    .local v11, "allFreqs":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    const/4 v3, 0x0

    .line 172
    .local v3, "reportFullResults":Z
    move v12, v3

    move v3, v0

    .local v3, "i":I
    .local v12, "reportFullResults":Z
    :goto_0
    iget v4, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    if-ge v3, v4, :cond_3

    .line 173
    iget-object v4, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    aget-object v4, v4, v3

    .line 174
    .local v4, "bucketSettings":Lcom/android/server/wifi/WifiNative$BucketSettings;
    iget v5, v4, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    .line 176
    const/4 v12, 0x1

    .line 178
    :cond_2
    invoke-virtual {v11, v4}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->addChannels(Lcom/android/server/wifi/WifiNative$BucketSettings;)V

    .line 172
    .end local v4    # "bucketSettings":Lcom/android/server/wifi/WifiNative$BucketSettings;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 182
    .end local v3    # "i":I
    :cond_3
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v13, v3

    .line 188
    .local v13, "hiddenNetworkSSIDSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->hiddenNetworks:[Lcom/android/server/wifi/WifiNative$HiddenNetwork;

    if-eqz v3, :cond_4

    .line 189
    iget-object v3, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->hiddenNetworks:[Lcom/android/server/wifi/WifiNative$HiddenNetwork;

    array-length v3, v3

    const/16 v4, 0x10

    .line 190
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 191
    .local v3, "numHiddenNetworks":I
    nop

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_4

    .line 192
    iget-object v4, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->hiddenNetworks:[Lcom/android/server/wifi/WifiNative$HiddenNetwork;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/android/server/wifi/WifiNative$HiddenNetwork;->ssid:Ljava/lang/String;

    invoke-interface {v13, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 195
    .end local v0    # "i":I
    .end local v3    # "numHiddenNetworks":I
    :cond_4
    new-instance v0, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    iget-object v3, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mClock:Lcom/android/server/wifi/Clock;

    .line 196
    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v4

    move-object v3, v0

    move v6, v12

    move-object v7, v11

    move-object v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;-><init>(JZLcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)V

    iput-object v0, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;

    .line 199
    const/4 v0, 0x0

    .line 201
    .local v0, "success":Z
    invoke-virtual {v11}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 202
    invoke-virtual {v11}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->getScanFreqs()Ljava/util/Set;

    move-result-object v3

    .line 203
    .local v3, "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v4, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v5, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mIfaceName:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->scanType:I

    invoke-virtual {v4, v5, v6, v3, v13}, Lcom/android/server/wifi/WifiNative;->scan(Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;)Z

    move-result v4

    move v0, v4

    .line 205
    if-nez v0, :cond_6

    .line 206
    const-string v4, "WificondScannerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to start scan, freqs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 211
    .end local v3    # "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_5
    const-string v3, "WificondScannerImpl"

    const-string v4, "Failed to start scan because there is no available channel to scan"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    .line 218
    new-instance v3, Lcom/android/server/wifi/scanner/WificondScannerImpl$1;

    invoke-direct {v3, v1}, Lcom/android/server/wifi/scanner/WificondScannerImpl$1;-><init>(Lcom/android/server/wifi/scanner/WificondScannerImpl;)V

    iput-object v3, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mScanTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 224
    iget-object v14, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v15, 0x2

    iget-object v3, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mClock:Lcom/android/server/wifi/Clock;

    .line 225
    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3a98

    add-long v16, v3, v5

    const-string v18, "WificondScannerImpl Scan Timeout"

    iget-object v3, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mScanTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v4, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mEventHandler:Landroid/os/Handler;

    .line 224
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    invoke-virtual/range {v14 .. v20}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_3

    .line 229
    :cond_7
    iget-object v3, v1, Lcom/android/server/wifi/scanner/WificondScannerImpl;->mEventHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/wifi/scanner/WificondScannerImpl$2;

    invoke-direct {v4, v1}, Lcom/android/server/wifi/scanner/WificondScannerImpl$2;-><init>(Lcom/android/server/wifi/scanner/WificondScannerImpl;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 236
    :goto_3
    monitor-exit v10

    const/4 v3, 0x1

    return v3

    .line 237
    .end local v0    # "success":Z
    .end local v11    # "allFreqs":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    .end local v12    # "reportFullResults":Z
    .end local v13    # "hiddenNetworkSSIDSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 159
    :cond_8
    :goto_4
    const-string v3, "WificondScannerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid arguments for startSingleScan: settings="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",eventHandler="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return v0
.end method

.method public stopBatchedScan()V
    .locals 2

    .line 254
    const-string v0, "WificondScannerImpl"

    const-string v1, "stopBatchedScan() is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void
.end method
