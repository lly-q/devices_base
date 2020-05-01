.class Lcom/android/server/wifi/WifiDiagnostics;
.super Lcom/android/server/wifi/BaseWifiDiagnostics;
.source "WifiDiagnostics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;,
        Lcom/android/server/wifi/WifiDiagnostics$BugReport;
    }
.end annotation


# static fields
.field private static final DATA_STALL_OFFSET_REASON_CODE:I = 0x100

.field private static final DBG:Z = false

.field public static final DRIVER_DUMP_SECTION_HEADER:Ljava/lang/String; = "Driver state dump"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final FIRMWARE_DUMP_SECTION_HEADER:Ljava/lang/String; = "FW Memory dump"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MAX_ALERT_REPORTS:I = 0x1

.field public static final MAX_BUG_REPORTS:I = 0x4

.field private static final MinBufferSizes:[I

.field private static final MinWakeupIntervals:[I

.field public static final OP_BUGREPORT_CATEGORY:Ljava/lang/String; = "WiFi_CONN_FAILED"

.field private static OP_BUGREPORT_CLASS:Ljava/lang/String; = null

.field public static final OP_BUGREPORT_ISSUE_NAME:Ljava/lang/String; = "data_issue_name"

.field private static OP_BUGREPORT_PACKAGE:Ljava/lang/String; = null

.field public static final OP_BUGREPORT_SPECIAL_NAME:Ljava/lang/String; = "data_special_name"

.field public static final OP_BUGREPORT_TAG:Ljava/lang/String; = "WiFi_Bugreport"

.field public static final REPORT_REASON_ASSOC_FAILURE:I = 0x1

.field public static final REPORT_REASON_AUTH_FAILURE:I = 0x2

.field public static final REPORT_REASON_AUTOROAM_FAILURE:I = 0x3

.field public static final REPORT_REASON_DHCP_FAILURE:I = 0x4

.field public static final REPORT_REASON_NONE:I = 0x0

.field public static final REPORT_REASON_NUD_FAILURE:I = 0x9

.field public static final REPORT_REASON_SCAN_FAILURE:I = 0x6

.field public static final REPORT_REASON_UNEXPECTED_DISCONNECT:I = 0x5

.field public static final REPORT_REASON_USER_ACTION:I = 0x7

.field public static final REPORT_REASON_WIFINATIVE_FAILURE:I = 0x8

.field public static final RING_BUFFER_FLAG_HAS_ASCII_ENTRIES:I = 0x2

.field public static final RING_BUFFER_FLAG_HAS_BINARY_ENTRIES:I = 0x1

.field public static final RING_BUFFER_FLAG_HAS_PER_PACKET_ENTRIES:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiDiags"

.field public static final VERBOSE_DETAILED_LOG_WITH_WAKEUP:I = 0x3

.field public static final VERBOSE_LOG_WITH_WAKEUP:I = 0x2

.field public static final VERBOSE_NORMAL_LOG:I = 0x1

.field public static final VERBOSE_NO_LOG:I


# instance fields
.field private final RING_BUFFER_BYTE_LIMIT_LARGE:I

.field private final RING_BUFFER_BYTE_LIMIT_SMALL:I

.field private final mBuildProperties:Lcom/android/server/wifi/BuildProperties;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

.field private mIsLoggingEventHandlerRegistered:Z

.field private final mJavaRuntime:Ljava/lang/Runtime;

.field private final mLastAlerts:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray<",
            "Lcom/android/server/wifi/WifiDiagnostics$BugReport;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastBugReports:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray<",
            "Lcom/android/server/wifi/WifiDiagnostics$BugReport;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastMileLogger:Lcom/android/server/wifi/LastMileLogger;

.field private final mLog:Lcom/android/server/wifi/WifiLog;

.field private mLogLevel:I

.field private mMaxRingBufferSizeBytes:I

.field private mOPBugreportConnection:Landroid/content/ServiceConnection;

.field private mOpBugreportService:Landroid/os/Messenger;

.field private mPacketFatesForLastFailure:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wifi/WifiNative$FateReport;",
            ">;"
        }
    .end annotation
.end field

.field private mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

.field private final mRingBufferData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/util/ByteArrayRingBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

.field private mWifiInjector:Lcom/android/server/wifi/WifiInjector;

.field private final mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 111
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/wifi/WifiDiagnostics;->MinWakeupIntervals:[I

    .line 113
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/wifi/WifiDiagnostics;->MinBufferSizes:[I

    .line 140
    const-string v0, "com.oneplus.opbugreportlite"

    sput-object v0, Lcom/android/server/wifi/WifiDiagnostics;->OP_BUGREPORT_PACKAGE:Ljava/lang/String;

    .line 141
    const-string v0, "com.oneplus.opbugreportlite.BugReportLiteService"

    sput-object v0, Lcom/android/server/wifi/WifiDiagnostics;->OP_BUGREPORT_CLASS:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x0
        0xe10
        0x3c
        0xa
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x4000
        0x4000
        0x10000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiInjector;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/BuildProperties;Lcom/android/server/wifi/LastMileLogger;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiInjector"    # Lcom/android/server/wifi/WifiInjector;
    .param p3, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p4, "buildProperties"    # Lcom/android/server/wifi/BuildProperties;
    .param p5, "lastMileLogger"    # Lcom/android/server/wifi/LastMileLogger;

    .line 148
    invoke-direct {p0, p3}, Lcom/android/server/wifi/BaseWifiDiagnostics;-><init>(Lcom/android/server/wifi/WifiNative;)V

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLogLevel:I

    .line 438
    new-instance v1, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;-><init>(Lcom/android/server/wifi/WifiDiagnostics;I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastAlerts:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    .line 440
    new-instance v1, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;-><init>(Lcom/android/server/wifi/WifiDiagnostics;I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastBugReports:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    .line 442
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBufferData:Ljava/util/HashMap;

    .line 444
    new-instance v1, Lcom/android/server/wifi/WifiDiagnostics$1;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiDiagnostics$1;-><init>(Lcom/android/server/wifi/WifiDiagnostics;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    .line 764
    new-instance v1, Lcom/android/server/wifi/WifiDiagnostics$3;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiDiagnostics$3;-><init>(Lcom/android/server/wifi/WifiDiagnostics;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mOPBugreportConnection:Landroid/content/ServiceConnection;

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->RING_BUFFER_BYTE_LIMIT_SMALL:I

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->RING_BUFFER_BYTE_LIMIT_LARGE:I

    .line 154
    iput-object p4, p0, Lcom/android/server/wifi/WifiDiagnostics;->mBuildProperties:Lcom/android/server/wifi/BuildProperties;

    .line 155
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mIsLoggingEventHandlerRegistered:Z

    .line 156
    iget v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->RING_BUFFER_BYTE_LIMIT_SMALL:I

    iput v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mMaxRingBufferSizeBytes:I

    .line 157
    const-string v0, "WifiDiags"

    invoke-virtual {p2, v0}, Lcom/android/server/wifi/WifiInjector;->makeLog(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLog:Lcom/android/server/wifi/WifiLog;

    .line 158
    iput-object p5, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastMileLogger:Lcom/android/server/wifi/LastMileLogger;

    .line 159
    invoke-virtual {p2}, Lcom/android/server/wifi/WifiInjector;->getJavaRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mJavaRuntime:Ljava/lang/Runtime;

    .line 160
    invoke-virtual {p2}, Lcom/android/server/wifi/WifiInjector;->getWifiMetrics()Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 161
    iput-object p2, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    .line 162
    iput-object p1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mContext:Landroid/content/Context;

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/WifiDiagnostics;[B)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiDiagnostics;
    .param p1, "x1"    # [B

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiDiagnostics;->compressToBase64([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/wifi/WifiDiagnostics;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiDiagnostics;
    .param p1, "x1"    # Landroid/os/Messenger;

    .line 62
    iput-object p1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mOpBugreportService:Landroid/os/Messenger;

    return-object p1
.end method

.method private bindOPBugreportInit()V
    .locals 5

    .line 777
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 779
    .local v0, "intent":Landroid/content/Intent;
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/android/server/wifi/WifiDiagnostics;->OP_BUGREPORT_PACKAGE:Ljava/lang/String;

    sget-object v3, Lcom/android/server/wifi/WifiDiagnostics;->OP_BUGREPORT_CLASS:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 780
    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/WifiDiagnostics;->mOPBugreportConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    goto :goto_0

    .line 781
    :catch_0
    move-exception v1

    .line 782
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "WifiDiags"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bind Service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/wifi/WifiDiagnostics;->OP_BUGREPORT_CLASS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const-string v2, "WifiDiags"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private captureBugreport(IZ)Lcom/android/server/wifi/WifiDiagnostics$BugReport;
    .locals 10
    .param p1, "errorCode"    # I
    .param p2, "captureFWDump"    # Z

    .line 579
    new-instance v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiDiagnostics$BugReport;-><init>(Lcom/android/server/wifi/WifiDiagnostics;)V

    .line 580
    .local v0, "report":Lcom/android/server/wifi/WifiDiagnostics$BugReport;
    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "CaptureBugReport %"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->warn(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    int-to-long v2, p1

    invoke-interface {v1, v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 581
    iput p1, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->errorCode:I

    .line 582
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->systemTimeMs:J

    .line 583
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->kernelTimeNanos:J

    .line 585
    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v1, :cond_1

    .line 586
    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 588
    .local v5, "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    iget-object v6, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v7, v5, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiNative;->getRingBufferData(Ljava/lang/String;)Z

    .line 589
    iget-object v6, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBufferData:Ljava/util/HashMap;

    iget-object v7, v5, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wifi/util/ByteArrayRingBuffer;

    .line 590
    .local v6, "data":Lcom/android/server/wifi/util/ByteArrayRingBuffer;
    invoke-virtual {v6}, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->getNumBuffers()I

    move-result v7

    new-array v7, v7, [[B

    .line 591
    .local v7, "buffers":[[B
    move v8, v3

    .local v8, "i":I
    :goto_1
    invoke-virtual {v6}, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->getNumBuffers()I

    move-result v9

    if-ge v8, v9, :cond_0

    .line 592
    invoke-virtual {v6, v8}, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->getBuffer(I)[B

    move-result-object v9

    invoke-virtual {v9}, [B->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    aput-object v9, v7, v8

    .line 591
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 594
    .end local v8    # "i":I
    :cond_0
    iget-object v8, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->ringBuffers:Ljava/util/HashMap;

    iget-object v9, v5, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    .end local v5    # "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .end local v6    # "data":Lcom/android/server/wifi/util/ByteArrayRingBuffer;
    .end local v7    # "buffers":[[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 598
    :cond_1
    const/16 v1, 0x7f

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiDiagnostics;->getLogcat(I)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->logcatLines:Ljava/util/ArrayList;

    .line 599
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiDiagnostics;->getKernelLog(I)Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->kernelLogLines:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    .line 601
    if-eqz p2, :cond_2

    .line 602
    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->getFwMemoryDump()[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->fwMemoryDump:[B

    .line 603
    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->getDriverStateDump()[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->mDriverStateDump:[B

    .line 605
    :cond_2
    return-object v0
.end method

.method private clearVerboseLogs()V
    .locals 3

    .line 483
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mPacketFatesForLastFailure:Ljava/util/ArrayList;

    .line 485
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastAlerts:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 486
    iget-object v2, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastAlerts:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiDiagnostics$BugReport;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->clearVerboseLogs()V

    .line 485
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 489
    .end local v1    # "i":I
    :cond_0
    nop

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastBugReports:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 490
    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastBugReports:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiDiagnostics$BugReport;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->clearVerboseLogs()V

    .line 489
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 492
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private compressToBase64([B)Ljava/lang/String;
    .locals 7
    .param p1, "input"    # [B

    .line 621
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    .line 622
    .local v0, "compressor":Ljava/util/zip/Deflater;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setLevel(I)V

    .line 623
    invoke-virtual {v0, p1}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 624
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 625
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 626
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 628
    .local v2, "buf":[B
    :goto_0
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 629
    invoke-virtual {v0, v2}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v3

    .line 630
    .local v3, "count":I
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 631
    .end local v3    # "count":I
    goto :goto_0

    .line 634
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 635
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    nop

    .line 642
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 649
    .local v3, "compressed":[B
    array-length v5, v3

    array-length v6, p1

    if-ge v5, v6, :cond_1

    move-object v5, v3

    goto :goto_1

    :cond_1
    move-object v5, p1

    .line 648
    :goto_1
    invoke-static {v5, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 655
    .local v4, "result":Ljava/lang/String;
    return-object v4

    .line 636
    .end local v3    # "compressed":[B
    .end local v4    # "result":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 637
    .local v3, "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v6, "ByteArrayOutputStream close error"

    invoke-interface {v5, v6}, Lcom/android/server/wifi/WifiLog;->wC(Ljava/lang/String;)V

    .line 638
    invoke-static {p1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 639
    .restart local v4    # "result":Ljava/lang/String;
    return-object v4
.end method

.method private dumpPacketFates(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 724
    const-string v0, "Last failed connection fates"

    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mPacketFatesForLastFailure:Ljava/util/ArrayList;

    .line 725
    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->isVerboseLoggingEnabled()Z

    move-result v2

    .line 724
    invoke-static {p1, v0, v1, v2}, Lcom/android/server/wifi/WifiDiagnostics;->dumpPacketFatesInternal(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 726
    const-string v0, "Latest fates"

    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->fetchPacketFates()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/wifi/WifiDiagnostics;->dumpPacketFatesInternal(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 727
    return-void
.end method

.method private static dumpPacketFatesInternal(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .locals 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "description"    # Ljava/lang/String;
    .param p3, "verbose"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wifi/WifiNative$FateReport;",
            ">;Z)V"
        }
    .end annotation

    .line 731
    .local p2, "fates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/WifiNative$FateReport;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 732
    const-string v2, "No fates fetched for \"%s\"\n"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-virtual {p0, v2, v0}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 733
    return-void

    .line 736
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 737
    const-string v2, "HAL provided zero fates for \"%s\"\n"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-virtual {p0, v2, v0}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 738
    return-void

    .line 741
    :cond_1
    const-string v2, "--------------------- %s ----------------------\n"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-virtual {p0, v2, v0}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 744
    .local v0, "verboseOutput":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/server/wifi/WifiNative$FateReport;->getTableHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 745
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/WifiNative$FateReport;

    .line 746
    .local v3, "fate":Lcom/android/server/wifi/WifiNative$FateReport;
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiNative$FateReport;->toTableRowString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 747
    if-eqz p3, :cond_2

    .line 750
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiNative$FateReport;->toVerboseStringWithPiiAllowed()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    .end local v3    # "fate":Lcom/android/server/wifi/WifiNative$FateReport;
    :cond_2
    goto :goto_0

    .line 755
    :cond_3
    if-eqz p3, :cond_4

    .line 756
    const-string v2, "\n>>> VERBOSE PACKET FATE DUMP <<<\n\n"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 757
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 760
    :cond_4
    const-string v1, "--------------------------------------------------------------------"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 761
    return-void
.end method

.method private enableVerboseLoggingForDogfood()Z
    .locals 1

    .line 574
    const/4 v0, 0x1

    return v0
.end method

.method private fetchPacketFates()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wifi/WifiNative$FateReport;",
            ">;"
        }
    .end annotation

    .line 696
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 697
    .local v0, "mergedFates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/WifiNative$FateReport;>;"
    const/16 v1, 0x20

    new-array v2, v1, [Lcom/android/server/wifi/WifiNative$TxFateReport;

    .line 699
    .local v2, "txFates":[Lcom/android/server/wifi/WifiNative$TxFateReport;
    iget-object v3, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v4, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiNative;->getClientInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wifi/WifiNative;->getTxPktFates(Ljava/lang/String;[Lcom/android/server/wifi/WifiNative$TxFateReport;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 700
    move v3, v4

    .local v3, "i":I
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_0

    aget-object v5, v2, v3

    if-eqz v5, :cond_0

    .line 701
    aget-object v5, v2, v3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 705
    .end local v3    # "i":I
    :cond_0
    new-array v1, v1, [Lcom/android/server/wifi/WifiNative$RxFateReport;

    .line 707
    .local v1, "rxFates":[Lcom/android/server/wifi/WifiNative$RxFateReport;
    iget-object v3, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v5, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->getClientInterfaceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v1}, Lcom/android/server/wifi/WifiNative;->getRxPktFates(Ljava/lang/String;[Lcom/android/server/wifi/WifiNative$RxFateReport;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 708
    nop

    .local v4, "i":I
    :goto_1
    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    array-length v4, v1

    if-ge v3, v4, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_1

    .line 709
    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    .line 713
    .end local v4    # "i":I
    :cond_1
    new-instance v3, Lcom/android/server/wifi/WifiDiagnostics$2;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/WifiDiagnostics$2;-><init>(Lcom/android/server/wifi/WifiDiagnostics;)V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 720
    return-object v0
.end method

.method private fetchRingBuffers()Z
    .locals 10

    .line 495
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->getRingBufferStatus()[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    .line 498
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 499
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v0, v4

    .line 501
    .local v5, "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    iget-object v6, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBufferData:Ljava/util/HashMap;

    iget-object v7, v5, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 502
    iget-object v6, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBufferData:Ljava/util/HashMap;

    iget-object v7, v5, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    new-instance v8, Lcom/android/server/wifi/util/ByteArrayRingBuffer;

    iget v9, p0, Lcom/android/server/wifi/WifiDiagnostics;->mMaxRingBufferSizeBytes:I

    invoke-direct {v8, v9}, Lcom/android/server/wifi/util/ByteArrayRingBuffer;-><init>(I)V

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    :cond_1
    iget v6, v5, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->flag:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_2

    .line 506
    iput-object v5, p0, Lcom/android/server/wifi/WifiDiagnostics;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    .line 499
    .end local v5    # "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 510
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v3, "no ring buffers found"

    invoke-interface {v0, v3}, Lcom/android/server/wifi/WifiLog;->wC(Ljava/lang/String;)V

    .line 513
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    return v1
.end method

.method private getKernelLog(I)Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;
    .locals 5
    .param p1, "maxLines"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 682
    new-instance v0, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;-><init>(Lcom/android/server/wifi/WifiDiagnostics;I)V

    .line 683
    .local v0, "lines":Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;, "Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->readKernelLog()Ljava/lang/String;

    move-result-object v1

    .line 684
    .local v1, "log":Ljava/lang/String;
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 685
    .local v2, "logLines":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 686
    aget-object v4, v2, v3

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->addLast(Ljava/lang/Object;)V

    .line 685
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 689
    .end local v3    # "i":I
    :cond_0
    return-object v0
.end method

.method private getLogcat(I)Ljava/util/ArrayList;
    .locals 7
    .param p1, "maxLines"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 659
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 661
    .local v0, "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mJavaRuntime:Ljava/lang/Runtime;

    const-string v2, "logcat -t %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 662
    .local v1, "process":Ljava/lang/Process;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 663
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 665
    .local v2, "reader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 666
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 668
    :cond_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    .line 669
    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 670
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    if-eqz v3, :cond_1

    .line 671
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 673
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    .end local v1    # "process":Ljava/lang/Process;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    goto :goto_2

    .line 674
    :catch_0
    move-exception v1

    .line 675
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v3, "Exception while capturing logcat: %"

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog;->dump(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 677
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v0
.end method

.method private isVerboseLoggingEnabled()Z
    .locals 2

    .line 479
    iget v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLogLevel:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private resizeRingBuffers()V
    .locals 3

    .line 517
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBufferData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/util/ByteArrayRingBuffer;

    .line 518
    .local v1, "byteArrayRingBuffer":Lcom/android/server/wifi/util/ByteArrayRingBuffer;
    iget v2, p0, Lcom/android/server/wifi/WifiDiagnostics;->mMaxRingBufferSizeBytes:I

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->resize(I)V

    .line 519
    .end local v1    # "byteArrayRingBuffer":Lcom/android/server/wifi/util/ByteArrayRingBuffer;
    goto :goto_0

    .line 520
    :cond_0
    return-void
.end method

.method private sendAutoBugReport(Ljava/lang/String;)V
    .locals 8
    .param p1, "bdata"    # Ljava/lang/String;

    .line 788
    const/4 v0, 0x1

    .line 791
    .local v0, "MSG_ONEPLUS_DEBUG":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mContext:Landroid/content/Context;

    const-string v2, "dropbox"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/DropBoxManager;

    .line 792
    .local v1, "dropbox":Landroid/os/DropBoxManager;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 793
    .local v2, "data":Landroid/os/Bundle;
    const/4 v3, 0x0

    invoke-static {v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 795
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/wifi/WifiDiagnostics;->mOpBugreportService:Landroid/os/Messenger;

    if-nez v4, :cond_0

    .line 796
    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->bindOPBugreportInit()V

    .line 798
    const-wide/16 v4, 0xa

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    goto :goto_0

    .line 799
    :catch_0
    move-exception v4

    .line 800
    .local v4, "ex":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 804
    .end local v4    # "ex":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/server/wifi/WifiDiagnostics;->mOpBugreportService:Landroid/os/Messenger;

    if-eqz v4, :cond_1

    .line 805
    const-string v4, "WiFi_Bugreport"

    invoke-virtual {v1, v4, p1}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    const-string v4, "data_issue_name"

    const-string v5, "WiFi_CONN_FAILED"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    const-string v4, "data_special_name"

    const-string v5, "WiFi_Bugreport"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 810
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiDiagnostics;->mOpBugreportService:Landroid/os/Messenger;

    invoke-virtual {v4, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 811
    :catch_1
    move-exception v4

    .line 812
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "WifiDiags"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendBugreport failed, e: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_2

    .line 815
    :cond_1
    const-string v4, "WifiDiags"

    const-string v5, "message did not be sent due to null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :goto_2
    return-void
.end method

.method private startLoggingAllExceptPerPacketBuffers()Z
    .locals 5

    .line 524
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 526
    return v1

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 531
    .local v3, "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    iget v4, v3, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->flag:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1

    .line 534
    goto :goto_1

    .line 537
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiDiagnostics;->startLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z

    .line 529
    .end local v3    # "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 540
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private startLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z
    .locals 8
    .param p1, "buffer"    # Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    .line 545
    sget-object v0, Lcom/android/server/wifi/WifiDiagnostics;->MinWakeupIntervals:[I

    iget v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLogLevel:I

    aget v0, v0, v1

    .line 546
    .local v0, "minInterval":I
    sget-object v1, Lcom/android/server/wifi/WifiDiagnostics;->MinBufferSizes:[I

    iget v2, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLogLevel:I

    aget v1, v1, v2

    .line 548
    .local v1, "minDataSize":I
    iget-object v2, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v3, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLogLevel:I

    iget-object v7, p1, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    const/4 v4, 0x0

    move v5, v0

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wifi/WifiNative;->startLoggingRingBuffer(IIIILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 551
    const/4 v2, 0x0

    return v2

    .line 554
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private stopLoggingAllBuffers()Z
    .locals 4

    .line 565
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 567
    .local v3, "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiDiagnostics;->stopLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z

    .line 566
    .end local v3    # "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 570
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private stopLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z
    .locals 6
    .param p1, "buffer"    # Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    .line 558
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v5, p1, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi/WifiNative;->startLoggingRingBuffer(IIIILjava/lang/String;)Z

    .line 561
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public declared-synchronized captureAlertData(I[B)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "alertData"    # [B

    monitor-enter p0

    .line 272
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->isVerboseLoggingEnabled()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiDiagnostics;->captureBugreport(IZ)Lcom/android/server/wifi/WifiDiagnostics$BugReport;

    move-result-object v0

    .line 273
    .local v0, "report":Lcom/android/server/wifi/WifiDiagnostics$BugReport;
    iput-object p2, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->alertData:[B

    .line 274
    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastAlerts:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    monitor-exit p0

    return-void

    .line 271
    .end local v0    # "report":Lcom/android/server/wifi/WifiDiagnostics$BugReport;
    .end local p1    # "errorCode":I
    .end local p2    # "alertData":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiDiagnostics;
    throw p1
.end method

.method public declared-synchronized captureBugReportData(I)V
    .locals 3
    .param p1, "reason"    # I

    monitor-enter p0

    .line 249
    :try_start_0
    const-string v0, "persist.wifi.bugreport.auto"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mOpBugreportService:Landroid/os/Messenger;

    if-nez v0, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->bindOPBugreportInit()V

    .line 254
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->isVerboseLoggingEnabled()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiDiagnostics;->captureBugreport(IZ)Lcom/android/server/wifi/WifiDiagnostics$BugReport;

    move-result-object v0

    .line 255
    .local v0, "report":Lcom/android/server/wifi/WifiDiagnostics$BugReport;
    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastBugReports:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->addLast(Ljava/lang/Object;)V

    .line 256
    const-string v1, "WifiDiags"

    const-string v2, "sendAutoBugReport for unexpected disconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiDiagnostics;->sendAutoBugReport(Ljava/lang/String;)V

    .line 258
    .end local v0    # "report":Lcom/android/server/wifi/WifiDiagnostics$BugReport;
    goto :goto_0

    .line 259
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->isVerboseLoggingEnabled()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiDiagnostics;->captureBugreport(IZ)Lcom/android/server/wifi/WifiDiagnostics$BugReport;

    move-result-object v0

    .line 260
    .restart local v0    # "report":Lcom/android/server/wifi/WifiDiagnostics$BugReport;
    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastBugReports:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    .end local v0    # "report":Lcom/android/server/wifi/WifiDiagnostics$BugReport;
    :goto_0
    monitor-exit p0

    return-void

    .line 248
    .end local p1    # "reason":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiDiagnostics;
    throw p1
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    monitor-enter p0

    .line 279
    :try_start_0
    invoke-super {p0, p2}, Lcom/android/server/wifi/BaseWifiDiagnostics;->dump(Ljava/io/PrintWriter;)V

    .line 281
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastAlerts:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 282
    const-string v2, "--------------------------------------------------------------------"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Alert dump "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    iget-object v2, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastAlerts:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 285
    const-string v2, "--------------------------------------------------------------------"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    .end local v1    # "i":I
    :cond_0
    nop

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastBugReports:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 289
    const-string v1, "--------------------------------------------------------------------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bug dump "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastBugReports:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 292
    const-string v1, "--------------------------------------------------------------------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 295
    .end local v0    # "i":I
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiDiagnostics;->dumpPacketFates(Ljava/io/PrintWriter;)V

    .line 296
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastMileLogger:Lcom/android/server/wifi/LastMileLogger;

    invoke-virtual {v0, p2}, Lcom/android/server/wifi/LastMileLogger;->dump(Ljava/io/PrintWriter;)V

    .line 298
    const-string v0, "--------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    monitor-exit p0

    return-void

    .line 278
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiDiagnostics;
    throw p1
.end method

.method getAlertReports()Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray<",
            "Lcom/android/server/wifi/WifiDiagnostics$BugReport;",
            ">;"
        }
    .end annotation

    .line 615
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastAlerts:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    return-object v0
.end method

.method getBugReports()Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray<",
            "Lcom/android/server/wifi/WifiDiagnostics$BugReport;",
            ">;"
        }
    .end annotation

    .line 610
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastBugReports:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    return-object v0
.end method

.method declared-synchronized onRingBufferData(Lcom/android/server/wifi/WifiNative$RingBufferStatus;[B)V
    .locals 2
    .param p1, "status"    # Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .param p2, "buffer"    # [B

    monitor-enter p0

    .line 458
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBufferData:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;

    .line 459
    .local v0, "ring":Lcom/android/server/wifi/util/ByteArrayRingBuffer;
    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {v0, p2}, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->appendBuffer([B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    :cond_0
    monitor-exit p0

    return-void

    .line 457
    .end local v0    # "ring":Lcom/android/server/wifi/util/ByteArrayRingBuffer;
    .end local p1    # "status":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .end local p2    # "buffer":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiDiagnostics;
    throw p1
.end method

.method declared-synchronized onWifiAlert(I[B)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "buffer"    # [B

    monitor-enter p0

    .line 465
    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    .line 466
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/WifiDiagnostics;->captureAlertData(I[B)V

    .line 467
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiMetrics;->incrementAlertReasonCount(I)V

    goto :goto_0

    .line 464
    .end local p1    # "errorCode":I
    .end local p2    # "buffer":[B
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 469
    .restart local p1    # "errorCode":I
    .restart local p2    # "buffer":[B
    :cond_0
    add-int/lit16 p1, p1, -0x100

    .line 470
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/WifiDiagnostics;->captureAlertData(I[B)V

    .line 471
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiMetrics;->incrementAlertReasonCount(I)V

    .line 472
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.qualcomm.qti.net.wifi.WIFI_DATA_STALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 473
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "data_stall_reasoncode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 474
    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    monitor-exit p0

    return-void

    .line 464
    .end local p1    # "errorCode":I
    .end local p2    # "buffer":[B
    :goto_1
    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiDiagnostics;
    throw p1
.end method

.method declared-synchronized reportConnectionEvent(JB)V
    .locals 1
    .param p1, "connectionId"    # J
    .param p3, "event"    # B

    monitor-enter p0

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastMileLogger:Lcom/android/server/wifi/LastMileLogger;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/LastMileLogger;->reportConnectionEvent(JB)V

    .line 241
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 242
    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->fetchPacketFates()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mPacketFatesForLastFailure:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :cond_0
    monitor-exit p0

    return-void

    .line 239
    .end local p1    # "connectionId":J
    .end local p3    # "event":B
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiDiagnostics;
    throw p1
.end method

.method public declared-synchronized startLogging(Z)V
    .locals 2
    .param p1, "verboseEnabled"    # Z

    monitor-enter p0

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mFirmwareVersion:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->getDriverVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mDriverVersion:Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->getSupportedLoggerFeatureSet()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mSupportedFeatureSet:I

    .line 171
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mIsLoggingEventHandlerRegistered:Z

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setLoggingEventHandler(Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mIsLoggingEventHandlerRegistered:Z

    .line 175
    :cond_0
    if-eqz p1, :cond_1

    .line 176
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLogLevel:I

    .line 177
    iget v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->RING_BUFFER_BYTE_LIMIT_LARGE:I

    iput v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mMaxRingBufferSizeBytes:I

    goto :goto_1

    .line 179
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLogLevel:I

    .line 180
    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->enableVerboseLoggingForDogfood()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    iget v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->RING_BUFFER_BYTE_LIMIT_LARGE:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->RING_BUFFER_BYTE_LIMIT_SMALL:I

    :goto_0
    iput v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mMaxRingBufferSizeBytes:I

    .line 182
    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->clearVerboseLogs()V

    .line 185
    :goto_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-nez v0, :cond_3

    .line 186
    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->fetchRingBuffers()Z

    .line 189
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v0, :cond_4

    .line 191
    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->stopLoggingAllBuffers()Z

    .line 192
    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->resizeRingBuffers()V

    .line 193
    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->startLoggingAllExceptPerPacketBuffers()Z

    .line 196
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->getClientInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->startPktFateMonitoring(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 197
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "Failed to start packet fate monitoring"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->wC(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :cond_5
    monitor-exit p0

    return-void

    .line 166
    .end local p1    # "verboseEnabled":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiDiagnostics;
    throw p1
.end method

.method public declared-synchronized startPacketLog()V
    .locals 1

    monitor-enter p0

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiDiagnostics;->startLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :cond_0
    monitor-exit p0

    return-void

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiDiagnostics;
    throw v0
.end method

.method public declared-synchronized stopLogging()V
    .locals 3

    monitor-enter p0

    .line 221
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mIsLoggingEventHandlerRegistered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->resetLogHandler()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "Fail to reset log handler"

    invoke-interface {v0, v2}, Lcom/android/server/wifi/WifiLog;->wC(Ljava/lang/String;)V

    .line 229
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mIsLoggingEventHandlerRegistered:Z

    .line 231
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLogLevel:I

    if-eqz v0, :cond_2

    .line 232
    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->stopLoggingAllBuffers()Z

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    .line 234
    iput v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLogLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :cond_2
    monitor-exit p0

    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiDiagnostics;
    throw v0
.end method

.method public declared-synchronized stopPacketLog()V
    .locals 1

    monitor-enter p0

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiDiagnostics;->stopLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :cond_0
    monitor-exit p0

    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiDiagnostics;
    throw v0
.end method

.method public takeBugReport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "bugTitle"    # Ljava/lang/String;
    .param p2, "bugDetail"    # Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mBuildProperties:Lcom/android/server/wifi/BuildProperties;

    invoke-interface {v0}, Lcom/android/server/wifi/BuildProperties;->isUserBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    return-void

    .line 311
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->requestWifiBugReport(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "error taking bugreport: %"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 316
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
