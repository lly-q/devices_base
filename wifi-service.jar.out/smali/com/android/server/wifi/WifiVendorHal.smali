.class public Lcom/android/server/wifi/WifiVendorHal;
.super Ljava/lang/Object;
.source "WifiVendorHal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;,
        Lcom/android/server/wifi/WifiVendorHal$ChipEventCallbackV12;,
        Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;,
        Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;,
        Lcom/android/server/wifi/WifiVendorHal$RttEventCallback;,
        Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;,
        Lcom/android/server/wifi/WifiVendorHal$ApInterfaceDestroyedListenerInternal;,
        Lcom/android/server/wifi/WifiVendorHal$StaInterfaceDestroyedListenerInternal;
    }
.end annotation


# static fields
.field private static final CMD_HAL_DEVICE_MANAGER_STATUS_CHANGE:I = 0x1

.field private static final sChipFeatureCapabilityTranslation:[[I

.field public static final sLock:Ljava/lang/Object;

.field private static final sNoApfCapabilities:Landroid/net/apf/ApfCapabilities;

.field private static final sNoLog:Lcom/android/server/wifi/WifiLog;

.field static final sRssiMonCmdId:I = 0x1d7f
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final sStaFeatureCapabilityTranslation:[[I


# instance fields
.field private mDeathEventHandler:Lcom/android/server/wifi/WifiNative$VendorHalDeathEventHandler;

.field private mDriverDescription:Ljava/lang/String;

.field private mFirmwareDescription:Ljava/lang/String;

.field private final mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

.field private final mHalDeviceManagerStatusCallbacks:Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;

.field private final mHalEventHandler:Landroid/os/Handler;

.field private mIWifiApIfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/hardware/wifi/V1_0/IWifiApIface;",
            ">;"
        }
    .end annotation
.end field

.field private mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

.field private final mIWifiChipEventCallback:Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;

.field private final mIWifiChipEventCallbackV12:Lcom/android/server/wifi/WifiVendorHal$ChipEventCallbackV12;

.field private mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

.field private final mIWifiStaIfaceEventCallback:Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;

.field private mIWifiStaIfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/hardware/wifi/V1_0/IWifiStaIface;",
            ">;"
        }
    .end annotation
.end field

.field private mLastScanCmdId:I

.field mLinkLayerStatsDebug:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mLog:Lcom/android/server/wifi/WifiLog;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mLogEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

.field private final mLooper:Landroid/os/Looper;

.field private mRadioModeChangeEventHandler:Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeEventHandler;

.field private mRttCmdId:I

.field private mRttCmdIdNext:I

.field private final mRttEventCallback:Lcom/android/server/wifi/WifiVendorHal$RttEventCallback;

.field private mRttEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

.field private mRttResponderCmdId:I

.field mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mStatusChangeHandler:Landroid/os/Handler;

.field mVerboseLog:Lcom/android/server/wifi/WifiLog;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mWifiRssiEventHandler:Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 101
    new-instance v0, Lcom/android/server/wifi/FakeWifiLog;

    invoke-direct {v0}, Lcom/android/server/wifi/FakeWifiLog;-><init>()V

    sput-object v0, Lcom/android/server/wifi/WifiVendorHal;->sNoLog:Lcom/android/server/wifi/WifiLog;

    .line 315
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    .line 1056
    const/4 v0, 0x3

    new-array v1, v0, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/server/wifi/WifiVendorHal;->sChipFeatureCapabilityTranslation:[[I

    .line 1088
    const/16 v1, 0xd

    new-array v1, v1, [[I

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    aput-object v3, v1, v0

    new-array v0, v2, [I

    fill-array-data v0, :array_7

    const/4 v3, 0x4

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_8

    const/4 v3, 0x5

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_9

    const/4 v3, 0x6

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_a

    const/4 v3, 0x7

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_b

    const/16 v3, 0x8

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_c

    const/16 v3, 0x9

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_d

    const/16 v3, 0xa

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_e

    const/16 v3, 0xb

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_f

    const/16 v2, 0xc

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/server/wifi/WifiVendorHal;->sStaFeatureCapabilityTranslation:[[I

    .line 1785
    new-instance v0, Landroid/net/apf/ApfCapabilities;

    invoke-direct {v0, v4, v4, v4}, Landroid/net/apf/ApfCapabilities;-><init>(III)V

    sput-object v0, Lcom/android/server/wifi/WifiVendorHal;->sNoApfCapabilities:Landroid/net/apf/ApfCapabilities;

    return-void

    :array_0
    .array-data 4
        0x4000000
        0x100
    .end array-data

    :array_1
    .array-data 4
        0x80
        0x200
    .end array-data

    :array_2
    .array-data 4
        0x100
        0x400
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x80
    .end array-data

    :array_4
    .array-data 4
        0x4
        0x100
    .end array-data

    :array_5
    .array-data 4
        0x20
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x400
        0x200
    .end array-data

    :array_7
    .array-data 4
        0x1000
        0x400
    .end array-data

    :array_8
    .array-data 4
        0x2000
        0x800
    .end array-data

    :array_9
    .array-data 4
        0x10000
        0x4
    .end array-data

    :array_a
    .array-data 4
        0x80000
        0x8
    .end array-data

    :array_b
    .array-data 4
        0x100000
        0x2000
    .end array-data

    :array_c
    .array-data 4
        0x200000
        0x1000
    .end array-data

    :array_d
    .array-data 4
        0x800000
        0x10
    .end array-data

    :array_e
    .array-data 4
        0x1000000
        0x20
    .end array-data

    :array_f
    .array-data 4
        0x2000000
        0x40
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/wifi/HalDeviceManager;Landroid/os/Looper;)V
    .locals 3
    .param p1, "halDeviceManager"    # Lcom/android/server/wifi/HalDeviceManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sNoLog:Lcom/android/server/wifi/WifiLog;

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    .line 112
    new-instance v0, Lcom/android/server/wifi/LogcatLog;

    const-string v1, "WifiVendorHal"

    invoke-direct {v0, v1}, Lcom/android/server/wifi/LogcatLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIfaces:Ljava/util/HashMap;

    .line 257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiApIfaces:Ljava/util/HashMap;

    .line 276
    new-instance v0, Lcom/android/server/wifi/WifiVendorHal$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiVendorHal$1;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mStatusChangeHandler:Landroid/os/Handler;

    .line 831
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    .line 1029
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mLinkLayerStatsDebug:Z

    .line 1237
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdIdNext:I

    .line 1604
    iput v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttResponderCmdId:I

    .line 1874
    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mLogEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    .line 305
    iput-object p1, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    .line 306
    iput-object p2, p0, Lcom/android/server/wifi/WifiVendorHal;->mLooper:Landroid/os/Looper;

    .line 307
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalEventHandler:Landroid/os/Handler;

    .line 308
    new-instance v1, Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManagerStatusCallbacks:Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;

    .line 309
    new-instance v1, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;-><init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$1;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIfaceEventCallback:Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;

    .line 310
    new-instance v1, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;-><init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$1;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChipEventCallback:Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;

    .line 311
    new-instance v1, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallbackV12;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallbackV12;-><init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$1;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChipEventCallbackV12:Lcom/android/server/wifi/WifiVendorHal$ChipEventCallbackV12;

    .line 312
    new-instance v1, Lcom/android/server/wifi/WifiVendorHal$RttEventCallback;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wifi/WifiVendorHal$RttEventCallback;-><init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$1;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttEventCallback:Lcom/android/server/wifi/WifiVendorHal$RttEventCallback;

    .line 313
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/HalDeviceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiVendorHal;

    .line 99
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiVendorHal;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiVendorHal;

    .line 99
    invoke-direct {p0}, Lcom/android/server/wifi/WifiVendorHal;->clearState()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/WifiVendorHal;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiVendorHal;

    .line 99
    iget v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdId:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/wifi/WifiVendorHal;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiVendorHal;
    .param p1, "x1"    # I

    .line 99
    iput p1, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdId:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiNative$RttEventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiVendorHal;

    .line 99
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

    return-object v0
.end method

.method static synthetic access$1200()Landroid/net/apf/ApfCapabilities;
    .locals 1

    .line 99
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sNoApfCapabilities:Landroid/net/apf/ApfCapabilities;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/hardware/wifi/V1_0/StaScanResult;)Landroid/net/wifi/ScanResult;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/wifi/V1_0/StaScanResult;

    .line 99
    invoke-static {p0}, Lcom/android/server/wifi/WifiVendorHal;->hidlToFrameworkScanResult(Landroid/hardware/wifi/V1_0/StaScanResult;)Landroid/net/wifi/ScanResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(ILjava/util/ArrayList;)[Landroid/net/wifi/WifiScanner$ScanData;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 99
    invoke-static {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->hidlToFrameworkScanDatas(ILjava/util/ArrayList;)[Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiVendorHal;

    .line 99
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mWifiRssiEventHandler:Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/wifi/WifiVendorHal;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiVendorHal;

    .line 99
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiVendorHal;

    .line 99
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mLogEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;)Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;

    .line 99
    invoke-static {p0}, Lcom/android/server/wifi/WifiVendorHal;->ringBufferStatus(Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;)Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiVendorHal;

    .line 99
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChipEventCallback:Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiNative$VendorHalDeathEventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiVendorHal;

    .line 99
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mDeathEventHandler:Lcom/android/server/wifi/WifiNative$VendorHalDeathEventHandler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeEventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiVendorHal;

    .line 99
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mRadioModeChangeEventHandler:Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeEventHandler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/wifi/WifiVendorHal;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiVendorHal;

    .line 99
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mStatusChangeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiVendorHal;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiVendorHal;

    .line 99
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIfaces:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiVendorHal;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiVendorHal;

    .line 99
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiApIfaces:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiNative$BucketSettings;)Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiVendorHal;
    .param p1, "x1"    # Lcom/android/server/wifi/WifiNative$BucketSettings;

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->makeStaBackgroundScanBucketParametersFromBucketSettings(Lcom/android/server/wifi/WifiNative$BucketSettings;)Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;

    move-result-object v0

    return-object v0
.end method

.method private boolResult(Z)Z
    .locals 4
    .param p1, "result"    # Z

    .line 160
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sNoLog:Lcom/android/server/wifi/WifiLog;

    if-ne v0, v1, :cond_0

    return p1

    .line 163
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 164
    .local v0, "cur":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 166
    .local v1, "trace":[Ljava/lang/StackTraceElement;
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    const-string v3, "% returns %"

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    const/4 v3, 0x3

    .line 167
    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiVendorHal;->niceMethodName([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    .line 168
    invoke-interface {v2, p1}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Z)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    .line 169
    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 171
    return p1
.end method

.method private byteArrayResult([B)[B
    .locals 4
    .param p1, "result"    # [B

    .line 200
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sNoLog:Lcom/android/server/wifi/WifiLog;

    if-ne v0, v1, :cond_0

    return-object p1

    .line 203
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 204
    .local v0, "cur":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 206
    .local v1, "trace":[Ljava/lang/StackTraceElement;
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    const-string v3, "% returns %"

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    const/4 v3, 0x3

    .line 207
    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiVendorHal;->niceMethodName([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    .line 208
    invoke-static {p1}, Lcom/android/internal/util/HexDump;->dumpHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    .line 209
    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 211
    return-object p1
.end method

.method private clearState()V
    .locals 2

    .line 671
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    .line 672
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 673
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiApIfaces:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 674
    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    .line 675
    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mDriverDescription:Ljava/lang/String;

    .line 676
    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mFirmwareDescription:Ljava/lang/String;

    .line 677
    return-void
.end method

.method private enableLinkLayerStats(Landroid/hardware/wifi/V1_0/IWifiStaIface;)V
    .locals 4
    .param p1, "iface"    # Landroid/hardware/wifi/V1_0/IWifiStaIface;

    .line 1040
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1043
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mLinkLayerStatsDebug:Z

    invoke-interface {p1, v1}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->enableLinkLayerStatsCollection(Z)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    .line 1044
    .local v1, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1045
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v3, "unable to enable link layer stats collection"

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1049
    .end local v1    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :cond_0
    goto :goto_0

    .line 1050
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1047
    :catch_0
    move-exception v1

    .line 1048
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 1050
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 1051
    return-void

    .line 1050
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private enter(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
        .annotation build Lcom/google/errorprone/annotations/CompileTimeConstant;
        .end annotation
    .end param

    .line 221
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sNoLog:Lcom/android/server/wifi/WifiLog;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sNoLog:Lcom/android/server/wifi/WifiLog;

    invoke-interface {v0, p1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    return-object v0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/server/wifi/WifiLog;->trace(Ljava/lang/String;I)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    return-object v0
.end method

.method static frameworkBwFromHalBw(I)I
    .locals 5
    .param p0, "rttBw"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1506
    new-instance v0, Lcom/android/server/wifi/util/BitMask;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/util/BitMask;-><init>(I)V

    .line 1507
    .local v0, "checkoff":Lcom/android/server/wifi/util/BitMask;
    const/4 v1, 0x0

    .line 1508
    .local v1, "flags":I
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1509
    or-int/lit8 v1, v1, 0x1

    .line 1511
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1512
    or-int/lit8 v1, v1, 0x2

    .line 1514
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1515
    or-int/lit8 v1, v1, 0x4

    .line 1517
    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1518
    or-int/lit8 v1, v1, 0x8

    .line 1520
    :cond_3
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1521
    or-int/lit8 v1, v1, 0x10

    .line 1523
    :cond_4
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1524
    or-int/lit8 v1, v1, 0x20

    .line 1526
    :cond_5
    iget v2, v0, Lcom/android/server/wifi/util/BitMask;->value:I

    if-nez v2, :cond_6

    .line 1529
    return v1

    .line 1527
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static frameworkChannelWidthFromHalChannelWidth(I)I
    .locals 3
    .param p0, "halChannelWidth"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1422
    packed-switch p0, :pswitch_data_0

    .line 1434
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1432
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 1430
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 1428
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 1426
    :pswitch_3
    const/4 v0, 0x1

    return v0

    .line 1424
    :pswitch_4
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static frameworkFromHalLinkLayerStats(Landroid/hardware/wifi/V1_0/StaLinkLayerStats;)Lcom/android/server/wifi/WifiLinkLayerStats;
    .locals 5
    .param p0, "stats"    # Landroid/hardware/wifi/V1_0/StaLinkLayerStats;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 988
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 989
    :cond_0
    new-instance v0, Lcom/android/server/wifi/WifiLinkLayerStats;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiLinkLayerStats;-><init>()V

    .line 990
    .local v0, "out":Lcom/android/server/wifi/WifiLinkLayerStats;
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->beaconRx:I

    iput v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->beacon_rx:I

    .line 991
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->avgRssiMgmt:I

    iput v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->rssi_mgmt:I

    .line 994
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBePktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->rxMpdu:J

    iput-wide v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->rxmpdu_be:J

    .line 995
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBePktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->txMpdu:J

    iput-wide v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->txmpdu_be:J

    .line 996
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBePktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->lostMpdu:J

    iput-wide v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->lostmpdu_be:J

    .line 997
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBePktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->retries:J

    iput-wide v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->retries_be:J

    .line 999
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBkPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->rxMpdu:J

    iput-wide v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->rxmpdu_bk:J

    .line 1000
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBkPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->txMpdu:J

    iput-wide v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->txmpdu_bk:J

    .line 1001
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBkPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->lostMpdu:J

    iput-wide v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->lostmpdu_bk:J

    .line 1002
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeBkPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->retries:J

    iput-wide v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->retries_bk:J

    .line 1004
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeViPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->rxMpdu:J

    iput-wide v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->rxmpdu_vi:J

    .line 1005
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeViPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->txMpdu:J

    iput-wide v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->txmpdu_vi:J

    .line 1006
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeViPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->lostMpdu:J

    iput-wide v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->lostmpdu_vi:J

    .line 1007
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeViPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->retries:J

    iput-wide v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->retries_vi:J

    .line 1009
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeVoPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->rxMpdu:J

    iput-wide v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->rxmpdu_vo:J

    .line 1010
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeVoPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->txMpdu:J

    iput-wide v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->txmpdu_vo:J

    .line 1011
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeVoPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->lostMpdu:J

    iput-wide v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->lostmpdu_vo:J

    .line 1012
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->iface:Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->wmeVoPktStats:Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;

    iget-wide v1, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerIfacePacketStats;->retries:J

    iput-wide v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->retries_vo:J

    .line 1014
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->radios:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1015
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->radios:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/wifi/V1_0/StaLinkLayerRadioStats;

    .line 1016
    .local v1, "radioStats":Landroid/hardware/wifi/V1_0/StaLinkLayerRadioStats;
    iget v3, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMs:I

    iput v3, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->on_time:I

    .line 1017
    iget v3, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMs:I

    iput v3, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->tx_time:I

    .line 1018
    iget-object v3, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMsPerLevel:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->tx_time_per_level:[I

    .line 1019
    nop

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->tx_time_per_level:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 1020
    iget-object v3, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->tx_time_per_level:[I

    iget-object v4, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerRadioStats;->txTimeInMsPerLevel:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v2

    .line 1019
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1022
    .end local v2    # "i":I
    :cond_1
    iget v2, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerRadioStats;->rxTimeInMs:I

    iput v2, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->rx_time:I

    .line 1023
    iget v2, v1, Landroid/hardware/wifi/V1_0/StaLinkLayerRadioStats;->onTimeInMsForScan:I

    iput v2, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->on_time_scan:I

    .line 1025
    .end local v1    # "radioStats":Landroid/hardware/wifi/V1_0/StaLinkLayerRadioStats;
    :cond_2
    iget-wide v1, p0, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->timeStampInMs:J

    iput-wide v1, v0, Lcom/android/server/wifi/WifiLinkLayerStats;->timeStampInMs:J

    .line 1026
    return-object v0
.end method

.method static frameworkPeerFromHalPeer(I)I
    .locals 3
    .param p0, "halPeer"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1385
    packed-switch p0, :pswitch_data_0

    .line 1397
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1395
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 1393
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 1391
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 1389
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 1387
    :pswitch_4
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static frameworkPreambleFromHalPreamble(I)I
    .locals 5
    .param p0, "halPreamble"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1459
    new-instance v0, Lcom/android/server/wifi/util/BitMask;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/util/BitMask;-><init>(I)V

    .line 1460
    .local v0, "checkoff":Lcom/android/server/wifi/util/BitMask;
    const/4 v1, 0x0

    .line 1461
    .local v1, "flags":I
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1462
    or-int/lit8 v1, v1, 0x1

    .line 1464
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1465
    or-int/lit8 v1, v1, 0x2

    .line 1467
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1468
    or-int/lit8 v1, v1, 0x4

    .line 1470
    :cond_2
    iget v2, v0, Lcom/android/server/wifi/util/BitMask;->value:I

    if-nez v2, :cond_3

    .line 1473
    return v1

    .line 1471
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private frameworkResponderConfigFromHalRttResponder(Landroid/hardware/wifi/V1_0/RttResponder;)Landroid/net/wifi/RttManager$ResponderConfig;
    .locals 2
    .param p1, "info"    # Landroid/hardware/wifi/V1_0/RttResponder;

    .line 1638
    new-instance v0, Landroid/net/wifi/RttManager$ResponderConfig;

    invoke-direct {v0}, Landroid/net/wifi/RttManager$ResponderConfig;-><init>()V

    .line 1639
    .local v0, "config":Landroid/net/wifi/RttManager$ResponderConfig;
    iget-object v1, p1, Landroid/hardware/wifi/V1_0/RttResponder;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiChannelInfo;->centerFreq:I

    iput v1, v0, Landroid/net/wifi/RttManager$ResponderConfig;->frequency:I

    .line 1640
    iget-object v1, p1, Landroid/hardware/wifi/V1_0/RttResponder;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiChannelInfo;->centerFreq0:I

    iput v1, v0, Landroid/net/wifi/RttManager$ResponderConfig;->centerFreq0:I

    .line 1641
    iget-object v1, p1, Landroid/hardware/wifi/V1_0/RttResponder;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiChannelInfo;->centerFreq1:I

    iput v1, v0, Landroid/net/wifi/RttManager$ResponderConfig;->centerFreq1:I

    .line 1642
    iget-object v1, p1, Landroid/hardware/wifi/V1_0/RttResponder;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiChannelInfo;->width:I

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->frameworkChannelWidthFromHalChannelWidth(I)I

    move-result v1

    iput v1, v0, Landroid/net/wifi/RttManager$ResponderConfig;->channelWidth:I

    .line 1643
    iget v1, p1, Landroid/hardware/wifi/V1_0/RttResponder;->preamble:I

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->frameworkPreambleFromHalPreamble(I)I

    move-result v1

    iput v1, v0, Landroid/net/wifi/RttManager$ResponderConfig;->preamble:I

    .line 1644
    return-object v0
.end method

.method private static frameworkRingBufferFlagsFromHal(I)I
    .locals 5
    .param p0, "wifiDebugRingBufferFlag"    # I

    .line 2029
    new-instance v0, Lcom/android/server/wifi/util/BitMask;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/util/BitMask;-><init>(I)V

    .line 2030
    .local v0, "checkoff":Lcom/android/server/wifi/util/BitMask;
    const/4 v1, 0x0

    .line 2031
    .local v1, "flags":I
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2032
    or-int/lit8 v1, v1, 0x1

    .line 2034
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2035
    or-int/lit8 v1, v1, 0x2

    .line 2037
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2038
    or-int/lit8 v1, v1, 0x4

    .line 2040
    :cond_2
    iget v2, v0, Lcom/android/server/wifi/util/BitMask;->value:I

    if-nez v2, :cond_3

    .line 2043
    return v1

    .line 2041
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown WifiDebugRingBufferFlag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/wifi/util/BitMask;->value:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static frameworkRttResultFromHalRttResult(Landroid/hardware/wifi/V1_0/RttResult;)Landroid/net/wifi/RttManager$RttResult;
    .locals 3
    .param p0, "result"    # Landroid/hardware/wifi/V1_0/RttResult;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1269
    new-instance v0, Landroid/net/wifi/RttManager$RttResult;

    invoke-direct {v0}, Landroid/net/wifi/RttManager$RttResult;-><init>()V

    .line 1270
    .local v0, "ans":Landroid/net/wifi/RttManager$RttResult;
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->addr:[B

    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/RttManager$RttResult;->bssid:Ljava/lang/String;

    .line 1271
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->burstNum:I

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->burstNumber:I

    .line 1272
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->measurementNumber:I

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->measurementFrameNumber:I

    .line 1273
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->successNumber:I

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->successMeasurementFrameNumber:I

    .line 1274
    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->numberPerBurstPeer:B

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->frameNumberPerBurstPeer:I

    .line 1275
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->status:I

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->status:I

    .line 1276
    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->retryAfterDuration:B

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->retryAfterDuration:I

    .line 1277
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->type:I

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->measurementType:I

    .line 1278
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->rssi:I

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->rssi:I

    .line 1279
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->rssiSpread:I

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->rssiSpread:I

    .line 1281
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->txRate:Landroid/hardware/wifi/V1_0/WifiRateInfo;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiRateInfo;->bitRateInKbps:I

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->txRate:I

    .line 1282
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->rxRate:Landroid/hardware/wifi/V1_0/WifiRateInfo;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiRateInfo;->bitRateInKbps:I

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->rxRate:I

    .line 1283
    iget-wide v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->rtt:J

    iput-wide v1, v0, Landroid/net/wifi/RttManager$RttResult;->rtt:J

    .line 1284
    iget-wide v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->rttSd:J

    iput-wide v1, v0, Landroid/net/wifi/RttManager$RttResult;->rttStandardDeviation:J

    .line 1285
    iget-wide v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->rttSpread:J

    iput-wide v1, v0, Landroid/net/wifi/RttManager$RttResult;->rttSpread:J

    .line 1287
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->distanceInMm:I

    div-int/lit8 v1, v1, 0xa

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->distance:I

    .line 1288
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->distanceSdInMm:I

    div-int/lit8 v1, v1, 0xa

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->distanceStandardDeviation:I

    .line 1289
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->distanceSpreadInMm:I

    div-int/lit8 v1, v1, 0xa

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->distanceSpread:I

    .line 1291
    iget-wide v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->timeStampInUs:J

    iput-wide v1, v0, Landroid/net/wifi/RttManager$RttResult;->ts:J

    .line 1292
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->burstDurationInMs:I

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->burstDuration:I

    .line 1293
    iget v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->negotiatedBurstNum:I

    iput v1, v0, Landroid/net/wifi/RttManager$RttResult;->negotiatedBurstNum:I

    .line 1294
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->lci:Landroid/hardware/wifi/V1_0/WifiInformationElement;

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->ieFromHal(Landroid/hardware/wifi/V1_0/WifiInformationElement;)Landroid/net/wifi/RttManager$WifiInformationElement;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    .line 1295
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/RttResult;->lcr:Landroid/hardware/wifi/V1_0/WifiInformationElement;

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->ieFromHal(Landroid/hardware/wifi/V1_0/WifiInformationElement;)Landroid/net/wifi/RttManager$WifiInformationElement;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    .line 1296
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttResult;->secure:Z

    .line 1297
    return-object v0
.end method

.method static frameworkRttTypeFromHalRttType(I)I
    .locals 3
    .param p0, "halType"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1355
    packed-switch p0, :pswitch_data_0

    .line 1361
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1359
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 1357
    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private frameworkToHalTxPowerScenario(I)I
    .locals 3
    .param p1, "scenario"    # I

    .line 2692
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2694
    const/4 v0, 0x0

    return v0

    .line 2696
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad scenario: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getApIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiApIface;
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 506
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 507
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiApIfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/wifi/V1_0/IWifiApIface;

    monitor-exit v0

    return-object v1

    .line 508
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getRttResponder()Landroid/hardware/wifi/V1_0/RttResponder;
    .locals 5

    .line 1615
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1616
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    .line 1617
    :cond_0
    new-instance v1, Lcom/android/server/wifi/WifiVendorHal$3AnswerBox;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiVendorHal$3AnswerBox;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1619
    .local v1, "answer":Lcom/android/server/wifi/WifiVendorHal$3AnswerBox;
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    new-instance v4, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$xptizMJG5Idss3aicEI09xlMbnE;

    invoke-direct {v4, p0, v1}, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$xptizMJG5Idss3aicEI09xlMbnE;-><init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$3AnswerBox;)V

    invoke-interface {v3, v4}, Landroid/hardware/wifi/V1_0/IWifiRttController;->getResponderInfo(Landroid/hardware/wifi/V1_0/IWifiRttController$getResponderInfoCallback;)V

    .line 1623
    iget-object v3, v1, Lcom/android/server/wifi/WifiVendorHal$3AnswerBox;->value:Landroid/hardware/wifi/V1_0/RttResponder;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v3

    .line 1624
    :catch_0
    move-exception v3

    .line 1625
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 1626
    monitor-exit v0

    return-object v2

    .line 1628
    .end local v1    # "answer":Lcom/android/server/wifi/WifiVendorHal$3AnswerBox;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 416
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 417
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/wifi/V1_0/IWifiStaIface;

    monitor-exit v0

    return-object v1

    .line 418
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static halBwFromFrameworkBw(I)I
    .locals 5
    .param p0, "rttManagerBandwidth"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1478
    new-instance v0, Lcom/android/server/wifi/util/BitMask;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/util/BitMask;-><init>(I)V

    .line 1479
    .local v0, "checkoff":Lcom/android/server/wifi/util/BitMask;
    const/4 v1, 0x0

    .line 1480
    .local v1, "flags":I
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1481
    or-int/lit8 v1, v1, 0x1

    .line 1483
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1484
    or-int/lit8 v1, v1, 0x2

    .line 1486
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1487
    or-int/lit8 v1, v1, 0x4

    .line 1489
    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1490
    or-int/lit8 v1, v1, 0x8

    .line 1492
    :cond_3
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1493
    or-int/lit8 v1, v1, 0x10

    .line 1495
    :cond_4
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1496
    or-int/lit8 v1, v1, 0x20

    .line 1498
    :cond_5
    iget v2, v0, Lcom/android/server/wifi/util/BitMask;->value:I

    if-nez v2, :cond_6

    .line 1501
    return v1

    .line 1499
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static halChannelWidthFromFrameworkChannelWidth(I)I
    .locals 3
    .param p0, "frameworkChannelWidth"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1404
    packed-switch p0, :pswitch_data_0

    .line 1416
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1414
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 1412
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 1410
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 1408
    :pswitch_3
    const/4 v0, 0x1

    return v0

    .line 1406
    :pswitch_4
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static halPeerFromFrameworkPeer(I)I
    .locals 3
    .param p0, "frameworkPeer"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1367
    packed-switch p0, :pswitch_data_0

    .line 1379
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1377
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 1375
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 1373
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 1371
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 1369
    :pswitch_4
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static halPreambleFromFrameworkPreamble(I)I
    .locals 5
    .param p0, "rttManagerPreamble"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1440
    new-instance v0, Lcom/android/server/wifi/util/BitMask;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/util/BitMask;-><init>(I)V

    .line 1441
    .local v0, "checkoff":Lcom/android/server/wifi/util/BitMask;
    const/4 v1, 0x0

    .line 1442
    .local v1, "flags":I
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1443
    or-int/lit8 v1, v1, 0x1

    .line 1445
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1446
    or-int/lit8 v1, v1, 0x2

    .line 1448
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1449
    or-int/lit8 v1, v1, 0x4

    .line 1451
    :cond_2
    iget v2, v0, Lcom/android/server/wifi/util/BitMask;->value:I

    if-nez v2, :cond_3

    .line 1454
    return v1

    .line 1452
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static halRttConfigArrayFromFrameworkRttParamsArray([Landroid/net/wifi/RttManager$RttParams;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "params"    # [Landroid/net/wifi/RttManager$RttParams;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/net/wifi/RttManager$RttParams;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/wifi/V1_0/RttConfig;",
            ">;"
        }
    .end annotation

    .line 1535
    array-length v0, p0

    .line 1536
    .local v0, "length":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1537
    .local v1, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/RttConfig;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1538
    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/android/server/wifi/WifiVendorHal;->halRttConfigFromFrameworkRttParams(Landroid/net/wifi/RttManager$RttParams;)Landroid/hardware/wifi/V1_0/RttConfig;

    move-result-object v3

    .line 1539
    .local v3, "config":Landroid/hardware/wifi/V1_0/RttConfig;
    if-eqz v3, :cond_0

    .line 1540
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1537
    .end local v3    # "config":Landroid/hardware/wifi/V1_0/RttConfig;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1543
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method static halRttConfigFromFrameworkRttParams(Landroid/net/wifi/RttManager$RttParams;)Landroid/hardware/wifi/V1_0/RttConfig;
    .locals 5
    .param p0, "params"    # Landroid/net/wifi/RttManager$RttParams;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1315
    new-instance v0, Landroid/hardware/wifi/V1_0/RttConfig;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/RttConfig;-><init>()V

    .line 1316
    .local v0, "rttConfig":Landroid/hardware/wifi/V1_0/RttConfig;
    iget-object v1, p0, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1317
    iget-object v1, p0, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 1318
    .local v1, "addr":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Landroid/hardware/wifi/V1_0/RttConfig;->addr:[B

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 1319
    iget-object v3, v0, Landroid/hardware/wifi/V1_0/RttConfig;->addr:[B

    aget-byte v4, v1, v2

    aput-byte v4, v3, v2

    .line 1318
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1322
    .end local v1    # "addr":[B
    .end local v2    # "i":I
    :cond_0
    iget v1, p0, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->halRttTypeFromFrameworkRttType(I)I

    move-result v1

    iput v1, v0, Landroid/hardware/wifi/V1_0/RttConfig;->type:I

    .line 1323
    iget v1, p0, Landroid/net/wifi/RttManager$RttParams;->deviceType:I

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->halPeerFromFrameworkPeer(I)I

    move-result v1

    iput v1, v0, Landroid/hardware/wifi/V1_0/RttConfig;->peer:I

    .line 1324
    iget-object v1, v0, Landroid/hardware/wifi/V1_0/RttConfig;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    iget v2, p0, Landroid/net/wifi/RttManager$RttParams;->channelWidth:I

    invoke-static {v2}, Lcom/android/server/wifi/WifiVendorHal;->halChannelWidthFromFrameworkChannelWidth(I)I

    move-result v2

    iput v2, v1, Landroid/hardware/wifi/V1_0/WifiChannelInfo;->width:I

    .line 1325
    iget-object v1, v0, Landroid/hardware/wifi/V1_0/RttConfig;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    iget v2, p0, Landroid/net/wifi/RttManager$RttParams;->frequency:I

    iput v2, v1, Landroid/hardware/wifi/V1_0/WifiChannelInfo;->centerFreq:I

    .line 1326
    iget-object v1, v0, Landroid/hardware/wifi/V1_0/RttConfig;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    iget v2, p0, Landroid/net/wifi/RttManager$RttParams;->centerFreq0:I

    iput v2, v1, Landroid/hardware/wifi/V1_0/WifiChannelInfo;->centerFreq0:I

    .line 1327
    iget-object v1, v0, Landroid/hardware/wifi/V1_0/RttConfig;->channel:Landroid/hardware/wifi/V1_0/WifiChannelInfo;

    iget v2, p0, Landroid/net/wifi/RttManager$RttParams;->centerFreq1:I

    iput v2, v1, Landroid/hardware/wifi/V1_0/WifiChannelInfo;->centerFreq1:I

    .line 1328
    iget v1, p0, Landroid/net/wifi/RttManager$RttParams;->interval:I

    iput v1, v0, Landroid/hardware/wifi/V1_0/RttConfig;->burstPeriod:I

    .line 1329
    iget v1, p0, Landroid/net/wifi/RttManager$RttParams;->numberBurst:I

    iput v1, v0, Landroid/hardware/wifi/V1_0/RttConfig;->numBurst:I

    .line 1330
    iget v1, p0, Landroid/net/wifi/RttManager$RttParams;->numSamplesPerBurst:I

    iput v1, v0, Landroid/hardware/wifi/V1_0/RttConfig;->numFramesPerBurst:I

    .line 1331
    iget v1, p0, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerMeasurementFrame:I

    iput v1, v0, Landroid/hardware/wifi/V1_0/RttConfig;->numRetriesPerRttFrame:I

    .line 1332
    iget v1, p0, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerFTMR:I

    iput v1, v0, Landroid/hardware/wifi/V1_0/RttConfig;->numRetriesPerFtmr:I

    .line 1333
    iget-boolean v1, p0, Landroid/net/wifi/RttManager$RttParams;->LCIRequest:Z

    iput-boolean v1, v0, Landroid/hardware/wifi/V1_0/RttConfig;->mustRequestLci:Z

    .line 1334
    iget-boolean v1, p0, Landroid/net/wifi/RttManager$RttParams;->LCRRequest:Z

    iput-boolean v1, v0, Landroid/hardware/wifi/V1_0/RttConfig;->mustRequestLcr:Z

    .line 1335
    iget v1, p0, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    iput v1, v0, Landroid/hardware/wifi/V1_0/RttConfig;->burstDuration:I

    .line 1336
    iget v1, p0, Landroid/net/wifi/RttManager$RttParams;->preamble:I

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->halPreambleFromFrameworkPreamble(I)I

    move-result v1

    iput v1, v0, Landroid/hardware/wifi/V1_0/RttConfig;->preamble:I

    .line 1337
    iget v1, p0, Landroid/net/wifi/RttManager$RttParams;->bandwidth:I

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->halBwFromFrameworkBw(I)I

    move-result v1

    iput v1, v0, Landroid/hardware/wifi/V1_0/RttConfig;->bw:I

    .line 1338
    return-object v0
.end method

.method static halRttTypeFromFrameworkRttType(I)I
    .locals 3
    .param p0, "frameworkRttType"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1343
    packed-switch p0, :pswitch_data_0

    .line 1349
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1347
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 1345
    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private halToFrameworkPktFateFrameType(I)B
    .locals 3
    .param p1, "type"    # I

    .line 2168
    packed-switch p1, :pswitch_data_0

    .line 2176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2174
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 2172
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 2170
    :pswitch_2
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private halToFrameworkRxPktFate(I)B
    .locals 3
    .param p1, "type"    # I

    .line 2181
    packed-switch p1, :pswitch_data_0

    .line 2205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2203
    :pswitch_0
    const/16 v0, 0xa

    return v0

    .line 2201
    :pswitch_1
    const/16 v0, 0x9

    return v0

    .line 2199
    :pswitch_2
    const/16 v0, 0x8

    return v0

    .line 2197
    :pswitch_3
    const/4 v0, 0x7

    return v0

    .line 2195
    :pswitch_4
    const/4 v0, 0x6

    return v0

    .line 2193
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 2191
    :pswitch_6
    const/4 v0, 0x4

    return v0

    .line 2189
    :pswitch_7
    const/4 v0, 0x3

    return v0

    .line 2187
    :pswitch_8
    const/4 v0, 0x2

    return v0

    .line 2185
    :pswitch_9
    const/4 v0, 0x1

    return v0

    .line 2183
    :pswitch_a
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method private halToFrameworkTxPktFate(I)B
    .locals 3
    .param p1, "type"    # I

    .line 2210
    packed-switch p1, :pswitch_data_0

    .line 2232
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2230
    :pswitch_0
    const/16 v0, 0x9

    return v0

    .line 2228
    :pswitch_1
    const/16 v0, 0x8

    return v0

    .line 2226
    :pswitch_2
    const/4 v0, 0x7

    return v0

    .line 2224
    :pswitch_3
    const/4 v0, 0x6

    return v0

    .line 2222
    :pswitch_4
    const/4 v0, 0x5

    return v0

    .line 2220
    :pswitch_5
    const/4 v0, 0x4

    return v0

    .line 2218
    :pswitch_6
    const/4 v0, 0x3

    return v0

    .line 2216
    :pswitch_7
    const/4 v0, 0x2

    return v0

    .line 2214
    :pswitch_8
    const/4 v0, 0x1

    return v0

    .line 2212
    :pswitch_9
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
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

.method private static halToFrameworkWakeReasons(Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;)Landroid/net/wifi/WifiWakeReasonAndCounts;
    .locals 2
    .param p0, "h"    # Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;

    .line 2464
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2465
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiWakeReasonAndCounts;

    invoke-direct {v0}, Landroid/net/wifi/WifiWakeReasonAndCounts;-><init>()V

    .line 2466
    .local v0, "ans":Landroid/net/wifi/WifiWakeReasonAndCounts;
    iget v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalCmdEventWakeCnt:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->totalCmdEventWake:I

    .line 2467
    iget v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalDriverFwLocalWakeCnt:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->totalDriverFwLocalWake:I

    .line 2468
    iget v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalRxPacketWakeCnt:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->totalRxDataWake:I

    .line 2469
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxPktWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;->rxUnicastCnt:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->rxUnicast:I

    .line 2470
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxPktWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;->rxMulticastCnt:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->rxMulticast:I

    .line 2471
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxPktWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;->rxBroadcastCnt:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->rxBroadcast:I

    .line 2472
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxIcmpPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;->icmpPkt:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp:I

    .line 2473
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxIcmpPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;->icmp6Pkt:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp6:I

    .line 2474
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxIcmpPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;->icmp6Ra:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp6Ra:I

    .line 2475
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxIcmpPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;->icmp6Na:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp6Na:I

    .line 2476
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxIcmpPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;->icmp6Ns:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp6Ns:I

    .line 2477
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxMulticastPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;->ipv4RxMulticastAddrCnt:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->ipv4RxMulticast:I

    .line 2478
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxMulticastPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;->ipv6RxMulticastAddrCnt:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->ipv6Multicast:I

    .line 2479
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxMulticastPkWakeDetails:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;

    iget v1, v1, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;->otherRxMulticastAddrCnt:I

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->otherRxMulticast:I

    .line 2480
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->cmdEventWakeCntPerType:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->intsFromArrayList(Ljava/util/ArrayList;)[I

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->cmdEventWakeCntArray:[I

    .line 2481
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->driverFwLocalWakeCntPerType:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->intsFromArrayList(Ljava/util/ArrayList;)[I

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->driverFWLocalWakeCntArray:[I

    .line 2482
    return-object v0
.end method

.method private handleRemoteException(Landroid/os/RemoteException;)V
    .locals 3
    .param p1, "e"    # Landroid/os/RemoteException;

    .line 318
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiVendorHal;->niceMethodName([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "methodName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "% RemoteException in HIDL call %"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 320
    invoke-direct {p0}, Lcom/android/server/wifi/WifiVendorHal;->clearState()V

    .line 321
    return-void
.end method

.method private static hidlIeArrayToFrameworkIeBlob(Ljava/util/ArrayList;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/wifi/V1_0/WifiInformationElement;",
            ">;)[B"
        }
    .end annotation

    .line 2739
    .local p0, "ies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/WifiInformationElement;>;"
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2740
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2741
    .local v0, "ieBlob":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/wifi/V1_0/WifiInformationElement;

    .line 2742
    .local v2, "ie":Landroid/hardware/wifi/V1_0/WifiInformationElement;
    iget-byte v3, v2, Landroid/hardware/wifi/V1_0/WifiInformationElement;->id:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2743
    iget-object v3, v2, Landroid/hardware/wifi/V1_0/WifiInformationElement;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2744
    .end local v2    # "ie":Landroid/hardware/wifi/V1_0/WifiInformationElement;
    goto :goto_0

    .line 2745
    :cond_1
    invoke-static {v0}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v1

    return-object v1

    .line 2739
    .end local v0    # "ieBlob":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :cond_2
    :goto_1
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method private static hidlToFrameworkScanDataFlags(I)I
    .locals 1
    .param p0, "flag"    # I

    .line 2776
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 2777
    return v0

    .line 2779
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static hidlToFrameworkScanDatas(ILjava/util/ArrayList;)[Landroid/net/wifi/WifiScanner$ScanData;
    .locals 14
    .param p0, "cmdId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/wifi/V1_0/StaScanData;",
            ">;)[",
            "Landroid/net/wifi/WifiScanner$ScanData;"
        }
    .end annotation

    .line 2785
    .local p1, "scanDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/StaScanData;>;"
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2786
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/wifi/WifiScanner$ScanData;

    .line 2787
    .local v0, "frameworkScanDatas":[Landroid/net/wifi/WifiScanner$ScanData;
    const/4 v1, 0x0

    .line 2788
    .local v1, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/wifi/V1_0/StaScanData;

    .line 2789
    .local v3, "scanData":Landroid/hardware/wifi/V1_0/StaScanData;
    iget v4, v3, Landroid/hardware/wifi/V1_0/StaScanData;->flags:I

    invoke-static {v4}, Lcom/android/server/wifi/WifiVendorHal;->hidlToFrameworkScanDataFlags(I)I

    move-result v4

    .line 2790
    .local v4, "flags":I
    iget-object v5, v3, Landroid/hardware/wifi/V1_0/StaScanData;->results:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/android/server/wifi/WifiVendorHal;->hidlToFrameworkScanResults(Ljava/util/ArrayList;)[Landroid/net/wifi/ScanResult;

    move-result-object v11

    .line 2791
    .local v11, "frameworkScanResults":[Landroid/net/wifi/ScanResult;
    add-int/lit8 v12, v1, 0x1

    .local v12, "i":I
    new-instance v13, Landroid/net/wifi/WifiScanner$ScanData;

    iget v8, v3, Landroid/hardware/wifi/V1_0/StaScanData;->bucketsScanned:I

    const/4 v9, 0x0

    move-object v5, v13

    move v6, p0

    move v7, v4

    move-object v10, v11

    invoke-direct/range {v5 .. v10}, Landroid/net/wifi/WifiScanner$ScanData;-><init>(IIIZ[Landroid/net/wifi/ScanResult;)V

    aput-object v13, v0, v1

    .line 2794
    .end local v1    # "i":I
    .end local v3    # "scanData":Landroid/hardware/wifi/V1_0/StaScanData;
    .end local v4    # "flags":I
    .end local v11    # "frameworkScanResults":[Landroid/net/wifi/ScanResult;
    nop

    .line 2788
    move v1, v12

    goto :goto_0

    .line 2795
    .end local v12    # "i":I
    .restart local v1    # "i":I
    :cond_1
    return-object v0

    .line 2785
    .end local v0    # "frameworkScanDatas":[Landroid/net/wifi/WifiScanner$ScanData;
    .end local v1    # "i":I
    :cond_2
    :goto_1
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/net/wifi/WifiScanner$ScanData;

    return-object v0
.end method

.method private static hidlToFrameworkScanResult(Landroid/hardware/wifi/V1_0/StaScanResult;)Landroid/net/wifi/ScanResult;
    .locals 3
    .param p0, "scanResult"    # Landroid/hardware/wifi/V1_0/StaScanResult;

    .line 2750
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2751
    :cond_0
    new-instance v0, Landroid/net/wifi/ScanResult;

    invoke-direct {v0}, Landroid/net/wifi/ScanResult;-><init>()V

    .line 2752
    .local v0, "frameworkScanResult":Landroid/net/wifi/ScanResult;
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->encodeSsid(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 2753
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->ssid:Ljava/util/ArrayList;

    .line 2754
    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/WifiSsid;->createFromByteArray([B)Landroid/net/wifi/WifiSsid;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 2755
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->bssid:[B

    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 2756
    iget v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->rssi:I

    iput v1, v0, Landroid/net/wifi/ScanResult;->level:I

    .line 2757
    iget v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->frequency:I

    iput v1, v0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 2758
    iget-wide v1, p0, Landroid/hardware/wifi/V1_0/StaScanResult;->timeStampInUs:J

    iput-wide v1, v0, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 2759
    return-object v0
.end method

.method private static hidlToFrameworkScanResults(Ljava/util/ArrayList;)[Landroid/net/wifi/ScanResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/wifi/V1_0/StaScanResult;",
            ">;)[",
            "Landroid/net/wifi/ScanResult;"
        }
    .end annotation

    .line 2763
    .local p0, "scanResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/StaScanResult;>;"
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2764
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/wifi/ScanResult;

    .line 2765
    .local v0, "frameworkScanResults":[Landroid/net/wifi/ScanResult;
    const/4 v1, 0x0

    .line 2766
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/wifi/V1_0/StaScanResult;

    .line 2767
    .local v3, "scanResult":Landroid/hardware/wifi/V1_0/StaScanResult;
    add-int/lit8 v4, v1, 0x1

    .local v4, "i":I
    invoke-static {v3}, Lcom/android/server/wifi/WifiVendorHal;->hidlToFrameworkScanResult(Landroid/hardware/wifi/V1_0/StaScanResult;)Landroid/net/wifi/ScanResult;

    move-result-object v5

    aput-object v5, v0, v1

    .line 2768
    .end local v1    # "i":I
    .end local v3    # "scanResult":Landroid/hardware/wifi/V1_0/StaScanResult;
    nop

    .line 2766
    move v1, v4

    goto :goto_0

    .line 2769
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_1
    return-object v0

    .line 2763
    .end local v0    # "frameworkScanResults":[Landroid/net/wifi/ScanResult;
    .end local v1    # "i":I
    :cond_2
    :goto_1
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/net/wifi/ScanResult;

    return-object v0
.end method

.method static ieFromHal(Landroid/hardware/wifi/V1_0/WifiInformationElement;)Landroid/net/wifi/RttManager$WifiInformationElement;
    .locals 2
    .param p0, "ie"    # Landroid/hardware/wifi/V1_0/WifiInformationElement;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1306
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1307
    :cond_0
    new-instance v0, Landroid/net/wifi/RttManager$WifiInformationElement;

    invoke-direct {v0}, Landroid/net/wifi/RttManager$WifiInformationElement;-><init>()V

    .line 1308
    .local v0, "ans":Landroid/net/wifi/RttManager$WifiInformationElement;
    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/WifiInformationElement;->id:B

    iput-byte v1, v0, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    .line 1309
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiInformationElement;->data:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    .line 1310
    return-object v0
.end method

.method private static intsFromArrayList(Ljava/util/ArrayList;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 2449
    .local p0, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2450
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 2451
    .local v0, "b":[I
    const/4 v1, 0x0

    .line 2452
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .local v3, "e":Ljava/lang/Integer;
    add-int/lit8 v4, v1, 0x1

    .local v4, "i":I
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v1

    .end local v1    # "i":I
    .end local v3    # "e":Ljava/lang/Integer;
    move v1, v4

    goto :goto_0

    .line 2453
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static synthetic lambda$getApfCapabilities$6(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$4AnswerBox;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/StaApfPacketFilterCapabilities;)V
    .locals 4
    .param p1, "box"    # Lcom/android/server/wifi/WifiVendorHal$4AnswerBox;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "capabilities"    # Landroid/hardware/wifi/V1_0/StaApfPacketFilterCapabilities;

    .line 1771
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1772
    :cond_0
    new-instance v0, Landroid/net/apf/ApfCapabilities;

    iget v1, p3, Landroid/hardware/wifi/V1_0/StaApfPacketFilterCapabilities;->version:I

    iget v2, p3, Landroid/hardware/wifi/V1_0/StaApfPacketFilterCapabilities;->maxLength:I

    sget v3, Landroid/system/OsConstants;->ARPHRD_ETHER:I

    invoke-direct {v0, v1, v2, v3}, Landroid/net/apf/ApfCapabilities;-><init>(III)V

    iput-object v0, p1, Lcom/android/server/wifi/WifiVendorHal$4AnswerBox;->value:Landroid/net/apf/ApfCapabilities;

    .line 1776
    return-void
.end method

.method public static synthetic lambda$getBgScanCapabilities$0(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiNative$ScanCapabilities;Landroid/util/MutableBoolean;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/StaBackgroundScanCapabilities;)V
    .locals 2
    .param p1, "out"    # Lcom/android/server/wifi/WifiNative$ScanCapabilities;
    .param p2, "ans"    # Landroid/util/MutableBoolean;
    .param p3, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p4, "cap"    # Landroid/hardware/wifi/V1_0/StaBackgroundScanCapabilities;

    .line 705
    invoke-direct {p0, p3}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "scan capabilities %"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-virtual {p4}, Landroid/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 707
    iget v0, p4, Landroid/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxCacheSize:I

    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_scan_cache_size:I

    .line 708
    iget v0, p4, Landroid/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxApCachePerScan:I

    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_ap_cache_per_scan:I

    .line 709
    iget v0, p4, Landroid/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxBuckets:I

    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_scan_buckets:I

    .line 710
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_rssi_sample_size:I

    .line 711
    iget v0, p4, Landroid/hardware/wifi/V1_0/StaBackgroundScanCapabilities;->maxReportingThreshold:I

    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_scan_reporting_threshold:I

    .line 712
    const/4 v0, 0x1

    iput-boolean v0, p2, Landroid/util/MutableBoolean;->value:Z

    .line 713
    return-void
.end method

.method public static synthetic lambda$getDriverStateDump$11(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$8AnswerBox;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "ans"    # Lcom/android/server/wifi/WifiVendorHal$8AnswerBox;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "blob"    # Ljava/util/ArrayList;

    .line 2134
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2135
    :cond_0
    invoke-static {p3}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/wifi/WifiVendorHal$8AnswerBox;->value:[B

    .line 2136
    return-void
.end method

.method public static synthetic lambda$getFwMemoryDump$10(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$7AnswerBox;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "ans"    # Lcom/android/server/wifi/WifiVendorHal$7AnswerBox;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "blob"    # Ljava/util/ArrayList;

    .line 2111
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2112
    :cond_0
    invoke-static {p3}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/wifi/WifiVendorHal$7AnswerBox;->value:[B

    .line 2113
    return-void
.end method

.method public static synthetic lambda$getRingBufferStatus$9(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$6AnswerBox;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "ans"    # Lcom/android/server/wifi/WifiVendorHal$6AnswerBox;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "ringBuffers"    # Ljava/util/ArrayList;

    .line 2071
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2072
    :cond_0
    invoke-static {p3}, Lcom/android/server/wifi/WifiVendorHal;->makeRingBufferStatusArray(Ljava/util/ArrayList;)[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/wifi/WifiVendorHal$6AnswerBox;->value:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    .line 2073
    return-void
.end method

.method public static synthetic lambda$getRoamingCapabilities$15(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiNative$RoamingCapabilities;Landroid/util/MutableBoolean;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/StaRoamingCapabilities;)V
    .locals 1
    .param p1, "out"    # Lcom/android/server/wifi/WifiNative$RoamingCapabilities;
    .param p2, "ok"    # Landroid/util/MutableBoolean;
    .param p3, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p4, "cap"    # Landroid/hardware/wifi/V1_0/StaRoamingCapabilities;

    .line 2552
    invoke-direct {p0, p3}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2553
    :cond_0
    iget v0, p4, Landroid/hardware/wifi/V1_0/StaRoamingCapabilities;->maxBlacklistSize:I

    iput v0, p1, Lcom/android/server/wifi/WifiNative$RoamingCapabilities;->maxBlacklistSize:I

    .line 2554
    iget v0, p4, Landroid/hardware/wifi/V1_0/StaRoamingCapabilities;->maxWhitelistSize:I

    iput v0, p1, Lcom/android/server/wifi/WifiNative$RoamingCapabilities;->maxWhitelistSize:I

    .line 2555
    const/4 v0, 0x1

    iput-boolean v0, p2, Landroid/util/MutableBoolean;->value:Z

    .line 2556
    return-void
.end method

.method public static synthetic lambda$getRttCapabilities$4(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$2AnswerBox;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/RttCapabilities;)V
    .locals 2
    .param p1, "box"    # Lcom/android/server/wifi/WifiVendorHal$2AnswerBox;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "capabilities"    # Landroid/hardware/wifi/V1_0/RttCapabilities;

    .line 1214
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1215
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "rtt capabilites %"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-virtual {p3}, Landroid/hardware/wifi/V1_0/RttCapabilities;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1216
    new-instance v0, Landroid/net/wifi/RttManager$RttCapabilities;

    invoke-direct {v0}, Landroid/net/wifi/RttManager$RttCapabilities;-><init>()V

    .line 1217
    .local v0, "ans":Landroid/net/wifi/RttManager$RttCapabilities;
    iget-boolean v1, p3, Landroid/hardware/wifi/V1_0/RttCapabilities;->rttOneSidedSupported:Z

    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->oneSidedRttSupported:Z

    .line 1218
    iget-boolean v1, p3, Landroid/hardware/wifi/V1_0/RttCapabilities;->rttFtmSupported:Z

    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->twoSided11McRttSupported:Z

    .line 1219
    iget-boolean v1, p3, Landroid/hardware/wifi/V1_0/RttCapabilities;->lciSupported:Z

    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->lciSupported:Z

    .line 1220
    iget-boolean v1, p3, Landroid/hardware/wifi/V1_0/RttCapabilities;->lcrSupported:Z

    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->lcrSupported:Z

    .line 1221
    iget v1, p3, Landroid/hardware/wifi/V1_0/RttCapabilities;->preambleSupport:I

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->frameworkPreambleFromHalPreamble(I)I

    move-result v1

    iput v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    .line 1223
    iget v1, p3, Landroid/hardware/wifi/V1_0/RttCapabilities;->bwSupport:I

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->frameworkBwFromHalBw(I)I

    move-result v1

    iput v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    .line 1224
    iget-boolean v1, p3, Landroid/hardware/wifi/V1_0/RttCapabilities;->responderSupported:Z

    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->responderSupported:Z

    .line 1225
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->secureRttSupported:Z

    .line 1226
    iget-byte v1, p3, Landroid/hardware/wifi/V1_0/RttCapabilities;->mcVersion:B

    and-int/lit16 v1, v1, 0xff

    iput v1, v0, Landroid/net/wifi/RttManager$RttCapabilities;->mcVersion:I

    .line 1227
    iput-object v0, p1, Lcom/android/server/wifi/WifiVendorHal$2AnswerBox;->value:Landroid/net/wifi/RttManager$RttCapabilities;

    .line 1228
    return-void
.end method

.method public static synthetic lambda$getRttResponder$5(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$3AnswerBox;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/RttResponder;)V
    .locals 1
    .param p1, "answer"    # Lcom/android/server/wifi/WifiVendorHal$3AnswerBox;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "info"    # Landroid/hardware/wifi/V1_0/RttResponder;

    .line 1620
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1621
    :cond_0
    iput-object p3, p1, Lcom/android/server/wifi/WifiVendorHal$3AnswerBox;->value:Landroid/hardware/wifi/V1_0/RttResponder;

    .line 1622
    return-void
.end method

.method public static synthetic lambda$getRxPktFates$13(Lcom/android/server/wifi/WifiVendorHal;[Lcom/android/server/wifi/WifiNative$RxFateReport;Landroid/util/MutableBoolean;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 19
    .param p1, "reportBufs"    # [Lcom/android/server/wifi/WifiNative$RxFateReport;
    .param p2, "ok"    # Landroid/util/MutableBoolean;
    .param p3, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p4, "fates"    # Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2295
    move-object/from16 v2, p3

    invoke-direct {v0, v2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 2296
    :cond_0
    const/4 v3, 0x0

    .line 2297
    .local v3, "i":I
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;

    .line 2298
    .local v5, "fate":Landroid/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;
    array-length v6, v1

    if-lt v3, v6, :cond_1

    .end local v5    # "fate":Landroid/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;
    goto :goto_1

    .line 2299
    .restart local v5    # "fate":Landroid/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;
    :cond_1
    iget v6, v5, Landroid/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;->fate:I

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiVendorHal;->halToFrameworkRxPktFate(I)B

    move-result v6

    .line 2300
    .local v6, "code":B
    iget-object v7, v5, Landroid/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;->frameInfo:Landroid/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;

    iget-wide v13, v7, Landroid/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->driverTimestampUsec:J

    .line 2301
    .local v13, "us":J
    iget-object v7, v5, Landroid/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;->frameInfo:Landroid/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;

    iget v7, v7, Landroid/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->frameType:I

    .line 2302
    invoke-direct {v0, v7}, Lcom/android/server/wifi/WifiVendorHal;->halToFrameworkPktFateFrameType(I)B

    move-result v15

    .line 2303
    .local v15, "type":B
    iget-object v7, v5, Landroid/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;->frameInfo:Landroid/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;

    iget-object v7, v7, Landroid/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->frameContent:Ljava/util/ArrayList;

    .line 2304
    invoke-static {v7}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v16

    .line 2306
    .local v16, "frame":[B
    add-int/lit8 v17, v3, 0x1

    .local v17, "i":I
    new-instance v18, Lcom/android/server/wifi/WifiNative$RxFateReport;

    move-object/from16 v7, v18

    move v8, v6

    move-wide v9, v13

    move v11, v15

    move-object/from16 v12, v16

    invoke-direct/range {v7 .. v12}, Lcom/android/server/wifi/WifiNative$RxFateReport;-><init>(BJB[B)V

    aput-object v18, v1, v3

    .line 2308
    .end local v3    # "i":I
    .end local v5    # "fate":Landroid/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;
    .end local v6    # "code":B
    .end local v13    # "us":J
    .end local v15    # "type":B
    .end local v16    # "frame":[B
    nop

    .line 2297
    move/from16 v3, v17

    goto :goto_0

    .line 2309
    .end local v17    # "i":I
    .restart local v3    # "i":I
    :cond_2
    :goto_1
    const/4 v4, 0x1

    move-object/from16 v5, p2

    iput-boolean v4, v5, Landroid/util/MutableBoolean;->value:Z

    .line 2310
    return-void
.end method

.method public static synthetic lambda$getSupportedFeatureSet$2(Lcom/android/server/wifi/WifiVendorHal;Landroid/util/MutableInt;Landroid/hardware/wifi/V1_0/WifiStatus;I)V
    .locals 1
    .param p1, "feat"    # Landroid/util/MutableInt;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "capabilities"    # I

    .line 1165
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1166
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/wifi/WifiVendorHal;->wifiFeatureMaskFromChipCapabilities(I)I

    move-result v0

    iput v0, p1, Landroid/util/MutableInt;->value:I

    .line 1167
    return-void
.end method

.method public static synthetic lambda$getSupportedFeatureSet$3(Lcom/android/server/wifi/WifiVendorHal;Landroid/util/MutableInt;Landroid/hardware/wifi/V1_0/WifiStatus;I)V
    .locals 2
    .param p1, "feat"    # Landroid/util/MutableInt;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "capabilities"    # I

    .line 1172
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1173
    :cond_0
    iget v0, p1, Landroid/util/MutableInt;->value:I

    invoke-virtual {p0, p3}, Lcom/android/server/wifi/WifiVendorHal;->wifiFeatureMaskFromStaCapabilities(I)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p1, Landroid/util/MutableInt;->value:I

    .line 1174
    return-void
.end method

.method public static synthetic lambda$getTxPktFates$12(Lcom/android/server/wifi/WifiVendorHal;[Lcom/android/server/wifi/WifiNative$TxFateReport;Landroid/util/MutableBoolean;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 19
    .param p1, "reportBufs"    # [Lcom/android/server/wifi/WifiNative$TxFateReport;
    .param p2, "ok"    # Landroid/util/MutableBoolean;
    .param p3, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p4, "fates"    # Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2253
    move-object/from16 v2, p3

    invoke-direct {v0, v2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 2254
    :cond_0
    const/4 v3, 0x0

    .line 2255
    .local v3, "i":I
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/wifi/V1_0/WifiDebugTxPacketFateReport;

    .line 2256
    .local v5, "fate":Landroid/hardware/wifi/V1_0/WifiDebugTxPacketFateReport;
    array-length v6, v1

    if-lt v3, v6, :cond_1

    .end local v5    # "fate":Landroid/hardware/wifi/V1_0/WifiDebugTxPacketFateReport;
    goto :goto_1

    .line 2257
    .restart local v5    # "fate":Landroid/hardware/wifi/V1_0/WifiDebugTxPacketFateReport;
    :cond_1
    iget v6, v5, Landroid/hardware/wifi/V1_0/WifiDebugTxPacketFateReport;->fate:I

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiVendorHal;->halToFrameworkTxPktFate(I)B

    move-result v6

    .line 2258
    .local v6, "code":B
    iget-object v7, v5, Landroid/hardware/wifi/V1_0/WifiDebugTxPacketFateReport;->frameInfo:Landroid/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;

    iget-wide v13, v7, Landroid/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->driverTimestampUsec:J

    .line 2259
    .local v13, "us":J
    iget-object v7, v5, Landroid/hardware/wifi/V1_0/WifiDebugTxPacketFateReport;->frameInfo:Landroid/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;

    iget v7, v7, Landroid/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->frameType:I

    .line 2260
    invoke-direct {v0, v7}, Lcom/android/server/wifi/WifiVendorHal;->halToFrameworkPktFateFrameType(I)B

    move-result v15

    .line 2261
    .local v15, "type":B
    iget-object v7, v5, Landroid/hardware/wifi/V1_0/WifiDebugTxPacketFateReport;->frameInfo:Landroid/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;

    iget-object v7, v7, Landroid/hardware/wifi/V1_0/WifiDebugPacketFateFrameInfo;->frameContent:Ljava/util/ArrayList;

    .line 2262
    invoke-static {v7}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v16

    .line 2264
    .local v16, "frame":[B
    add-int/lit8 v17, v3, 0x1

    .local v17, "i":I
    new-instance v18, Lcom/android/server/wifi/WifiNative$TxFateReport;

    move-object/from16 v7, v18

    move v8, v6

    move-wide v9, v13

    move v11, v15

    move-object/from16 v12, v16

    invoke-direct/range {v7 .. v12}, Lcom/android/server/wifi/WifiNative$TxFateReport;-><init>(BJB[B)V

    aput-object v18, v1, v3

    .line 2266
    .end local v3    # "i":I
    .end local v5    # "fate":Landroid/hardware/wifi/V1_0/WifiDebugTxPacketFateReport;
    .end local v6    # "code":B
    .end local v13    # "us":J
    .end local v15    # "type":B
    .end local v16    # "frame":[B
    nop

    .line 2255
    move/from16 v3, v17

    goto :goto_0

    .line 2267
    .end local v17    # "i":I
    .restart local v3    # "i":I
    :cond_2
    :goto_1
    const/4 v4, 0x1

    move-object/from16 v5, p2

    iput-boolean v4, v5, Landroid/util/MutableBoolean;->value:Z

    .line 2268
    return-void
.end method

.method public static synthetic lambda$getWifiLinkLayerStats$1(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$1AnswerBox;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/StaLinkLayerStats;)V
    .locals 1
    .param p1, "answer"    # Lcom/android/server/wifi/WifiVendorHal$1AnswerBox;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "stats"    # Landroid/hardware/wifi/V1_0/StaLinkLayerStats;

    .line 971
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 972
    :cond_0
    iput-object p3, p1, Lcom/android/server/wifi/WifiVendorHal$1AnswerBox;->value:Landroid/hardware/wifi/V1_0/StaLinkLayerStats;

    .line 973
    return-void
.end method

.method public static synthetic lambda$getWlanWakeReasonCount$14(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$9AnswerBox;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;)V
    .locals 1
    .param p1, "ans"    # Lcom/android/server/wifi/WifiVendorHal$9AnswerBox;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "stats"    # Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;

    .line 2499
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2500
    iput-object p3, p1, Lcom/android/server/wifi/WifiVendorHal$9AnswerBox;->value:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;

    .line 2502
    :cond_0
    return-void
.end method

.method public static synthetic lambda$readPacketFilter$7(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$5AnswerBox;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "answer"    # Lcom/android/server/wifi/WifiVendorHal$5AnswerBox;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "dataByteArray"    # Ljava/util/ArrayList;

    .line 1833
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1834
    :cond_0
    invoke-static {p3}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/wifi/WifiVendorHal$5AnswerBox;->data:[B

    .line 1835
    return-void
.end method

.method public static synthetic lambda$requestChipDebugInfo$8(Lcom/android/server/wifi/WifiVendorHal;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiChip$ChipDebugInfo;)V
    .locals 1
    .param p1, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p2, "chipDebugInfo"    # Landroid/hardware/wifi/V1_0/IWifiChip$ChipDebugInfo;

    .line 1994
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1995
    :cond_0
    iget-object v0, p2, Landroid/hardware/wifi/V1_0/IWifiChip$ChipDebugInfo;->driverDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mDriverDescription:Ljava/lang/String;

    .line 1996
    iget-object v0, p2, Landroid/hardware/wifi/V1_0/IWifiChip$ChipDebugInfo;->firmwareDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mFirmwareDescription:Ljava/lang/String;

    .line 1997
    return-void
.end method

.method private makeReportSchemeFromBucketSettingsReportEvents(I)I
    .locals 5
    .param p1, "reportUnderscoreEvents"    # I

    .line 814
    const/4 v0, 0x0

    .line 815
    .local v0, "ans":I
    new-instance v1, Lcom/android/server/wifi/util/BitMask;

    invoke-direct {v1, p1}, Lcom/android/server/wifi/util/BitMask;-><init>(I)V

    .line 816
    .local v1, "in":Lcom/android/server/wifi/util/BitMask;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 817
    or-int/lit8 v0, v0, 0x1

    .line 819
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 820
    or-int/lit8 v0, v0, 0x2

    .line 822
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/util/BitMask;->testAndClear(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 823
    or-int/lit8 v0, v0, 0x4

    .line 825
    :cond_2
    iget v2, v1, Lcom/android/server/wifi/util/BitMask;->value:I

    if-nez v2, :cond_3

    .line 826
    return v0

    .line 825
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static makeRingBufferStatusArray(Ljava/util/ArrayList;)[Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;",
            ">;)[",
            "Lcom/android/server/wifi/WifiNative$RingBufferStatus;"
        }
    .end annotation

    .line 2051
    .local p0, "ringBuffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    .line 2052
    .local v0, "ans":[Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    const/4 v1, 0x0

    .line 2053
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;

    .line 2054
    .local v3, "b":Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;
    add-int/lit8 v4, v1, 0x1

    .local v4, "i":I
    invoke-static {v3}, Lcom/android/server/wifi/WifiVendorHal;->ringBufferStatus(Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;)Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    move-result-object v5

    aput-object v5, v0, v1

    .line 2055
    .end local v1    # "i":I
    .end local v3    # "b":Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;
    nop

    .line 2053
    move v1, v4

    goto :goto_0

    .line 2056
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private makeStaBackgroundScanBucketParametersFromBucketSettings(Lcom/android/server/wifi/WifiNative$BucketSettings;)Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;
    .locals 7
    .param p1, "bs"    # Lcom/android/server/wifi/WifiNative$BucketSettings;

    .line 758
    new-instance v0, Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;-><init>()V

    .line 759
    .local v0, "pa":Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;
    iget v1, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->bucket:I

    iput v1, v0, Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->bucketIdx:I

    .line 760
    iget v1, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->makeWifiBandFromFrameworkBand(I)I

    move-result v1

    iput v1, v0, Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->band:I

    .line 761
    iget-object v1, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    if-eqz v1, :cond_0

    .line 762
    iget-object v1, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 763
    .local v4, "cs":Lcom/android/server/wifi/WifiNative$ChannelSettings;
    iget-object v5, v0, Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->frequencies:Ljava/util/ArrayList;

    iget v6, v4, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    .end local v4    # "cs":Lcom/android/server/wifi/WifiNative$ChannelSettings;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 766
    :cond_0
    iget v1, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    iput v1, v0, Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->periodInMs:I

    .line 767
    iget v1, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->makeReportSchemeFromBucketSettingsReportEvents(I)I

    move-result v1

    iput v1, v0, Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->eventReportScheme:I

    .line 768
    iget v1, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->max_period_ms:I

    iput v1, v0, Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->exponentialMaxPeriodInMs:I

    .line 773
    const/4 v1, 0x2

    iput v1, v0, Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->exponentialBase:I

    .line 774
    iget v1, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->step_count:I

    iput v1, v0, Landroid/hardware/wifi/V1_0/StaBackgroundScanBucketParameters;->exponentialStepCount:I

    .line 775
    return-object v0
.end method

.method private makeWifiBandFromFrameworkBand(I)I
    .locals 3
    .param p1, "frameworkBand"    # I

    .line 786
    packed-switch p1, :pswitch_data_0

    .line 802
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad band "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 800
    :pswitch_1
    const/4 v0, 0x7

    return v0

    .line 796
    :pswitch_2
    const/4 v0, 0x6

    return v0

    .line 794
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 798
    :pswitch_4
    const/4 v0, 0x3

    return v0

    .line 792
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 790
    :pswitch_6
    const/4 v0, 0x1

    return v0

    .line 788
    :pswitch_7
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static niceMethodName([Ljava/lang/StackTraceElement;I)Ljava/lang/String;
    .locals 5
    .param p0, "trace"    # [Ljava/lang/StackTraceElement;
    .param p1, "start"    # I

    .line 235
    array-length v0, p0

    if-lt p1, v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 236
    :cond_0
    aget-object v0, p0, p1

    .line 237
    .local v0, "s":Ljava/lang/StackTraceElement;
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "name":Ljava/lang/String;
    const-string v2, "lambda$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 240
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "myFile":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 242
    add-int/lit8 v3, p1, 0x1

    .local v3, "i":I
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_2

    .line 243
    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 244
    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 245
    goto :goto_1

    .line 242
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 250
    .end local v2    # "myFile":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(l."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z
    .locals 4
    .param p1, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;

    .line 141
    iget v0, p1, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 143
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 144
    .local v0, "cur":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 146
    .local v1, "trace":[Ljava/lang/StackTraceElement;
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v3, "% failed %"

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    const/4 v3, 0x3

    .line 147
    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiVendorHal;->niceMethodName([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    .line 148
    invoke-virtual {p1}, Landroid/hardware/wifi/V1_0/WifiStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    .line 149
    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 151
    const/4 v2, 0x0

    return v2
.end method

.method private registerChipCallback()Z
    .locals 5

    .line 619
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 620
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 623
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiVendorHal;->getWifiChipForV1_2Mockable()Landroid/hardware/wifi/V1_2/IWifiChip;

    move-result-object v1

    .line 624
    .local v1, "iWifiChipV12":Landroid/hardware/wifi/V1_2/IWifiChip;
    if-eqz v1, :cond_1

    .line 625
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChipEventCallbackV12:Lcom/android/server/wifi/WifiVendorHal$ChipEventCallbackV12;

    invoke-interface {v1, v3}, Landroid/hardware/wifi/V1_2/IWifiChip;->registerEventCallback_1_2(Landroid/hardware/wifi/V1_2/IWifiChipEventCallback;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .local v3, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    goto :goto_0

    .line 627
    .end local v3    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChipEventCallback:Lcom/android/server/wifi/WifiVendorHal$ChipEventCallback;

    invoke-interface {v3, v4}, Landroid/hardware/wifi/V1_0/IWifiChip;->registerEventCallback(Landroid/hardware/wifi/V1_0/IWifiChipEventCallback;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 629
    .restart local v3    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 630
    .end local v1    # "iWifiChipV12":Landroid/hardware/wifi/V1_2/IWifiChip;
    .end local v3    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v1

    .line 631
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 632
    monitor-exit v0

    return v2

    .line 634
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private registerRttEventCallback()Z
    .locals 4

    .line 641
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 642
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 643
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttEventCallback:Lcom/android/server/wifi/WifiVendorHal$RttEventCallback;

    if-nez v1, :cond_1

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 645
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttEventCallback:Lcom/android/server/wifi/WifiVendorHal$RttEventCallback;

    invoke-interface {v1, v3}, Landroid/hardware/wifi/V1_0/IWifiRttController;->registerEventCallback(Landroid/hardware/wifi/V1_0/IWifiRttControllerEventCallback;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    .line 646
    .local v1, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v3

    .line 647
    .end local v1    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v1

    .line 648
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 649
    monitor-exit v0

    return v2

    .line 651
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private registerStaIfaceCallback(Landroid/hardware/wifi/V1_0/IWifiStaIface;)Z
    .locals 4
    .param p1, "iface"    # Landroid/hardware/wifi/V1_0/IWifiStaIface;

    .line 601
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 602
    const/4 v1, 0x0

    if-nez p1, :cond_0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 612
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 603
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIfaceEventCallback:Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;

    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 605
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIfaceEventCallback:Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;

    .line 606
    invoke-interface {p1, v2}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->registerEventCallback(Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 607
    .local v2, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v3

    .line 608
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v2

    .line 609
    .local v2, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 610
    monitor-exit v0

    return v1

    .line 612
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private requestChipDebugInfo()V
    .locals 2

    .line 1989
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mDriverDescription:Ljava/lang/String;

    .line 1990
    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mFirmwareDescription:Ljava/lang/String;

    .line 1992
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    if-nez v0, :cond_0

    return-void

    .line 1993
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v1, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$78Olu6lZcZThVdxrs2nTDEfDswQ;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$78Olu6lZcZThVdxrs2nTDEfDswQ;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V

    invoke-interface {v0, v1}, Landroid/hardware/wifi/V1_0/IWifiChip;->requestChipDebugInfo(Landroid/hardware/wifi/V1_0/IWifiChip$requestChipDebugInfoCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2001
    nop

    .line 2002
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "Driver: % Firmware: %"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mDriverDescription:Ljava/lang/String;

    .line 2003
    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mFirmwareDescription:Ljava/lang/String;

    .line 2004
    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    .line 2005
    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2006
    return-void

    .line 1998
    :catch_0
    move-exception v0

    .line 1999
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 2000
    return-void
.end method

.method private retrieveWifiChip(Landroid/hardware/wifi/V1_0/IWifiIface;)Z
    .locals 5
    .param p1, "iface"    # Landroid/hardware/wifi/V1_0/IWifiIface;

    .line 579
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 580
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 581
    .local v1, "registrationNeeded":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v4, p1}, Lcom/android/server/wifi/HalDeviceManager;->getChip(Landroid/hardware/wifi/V1_0/IWifiIface;)Landroid/hardware/wifi/V1_0/IWifiChip;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    .line 582
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    if-nez v4, :cond_1

    .line 583
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v4, "Failed to get the chip created for the Iface"

    invoke-interface {v3, v4}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 584
    monitor-exit v0

    return v2

    .line 586
    :cond_1
    if-nez v1, :cond_2

    .line 587
    monitor-exit v0

    return v3

    .line 589
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wifi/WifiVendorHal;->registerChipCallback()Z

    move-result v4

    if-nez v4, :cond_3

    .line 590
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v4, "Failed to register chip callback"

    invoke-interface {v3, v4}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 591
    monitor-exit v0

    return v2

    .line 593
    :cond_3
    monitor-exit v0

    return v3

    .line 594
    .end local v1    # "registrationNeeded":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static ringBufferStatus(Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;)Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .locals 2
    .param p0, "h"    # Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;

    .line 2012
    new-instance v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiNative$RingBufferStatus;-><init>()V

    .line 2013
    .local v0, "ans":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;->ringName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    .line 2014
    iget v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;->flags:I

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->frameworkRingBufferFlagsFromHal(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->flag:I

    .line 2015
    iget v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;->ringId:I

    iput v1, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->ringBufferId:I

    .line 2016
    iget v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;->sizeInBytes:I

    iput v1, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->ringBufferByteSize:I

    .line 2017
    iget v1, p0, Landroid/hardware/wifi/V1_0/WifiDebugRingBufferStatus;->verboseLevel:I

    iput v1, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->verboseLevel:I

    .line 2022
    return-object v0
.end method

.method private stringResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sNoLog:Lcom/android/server/wifi/WifiLog;

    if-ne v0, v1, :cond_0

    return-object p1

    .line 183
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 184
    .local v0, "cur":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 186
    .local v1, "trace":[Ljava/lang/StackTraceElement;
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    const-string v3, "% returns %"

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    const/4 v3, 0x3

    .line 187
    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiVendorHal;->niceMethodName([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    .line 188
    invoke-interface {v2, p1}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    .line 189
    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 191
    return-object p1
.end method


# virtual methods
.method public cancelRtt([Landroid/net/wifi/RttManager$RttParams;)Z
    .locals 7
    .param p1, "params"    # [Landroid/net/wifi/RttManager$RttParams;

    .line 1586
    invoke-static {p1}, Lcom/android/server/wifi/WifiVendorHal;->halRttConfigArrayFromFrameworkRttParamsArray([Landroid/net/wifi/RttManager$RttParams;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1587
    .local v0, "rttConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/RttConfig;>;"
    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1588
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 1589
    :cond_0
    iget v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdId:I

    if-nez v2, :cond_1

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 1590
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1591
    .local v2, "addrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/wifi/V1_0/RttConfig;

    .local v5, "x":Landroid/hardware/wifi/V1_0/RttConfig;
    iget-object v6, v5, Landroid/hardware/wifi/V1_0/RttConfig;->addr:[B

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v5    # "x":Landroid/hardware/wifi/V1_0/RttConfig;
    goto :goto_0

    .line 1593
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    iget v5, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdId:I

    invoke-interface {v4, v5, v2}, Landroid/hardware/wifi/V1_0/IWifiRttController;->rangeCancel(ILjava/util/ArrayList;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 1594
    .local v4, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    iput v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdId:I

    .line 1595
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_3

    :try_start_2
    monitor-exit v1

    return v3

    .line 1596
    :cond_3
    const/4 v3, 0x1

    monitor-exit v1

    return v3

    .line 1597
    .end local v4    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v4

    .line 1598
    .local v4, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 1599
    monitor-exit v1

    return v3

    .line 1601
    .end local v2    # "addrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public configureNeighborDiscoveryOffload(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 2519
    const-string v0, "enabled=%"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->enter(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Z)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2520
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2521
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v1

    .line 2522
    .local v1, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 2524
    :cond_0
    :try_start_1
    invoke-interface {v1, p2}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->enableNdOffload(Z)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 2525
    .local v3, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    :try_start_2
    monitor-exit v0

    return v2

    .line 2529
    .end local v3    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :cond_1
    nop

    .line 2530
    .end local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    monitor-exit v0

    .line 2531
    const/4 v0, 0x1

    return v0

    .line 2526
    .restart local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    :catch_0
    move-exception v3

    .line 2527
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 2528
    monitor-exit v0

    return v2

    .line 2530
    .end local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public configureRoaming(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$RoamingConfig;)Z
    .locals 11
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/android/server/wifi/WifiNative$RoamingConfig;

    .line 2608
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2609
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v1

    .line 2610
    .local v1, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 2612
    :cond_0
    :try_start_1
    new-instance v3, Landroid/hardware/wifi/V1_0/StaRoamingConfig;

    invoke-direct {v3}, Landroid/hardware/wifi/V1_0/StaRoamingConfig;-><init>()V

    .line 2615
    .local v3, "roamingConfig":Landroid/hardware/wifi/V1_0/StaRoamingConfig;
    iget-object v4, p2, Lcom/android/server/wifi/WifiNative$RoamingConfig;->blacklistBssids:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 2616
    iget-object v4, p2, Lcom/android/server/wifi/WifiNative$RoamingConfig;->blacklistBssids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2617
    .local v5, "bssid":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 2618
    .local v6, "mac":[B
    iget-object v7, v3, Landroid/hardware/wifi/V1_0/StaRoamingConfig;->bssidBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2619
    .end local v5    # "bssid":Ljava/lang/String;
    .end local v6    # "mac":[B
    goto :goto_0

    .line 2623
    :cond_1
    iget-object v4, p2, Lcom/android/server/wifi/WifiNative$RoamingConfig;->whitelistSsids:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 2624
    iget-object v4, p2, Lcom/android/server/wifi/WifiNative$RoamingConfig;->whitelistSsids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2625
    .local v5, "ssidStr":Ljava/lang/String;
    invoke-static {v5}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2627
    .local v6, "unquotedSsidStr":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 2628
    .local v7, "len":I
    const/16 v8, 0x20

    if-le v7, v8, :cond_2

    .line 2629
    iget-object v8, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v9, "configureRoaming: skip invalid SSID %"

    invoke-interface {v8, v9}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v8

    .line 2630
    invoke-interface {v8, v6}, Lcom/android/server/wifi/WifiLog$LogMessage;->r(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2631
    goto :goto_1

    .line 2633
    :cond_2
    new-array v8, v7, [B

    .line 2634
    .local v8, "ssid":[B
    move v9, v2

    .local v9, "i":I
    :goto_2
    if-ge v9, v7, :cond_3

    .line 2635
    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 2634
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 2637
    .end local v9    # "i":I
    :cond_3
    iget-object v9, v3, Landroid/hardware/wifi/V1_0/StaRoamingConfig;->ssidWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2638
    .end local v5    # "ssidStr":Ljava/lang/String;
    .end local v6    # "unquotedSsidStr":Ljava/lang/String;
    .end local v7    # "len":I
    .end local v8    # "ssid":[B
    goto :goto_1

    .line 2641
    :cond_4
    invoke-interface {v1, v3}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->configureRoaming(Landroid/hardware/wifi/V1_0/StaRoamingConfig;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 2642
    .local v4, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_5

    :try_start_2
    monitor-exit v0

    return v2

    .line 2649
    .end local v3    # "roamingConfig":Landroid/hardware/wifi/V1_0/StaRoamingConfig;
    .end local v4    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :cond_5
    nop

    .line 2650
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 2646
    :catch_0
    move-exception v3

    .line 2647
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v5, "Illegal argument for roaming configuration"

    invoke-interface {v4, v5}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2648
    monitor-exit v0

    return v2

    .line 2643
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    .line 2644
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 2645
    monitor-exit v0

    return v2

    .line 2651
    .end local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public createApIface(Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;)Ljava/lang/String;
    .locals 6
    .param p1, "destroyedListener"    # Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;

    .line 537
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 538
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    new-instance v2, Lcom/android/server/wifi/WifiVendorHal$ApInterfaceDestroyedListenerInternal;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wifi/WifiVendorHal$ApInterfaceDestroyedListenerInternal;-><init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/HalDeviceManager;->createApIface(Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)Landroid/hardware/wifi/V1_0/IWifiApIface;

    move-result-object v1

    .line 540
    .local v1, "iface":Landroid/hardware/wifi/V1_0/IWifiApIface;
    if-nez v1, :cond_0

    .line 541
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v4, "Failed to create AP iface"

    invoke-interface {v2, v4}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 542
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->stringResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 544
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-static {v1}, Lcom/android/server/wifi/HalDeviceManager;->getName(Landroid/hardware/wifi/V1_0/IWifiIface;)Ljava/lang/String;

    move-result-object v2

    .line 545
    .local v2, "ifaceName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 546
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v5, "Failed to get iface name"

    invoke-interface {v4, v5}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 547
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->stringResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 549
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->retrieveWifiChip(Landroid/hardware/wifi/V1_0/IWifiIface;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 550
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v5, "Failed to get wifi chip"

    invoke-interface {v4, v5}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 551
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->stringResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 553
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiApIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    monitor-exit v0

    return-object v2

    .line 555
    .end local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiApIface;
    .end local v2    # "ifaceName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public createStaIface(ZLcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;)Ljava/lang/String;
    .locals 6
    .param p1, "lowPrioritySta"    # Z
    .param p2, "destroyedListener"    # Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;

    .line 449
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 450
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    new-instance v2, Lcom/android/server/wifi/WifiVendorHal$StaInterfaceDestroyedListenerInternal;

    invoke-direct {v2, p0, p2}, Lcom/android/server/wifi/WifiVendorHal$StaInterfaceDestroyedListenerInternal;-><init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;)V

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/wifi/HalDeviceManager;->createStaIface(ZLcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v1

    .line 452
    .local v1, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    if-nez v1, :cond_0

    .line 453
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v4, "Failed to create STA iface"

    invoke-interface {v2, v4}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 454
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->stringResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 456
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-static {v1}, Lcom/android/server/wifi/HalDeviceManager;->getName(Landroid/hardware/wifi/V1_0/IWifiIface;)Ljava/lang/String;

    move-result-object v2

    .line 457
    .local v2, "ifaceName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 458
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v5, "Failed to get iface name"

    invoke-interface {v4, v5}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 459
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->stringResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 461
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->registerStaIfaceCallback(Landroid/hardware/wifi/V1_0/IWifiStaIface;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 462
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v5, "Failed to register STA iface callback"

    invoke-interface {v4, v5}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 463
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->stringResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 465
    :cond_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v4}, Lcom/android/server/wifi/HalDeviceManager;->createRttController()Landroid/hardware/wifi/V1_0/IWifiRttController;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    .line 466
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    if-nez v4, :cond_3

    .line 467
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v5, "Failed to create RTT controller"

    invoke-interface {v4, v5}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 468
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->stringResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 470
    :cond_3
    invoke-direct {p0}, Lcom/android/server/wifi/WifiVendorHal;->registerRttEventCallback()Z

    move-result v4

    if-nez v4, :cond_4

    .line 471
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v5, "Failed to register RTT controller callback"

    invoke-interface {v4, v5}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 472
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->stringResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 474
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->retrieveWifiChip(Landroid/hardware/wifi/V1_0/IWifiIface;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 475
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v5, "Failed to get wifi chip"

    invoke-interface {v4, v5}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 476
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->stringResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 478
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->enableLinkLayerStats(Landroid/hardware/wifi/V1_0/IWifiStaIface;)V

    .line 479
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    monitor-exit v0

    return-object v2

    .line 481
    .end local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .end local v2    # "ifaceName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disableRttResponder()Z
    .locals 4

    .line 1689
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1690
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1691
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttResponderCmdId:I

    if-nez v1, :cond_1

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 1693
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    iget v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttResponderCmdId:I

    invoke-interface {v1, v3}, Landroid/hardware/wifi/V1_0/IWifiRttController;->disableResponder(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    .line 1694
    .local v1, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    iput v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttResponderCmdId:I

    .line 1695
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    :try_start_2
    monitor-exit v0

    return v2

    .line 1696
    :cond_2
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 1697
    .end local v1    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v1

    .line 1698
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 1699
    monitor-exit v0

    return v2

    .line 1701
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public enableFirmwareRoaming(Ljava/lang/String;I)I
    .locals 7
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "state"    # I

    .line 2573
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2574
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v1

    .line 2575
    .local v1, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    if-nez v1, :cond_0

    const/4 v2, 0x6

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 2578
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 2586
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    goto :goto_1

    .line 2583
    :pswitch_0
    const/4 v2, 0x1

    .line 2584
    .local v2, "val":B
    goto :goto_0

    .line 2580
    .end local v2    # "val":B
    :pswitch_1
    const/4 v2, 0x0

    .line 2581
    .restart local v2    # "val":B
    nop

    .line 2587
    :goto_0
    nop

    .line 2590
    invoke-interface {v1, v2}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->setRoamingState(B)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 2591
    .local v3, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setRoamingState returned "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/server/wifi/WifiLog;->d(Ljava/lang/String;)V

    .line 2592
    iget v4, v3, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v4

    .line 2586
    .end local v2    # "val":B
    .end local v3    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :goto_1
    :try_start_3
    const-string v3, "enableFirmwareRoaming invalid argument %"

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    int-to-long v3, p2

    invoke-interface {v2, v3, v4}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2587
    const/4 v2, 0x7

    :try_start_4
    monitor-exit v0

    return v2

    .line 2593
    :catch_0
    move-exception v2

    .line 2594
    .local v2, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 2595
    const/16 v3, 0x9

    monitor-exit v0

    return v3

    .line 2597
    .end local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public enableRttResponder(I)Landroid/net/wifi/RttManager$ResponderConfig;
    .locals 9
    .param p1, "timeoutSeconds"    # I

    .line 1654
    invoke-direct {p0}, Lcom/android/server/wifi/WifiVendorHal;->getRttResponder()Landroid/hardware/wifi/V1_0/RttResponder;

    move-result-object v0

    .line 1655
    .local v0, "info":Landroid/hardware/wifi/V1_0/RttResponder;
    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1656
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v1

    return-object v3

    .line 1657
    :cond_0
    iget v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttResponderCmdId:I

    if-eqz v2, :cond_1

    .line 1658
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v4, "responder mode already enabled - this shouldn\'t happen"

    invoke-interface {v2, v4}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1659
    monitor-exit v1

    return-object v3

    .line 1661
    :cond_1
    const/4 v2, 0x0

    .line 1662
    .local v2, "config":Landroid/net/wifi/RttManager$ResponderConfig;
    iget v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdIdNext:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdIdNext:I

    .line 1663
    .local v4, "id":I
    iget v5, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdIdNext:I

    if-gtz v5, :cond_2

    const/4 v5, 0x1

    iput v5, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdIdNext:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1665
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    invoke-interface {v5, v4, v3, p1, v0}, Landroid/hardware/wifi/V1_0/IWifiRttController;->enableResponder(ILandroid/hardware/wifi/V1_0/WifiChannelInfo;ILandroid/hardware/wifi/V1_0/RttResponder;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v5

    .line 1669
    .local v5, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1670
    iput v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttResponderCmdId:I

    .line 1671
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->frameworkResponderConfigFromHalRttResponder(Landroid/hardware/wifi/V1_0/RttResponder;)Landroid/net/wifi/RttManager$ResponderConfig;

    move-result-object v6

    move-object v2, v6

    .line 1672
    iget-object v6, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enabling rtt "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttResponderCmdId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/server/wifi/WifiLog;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1674
    :cond_3
    :try_start_2
    monitor-exit v1

    return-object v2

    .line 1675
    .end local v5    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v5

    .line 1676
    .local v5, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 1677
    monitor-exit v1

    return-object v3

    .line 1679
    .end local v2    # "config":Landroid/net/wifi/RttManager$ResponderConfig;
    .end local v4    # "id":I
    .end local v5    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public enableVerboseLogging(Z)V
    .locals 2
    .param p1, "verbose"    # Z

    .line 121
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    if-eqz p1, :cond_0

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    iput-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    .line 124
    const-string v1, "verbose=true"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->enter(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 126
    :cond_0
    const-string v1, "verbose=false"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->enter(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 127
    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sNoLog:Lcom/android/server/wifi/WifiLog;

    iput-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    .line 129
    :goto_0
    monitor-exit v0

    .line 130
    return-void

    .line 129
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getApfCapabilities(Ljava/lang/String;)Landroid/net/apf/ApfCapabilities;
    .locals 4
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1765
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1767
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v1

    .line 1768
    .local v1, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    if-nez v1, :cond_0

    sget-object v2, Lcom/android/server/wifi/WifiVendorHal;->sNoApfCapabilities:Landroid/net/apf/ApfCapabilities;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    .line 1769
    :cond_0
    :try_start_2
    new-instance v2, Lcom/android/server/wifi/WifiVendorHal$4AnswerBox;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiVendorHal$4AnswerBox;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V

    .line 1770
    .local v2, "box":Lcom/android/server/wifi/WifiVendorHal$4AnswerBox;
    new-instance v3, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$nzLDa8bqkjnOhiEpwrQr8oy-Abg;

    invoke-direct {v3, p0, v2}, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$nzLDa8bqkjnOhiEpwrQr8oy-Abg;-><init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$4AnswerBox;)V

    invoke-interface {v1, v3}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->getApfPacketFilterCapabilities(Landroid/hardware/wifi/V1_0/IWifiStaIface$getApfPacketFilterCapabilitiesCallback;)V

    .line 1777
    iget-object v3, v2, Lcom/android/server/wifi/WifiVendorHal$4AnswerBox;->value:Landroid/net/apf/ApfCapabilities;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    return-object v3

    .line 1782
    .end local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .end local v2    # "box":Lcom/android/server/wifi/WifiVendorHal$4AnswerBox;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1778
    :catch_0
    move-exception v1

    .line 1779
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 1780
    sget-object v2, Lcom/android/server/wifi/WifiVendorHal;->sNoApfCapabilities:Landroid/net/apf/ApfCapabilities;

    monitor-exit v0

    return-object v2

    .line 1782
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public getBgScanCapabilities(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$ScanCapabilities;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "capabilities"    # Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    .line 698
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 699
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v1

    .line 700
    .local v1, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 702
    :cond_0
    :try_start_1
    new-instance v3, Landroid/util/MutableBoolean;

    invoke-direct {v3, v2}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 703
    .local v3, "ans":Landroid/util/MutableBoolean;
    move-object v4, p2

    .line 704
    .local v4, "out":Lcom/android/server/wifi/WifiNative$ScanCapabilities;
    new-instance v5, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$qPUuRnlo2XMDrsA1gI_KLrbvPAI;

    invoke-direct {v5, p0, v4, v3}, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$qPUuRnlo2XMDrsA1gI_KLrbvPAI;-><init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiNative$ScanCapabilities;Landroid/util/MutableBoolean;)V

    invoke-interface {v1, v5}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->getBackgroundScanCapabilities(Landroid/hardware/wifi/V1_0/IWifiStaIface$getBackgroundScanCapabilitiesCallback;)V

    .line 715
    iget-boolean v5, v3, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 716
    .end local v3    # "ans":Landroid/util/MutableBoolean;
    .end local v4    # "out":Lcom/android/server/wifi/WifiNative$ScanCapabilities;
    :catch_0
    move-exception v3

    .line 717
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 718
    monitor-exit v0

    return v2

    .line 720
    .end local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getBgScanResults(Ljava/lang/String;)[Landroid/net/wifi/WifiScanner$ScanData;
    .locals 4
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 945
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 946
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v1

    .line 947
    .local v1, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    .line 948
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    if-nez v3, :cond_1

    monitor-exit v0

    return-object v2

    .line 949
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget-object v2, v2, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->latestScanResults:[Landroid/net/wifi/WifiScanner$ScanData;

    monitor-exit v0

    return-object v2

    .line 950
    .end local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDriverStateDump()[B
    .locals 5

    .line 2129
    new-instance v0, Lcom/android/server/wifi/WifiVendorHal$8AnswerBox;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiVendorHal$8AnswerBox;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V

    .line 2130
    .local v0, "ans":Lcom/android/server/wifi/WifiVendorHal$8AnswerBox;
    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2131
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    .line 2133
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v4, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$tzHRLpLug6A0mb6rrMUdhsh-NDU;

    invoke-direct {v4, p0, v0}, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$tzHRLpLug6A0mb6rrMUdhsh-NDU;-><init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$8AnswerBox;)V

    invoke-interface {v2, v4}, Landroid/hardware/wifi/V1_0/IWifiChip;->requestDriverDebugDump(Landroid/hardware/wifi/V1_0/IWifiChip$requestDriverDebugDumpCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2140
    nop

    .line 2141
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2142
    iget-object v1, v0, Lcom/android/server/wifi/WifiVendorHal$8AnswerBox;->value:[B

    return-object v1

    .line 2137
    :catch_0
    move-exception v2

    .line 2138
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 2139
    monitor-exit v1

    return-object v3

    .line 2141
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public getDriverVersion()Ljava/lang/String;
    .locals 2

    .line 1967
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1968
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mDriverDescription:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiVendorHal;->requestChipDebugInfo()V

    .line 1969
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mDriverDescription:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 1970
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFirmwareVersion()Ljava/lang/String;
    .locals 2

    .line 1979
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1980
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mFirmwareDescription:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiVendorHal;->requestChipDebugInfo()V

    .line 1981
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mFirmwareDescription:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 1982
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFwMemoryDump()[B
    .locals 5

    .line 2106
    new-instance v0, Lcom/android/server/wifi/WifiVendorHal$7AnswerBox;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiVendorHal$7AnswerBox;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V

    .line 2107
    .local v0, "ans":Lcom/android/server/wifi/WifiVendorHal$7AnswerBox;
    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2108
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    .line 2110
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v4, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$0nn1d2XVTxIXDSyzfYz5nuiMmaM;

    invoke-direct {v4, p0, v0}, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$0nn1d2XVTxIXDSyzfYz5nuiMmaM;-><init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$7AnswerBox;)V

    invoke-interface {v2, v4}, Landroid/hardware/wifi/V1_0/IWifiChip;->requestFirmwareDebugDump(Landroid/hardware/wifi/V1_0/IWifiChip$requestFirmwareDebugDumpCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2117
    nop

    .line 2118
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2119
    iget-object v1, v0, Lcom/android/server/wifi/WifiVendorHal$7AnswerBox;->value:[B

    return-object v1

    .line 2114
    :catch_0
    move-exception v2

    .line 2115
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 2116
    monitor-exit v1

    return-object v3

    .line 2118
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public getRingBufferData(Ljava/lang/String;)Z
    .locals 4
    .param p1, "ringName"    # Ljava/lang/String;

    .line 2086
    const-string v0, "ringName %"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->enter(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2087
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2088
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 2090
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    invoke-interface {v1, p1}, Landroid/hardware/wifi/V1_0/IWifiChip;->forceDumpToDebugRingBuffer(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    .line 2091
    .local v1, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v3

    .line 2092
    .end local v1    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v1

    .line 2093
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 2094
    monitor-exit v0

    return v2

    .line 2096
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getRingBufferStatus()[Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .locals 5

    .line 2066
    new-instance v0, Lcom/android/server/wifi/WifiVendorHal$6AnswerBox;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiVendorHal$6AnswerBox;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V

    .line 2067
    .local v0, "ans":Lcom/android/server/wifi/WifiVendorHal$6AnswerBox;
    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2068
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    .line 2070
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v4, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$dLmE-Gt21lNab7JkIiohEIIEf6Q;

    invoke-direct {v4, p0, v0}, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$dLmE-Gt21lNab7JkIiohEIIEf6Q;-><init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$6AnswerBox;)V

    invoke-interface {v2, v4}, Landroid/hardware/wifi/V1_0/IWifiChip;->getDebugRingBuffersStatus(Landroid/hardware/wifi/V1_0/IWifiChip$getDebugRingBuffersStatusCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2077
    nop

    .line 2078
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2079
    iget-object v1, v0, Lcom/android/server/wifi/WifiVendorHal$6AnswerBox;->value:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    return-object v1

    .line 2074
    :catch_0
    move-exception v2

    .line 2075
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 2076
    monitor-exit v1

    return-object v3

    .line 2078
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public getRoamingCapabilities(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$RoamingCapabilities;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "capabilities"    # Lcom/android/server/wifi/WifiNative$RoamingCapabilities;

    .line 2545
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2546
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v1

    .line 2547
    .local v1, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 2549
    :cond_0
    :try_start_1
    new-instance v3, Landroid/util/MutableBoolean;

    invoke-direct {v3, v2}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2550
    .local v3, "ok":Landroid/util/MutableBoolean;
    move-object v4, p2

    .line 2551
    .local v4, "out":Lcom/android/server/wifi/WifiNative$RoamingCapabilities;
    new-instance v5, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$dFBsbco7FdXhMfSsRSt5MvRa-No;

    invoke-direct {v5, p0, v4, v3}, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$dFBsbco7FdXhMfSsRSt5MvRa-No;-><init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiNative$RoamingCapabilities;Landroid/util/MutableBoolean;)V

    invoke-interface {v1, v5}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->getRoamingCapabilities(Landroid/hardware/wifi/V1_0/IWifiStaIface$getRoamingCapabilitiesCallback;)V

    .line 2557
    iget-boolean v5, v3, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 2558
    .end local v3    # "ok":Landroid/util/MutableBoolean;
    .end local v4    # "out":Lcom/android/server/wifi/WifiNative$RoamingCapabilities;
    :catch_0
    move-exception v3

    .line 2559
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 2560
    monitor-exit v0

    return v2

    .line 2562
    .end local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;
    .locals 5

    .line 1209
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1210
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 1212
    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/wifi/WifiVendorHal$2AnswerBox;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiVendorHal$2AnswerBox;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V

    .line 1213
    .local v1, "box":Lcom/android/server/wifi/WifiVendorHal$2AnswerBox;
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    new-instance v4, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$j9-GquCvCUY0kL-ke7FWj2rB-_I;

    invoke-direct {v4, p0, v1}, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$j9-GquCvCUY0kL-ke7FWj2rB-_I;-><init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$2AnswerBox;)V

    invoke-interface {v3, v4}, Landroid/hardware/wifi/V1_0/IWifiRttController;->getCapabilities(Landroid/hardware/wifi/V1_0/IWifiRttController$getCapabilitiesCallback;)V

    .line 1229
    iget-object v3, v1, Lcom/android/server/wifi/WifiVendorHal$2AnswerBox;->value:Landroid/net/wifi/RttManager$RttCapabilities;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v3

    .line 1230
    .end local v1    # "box":Lcom/android/server/wifi/WifiVendorHal$2AnswerBox;
    :catch_0
    move-exception v1

    .line 1231
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 1232
    monitor-exit v0

    return-object v2

    .line 1234
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getRxPktFates(Ljava/lang/String;[Lcom/android/server/wifi/WifiNative$RxFateReport;)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "reportBufs"    # [Lcom/android/server/wifi/WifiNative$RxFateReport;

    .line 2288
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v0

    return v0

    .line 2289
    :cond_0
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2290
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v2

    .line 2291
    .local v2, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 2293
    :cond_1
    :try_start_1
    new-instance v3, Landroid/util/MutableBoolean;

    invoke-direct {v3, v1}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2294
    .local v3, "ok":Landroid/util/MutableBoolean;
    new-instance v4, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$0gGojGcifgvfhGv7aD4Qbmyl79k;

    invoke-direct {v4, p0, p2, v3}, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$0gGojGcifgvfhGv7aD4Qbmyl79k;-><init>(Lcom/android/server/wifi/WifiVendorHal;[Lcom/android/server/wifi/WifiNative$RxFateReport;Landroid/util/MutableBoolean;)V

    invoke-interface {v2, v4}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->getDebugRxPacketFates(Landroid/hardware/wifi/V1_0/IWifiStaIface$getDebugRxPacketFatesCallback;)V

    .line 2312
    iget-boolean v4, v3, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2313
    .end local v3    # "ok":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v3

    .line 2314
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 2315
    monitor-exit v0

    return v1

    .line 2317
    .end local v2    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getSupportedFeatureSet(Ljava/lang/String;)I
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1156
    const/4 v0, 0x0

    .line 1157
    .local v0, "featureSet":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/HalDeviceManager;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1158
    return v0

    .line 1161
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/util/MutableInt;

    invoke-direct {v2, v1}, Landroid/util/MutableInt;-><init>(I)V

    .line 1162
    .local v2, "feat":Landroid/util/MutableInt;
    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1163
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    if-eqz v4, :cond_1

    .line 1164
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$bXzROfFjRqOgC9QmMk6fP3MnLSg;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$bXzROfFjRqOgC9QmMk6fP3MnLSg;-><init>(Lcom/android/server/wifi/WifiVendorHal;Landroid/util/MutableInt;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/V1_0/IWifiChip;->getCapabilities(Landroid/hardware/wifi/V1_0/IWifiChip$getCapabilitiesCallback;)V

    .line 1169
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v4

    .line 1170
    .local v4, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    if-eqz v4, :cond_2

    .line 1171
    new-instance v5, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$Lnl0TvBZpgQMVgoYAtSlApp_k88;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$Lnl0TvBZpgQMVgoYAtSlApp_k88;-><init>(Lcom/android/server/wifi/WifiVendorHal;Landroid/util/MutableInt;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->getCapabilities(Landroid/hardware/wifi/V1_0/IWifiStaIface$getCapabilitiesCallback;)V

    .line 1176
    .end local v4    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1177
    :try_start_2
    iget v3, v2, Landroid/util/MutableInt;->value:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v3

    .line 1181
    .end local v2    # "feat":Landroid/util/MutableInt;
    nop

    .line 1183
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v2}, Lcom/android/server/wifi/HalDeviceManager;->getSupportedIfaceTypes()Ljava/util/Set;

    move-result-object v2

    .line 1184
    .local v2, "supportedIfaceTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1185
    or-int/lit8 v0, v0, 0x1

    .line 1187
    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1188
    or-int/lit8 v0, v0, 0x10

    .line 1190
    :cond_4
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1191
    or-int/lit8 v0, v0, 0x8

    .line 1193
    :cond_5
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1194
    or-int/lit8 v0, v0, 0x40

    .line 1197
    :cond_6
    return v0

    .line 1176
    .local v2, "feat":Landroid/util/MutableInt;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1178
    .end local v2    # "feat":Landroid/util/MutableInt;
    :catch_0
    move-exception v2

    .line 1179
    .local v2, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 1180
    return v1
.end method

.method public getSupportedLoggerFeatureSet()I
    .locals 1

    .line 1958
    const/4 v0, -0x1

    return v0
.end method

.method public getTxPktFates(Ljava/lang/String;[Lcom/android/server/wifi/WifiNative$TxFateReport;)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "reportBufs"    # [Lcom/android/server/wifi/WifiNative$TxFateReport;

    .line 2246
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v0

    return v0

    .line 2247
    :cond_0
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2248
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v2

    .line 2249
    .local v2, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 2251
    :cond_1
    :try_start_1
    new-instance v3, Landroid/util/MutableBoolean;

    invoke-direct {v3, v1}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2252
    .local v3, "ok":Landroid/util/MutableBoolean;
    new-instance v4, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$sRX80xmV169NEPfDVRtnwl0y95Q;

    invoke-direct {v4, p0, p2, v3}, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$sRX80xmV169NEPfDVRtnwl0y95Q;-><init>(Lcom/android/server/wifi/WifiVendorHal;[Lcom/android/server/wifi/WifiNative$TxFateReport;Landroid/util/MutableBoolean;)V

    invoke-interface {v2, v4}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->getDebugTxPacketFates(Landroid/hardware/wifi/V1_0/IWifiStaIface$getDebugTxPacketFatesCallback;)V

    .line 2270
    iget-boolean v4, v3, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2271
    .end local v3    # "ok":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v3

    .line 2272
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 2273
    monitor-exit v0

    return v1

    .line 2275
    .end local v2    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected getWifiChipForV1_1Mockable()Landroid/hardware/wifi/V1_1/IWifiChip;
    .locals 1

    .line 2661
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2662
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    invoke-static {v0}, Landroid/hardware/wifi/V1_1/IWifiChip;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/wifi/V1_1/IWifiChip;

    move-result-object v0

    return-object v0
.end method

.method protected getWifiChipForV1_2Mockable()Landroid/hardware/wifi/V1_2/IWifiChip;
    .locals 1

    .line 2672
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2673
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    invoke-static {v0}, Landroid/hardware/wifi/V1_2/IWifiChip;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/wifi/V1_2/IWifiChip;

    move-result-object v0

    return-object v0
.end method

.method public getWifiLinkLayerStats(Ljava/lang/String;)Lcom/android/server/wifi/WifiLinkLayerStats;
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 965
    new-instance v0, Lcom/android/server/wifi/WifiVendorHal$1AnswerBox;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiVendorHal$1AnswerBox;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V

    .line 966
    .local v0, "answer":Lcom/android/server/wifi/WifiVendorHal$1AnswerBox;
    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 968
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 969
    .local v3, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    if-nez v3, :cond_0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    .line 970
    :cond_0
    :try_start_2
    new-instance v4, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$Cu5ECBYZ9xFCAH1Q99vuft6nyvY;

    invoke-direct {v4, p0, v0}, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$Cu5ECBYZ9xFCAH1Q99vuft6nyvY;-><init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$1AnswerBox;)V

    invoke-interface {v3, v4}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->getLinkLayerStats(Landroid/hardware/wifi/V1_0/IWifiStaIface$getLinkLayerStatsCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 977
    .end local v3    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    nop

    .line 978
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 979
    iget-object v1, v0, Lcom/android/server/wifi/WifiVendorHal$1AnswerBox;->value:Landroid/hardware/wifi/V1_0/StaLinkLayerStats;

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->frameworkFromHalLinkLayerStats(Landroid/hardware/wifi/V1_0/StaLinkLayerStats;)Lcom/android/server/wifi/WifiLinkLayerStats;

    move-result-object v1

    .line 980
    .local v1, "stats":Lcom/android/server/wifi/WifiLinkLayerStats;
    return-object v1

    .line 978
    .end local v1    # "stats":Lcom/android/server/wifi/WifiLinkLayerStats;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 974
    :catch_0
    move-exception v3

    .line 975
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 976
    monitor-exit v1

    return-object v2

    .line 978
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2
.end method

.method public getWifiMacFromNvItem()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2805
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2806
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/HalDeviceManager;->getWifiMacFromNvItem()Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2807
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getWifiStaIfaceForV1_2Mockable(Ljava/lang/String;)Landroid/hardware/wifi/V1_2/IWifiStaIface;
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2685
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v0

    .line 2686
    .local v0, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 2687
    :cond_0
    invoke-static {v0}, Landroid/hardware/wifi/V1_2/IWifiStaIface;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/wifi/V1_2/IWifiStaIface;

    move-result-object v1

    return-object v1
.end method

.method public getWlanWakeReasonCount()Landroid/net/wifi/WifiWakeReasonAndCounts;
    .locals 5

    .line 2494
    new-instance v0, Lcom/android/server/wifi/WifiVendorHal$9AnswerBox;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiVendorHal$9AnswerBox;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V

    .line 2495
    .local v0, "ans":Lcom/android/server/wifi/WifiVendorHal$9AnswerBox;
    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2496
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    .line 2498
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v4, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$9OKuBaEsJa-3ksFDFIHk8H-fn6Q;

    invoke-direct {v4, p0, v0}, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$9OKuBaEsJa-3ksFDFIHk8H-fn6Q;-><init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$9AnswerBox;)V

    invoke-interface {v2, v4}, Landroid/hardware/wifi/V1_0/IWifiChip;->getDebugHostWakeReasonStats(Landroid/hardware/wifi/V1_0/IWifiChip$getDebugHostWakeReasonStatsCallback;)V

    .line 2503
    iget-object v2, v0, Lcom/android/server/wifi/WifiVendorHal$9AnswerBox;->value:Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;

    invoke-static {v2}, Lcom/android/server/wifi/WifiVendorHal;->halToFrameworkWakeReasons(Landroid/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;)Landroid/net/wifi/WifiWakeReasonAndCounts;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    return-object v2

    .line 2504
    :catch_0
    move-exception v2

    .line 2505
    .local v2, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 2506
    monitor-exit v1

    return-object v3

    .line 2508
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public initialize(Lcom/android/server/wifi/WifiNative$VendorHalDeathEventHandler;)Z
    .locals 4
    .param p1, "handler"    # Lcom/android/server/wifi/WifiNative$VendorHalDeathEventHandler;

    .line 332
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 333
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/HalDeviceManager;->initialize()V

    .line 334
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManagerStatusCallbacks:Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/HalDeviceManager;->registerStatusListener(Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListener;Landroid/os/Handler;)V

    .line 335
    iput-object p1, p0, Lcom/android/server/wifi/WifiVendorHal;->mDeathEventHandler:Lcom/android/server/wifi/WifiNative$VendorHalDeathEventHandler;

    .line 336
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 337
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public installPacketFilter(Ljava/lang/String;[B)Z
    .locals 7
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "filter"    # [B

    .line 1795
    const/4 v0, 0x0

    .line 1796
    .local v0, "cmdId":I
    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v1

    return v1

    .line 1798
    :cond_0
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object v2

    .line 1799
    .local v2, "program":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const-string v3, "filter length %"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->enter(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v3

    array-length v4, p2

    int-to-long v4, v4

    invoke-interface {v3, v4, v5}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1800
    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1802
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v4

    .line 1803
    .local v4, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    if-nez v4, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v5

    .line 1804
    :cond_1
    :try_start_2
    invoke-interface {v4, v0, v2}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->installApfPacketFilter(ILjava/util/ArrayList;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v5

    .line 1805
    .local v5, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v6
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v6, :cond_2

    :try_start_3
    monitor-exit v3

    return v1

    .line 1806
    :cond_2
    const/4 v1, 0x1

    monitor-exit v3

    return v1

    .line 1811
    .end local v4    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .end local v5    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1807
    :catch_0
    move-exception v4

    .line 1808
    .local v4, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 1809
    monitor-exit v3

    return v1

    .line 1811
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public isHalStarted()Z
    .locals 2

    .line 684
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 685
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiApIfaces:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    .line 686
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isVendorHalSupported()Z
    .locals 2

    .line 358
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/HalDeviceManager;->isSupported()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 360
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pauseBgScan(Ljava/lang/String;)V
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 900
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 902
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 903
    .local v1, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    if-nez v1, :cond_0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 904
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget-boolean v2, v2, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->paused:Z

    if-nez v2, :cond_2

    .line 905
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget v2, v2, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->cmdId:I

    invoke-interface {v1, v2}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->stopBackgroundScan(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 906
    .local v2, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    .line 907
    :cond_1
    :try_start_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->paused:Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 911
    .end local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :cond_2
    goto :goto_0

    .line 912
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 909
    :catch_0
    move-exception v1

    .line 910
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_5
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 912
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 913
    return-void

    .line 912
    :goto_1
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1
.end method

.method public readPacketFilter(Ljava/lang/String;)[B
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1824
    new-instance v0, Lcom/android/server/wifi/WifiVendorHal$5AnswerBox;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiVendorHal$5AnswerBox;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V

    .line 1825
    .local v0, "answer":Lcom/android/server/wifi/WifiVendorHal$5AnswerBox;
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->enter(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1827
    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1829
    nop

    .line 1830
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getWifiStaIfaceForV1_2Mockable(Ljava/lang/String;)Landroid/hardware/wifi/V1_2/IWifiStaIface;

    move-result-object v3

    .line 1831
    .local v3, "ifaceV12":Landroid/hardware/wifi/V1_2/IWifiStaIface;
    if-nez v3, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->byteArrayResult([B)[B

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v4

    .line 1832
    :cond_0
    :try_start_2
    new-instance v4, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$ZD_VoFx-B8racz66daaqFreli3E;

    invoke-direct {v4, p0, v0}, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$ZD_VoFx-B8racz66daaqFreli3E;-><init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$5AnswerBox;)V

    invoke-interface {v3, v4}, Landroid/hardware/wifi/V1_2/IWifiStaIface;->readApfPacketFilterData(Landroid/hardware/wifi/V1_2/IWifiStaIface$readApfPacketFilterDataCallback;)V

    .line 1836
    iget-object v4, v0, Lcom/android/server/wifi/WifiVendorHal$5AnswerBox;->data:[B

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiVendorHal;->byteArrayResult([B)[B

    move-result-object v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v1

    return-object v4

    .line 1841
    .end local v3    # "ifaceV12":Landroid/hardware/wifi/V1_2/IWifiStaIface;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 1837
    :catch_0
    move-exception v3

    .line 1838
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 1839
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->byteArrayResult([B)[B

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 1841
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public registerRadioModeChangeHandler(Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeEventHandler;)V
    .locals 2
    .param p1, "handler"    # Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeEventHandler;

    .line 349
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 350
    :try_start_0
    iput-object p1, p0, Lcom/android/server/wifi/WifiVendorHal;->mRadioModeChangeEventHandler:Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeEventHandler;

    .line 351
    monitor-exit v0

    .line 352
    return-void

    .line 351
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeApIface(Ljava/lang/String;)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 565
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 566
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getApIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiApIface;

    move-result-object v1

    .line 567
    .local v1, "iface":Landroid/hardware/wifi/V1_0/IWifiApIface;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 569
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v3, v1}, Lcom/android/server/wifi/HalDeviceManager;->removeIface(Landroid/hardware/wifi/V1_0/IWifiIface;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 570
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v4, "Failed to remove AP iface"

    invoke-interface {v3, v4}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 571
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 573
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiApIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 575
    .end local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiApIface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeStaIface(Ljava/lang/String;)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 491
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 492
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v1

    .line 493
    .local v1, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 495
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v3, v1}, Lcom/android/server/wifi/HalDeviceManager;->removeIface(Landroid/hardware/wifi/V1_0/IWifiIface;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 496
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v4, "Failed to remove STA iface"

    invoke-interface {v3, v4}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 497
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 499
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiStaIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 501
    .end local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestRtt([Landroid/net/wifi/RttManager$RttParams;Lcom/android/server/wifi/WifiNative$RttEventHandler;)Z
    .locals 6
    .param p1, "params"    # [Landroid/net/wifi/RttManager$RttParams;
    .param p2, "handler"    # Lcom/android/server/wifi/WifiNative$RttEventHandler;

    .line 1556
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/android/server/wifi/WifiVendorHal;->halRttConfigArrayFromFrameworkRttParamsArray([Landroid/net/wifi/RttManager$RttParams;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1560
    .local v1, "rttConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/RttConfig;>;"
    nop

    .line 1559
    nop

    .line 1561
    sget-object v2, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1562
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    if-nez v3, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v0

    monitor-exit v2

    return v0

    .line 1563
    :cond_0
    iget v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdId:I

    if-eqz v3, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v0

    monitor-exit v2

    return v0

    .line 1564
    :cond_1
    iget v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdIdNext:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdIdNext:I

    iput v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdId:I

    .line 1565
    iput-object p2, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

    .line 1566
    iget v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdIdNext:I

    const/4 v4, 0x1

    if-gtz v3, :cond_2

    iput v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdIdNext:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1568
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiRttController:Landroid/hardware/wifi/V1_0/IWifiRttController;

    iget v5, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdId:I

    invoke-interface {v3, v5, v1}, Landroid/hardware/wifi/V1_0/IWifiRttController;->rangeRequest(ILjava/util/ArrayList;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 1569
    .local v3, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v4

    .line 1570
    :cond_3
    :try_start_4
    iput v0, p0, Lcom/android/server/wifi/WifiVendorHal;->mRttCmdId:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1571
    :try_start_5
    monitor-exit v2

    return v0

    .line 1572
    .end local v3    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v3

    .line 1573
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 1574
    monitor-exit v2

    return v0

    .line 1576
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 1557
    .end local v1    # "rttConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/RttConfig;>;"
    :catch_1
    move-exception v1

    .line 1558
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v3, "Illegal argument for RTT request"

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1559
    return v0
.end method

.method public resetLogHandler()Z
    .locals 4

    .line 1902
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1903
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1904
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mLogEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    if-nez v1, :cond_1

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 1906
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    invoke-interface {v1, v2}, Landroid/hardware/wifi/V1_0/IWifiChip;->enableDebugErrorAlerts(Z)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    .line 1907
    .local v1, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v2

    .line 1908
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    invoke-interface {v3}, Landroid/hardware/wifi/V1_0/IWifiChip;->stopLoggingToDebugRingBuffer()Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    move-object v1, v3

    .line 1909
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_3

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v2

    .line 1910
    :cond_3
    const/4 v3, 0x0

    :try_start_5
    iput-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mLogEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1911
    const/4 v2, 0x1

    :try_start_6
    monitor-exit v0

    return v2

    .line 1912
    .end local v1    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v1

    .line 1913
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 1914
    monitor-exit v0

    return v2

    .line 1916
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method

.method public restartBgScan(Ljava/lang/String;)V
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 922
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 923
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v1

    .line 924
    .local v1, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 926
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget-boolean v2, v2, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->paused:Z

    if-eqz v2, :cond_2

    .line 927
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget v2, v2, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->cmdId:I

    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget-object v3, v3, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->param:Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;

    invoke-interface {v1, v2, v3}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->startBackgroundScan(ILandroid/hardware/wifi/V1_0/StaBackgroundScanParameters;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 928
    .local v2, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 929
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->paused:Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 933
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :cond_2
    goto :goto_0

    .line 931
    :catch_0
    move-exception v2

    .line 932
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_4
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 934
    .end local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 935
    return-void

    .line 934
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public selectTxPowerScenario(I)Z
    .locals 6
    .param p1, "scenario"    # I

    .line 2709
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2711
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiVendorHal;->getWifiChipForV1_1Mockable()Landroid/hardware/wifi/V1_1/IWifiChip;

    move-result-object v2

    .line 2712
    .local v2, "iWifiChipV11":Landroid/hardware/wifi/V1_1/IWifiChip;
    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v3

    .line 2714
    :cond_0
    if-eqz p1, :cond_1

    .line 2717
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->frameworkToHalTxPowerScenario(I)I

    move-result v3
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2722
    .local v3, "halScenario":I
    nop

    .line 2721
    nop

    .line 2723
    :try_start_3
    invoke-interface {v2, v3}, Landroid/hardware/wifi/V1_1/IWifiChip;->selectTxPowerScenario(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .end local v3    # "halScenario":I
    move-object v3, v4

    .line 2724
    .local v3, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    goto :goto_0

    .line 2718
    .end local v3    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v3

    .line 2719
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    iget-object v4, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v5, "Illegal argument for select tx power scenario"

    invoke-interface {v4, v5}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v4

    .line 2720
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2721
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v1

    .line 2725
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :try_start_5
    invoke-interface {v2}, Landroid/hardware/wifi/V1_1/IWifiChip;->resetTxPowerScenario()Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 2727
    .local v3, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v4
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v4, :cond_2

    :try_start_6
    monitor-exit v0

    return v1

    .line 2731
    .end local v2    # "iWifiChipV11":Landroid/hardware/wifi/V1_1/IWifiChip;
    .end local v3    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :cond_2
    nop

    .line 2732
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 2733
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2728
    :catch_1
    move-exception v2

    .line 2729
    .local v2, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 2730
    monitor-exit v0

    return v1

    .line 2733
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method

.method public setCountryCodeHal(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "countryCode"    # Ljava/lang/String;

    .line 1852
    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v0

    return v0

    .line 1853
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v0

    return v0

    .line 1856
    :cond_1
    :try_start_0
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1859
    .local v1, "code":[B
    nop

    .line 1858
    nop

    .line 1860
    sget-object v2, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1862
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getApIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiApIface;

    move-result-object v3

    .line 1863
    .local v3, "iface":Landroid/hardware/wifi/V1_0/IWifiApIface;
    if-nez v3, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v4

    .line 1864
    :cond_2
    :try_start_3
    invoke-interface {v3, v1}, Landroid/hardware/wifi/V1_0/IWifiApIface;->setCountryCode([B)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 1865
    .local v4, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v5
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v5, :cond_3

    :try_start_4
    monitor-exit v2

    return v0

    .line 1866
    :cond_3
    const/4 v0, 0x1

    monitor-exit v2

    return v0

    .line 1871
    .end local v3    # "iface":Landroid/hardware/wifi/V1_0/IWifiApIface;
    .end local v4    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1867
    :catch_0
    move-exception v3

    .line 1868
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 1869
    monitor-exit v2

    return v0

    .line 1871
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 1857
    .end local v1    # "code":[B
    :catch_1
    move-exception v1

    .line 1858
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v0

    return v0
.end method

.method public setFtmMode(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .line 2800
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2801
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/HalDeviceManager;->setFtmMode(Z)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2802
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLoggingEventHandler(Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;)Z
    .locals 5
    .param p1, "handler"    # Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    .line 1881
    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v0

    return v0

    .line 1882
    :cond_0
    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1883
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1884
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mLogEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 1886
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/hardware/wifi/V1_0/IWifiChip;->enableDebugErrorAlerts(Z)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 1887
    .local v2, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_3

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v0

    .line 1888
    :cond_3
    :try_start_3
    iput-object p1, p0, Lcom/android/server/wifi/WifiVendorHal;->mLogEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1889
    :try_start_4
    monitor-exit v1

    return v3

    .line 1890
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v2

    .line 1891
    .local v2, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 1892
    monitor-exit v1

    return v0

    .line 1894
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public setMacAddress(Ljava/lang/String;Landroid/net/MacAddress;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "mac"    # Landroid/net/MacAddress;

    .line 1739
    invoke-virtual {p2}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v0

    .line 1740
    .local v0, "macByteArray":[B
    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1742
    nop

    .line 1743
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getWifiStaIfaceForV1_2Mockable(Ljava/lang/String;)Landroid/hardware/wifi/V1_2/IWifiStaIface;

    move-result-object v3

    .line 1744
    .local v3, "ifaceV12":Landroid/hardware/wifi/V1_2/IWifiStaIface;
    if-nez v3, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v4

    .line 1745
    :cond_0
    :try_start_2
    invoke-interface {v3, v0}, Landroid/hardware/wifi/V1_2/IWifiStaIface;->setMacAddress([B)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 1746
    .local v4, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_1

    :try_start_3
    monitor-exit v1

    return v2

    .line 1747
    :cond_1
    const/4 v2, 0x1

    monitor-exit v1

    return v2

    .line 1752
    .end local v3    # "ifaceV12":Landroid/hardware/wifi/V1_2/IWifiStaIface;
    .end local v4    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 1748
    :catch_0
    move-exception v3

    .line 1749
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 1750
    monitor-exit v1

    return v2

    .line 1752
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public setScanningMacOui(Ljava/lang/String;[B)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "oui"    # [B

    .line 1715
    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v0

    return v0

    .line 1716
    :cond_0
    array-length v1, p2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v0

    return v0

    .line 1717
    :cond_1
    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1719
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v2

    .line 1720
    .local v2, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    if-nez v2, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v3

    .line 1721
    :cond_2
    :try_start_2
    invoke-interface {v2, p2}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->setScanningMacOui([B)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 1722
    .local v3, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_3

    :try_start_3
    monitor-exit v1

    return v0

    .line 1723
    :cond_3
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 1728
    .end local v2    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .end local v3    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1724
    :catch_0
    move-exception v2

    .line 1725
    .local v2, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 1726
    monitor-exit v1

    return v0

    .line 1728
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public startBgScan(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z
    .locals 7
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "settings"    # Lcom/android/server/wifi/WifiNative$ScanSettings;
    .param p3, "eventHandler"    # Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 848
    const/4 v0, 0x0

    if-nez p3, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v0

    return v0

    .line 849
    :cond_0
    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 850
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v2

    .line 851
    .local v2, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 853
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget-boolean v3, v3, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->paused:Z

    if-nez v3, :cond_2

    .line 854
    iget-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget v3, v3, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->cmdId:I

    invoke-interface {v2, v3}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->stopBackgroundScan(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    .line 855
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    .line 857
    :cond_2
    iget v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mLastScanCmdId:I

    rem-int/lit8 v3, v3, 0x9

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mLastScanCmdId:I

    .line 858
    new-instance v3, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget v5, p0, Lcom/android/server/wifi/WifiVendorHal;->mLastScanCmdId:I

    invoke-direct {v3, p0, v5, p2}, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;-><init>(Lcom/android/server/wifi/WifiVendorHal;ILcom/android/server/wifi/WifiNative$ScanSettings;)V

    .line 859
    .local v3, "scan":Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;
    iget v5, v3, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->cmdId:I

    iget-object v6, v3, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->param:Landroid/hardware/wifi/V1_0/StaBackgroundScanParameters;

    invoke-interface {v2, v5, v6}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->startBackgroundScan(ILandroid/hardware/wifi/V1_0/StaBackgroundScanParameters;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v5

    .line 860
    .local v5, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_3

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v0

    .line 861
    :cond_3
    :try_start_3
    iput-object p3, v3, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->eventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 862
    iput-object v3, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 863
    :try_start_4
    monitor-exit v1

    return v4

    .line 864
    .end local v3    # "scan":Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;
    .end local v5    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v3

    .line 865
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 866
    monitor-exit v1

    return v0

    .line 868
    .end local v2    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public startLoggingRingBuffer(IIIILjava/lang/String;)Z
    .locals 4
    .param p1, "verboseLevel"    # I
    .param p2, "flags"    # I
    .param p3, "maxIntervalInSec"    # I
    .param p4, "minDataSizeInBytes"    # I
    .param p5, "ringName"    # Ljava/lang/String;

    .line 1931
    const-string v0, "verboseLevel=%, flags=%, maxIntervalInSec=%, minDataSizeInBytes=%, ringName=%"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->enter(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    int-to-long v1, p1

    .line 1932
    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    int-to-long v1, p2

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    int-to-long v1, p3

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    int-to-long v1, p4

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0, p5}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    .line 1933
    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 1934
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1935
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 1938
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mIWifiChip:Landroid/hardware/wifi/V1_0/IWifiChip;

    invoke-interface {v1, p5, p1, p3, p4}, Landroid/hardware/wifi/V1_0/IWifiChip;->startLoggingToDebugRingBuffer(Ljava/lang/String;III)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    .line 1944
    .local v1, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v3

    .line 1945
    .end local v1    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v1

    .line 1946
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 1947
    monitor-exit v0

    return v2

    .line 1949
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public startPktFateMonitoring(Ljava/lang/String;)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2154
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2155
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v1

    .line 2156
    .local v1, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->boolResult(Z)Z

    move-result v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 2158
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->startDebugPacketFateMonitoring()Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 2159
    .local v3, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2160
    .end local v3    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v3

    .line 2161
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 2162
    monitor-exit v0

    return v2

    .line 2164
    .end local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public startRssiMonitoring(Ljava/lang/String;BBLcom/android/server/wifi/WifiNative$WifiRssiEventHandler;)I
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "maxRssi"    # B
    .param p3, "minRssi"    # B
    .param p4, "rssiEventHandler"    # Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;

    .line 2405
    const-string v0, "maxRssi=% minRssi=%"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->enter(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    int-to-long v1, p2

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    int-to-long v1, p3

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2406
    const/4 v0, -0x1

    if-gt p2, p3, :cond_0

    return v0

    .line 2407
    :cond_0
    if-nez p4, :cond_1

    return v0

    .line 2408
    :cond_1
    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2409
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v2

    .line 2410
    .local v2, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    if-nez v2, :cond_2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 2412
    :cond_2
    const/16 v3, 0x1d7f

    :try_start_1
    invoke-interface {v2, v3}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->stopRssiMonitoring(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    .line 2414
    invoke-interface {v2, v3, p2, p3}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->startRssiMonitoring(III)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 2415
    .local v3, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_3

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v0

    .line 2416
    :cond_3
    :try_start_3
    iput-object p4, p0, Lcom/android/server/wifi/WifiVendorHal;->mWifiRssiEventHandler:Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2417
    const/4 v0, 0x0

    :try_start_4
    monitor-exit v1

    return v0

    .line 2418
    .end local v3    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v3

    .line 2419
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 2420
    monitor-exit v1

    return v0

    .line 2422
    .end local v2    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public startSendingOffloadedPacket(Ljava/lang/String;I[B[B[BII)I
    .locals 16
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "slot"    # I
    .param p3, "srcMac"    # [B
    .param p4, "dstMac"    # [B
    .param p5, "packet"    # [B
    .param p6, "protocol"    # I
    .param p7, "periodInMs"    # I

    move-object/from16 v1, p0

    .line 2335
    const-string v0, "slot=% periodInMs=%"

    invoke-direct {v1, v0}, Lcom/android/server/wifi/WifiVendorHal;->enter(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    move/from16 v9, p2

    int-to-long v2, v9

    invoke-interface {v0, v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    move/from16 v10, p7

    int-to-long v2, v10

    invoke-interface {v0, v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2337
    invoke-static/range {p5 .. p5}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object v11

    .line 2339
    .local v11, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    sget-object v12, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2340
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v0

    move-object v13, v0

    .line 2341
    .local v13, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    const/4 v14, -0x1

    if-nez v13, :cond_0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v14

    .line 2343
    :cond_0
    move/from16 v15, p6

    int-to-short v5, v15

    move-object v2, v13

    move v3, v9

    move-object v4, v11

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move v8, v10

    :try_start_1
    invoke-interface/range {v2 .. v8}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->startSendingKeepAlivePackets(ILjava/util/ArrayList;S[B[BI)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 2350
    .local v0, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {v1, v0}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_1

    :try_start_2
    monitor-exit v12

    return v14

    .line 2351
    :cond_1
    const/4 v2, 0x0

    monitor-exit v12

    return v2

    .line 2352
    .end local v0    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v0

    .line 2353
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {v1, v0}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 2354
    monitor-exit v12

    return v14

    .line 2356
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v13    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    :catchall_0
    move-exception v0

    move/from16 v15, p6

    :goto_0
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public startVendorHal()Z
    .locals 3

    .line 404
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 405
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/HalDeviceManager;->start()Z

    move-result v1

    if-nez v1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "Failed to start vendor HAL"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 407
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 409
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "Vendor Hal started successfully"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 410
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 411
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startVendorHalAp()Z
    .locals 3

    .line 369
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 370
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiVendorHal;->startVendorHal()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 371
    monitor-exit v0

    return v2

    .line 373
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiVendorHal;->createApIface(Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 374
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiVendorHal;->stopVendorHal()V

    .line 375
    monitor-exit v0

    return v2

    .line 377
    :cond_1
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 378
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startVendorHalSta()Z
    .locals 3

    .line 387
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 388
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiVendorHal;->startVendorHal()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 389
    monitor-exit v0

    return v2

    .line 391
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wifi/WifiVendorHal;->createStaIface(ZLcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 392
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiVendorHal;->stopVendorHal()V

    .line 393
    monitor-exit v0

    return v2

    .line 395
    :cond_1
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 396
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopBgScan(Ljava/lang/String;)V
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 879
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 880
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v1

    .line 881
    .local v1, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 883
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    if-eqz v2, :cond_1

    .line 884
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget v2, v2, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->cmdId:I

    invoke-interface {v1, v2}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->stopBackgroundScan(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    .line 885
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 889
    :cond_1
    goto :goto_0

    .line 887
    :catch_0
    move-exception v2

    .line 888
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 890
    .end local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 891
    return-void

    .line 890
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public stopRssiMonitoring(Ljava/lang/String;)I
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2432
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2433
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mWifiRssiEventHandler:Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;

    .line 2434
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v1

    .line 2435
    .local v1, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    const/4 v2, -0x1

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 2437
    :cond_0
    const/16 v3, 0x1d7f

    :try_start_1
    invoke-interface {v1, v3}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->stopRssiMonitoring(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 2438
    .local v3, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    :try_start_2
    monitor-exit v0

    return v2

    .line 2439
    :cond_1
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 2440
    .end local v3    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v3

    .line 2441
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 2442
    monitor-exit v0

    return v2

    .line 2444
    .end local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public stopSendingOffloadedPacket(Ljava/lang/String;I)I
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "slot"    # I

    .line 2367
    const-string v0, "slot=%"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiVendorHal;->enter(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    int-to-long v1, p2

    invoke-interface {v0, v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 2369
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2370
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/IWifiStaIface;

    move-result-object v1

    .line 2371
    .local v1, "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    const/4 v2, -0x1

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 2373
    :cond_0
    :try_start_1
    invoke-interface {v1, p2}, Landroid/hardware/wifi/V1_0/IWifiStaIface;->stopSendingKeepAlivePackets(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 2374
    .local v3, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->ok(Landroid/hardware/wifi/V1_0/WifiStatus;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    :try_start_2
    monitor-exit v0

    return v2

    .line 2375
    :cond_1
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 2376
    .end local v3    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catch_0
    move-exception v3

    .line 2377
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiVendorHal;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 2378
    monitor-exit v0

    return v2

    .line 2380
    .end local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public stopVendorHal()V
    .locals 3

    .line 658
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 659
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/HalDeviceManager;->stop()V

    .line 660
    invoke-direct {p0}, Lcom/android/server/wifi/WifiVendorHal;->clearState()V

    .line 661
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "Vendor Hal stopped"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 662
    monitor-exit v0

    .line 663
    return-void

    .line 662
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method wifiFeatureMaskFromChipCapabilities(I)I
    .locals 5
    .param p1, "capabilities"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1076
    const/4 v0, 0x0

    .line 1077
    .local v0, "features":I
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "features":I
    :goto_0
    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sChipFeatureCapabilityTranslation:[[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 1078
    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sChipFeatureCapabilityTranslation:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x1

    aget v3, v3, v4

    and-int/2addr v3, p1

    if-eqz v3, :cond_0

    .line 1079
    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sChipFeatureCapabilityTranslation:[[I

    aget-object v3, v3, v0

    aget v3, v3, v1

    or-int/2addr v2, v3

    .line 1077
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1082
    .end local v0    # "i":I
    :cond_1
    return v2
.end method

.method wifiFeatureMaskFromStaCapabilities(I)I
    .locals 5
    .param p1, "capabilities"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1138
    const/4 v0, 0x0

    .line 1139
    .local v0, "features":I
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "features":I
    :goto_0
    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sStaFeatureCapabilityTranslation:[[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 1140
    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sStaFeatureCapabilityTranslation:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x1

    aget v3, v3, v4

    and-int/2addr v3, p1

    if-eqz v3, :cond_0

    .line 1141
    sget-object v3, Lcom/android/server/wifi/WifiVendorHal;->sStaFeatureCapabilityTranslation:[[I

    aget-object v3, v3, v0

    aget v3, v3, v1

    or-int/2addr v2, v3

    .line 1139
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1144
    .end local v0    # "i":I
    :cond_1
    return v2
.end method
