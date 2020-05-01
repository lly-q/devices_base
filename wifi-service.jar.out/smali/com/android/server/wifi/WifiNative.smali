.class public Lcom/android/server/wifi/WifiNative;
.super Ljava/lang/Object;
.source "WifiNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiNative$RoamingConfig;,
        Lcom/android/server/wifi/WifiNative$RoamingCapabilities;,
        Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;,
        Lcom/android/server/wifi/WifiNative$RxFateReport;,
        Lcom/android/server/wifi/WifiNative$TxFateReport;,
        Lcom/android/server/wifi/WifiNative$FateReport;,
        Lcom/android/server/wifi/WifiNative$RingBufferStatus;,
        Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;,
        Lcom/android/server/wifi/WifiNative$RttEventHandler;,
        Lcom/android/server/wifi/WifiNative$PnoEventHandler;,
        Lcom/android/server/wifi/WifiNative$ScanEventHandler;,
        Lcom/android/server/wifi/WifiNative$PnoSettings;,
        Lcom/android/server/wifi/WifiNative$PnoNetwork;,
        Lcom/android/server/wifi/WifiNative$ScanSettings;,
        Lcom/android/server/wifi/WifiNative$HiddenNetwork;,
        Lcom/android/server/wifi/WifiNative$BucketSettings;,
        Lcom/android/server/wifi/WifiNative$ChannelSettings;,
        Lcom/android/server/wifi/WifiNative$ScanCapabilities;,
        Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeEventHandler;,
        Lcom/android/server/wifi/WifiNative$VendorHalDeathEventHandler;,
        Lcom/android/server/wifi/WifiNative$SupplicantDeathEventHandler;,
        Lcom/android/server/wifi/WifiNative$HostapdDeathEventHandler;,
        Lcom/android/server/wifi/WifiNative$SoftApListener;,
        Lcom/android/server/wifi/WifiNative$WificondDeathEventHandler;,
        Lcom/android/server/wifi/WifiNative$TxPacketCounters;,
        Lcom/android/server/wifi/WifiNative$SignalPollResult;,
        Lcom/android/server/wifi/WifiNative$InterfaceCallback;,
        Lcom/android/server/wifi/WifiNative$StatusListener;,
        Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeHandlerInternal;,
        Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;,
        Lcom/android/server/wifi/WifiNative$HostapdDeathHandlerInternal;,
        Lcom/android/server/wifi/WifiNative$SupplicantDeathHandlerInternal;,
        Lcom/android/server/wifi/WifiNative$WificondDeathHandlerInternal;,
        Lcom/android/server/wifi/WifiNative$VendorHalDeathHandlerInternal;,
        Lcom/android/server/wifi/WifiNative$InterfaceDestoyedListenerInternal;,
        Lcom/android/server/wifi/WifiNative$IfaceManager;,
        Lcom/android/server/wifi/WifiNative$Iface;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_COEXISTENCE_MODE_DISABLED:I = 0x1

.field public static final BLUETOOTH_COEXISTENCE_MODE_ENABLED:I = 0x0

.field public static final BLUETOOTH_COEXISTENCE_MODE_SENSE:I = 0x2

.field private static final CONNECT_TO_HOSTAPD_RETRY_INTERVAL_MS:I = 0x64

.field private static final CONNECT_TO_HOSTAPD_RETRY_TIMES:I = 0x32

.field private static final CONNECT_TO_SUPPLICANT_RETRY_INTERVAL_MS:I = 0x64

.field private static final CONNECT_TO_SUPPLICANT_RETRY_TIMES:I = 0x32

.field public static final DISABLE_FIRMWARE_ROAMING:I = 0x0

.field public static final EAP_SIM_VENDOR_SPECIFIC_CERT_EXPIRED:I = 0x4001

.field public static final ENABLE_FIRMWARE_ROAMING:I = 0x1

.field public static final RX_FILTER_TYPE_V4_MULTICAST:I = 0x0

.field public static final RX_FILTER_TYPE_V6_MULTICAST:I = 0x1

.field public static final SCAN_TYPE_HIGH_ACCURACY:I = 0x2

.field public static final SCAN_TYPE_LOW_LATENCY:I = 0x0

.field public static final SCAN_TYPE_LOW_POWER:I = 0x1

.field public static final SIM_AUTH_RESP_TYPE_GSM_AUTH:Ljava/lang/String; = "GSM-AUTH"

.field public static final SIM_AUTH_RESP_TYPE_UMTS_AUTH:Ljava/lang/String; = "UMTS-AUTH"

.field public static final SIM_AUTH_RESP_TYPE_UMTS_AUTS:Ljava/lang/String; = "UMTS-AUTS"

.field private static final TAG:Ljava/lang/String; = "WifiNative"

.field public static final TX_POWER_SCENARIO_NORMAL:I = 0x0

.field public static final TX_POWER_SCENARIO_VOICE_CALL:I = 0x1

.field public static final WIFI_SCAN_FAILED:I = 0x3

.field public static final WIFI_SCAN_RESULTS_AVAILABLE:I = 0x0

.field public static final WIFI_SCAN_THRESHOLD_NUM_SCANS:I = 0x1

.field public static final WIFI_SCAN_THRESHOLD_PERCENT:I = 0x2


# instance fields
.field private final mHostapdHal:Lcom/android/server/wifi/HostapdHal;

.field private final mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

.field private mLock:Ljava/lang/Object;

.field private final mNwManagementService:Landroid/os/INetworkManagementService;

.field private final mPropertyService:Lcom/android/server/wifi/PropertyService;

.field private mStatusListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/server/wifi/WifiNative$StatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

.field private mVerboseLoggingEnabled:Z

.field private final mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

.field private final mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

.field private final mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

.field private final mWificondControl:Lcom/android/server/wifi/WificondControl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3069
    const-string v0, "wifi-service"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 3070
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->registerNatives()I

    .line 3071
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/SupplicantStaIfaceHal;Lcom/android/server/wifi/HostapdHal;Lcom/android/server/wifi/WificondControl;Lcom/android/server/wifi/WifiMonitor;Landroid/os/INetworkManagementService;Lcom/android/server/wifi/PropertyService;Lcom/android/server/wifi/WifiMetrics;)V
    .locals 2
    .param p1, "vendorHal"    # Lcom/android/server/wifi/WifiVendorHal;
    .param p2, "staIfaceHal"    # Lcom/android/server/wifi/SupplicantStaIfaceHal;
    .param p3, "hostapdHal"    # Lcom/android/server/wifi/HostapdHal;
    .param p4, "condControl"    # Lcom/android/server/wifi/WificondControl;
    .param p5, "wifiMonitor"    # Lcom/android/server/wifi/WifiMonitor;
    .param p6, "nwService"    # Landroid/os/INetworkManagementService;
    .param p7, "propertyService"    # Lcom/android/server/wifi/PropertyService;
    .param p8, "wifiMetrics"    # Lcom/android/server/wifi/WifiMetrics;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiNative;->mVerboseLoggingEnabled:Z

    .line 274
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    .line 275
    new-instance v0, Lcom/android/server/wifi/WifiNative$IfaceManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiNative$IfaceManager;-><init>(Lcom/android/server/wifi/WifiNative$1;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    .line 276
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiNative;->mStatusListeners:Ljava/util/HashSet;

    .line 92
    iput-object p1, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    .line 93
    iput-object p2, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    .line 94
    iput-object p3, p0, Lcom/android/server/wifi/WifiNative;->mHostapdHal:Lcom/android/server/wifi/HostapdHal;

    .line 95
    iput-object p4, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    .line 96
    iput-object p5, p0, Lcom/android/server/wifi/WifiNative;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    .line 97
    iput-object p6, p0, Lcom/android/server/wifi/WifiNative;->mNwManagementService:Landroid/os/INetworkManagementService;

    .line 98
    iput-object p7, p0, Lcom/android/server/wifi/WifiNative;->mPropertyService:Lcom/android/server/wifi/PropertyService;

    .line 99
    iput-object p8, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 100
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/WifiNative;)Lcom/android/server/wifi/WifiMetrics;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNative;

    .line 75
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiNative$Iface;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNative;
    .param p1, "x1"    # Lcom/android/server/wifi/WifiNative$Iface;
    .param p2, "x2"    # Z

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiNative;->onInterfaceStateChanged(Lcom/android/server/wifi/WifiNative$Iface;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiNative;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNative;

    .line 75
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiNative;)Lcom/android/server/wifi/WifiNative$IfaceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNative;

    .line 75
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiNative;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNative;

    .line 75
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiNative;->mVerboseLoggingEnabled:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiNative$Iface;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNative;
    .param p1, "x1"    # Lcom/android/server/wifi/WifiNative$Iface;

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNative;->onInterfaceDestroyed(Lcom/android/server/wifi/WifiNative$Iface;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiNative;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNative;

    .line 75
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative;->onNativeDaemonDeath()V

    return-void
.end method

.method private createApIface(Lcom/android/server/wifi/WifiNative$Iface;)Ljava/lang/String;
    .locals 4
    .param p1, "iface"    # Lcom/android/server/wifi/WifiNative$Iface;

    .line 695
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 696
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiVendorHal;->isVendorHalSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 697
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    new-instance v2, Lcom/android/server/wifi/WifiNative$InterfaceDestoyedListenerInternal;

    iget v3, p1, Lcom/android/server/wifi/WifiNative$Iface;->id:I

    invoke-direct {v2, p0, v3}, Lcom/android/server/wifi/WifiNative$InterfaceDestoyedListenerInternal;-><init>(Lcom/android/server/wifi/WifiNative;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiVendorHal;->createApIface(Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 700
    :cond_0
    const-string v1, "WifiNative"

    const-string v2, "Vendor Hal not supported, ignoring createApIface."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNative;->handleIfaceCreationWhenVendorHalNotSupported(Lcom/android/server/wifi/WifiNative$Iface;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 703
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private createStaIface(Lcom/android/server/wifi/WifiNative$Iface;Z)Ljava/lang/String;
    .locals 4
    .param p1, "iface"    # Lcom/android/server/wifi/WifiNative$Iface;
    .param p2, "lowPrioritySta"    # Z

    .line 678
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 679
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiVendorHal;->isVendorHalSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 680
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    new-instance v2, Lcom/android/server/wifi/WifiNative$InterfaceDestoyedListenerInternal;

    iget v3, p1, Lcom/android/server/wifi/WifiNative$Iface;->id:I

    invoke-direct {v2, p0, v3}, Lcom/android/server/wifi/WifiNative$InterfaceDestoyedListenerInternal;-><init>(Lcom/android/server/wifi/WifiNative;I)V

    invoke-virtual {v1, p2, v2}, Lcom/android/server/wifi/WifiVendorHal;->createStaIface(ZLcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 683
    :cond_0
    const-string v1, "WifiNative"

    const-string v2, "Vendor Hal not supported, ignoring createStaIface."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNative;->handleIfaceCreationWhenVendorHalNotSupported(Lcom/android/server/wifi/WifiNative$Iface;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 686
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleIfaceCreationWhenVendorHalNotSupported(Lcom/android/server/wifi/WifiNative$Iface;)Ljava/lang/String;
    .locals 5
    .param p1, "newIface"    # Lcom/android/server/wifi/WifiNative$Iface;

    .line 661
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 662
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    iget v2, p1, Lcom/android/server/wifi/WifiNative$Iface;->id:I

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative$IfaceManager;->removeExistingIface(I)Lcom/android/server/wifi/WifiNative$Iface;

    move-result-object v1

    .line 663
    .local v1, "existingIface":Lcom/android/server/wifi/WifiNative$Iface;
    if-eqz v1, :cond_0

    .line 664
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->onInterfaceDestroyed(Lcom/android/server/wifi/WifiNative$Iface;)V

    .line 665
    const-string v2, "WifiNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully torn down "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mPropertyService:Lcom/android/server/wifi/PropertyService;

    const-string v3, "wifi.interface"

    const-string v4, "wlan0"

    invoke-interface {v2, v3, v4}, Lcom/android/server/wifi/PropertyService;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 669
    .end local v1    # "existingIface":Lcom/android/server/wifi/WifiNative$Iface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleIfaceRemovalWhenVendorHalNotSupported(Lcom/android/server/wifi/WifiNative$Iface;)Z
    .locals 4
    .param p1, "iface"    # Lcom/android/server/wifi/WifiNative$Iface;

    .line 710
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 711
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    iget v2, p1, Lcom/android/server/wifi/WifiNative$Iface;->id:I

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$600(Lcom/android/server/wifi/WifiNative$IfaceManager;I)Lcom/android/server/wifi/WifiNative$Iface;

    .line 712
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNative;->onInterfaceDestroyed(Lcom/android/server/wifi/WifiNative$Iface;)V

    .line 713
    const-string v1, "WifiNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully torn down "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 715
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initializeNwParamsForClientInterface(Ljava/lang/String;)V
    .locals 4
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 824
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mNwManagementService:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V

    .line 827
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mNwManagementService:Landroid/os/INetworkManagementService;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/os/INetworkManagementService;->setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V

    .line 833
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mNwManagementService:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->disableIpv6(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 836
    :catch_0
    move-exception v0

    .line 837
    .local v0, "ie":Ljava/lang/IllegalStateException;
    const-string v1, "WifiNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to change interface settings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ie":Ljava/lang/IllegalStateException;
    goto :goto_1

    .line 834
    :catch_1
    move-exception v0

    .line 835
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "WifiNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to change interface settings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 839
    :goto_1
    return-void
.end method

.method private onClientInterfaceDestroyed(Lcom/android/server/wifi/WifiNative$Iface;)V
    .locals 4
    .param p1, "iface"    # Lcom/android/server/wifi/WifiNative$Iface;

    .line 400
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 401
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiMonitor;->stopMonitoring(Ljava/lang/String;)V

    .line 402
    iget-object v1, p1, Lcom/android/server/wifi/WifiNative$Iface;->networkObserver:Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->unregisterNetworkObserver(Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 403
    const-string v1, "WifiNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to unregister network observer on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->teardownIface(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 406
    const-string v1, "WifiNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to teardown iface in supplicant on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WificondControl;->tearDownClientInterface(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 409
    const-string v1, "WifiNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to teardown iface in wificond on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative;->stopSupplicantIfNecessary()V

    .line 412
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative;->stopHalAndWificondIfNecessary()V

    .line 413
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative;->removeFstInterface()V

    .line 414
    monitor-exit v0

    .line 415
    return-void

    .line 414
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onInterfaceDestroyed(Lcom/android/server/wifi/WifiNative$Iface;)V
    .locals 3
    .param p1, "iface"    # Lcom/android/server/wifi/WifiNative$Iface;

    .line 450
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 451
    :try_start_0
    iget v1, p1, Lcom/android/server/wifi/WifiNative$Iface;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 452
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNative;->onClientInterfaceDestroyed(Lcom/android/server/wifi/WifiNative$Iface;)V

    goto :goto_0

    .line 453
    :cond_0
    iget v1, p1, Lcom/android/server/wifi/WifiNative$Iface;->type:I

    if-nez v1, :cond_1

    .line 454
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNative;->onSoftApInterfaceDestroyed(Lcom/android/server/wifi/WifiNative$Iface;)V

    .line 457
    :cond_1
    :goto_0
    iget-object v1, p1, Lcom/android/server/wifi/WifiNative$Iface;->externalListener:Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiNative$InterfaceCallback;->onDestroyed(Ljava/lang/String;)V

    .line 458
    monitor-exit v0

    .line 459
    return-void

    .line 458
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onInterfaceStateChanged(Lcom/android/server/wifi/WifiNative$Iface;Z)V
    .locals 4
    .param p1, "iface"    # Lcom/android/server/wifi/WifiNative$Iface;
    .param p2, "isUp"    # Z

    .line 553
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 555
    :try_start_0
    iget-boolean v1, p1, Lcom/android/server/wifi/WifiNative$Iface;->isUp:Z

    if-ne p2, v1, :cond_1

    .line 556
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiNative;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_0

    .line 557
    const-string v1, "WifiNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interface status unchanged on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", Ignoring..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_0
    monitor-exit v0

    return-void

    .line 562
    :cond_1
    const-string v1, "WifiNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interface state changed on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isUp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    if-eqz p2, :cond_2

    .line 564
    iget-object v1, p1, Lcom/android/server/wifi/WifiNative$Iface;->externalListener:Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiNative$InterfaceCallback;->onUp(Ljava/lang/String;)V

    goto :goto_0

    .line 566
    :cond_2
    iget-object v1, p1, Lcom/android/server/wifi/WifiNative$Iface;->externalListener:Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiNative$InterfaceCallback;->onDown(Ljava/lang/String;)V

    .line 567
    iget v1, p1, Lcom/android/server/wifi/WifiNative$Iface;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 568
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMetrics;->incrementNumClientInterfaceDown()V

    goto :goto_0

    .line 569
    :cond_3
    iget v1, p1, Lcom/android/server/wifi/WifiNative$Iface;->type:I

    if-nez v1, :cond_4

    .line 570
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSoftApInterfaceDown()V

    .line 573
    :cond_4
    :goto_0
    iput-boolean p2, p1, Lcom/android/server/wifi/WifiNative$Iface;->isUp:Z

    .line 574
    monitor-exit v0

    .line 575
    return-void

    .line 574
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onNativeDaemonDeath()V
    .locals 3

    .line 495
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mStatusListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiNative$StatusListener;

    .line 496
    .local v1, "listener":Lcom/android/server/wifi/WifiNative$StatusListener;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiNative$StatusListener;->onStatusChanged(Z)V

    .line 497
    .end local v1    # "listener":Lcom/android/server/wifi/WifiNative$StatusListener;
    goto :goto_0

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mStatusListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiNative$StatusListener;

    .line 499
    .restart local v1    # "listener":Lcom/android/server/wifi/WifiNative$StatusListener;
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiNative$StatusListener;->onStatusChanged(Z)V

    .line 500
    .end local v1    # "listener":Lcom/android/server/wifi/WifiNative$StatusListener;
    goto :goto_1

    .line 501
    :cond_1
    return-void
.end method

.method private onSoftApInterfaceDestroyed(Lcom/android/server/wifi/WifiNative$Iface;)V
    .locals 4
    .param p1, "iface"    # Lcom/android/server/wifi/WifiNative$Iface;

    .line 419
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 420
    :try_start_0
    iget-object v1, p1, Lcom/android/server/wifi/WifiNative$Iface;->networkObserver:Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->unregisterNetworkObserver(Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 421
    const-string v1, "WifiNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to unregister network observer on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mHostapdHal:Lcom/android/server/wifi/HostapdHal;

    invoke-virtual {v1}, Lcom/android/server/wifi/HostapdHal;->isVendorHostapdHal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 426
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mHostapdHal:Lcom/android/server/wifi/HostapdHal;

    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/HostapdHal;->removeVendorAccessPoint(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 427
    const-string v1, "WifiNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove vendor access point on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 429
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mHostapdHal:Lcom/android/server/wifi/HostapdHal;

    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/HostapdHal;->removeAccessPoint(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 431
    const-string v1, "WifiNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove access point on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mHostapdHal:Lcom/android/server/wifi/HostapdHal;

    invoke-virtual {v1}, Lcom/android/server/wifi/HostapdHal;->deregisterDeathHandler()Z

    move-result v1

    if-nez v1, :cond_3

    .line 434
    const-string v1, "WifiNative"

    const-string v2, "Failed to deregister supplicant death handler"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WificondControl;->stopHostapd(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 438
    const-string v1, "WifiNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to stop hostapd on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WificondControl;->tearDownSoftApInterface(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 441
    const-string v1, "WifiNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to teardown iface in wificond on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_5
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative;->stopHalAndWificondIfNecessary()V

    .line 444
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative;->removeFstInterface()V

    .line 445
    monitor-exit v0

    .line 446
    return-void

    .line 445
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static native readKernelLogNative()[B
.end method

.method private static native registerNatives()I
.end method

.method private registerNetworkObserver(Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;)Z
    .locals 2
    .param p1, "observer"    # Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;

    .line 378
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 380
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mNwManagementService:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    nop

    .line 384
    const/4 v0, 0x1

    return v0

    .line 381
    :catch_0
    move-exception v1

    .line 382
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method private removeApIface(Lcom/android/server/wifi/WifiNative$Iface;)Z
    .locals 3
    .param p1, "iface"    # Lcom/android/server/wifi/WifiNative$Iface;

    .line 738
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 739
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiVendorHal;->isVendorHalSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 740
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiVendorHal;->removeApIface(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 742
    :cond_0
    const-string v1, "WifiNative"

    const-string v2, "Vendor Hal not supported, ignoring removeApIface."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNative;->handleIfaceRemovalWhenVendorHalNotSupported(Lcom/android/server/wifi/WifiNative$Iface;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 745
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeFstInterface()V
    .locals 5

    .line 893
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$1800(Lcom/android/server/wifi/WifiNative$IfaceManager;I)Lcom/android/server/wifi/WifiNative$Iface;

    move-result-object v0

    .line 894
    .local v0, "iface":Lcom/android/server/wifi/WifiNative$Iface;
    if-nez v0, :cond_0

    .line 895
    return-void

    .line 897
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    iget v2, v0, Lcom/android/server/wifi/WifiNative$Iface;->id:I

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$600(Lcom/android/server/wifi/WifiNative$IfaceManager;I)Lcom/android/server/wifi/WifiNative$Iface;

    .line 901
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mNwManagementService:Landroid/os/INetworkManagementService;

    iget-object v2, v0, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->setInterfaceDown(Ljava/lang/String;)V

    .line 902
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mNwManagementService:Landroid/os/INetworkManagementService;

    iget-object v2, v0, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 905
    :catch_0
    move-exception v1

    .line 906
    .local v1, "ie":Ljava/lang/IllegalStateException;
    const-string v2, "WifiNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to change interface settings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "ie":Ljava/lang/IllegalStateException;
    goto :goto_1

    .line 903
    :catch_1
    move-exception v1

    .line 904
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "WifiNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to change interface settings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 908
    :goto_1
    return-void
.end method

.method private removeStaIface(Lcom/android/server/wifi/WifiNative$Iface;)Z
    .locals 3
    .param p1, "iface"    # Lcom/android/server/wifi/WifiNative$Iface;

    .line 724
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 725
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiVendorHal;->isVendorHalSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 726
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiVendorHal;->removeStaIface(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 728
    :cond_0
    const-string v1, "WifiNative"

    const-string v2, "Vendor Hal not supported, ignoring removeStaIface."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNative;->handleIfaceRemovalWhenVendorHalNotSupported(Lcom/android/server/wifi/WifiNative$Iface;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 731
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setupFstInterface(Lcom/android/server/wifi/WifiNative$Iface;)Z
    .locals 9
    .param p1, "iface"    # Lcom/android/server/wifi/WifiNative$Iface;

    .line 843
    const-string v0, "persist.vendor.fst.rate.upgrade.en"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 844
    .local v0, "fstEnabled":I
    const-string v2, "WifiNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fst "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    const-string v5, "enabled"

    goto :goto_0

    :cond_0
    const-string v5, "disabled"

    :goto_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    if-eq v0, v4, :cond_1

    .line 846
    const-string v1, "WifiNative"

    const-string v2, "FST disabled, not creating FST interface"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    return v4

    .line 849
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    iget v3, p1, Lcom/android/server/wifi/WifiNative$Iface;->type:I

    if-ne v3, v4, :cond_2

    .line 850
    nop

    .line 849
    move v3, v1

    goto :goto_1

    .line 850
    :cond_2
    nop

    .line 849
    move v3, v4

    :goto_1
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$1700(Lcom/android/server/wifi/WifiNative$IfaceManager;I)Z

    move-result v2

    .line 851
    .local v2, "hasOther":Z
    if-eqz v2, :cond_3

    .line 852
    const-string v3, "WifiNative"

    const-string v4, "FST not supported in STA/SAP concurrency"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    return v1

    .line 855
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    const/4 v5, 0x2

    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$1800(Lcom/android/server/wifi/WifiNative$IfaceManager;I)Lcom/android/server/wifi/WifiNative$Iface;

    move-result-object v3

    .line 856
    .local v3, "fstIface":Lcom/android/server/wifi/WifiNative$Iface;
    if-eqz v3, :cond_4

    .line 857
    const-string v4, "WifiNative"

    const-string v5, "FST interface already added"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    return v1

    .line 860
    :cond_4
    const-string v6, "bond0"

    .line 861
    .local v6, "defaultFstInterfaceName":Ljava/lang/String;
    const-string v7, "persist.vendor.fst.data.interface"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 864
    .local v7, "fstInterfaceName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    invoke-static {v8, v5}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$1900(Lcom/android/server/wifi/WifiNative$IfaceManager;I)Lcom/android/server/wifi/WifiNative$Iface;

    move-result-object v3

    .line 865
    if-nez v3, :cond_5

    .line 866
    const-string v4, "WifiNative"

    const-string v5, "Failed to allocate FST interface"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    return v1

    .line 869
    :cond_5
    iput-object v7, v3, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    .line 870
    iget-object v5, p1, Lcom/android/server/wifi/WifiNative$Iface;->externalListener:Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    iput-object v5, v3, Lcom/android/server/wifi/WifiNative$Iface;->externalListener:Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    .line 871
    new-instance v5, Lcom/android/server/wifi/WifiNative$1;

    invoke-direct {v5, p0}, Lcom/android/server/wifi/WifiNative$1;-><init>(Lcom/android/server/wifi/WifiNative;)V

    iput-object v5, p1, Lcom/android/server/wifi/WifiNative$Iface;->externalListener:Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    .line 882
    new-instance v5, Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;

    iget v8, p1, Lcom/android/server/wifi/WifiNative$Iface;->id:I

    invoke-direct {v5, p0, v8}, Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;-><init>(Lcom/android/server/wifi/WifiNative;I)V

    iput-object v5, p1, Lcom/android/server/wifi/WifiNative$Iface;->networkObserver:Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;

    .line 883
    iget-object v5, p1, Lcom/android/server/wifi/WifiNative$Iface;->networkObserver:Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiNative;->registerNetworkObserver(Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 884
    const-string v4, "WifiNative"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to register network observer on "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iget-object v4, v3, Lcom/android/server/wifi/WifiNative$Iface;->externalListener:Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    iput-object v4, p1, Lcom/android/server/wifi/WifiNative$Iface;->externalListener:Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    .line 886
    iget-object v4, v3, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiNative;->teardownInterface(Ljava/lang/String;)V

    .line 887
    return v1

    .line 889
    :cond_6
    return v4
.end method

.method private startHal()Z
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    invoke-static {v1}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$100(Lcom/android/server/wifi/WifiNative$IfaceManager;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 282
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiVendorHal;->isVendorHalSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiVendorHal;->startVendorHal()Z

    move-result v1

    if-nez v1, :cond_1

    .line 284
    const-string v1, "WifiNative"

    const-string v2, "Failed to start vendor HAL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 288
    :cond_0
    const-string v1, "WifiNative"

    const-string v2, "Vendor Hal not supported, ignoring start."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_1
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 292
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startSupplicant()Z
    .locals 5

    .line 342
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    invoke-static {v1}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$200(Lcom/android/server/wifi/WifiNative$IfaceManager;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 344
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v1}, Lcom/android/server/wifi/WificondControl;->enableSupplicant()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 345
    const-string v1, "WifiNative"

    const-string v3, "Failed to enable supplicant"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    monitor-exit v0

    return v2

    .line 348
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative;->waitForSupplicantConnection()Z

    move-result v1

    if-nez v1, :cond_1

    .line 349
    const-string v1, "WifiNative"

    const-string v3, "Failed to connect to supplicant"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    monitor-exit v0

    return v2

    .line 352
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    new-instance v3, Lcom/android/server/wifi/WifiNative$SupplicantDeathHandlerInternal;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/wifi/WifiNative$SupplicantDeathHandlerInternal;-><init>(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiNative$1;)V

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->registerDeathHandler(Lcom/android/server/wifi/WifiNative$SupplicantDeathEventHandler;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 354
    const-string v1, "WifiNative"

    const-string v3, "Failed to register supplicant death handler"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    monitor-exit v0

    return v2

    .line 358
    :cond_2
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 359
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private stopHalAndWificondIfNecessary()V
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    invoke-static {v1}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$100(Lcom/android/server/wifi/WifiNative$IfaceManager;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 299
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v1}, Lcom/android/server/wifi/WificondControl;->tearDownInterfaces()Z

    move-result v1

    if-nez v1, :cond_0

    .line 300
    const-string v1, "WifiNative"

    const-string v2, "Failed to teardown ifaces from wificond"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiVendorHal;->isVendorHalSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiVendorHal;->stopVendorHal()V

    goto :goto_0

    .line 305
    :cond_1
    const-string v1, "WifiNative"

    const-string v2, "Vendor Hal not supported, ignoring stop."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_2
    :goto_0
    monitor-exit v0

    .line 309
    return-void

    .line 308
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private stopSupplicantIfNecessary()V
    .locals 3

    .line 364
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    invoke-static {v1}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$200(Lcom/android/server/wifi/WifiNative$IfaceManager;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 366
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->deregisterDeathHandler()Z

    move-result v1

    if-nez v1, :cond_0

    .line 367
    const-string v1, "WifiNative"

    const-string v2, "Failed to deregister supplicant death handler"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v1}, Lcom/android/server/wifi/WificondControl;->disableSupplicant()Z

    move-result v1

    if-nez v1, :cond_1

    .line 370
    const-string v1, "WifiNative"

    const-string v2, "Failed to disable supplicant"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_1
    monitor-exit v0

    .line 374
    return-void

    .line 373
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private unregisterNetworkObserver(Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;)Z
    .locals 2
    .param p1, "observer"    # Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;

    .line 389
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 391
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mNwManagementService:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1}, Landroid/os/INetworkManagementService;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    nop

    .line 395
    const/4 v0, 0x1

    return v0

    .line 392
    :catch_0
    move-exception v1

    .line 393
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method private waitForHostapdConnection()Z
    .locals 5

    .line 1371
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mHostapdHal:Lcom/android/server/wifi/HostapdHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/HostapdHal;->isInitializationStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mHostapdHal:Lcom/android/server/wifi/HostapdHal;

    .line 1372
    invoke-virtual {v0}, Lcom/android/server/wifi/HostapdHal;->initialize()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1373
    return v1

    .line 1375
    :cond_0
    const/4 v0, 0x0

    .line 1376
    .local v0, "connected":Z
    nop

    .line 1377
    .local v1, "connectTries":I
    :goto_0
    if-nez v0, :cond_2

    add-int/lit8 v2, v1, 0x1

    .local v2, "connectTries":I
    const/16 v3, 0x32

    if-ge v1, v3, :cond_3

    .line 1379
    .end local v1    # "connectTries":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mHostapdHal:Lcom/android/server/wifi/HostapdHal;

    invoke-virtual {v1}, Lcom/android/server/wifi/HostapdHal;->isInitializationComplete()Z

    move-result v0

    .line 1380
    if-eqz v0, :cond_1

    .line 1381
    goto :goto_3

    .line 1384
    :cond_1
    const-wide/16 v3, 0x64

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1386
    :goto_1
    goto :goto_2

    .line 1385
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1376
    :goto_2
    move v1, v2

    goto :goto_0

    .line 1388
    .end local v2    # "connectTries":I
    .restart local v1    # "connectTries":I
    :cond_2
    move v2, v1

    .end local v1    # "connectTries":I
    .restart local v2    # "connectTries":I
    :cond_3
    :goto_3
    return v0
.end method

.method private waitForSupplicantConnection()Z
    .locals 5

    .line 320
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->isInitializationStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    .line 321
    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->initialize()Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    return v1

    .line 324
    :cond_0
    const/4 v0, 0x0

    .line 325
    .local v0, "connected":Z
    nop

    .line 326
    .local v1, "connectTries":I
    :goto_0
    if-nez v0, :cond_2

    add-int/lit8 v2, v1, 0x1

    .local v2, "connectTries":I
    const/16 v3, 0x32

    if-ge v1, v3, :cond_3

    .line 328
    .end local v1    # "connectTries":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->isInitializationComplete()Z

    move-result v0

    .line 329
    if-eqz v0, :cond_1

    .line 330
    goto :goto_3

    .line 333
    :cond_1
    const-wide/16 v3, 0x64

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_1
    goto :goto_2

    .line 334
    :catch_0
    move-exception v1

    goto :goto_1

    .line 325
    :goto_2
    move v1, v2

    goto :goto_0

    .line 337
    .end local v2    # "connectTries":I
    .restart local v1    # "connectTries":I
    :cond_2
    move v2, v1

    .end local v1    # "connectTries":I
    .restart local v2    # "connectTries":I
    :cond_3
    :goto_3
    return v0
.end method


# virtual methods
.method public addHlpReq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "dst"    # Ljava/lang/String;
    .param p3, "hlpPacket"    # Ljava/lang/String;

    .line 1687
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->addHlpReq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public cancelRtt([Landroid/net/wifi/RttManager$RttParams;)Z
    .locals 1
    .param p1, "params"    # [Landroid/net/wifi/RttManager$RttParams;

    .line 2412
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->cancelRtt([Landroid/net/wifi/RttManager$RttParams;)Z

    move-result v0

    return v0
.end method

.method public cancelWps(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1849
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->cancelWps(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public configureNeighborDiscoveryOffload(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 2962
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiVendorHal;->configureNeighborDiscoveryOffload(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public configureRoaming(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$RoamingConfig;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/android/server/wifi/WifiNative$RoamingConfig;

    .line 3014
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiVendorHal;->configureRoaming(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$RoamingConfig;)Z

    move-result v0

    return v0
.end method

.method public connectToNetwork(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "configuration"    # Landroid/net/wifi/WifiConfiguration;

    .line 1991
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WificondControl;->abortScan(Ljava/lang/String;)V

    .line 1992
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->connectToNetwork(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method public disableRttResponder()Z
    .locals 1

    .line 2431
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->disableRttResponder()Z

    move-result v0

    return v0
.end method

.method public disconnect(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1523
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->disconnect(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public dppAddBootstrapQrCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .line 3105
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->dppAddBootstrapQrCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public dppBootstrapGenerate(Ljava/lang/String;Landroid/net/wifi/WifiDppConfig;)I
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/wifi/WifiDppConfig;

    .line 3117
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->dppBootstrapGenerate(Ljava/lang/String;Landroid/net/wifi/WifiDppConfig;)I

    move-result v0

    return v0
.end method

.method public dppBootstrapRemove(Ljava/lang/String;I)I
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "bootstrap_id"    # I

    .line 3141
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->dppBootstrapRemove(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public dppConfiguratorAdd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "curve"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "expiry"    # I

    .line 3182
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->dppConfiguratorAdd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public dppConfiguratorGetKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 3218
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->dppConfiguratorGetKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dppConfiguratorRemove(Ljava/lang/String;I)I
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "config_id"    # I

    .line 3194
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->dppConfiguratorRemove(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public dppGetUri(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "bootstrap_id"    # I

    .line 3129
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->dppGetUri(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dppListen(Ljava/lang/String;Ljava/lang/String;IZZ)I
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "frequency"    # Ljava/lang/String;
    .param p3, "dpp_role"    # I
    .param p4, "qr_mutual"    # Z
    .param p5, "netrole_ap"    # Z

    .line 3159
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->dppListen(Ljava/lang/String;Ljava/lang/String;IZZ)I

    move-result v0

    return v0
.end method

.method public dppStartAuth(Ljava/lang/String;Landroid/net/wifi/WifiDppConfig;)I
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/wifi/WifiDppConfig;

    .line 3206
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->dppStartAuth(Ljava/lang/String;Landroid/net/wifi/WifiDppConfig;)I

    move-result v0

    return v0
.end method

.method public dppStopListen(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 3168
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->dppStopListen(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public enableFirmwareRoaming(Ljava/lang/String;I)I
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "state"    # I

    .line 2998
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiVendorHal;->enableFirmwareRoaming(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public enableRttResponder(I)Landroid/net/wifi/RttManager$ResponderConfig;
    .locals 1
    .param p1, "timeoutSeconds"    # I

    .line 2423
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->enableRttResponder(I)Landroid/net/wifi/RttManager$ResponderConfig;

    move-result-object v0

    return-object v0
.end method

.method public enableStaAutoReconnect(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 1957
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->enableAutoReconnect(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public enableVerboseLogging(I)V
    .locals 2
    .param p1, "verbose"    # I

    .line 106
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiNative;->mVerboseLoggingEnabled:Z

    .line 107
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiNative;->mVerboseLoggingEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WificondControl;->enableVerboseLogging(Z)V

    .line 108
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiNative;->mVerboseLoggingEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->enableVerboseLogging(Z)V

    .line 109
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiNative;->mVerboseLoggingEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiVendorHal;->enableVerboseLogging(Z)V

    .line 110
    return-void
.end method

.method public flushAllHlp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1676
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->flushAllHlp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getApfCapabilities(Ljava/lang/String;)Landroid/net/apf/ApfCapabilities;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2459
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getApfCapabilities(Ljava/lang/String;)Landroid/net/apf/ApfCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getBgScanCapabilities(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$ScanCapabilities;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "capabilities"    # Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    .line 2175
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiVendorHal;->getBgScanCapabilities(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$ScanCapabilities;)Z

    move-result v0

    return v0
.end method

.method public getBgScanResults(Ljava/lang/String;)[Landroid/net/wifi/WifiScanner$ScanData;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2368
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getBgScanResults(Ljava/lang/String;)[Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object v0

    return-object v0
.end method

.method public getCapabilities(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "capaType"    # Ljava/lang/String;

    .line 1656
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getCapabilities(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannelsForBand(I)[I
    .locals 1
    .param p1, "band"    # I

    .line 1279
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WificondControl;->getChannelsForBand(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getClientInterfaceName()Ljava/lang/String;
    .locals 2

    .line 1184
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1185
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    invoke-static {v1}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$2100(Lcom/android/server/wifi/WifiNative$IfaceManager;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1186
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurrentNetworkWpsNfcConfigurationToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2085
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getCurrentNetworkWpsNfcConfigurationToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDriverStateDump()[B
    .locals 1

    .line 2634
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->getDriverStateDump()[B

    move-result-object v0

    return-object v0
.end method

.method public getDriverVersion()Ljava/lang/String;
    .locals 1

    .line 2566
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->getDriverVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEapAnonymousIdentity(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1827
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getCurrentNetworkEapAnonymousIdentity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirmwareVersion()Ljava/lang/String;
    .locals 1

    .line 2575
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFstDataInterfaceName()Ljava/lang/String;
    .locals 3

    .line 911
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 912
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$1800(Lcom/android/server/wifi/WifiNative$IfaceManager;I)Lcom/android/server/wifi/WifiNative$Iface;

    move-result-object v1

    .line 913
    .local v1, "iface":Lcom/android/server/wifi/WifiNative$Iface;
    if-eqz v1, :cond_0

    .line 914
    iget-object v2, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 916
    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 917
    .end local v1    # "iface":Lcom/android/server/wifi/WifiNative$Iface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFwMemoryDump()[B
    .locals 1

    .line 2625
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->getFwMemoryDump()[B

    move-result-object v0

    return-object v0
.end method

.method public getMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1533
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPnoScanResults(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation

    .line 1315
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/WificondControl;->getScanResults(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getRingBufferData(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ringName"    # Ljava/lang/String;

    .line 2616
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getRingBufferData(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getRingBufferStatus()[Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .locals 1

    .line 2606
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->getRingBufferStatus()[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    move-result-object v0

    return-object v0
.end method

.method public getRoamingCapabilities(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$RoamingCapabilities;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "capabilities"    # Lcom/android/server/wifi/WifiNative$RoamingCapabilities;

    .line 2982
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiVendorHal;->getRoamingCapabilities(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$RoamingCapabilities;)Z

    move-result v0

    return v0
.end method

.method public getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;
    .locals 1

    .line 2451
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getRxPackets(Ljava/lang/String;)J
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2883
    invoke-static {p1}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRxPktFates(Ljava/lang/String;[Lcom/android/server/wifi/WifiNative$RxFateReport;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "reportBufs"    # [Lcom/android/server/wifi/WifiNative$RxFateReport;

    .line 2863
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiVendorHal;->getRxPktFates(Ljava/lang/String;[Lcom/android/server/wifi/WifiNative$RxFateReport;)Z

    move-result v0

    return v0
.end method

.method public getScanResults(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation

    .line 1304
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/WificondControl;->getScanResults(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSoftApInterfaceName()Ljava/lang/String;
    .locals 2

    .line 1205
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1206
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    invoke-static {v1}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$2200(Lcom/android/server/wifi/WifiNative$IfaceManager;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1207
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSupportedFeatureSet(Ljava/lang/String;)I
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2386
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getSupportedFeatureSet(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSupportedLoggerFeatureSet()I
    .locals 1

    .line 2548
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->getSupportedLoggerFeatureSet()I

    move-result v0

    return v0
.end method

.method public getTxPacketCounters(Ljava/lang/String;)Lcom/android/server/wifi/WifiNative$TxPacketCounters;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1263
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WificondControl;->getTxPacketCounters(Ljava/lang/String;)Lcom/android/server/wifi/WifiNative$TxPacketCounters;

    move-result-object v0

    return-object v0
.end method

.method public getTxPackets(Ljava/lang/String;)J
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2873
    invoke-static {p1}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTxPktFates(Ljava/lang/String;[Lcom/android/server/wifi/WifiNative$TxFateReport;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "reportBufs"    # [Lcom/android/server/wifi/WifiNative$TxFateReport;

    .line 2855
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiVendorHal;->getTxPktFates(Ljava/lang/String;[Lcom/android/server/wifi/WifiNative$TxFateReport;)Z

    move-result v0

    return v0
.end method

.method public getWifiLinkLayerStats(Ljava/lang/String;)Lcom/android/server/wifi/WifiLinkLayerStats;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2376
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getWifiLinkLayerStats(Ljava/lang/String;)Lcom/android/server/wifi/WifiLinkLayerStats;

    move-result-object v0

    return-object v0
.end method

.method public getWifiMacFromNvItem()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3050
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->getWifiMacFromNvItem()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWlanWakeReasonCount()Landroid/net/wifi/WifiWakeReasonAndCounts;
    .locals 1

    .line 2951
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->getWlanWakeReasonCount()Landroid/net/wifi/WifiWakeReasonAndCounts;

    move-result-object v0

    return-object v0
.end method

.method public initialize()Z
    .locals 5

    .line 754
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 755
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    new-instance v2, Lcom/android/server/wifi/WifiNative$VendorHalDeathHandlerInternal;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/wifi/WifiNative$VendorHalDeathHandlerInternal;-><init>(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiNative$1;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiVendorHal;->initialize(Lcom/android/server/wifi/WifiNative$VendorHalDeathEventHandler;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 756
    const-string v1, "WifiNative"

    const-string v3, "Failed to initialize vendor HAL"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    monitor-exit v0

    return v2

    .line 759
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    new-instance v4, Lcom/android/server/wifi/WifiNative$WificondDeathHandlerInternal;

    invoke-direct {v4, p0, v3}, Lcom/android/server/wifi/WifiNative$WificondDeathHandlerInternal;-><init>(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiNative$1;)V

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WificondControl;->initialize(Lcom/android/server/wifi/WifiNative$WificondDeathEventHandler;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 760
    const-string v1, "WifiNative"

    const-string v3, "Failed to initialize wificond"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    monitor-exit v0

    return v2

    .line 763
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    new-instance v2, Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeHandlerInternal;

    invoke-direct {v2, p0, v3}, Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeHandlerInternal;-><init>(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiNative$1;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiVendorHal;->registerRadioModeChangeHandler(Lcom/android/server/wifi/WifiNative$VendorHalRadioModeChangeEventHandler;)V

    .line 765
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 766
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public installPacketFilter(Ljava/lang/String;[B)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "filter"    # [B

    .line 2470
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiVendorHal;->installPacketFilter(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method public isHalStarted()Z
    .locals 1

    .line 2154
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->isHalStarted()Z

    move-result v0

    return v0
.end method

.method public isInterfaceUp(Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1097
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1098
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$1200(Lcom/android/server/wifi/WifiNative$IfaceManager;Ljava/lang/String;)Lcom/android/server/wifi/WifiNative$Iface;

    move-result-object v1

    .line 1099
    .local v1, "iface":Lcom/android/server/wifi/WifiNative$Iface;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1100
    const-string v3, "WifiNative"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to get iface state on invalid iface="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 1103
    :cond_0
    const/4 v3, 0x0

    .line 1105
    .local v3, "config":Landroid/net/InterfaceConfiguration;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiNative;->mNwManagementService:Landroid/os/INetworkManagementService;

    invoke-interface {v4, p1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v4

    .line 1107
    goto :goto_0

    .line 1106
    :catch_0
    move-exception v4

    .line 1108
    :goto_0
    if-nez v3, :cond_1

    .line 1109
    :try_start_2
    monitor-exit v0

    return v2

    .line 1111
    :cond_1
    invoke-virtual {v3}, Landroid/net/InterfaceConfiguration;->isUp()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1112
    .end local v1    # "iface":Lcom/android/server/wifi/WifiNative$Iface;
    .end local v3    # "config":Landroid/net/InterfaceConfiguration;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public migrateNetworksFromSupplicant(Ljava/lang/String;Ljava/util/Map;Landroid/util/SparseArray;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .line 1972
    .local p2, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    .local p3, "networkExtras":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->loadNetworks(Ljava/lang/String;Ljava/util/Map;Landroid/util/SparseArray;)Z

    move-result v0

    return v0
.end method

.method public pauseBgScan(Ljava/lang/String;)V
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2352
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->pauseBgScan(Ljava/lang/String;)V

    .line 2353
    return-void
.end method

.method public declared-synchronized readKernelLog()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    .line 3081
    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->readKernelLogNative()[B

    move-result-object v0

    .line 3082
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    .line 3083
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3085
    .local v1, "decoder":Ljava/nio/charset/CharsetDecoder;
    :try_start_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 3086
    .local v2, "decoded":Ljava/nio/CharBuffer;
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3

    .line 3087
    .end local v2    # "decoded":Ljava/nio/CharBuffer;
    :catch_0
    move-exception v2

    .line 3088
    .local v2, "cce":Ljava/nio/charset/CharacterCodingException;
    :try_start_2
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v3

    .line 3091
    .end local v1    # "decoder":Ljava/nio/charset/CharsetDecoder;
    .end local v2    # "cce":Ljava/nio/charset/CharacterCodingException;
    :cond_0
    :try_start_3
    const-string v1, "*** failed to read kernel log ***"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v1

    .line 3080
    .end local v0    # "bytes":[B
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiNative;
    throw v0
.end method

.method public readPacketFilter(Ljava/lang/String;)[B
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2480
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->readPacketFilter(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public reassociate(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1513
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->reassociate(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public reconnect(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1503
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->reconnect(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public registerStatusListener(Lcom/android/server/wifi/WifiNative$StatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/wifi/WifiNative$StatusListener;

    .line 789
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mStatusListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 790
    return-void
.end method

.method public removeAllNetworks(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2022
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->removeAllNetworks(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeNetworkIfCurrent(Ljava/lang/String;I)V
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "networkId"    # I

    .line 2095
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->removeNetworkIfCurrent(Ljava/lang/String;I)V

    .line 2096
    return-void
.end method

.method public requestAnqp(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)Z
    .locals 4
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 2047
    .local p3, "anqpIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p4, "hs20Subtypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_3

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p4, :cond_3

    .line 2048
    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 2052
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2053
    .local v0, "anqpIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2054
    .local v2, "anqpId":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->shortValue()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2055
    .end local v2    # "anqpId":Ljava/lang/Integer;
    goto :goto_0

    .line 2056
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2057
    .local v1, "hs20SubtypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2058
    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->initiateAnqpQuery(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    return v2

    .line 2049
    .end local v0    # "anqpIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    .end local v1    # "hs20SubtypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    :goto_1
    const-string v0, "WifiNative"

    const-string v1, "Invalid arguments for ANQP request."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    const/4 v0, 0x0

    return v0
.end method

.method public requestIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .line 2071
    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 2075
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->initiateHs20IconQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 2072
    :cond_1
    :goto_0
    const-string v0, "WifiNative"

    const-string v1, "Invalid arguments for Icon request."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    const/4 v0, 0x0

    return v0
.end method

.method public requestRtt([Landroid/net/wifi/RttManager$RttParams;Lcom/android/server/wifi/WifiNative$RttEventHandler;)Z
    .locals 1
    .param p1, "params"    # [Landroid/net/wifi/RttManager$RttParams;
    .param p2, "handler"    # Lcom/android/server/wifi/WifiNative$RttEventHandler;

    .line 2402
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiVendorHal;->requestRtt([Landroid/net/wifi/RttManager$RttParams;Lcom/android/server/wifi/WifiNative$RttEventHandler;)Z

    move-result v0

    return v0
.end method

.method public resetLogHandler()Z
    .locals 1

    .line 2557
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->resetLogHandler()Z

    move-result v0

    return v0
.end method

.method public resetRoamingConfiguration(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 3024
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    new-instance v1, Lcom/android/server/wifi/WifiNative$RoamingConfig;

    invoke-direct {v1}, Lcom/android/server/wifi/WifiNative$RoamingConfig;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/WifiVendorHal;->configureRoaming(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$RoamingConfig;)Z

    move-result v0

    return v0
.end method

.method public restartBgScan(Ljava/lang/String;)V
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2360
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->restartBgScan(Ljava/lang/String;)V

    .line 2361
    return-void
.end method

.method public roamToNetwork(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "configuration"    # Landroid/net/wifi/WifiConfiguration;

    .line 2011
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WificondControl;->abortScan(Ljava/lang/String;)V

    .line 2012
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->roamToNetwork(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method public runOemCmd(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;

    .line 3054
    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 3055
    .local v0, "strcmd":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WificondControl;->runOemCmd(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3056
    const-string v1, "WifiNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to run Oem command = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3057
    const/4 v1, 0x0

    return v1

    .line 3059
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public scan(Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "scanType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1294
    .local p3, "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p4, "hiddenNetworkSSIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wifi/WificondControl;->scan(Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public selectTxPowerScenario(I)Z
    .locals 1
    .param p1, "scenario"    # I

    .line 3042
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->selectTxPowerScenario(I)Z

    move-result v0

    return v0
.end method

.method public setBluetoothCoexistenceMode(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 1619
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setBtCoexistenceMode(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setBluetoothCoexistenceScanMode(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "setCoexScanMode"    # Z

    .line 1633
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setBtCoexistenceScanModeEnabled(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setConcurrencyPriority(Z)Z
    .locals 1
    .param p1, "isStaHigherPriority"    # Z

    .line 1946
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setConcurrencyPriority(Z)Z

    move-result v0

    return v0
.end method

.method public setConfigMethods(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "cfg"    # Ljava/lang/String;

    .line 1881
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setWpsConfigMethods(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setConfiguredNetworkBSSID(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;

    .line 2032
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setCurrentNetworkBssid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setCountryCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "countryCode"    # Ljava/lang/String;

    .line 1667
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setCountryCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setCountryCodeHal(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "countryCode"    # Ljava/lang/String;

    .line 2491
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mHostapdHal:Lcom/android/server/wifi/HostapdHal;

    invoke-virtual {v0, p2}, Lcom/android/server/wifi/HostapdHal;->setCountryCode(Ljava/lang/String;)V

    .line 2492
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiVendorHal;->setCountryCodeHal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDeviceName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 1860
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setWpsDeviceName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDeviceType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 1871
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setWpsDeviceType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setExternalSim(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "external"    # Z

    .line 1747
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExternalSim(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setFtmMode(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .line 3047
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->setFtmMode(Z)Z

    move-result v0

    return v0
.end method

.method public setHostapdParams(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    .line 2504
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mHostapdHal:Lcom/android/server/wifi/HostapdHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/HostapdHal;->setHostapdParams(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setLoggingEventHandler(Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;)Z
    .locals 1
    .param p1, "handler"    # Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    .line 2522
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->setLoggingEventHandler(Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;)Z

    move-result v0

    return v0
.end method

.method public setMacAddress(Ljava/lang/String;Landroid/net/MacAddress;)Z
    .locals 1
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "mac"    # Landroid/net/MacAddress;

    .line 1456
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiVendorHal;->setMacAddress(Ljava/lang/String;Landroid/net/MacAddress;)Z

    move-result v0

    return v0
.end method

.method public setManufacturer(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1892
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setWpsManufacturer(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setModelName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1903
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setWpsModelName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setModelNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1914
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setWpsModelNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setPowerSave(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 1935
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setPowerSave(Ljava/lang/String;Z)Z

    .line 1936
    return-void
.end method

.method public setScanningMacOui(Ljava/lang/String;[B)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "oui"    # [B

    .line 2444
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiVendorHal;->setScanningMacOui(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method public setSerialNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1925
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setWpsSerialNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setSupplicantLogLevel(Z)V
    .locals 1
    .param p1, "turnOnVerbose"    # Z

    .line 1493
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setLogLevel(Z)Z

    .line 1494
    return-void
.end method

.method public setSuspendOptimizations(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 1645
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setSuspendModeEnabled(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setupInterfaceForBridgeMode(Lcom/android/server/wifi/WifiNative$InterfaceCallback;)Ljava/lang/String;
    .locals 6
    .param p1, "interfaceCallback"    # Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    .line 1056
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1057
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative;->startHal()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1058
    const-string v1, "WifiNative"

    const-string v3, "Failed to start Hal"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSetupSoftApInterfaceFailureDueToHal()V

    .line 1060
    monitor-exit v0

    return-object v2

    .line 1062
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$1900(Lcom/android/server/wifi/WifiNative$IfaceManager;I)Lcom/android/server/wifi/WifiNative$Iface;

    move-result-object v1

    .line 1063
    .local v1, "iface":Lcom/android/server/wifi/WifiNative$Iface;
    if-nez v1, :cond_1

    .line 1064
    const-string v3, "WifiNative"

    const-string v4, "Failed to allocate new bridge iface"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    monitor-exit v0

    return-object v2

    .line 1067
    :cond_1
    iput-object p1, v1, Lcom/android/server/wifi/WifiNative$Iface;->externalListener:Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    .line 1068
    invoke-static {}, Lcom/android/server/wifi/WifiInjector;->getInstance()Lcom/android/server/wifi/WifiInjector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiInjector;->getWifiApConfigStore()Lcom/android/server/wifi/WifiApConfigStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiApConfigStore;->getBridgeInterface()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    .line 1069
    iget-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1070
    const-string v3, "WifiNative"

    const-string v4, "Failed to create Bridge iface in wifinative"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    iget v4, v1, Lcom/android/server/wifi/WifiNative$Iface;->id:I

    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$600(Lcom/android/server/wifi/WifiNative$IfaceManager;I)Lcom/android/server/wifi/WifiNative$Iface;

    .line 1072
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSetupSoftApInterfaceFailureDueToHal()V

    .line 1073
    monitor-exit v0

    return-object v2

    .line 1075
    :cond_2
    new-instance v3, Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;

    iget v4, v1, Lcom/android/server/wifi/WifiNative$Iface;->id:I

    invoke-direct {v3, p0, v4}, Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;-><init>(Lcom/android/server/wifi/WifiNative;I)V

    iput-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->networkObserver:Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;

    .line 1076
    iget-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->networkObserver:Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->registerNetworkObserver(Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1077
    const-string v3, "WifiNative"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to register network observer on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    iget-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiNative;->teardownInterface(Ljava/lang/String;)V

    .line 1079
    monitor-exit v0

    return-object v2

    .line 1083
    :cond_3
    iget-object v2, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiNative;->isInterfaceUp(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/WifiNative;->onInterfaceStateChanged(Lcom/android/server/wifi/WifiNative$Iface;Z)V

    .line 1084
    const-string v2, "WifiNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully setup bridge "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    iget-object v2, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 1086
    .end local v1    # "iface":Lcom/android/server/wifi/WifiNative$Iface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setupInterfaceForClientMode(ZLcom/android/server/wifi/WifiNative$InterfaceCallback;)Ljava/lang/String;
    .locals 6
    .param p1, "lowPrioritySta"    # Z
    .param p2, "interfaceCallback"    # Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    .line 933
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 934
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative;->startHal()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 935
    const-string v1, "WifiNative"

    const-string v3, "Failed to start Hal"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSetupClientInterfaceFailureDueToHal()V

    .line 937
    monitor-exit v0

    return-object v2

    .line 939
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative;->startSupplicant()Z

    move-result v1

    if-nez v1, :cond_1

    .line 940
    const-string v1, "WifiNative"

    const-string v3, "Failed to start supplicant"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSetupClientInterfaceFailureDueToSupplicant()V

    .line 942
    monitor-exit v0

    return-object v2

    .line 944
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$1900(Lcom/android/server/wifi/WifiNative$IfaceManager;I)Lcom/android/server/wifi/WifiNative$Iface;

    move-result-object v1

    .line 945
    .local v1, "iface":Lcom/android/server/wifi/WifiNative$Iface;
    if-nez v1, :cond_2

    .line 946
    const-string v3, "WifiNative"

    const-string v4, "Failed to allocate new STA iface"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    monitor-exit v0

    return-object v2

    .line 949
    :cond_2
    iput-object p2, v1, Lcom/android/server/wifi/WifiNative$Iface;->externalListener:Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    .line 950
    invoke-direct {p0, v1, p1}, Lcom/android/server/wifi/WifiNative;->createStaIface(Lcom/android/server/wifi/WifiNative$Iface;Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    .line 951
    iget-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 952
    const-string v3, "WifiNative"

    const-string v4, "Failed to create STA iface in vendor HAL"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    iget v4, v1, Lcom/android/server/wifi/WifiNative$Iface;->id:I

    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$600(Lcom/android/server/wifi/WifiNative$IfaceManager;I)Lcom/android/server/wifi/WifiNative$Iface;

    .line 954
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSetupClientInterfaceFailureDueToHal()V

    .line 955
    monitor-exit v0

    return-object v2

    .line 957
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->setupFstInterface(Lcom/android/server/wifi/WifiNative$Iface;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 958
    const-string v3, "WifiNative"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to setup fst interface from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    iget-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiNative;->teardownInterface(Ljava/lang/String;)V

    .line 960
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSetupClientInterfaceFailureDueToWificond()V

    .line 961
    monitor-exit v0

    return-object v2

    .line 963
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    iget-object v4, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WificondControl;->setupInterfaceForClientMode(Ljava/lang/String;)Landroid/net/wifi/IClientInterface;

    move-result-object v3

    if-nez v3, :cond_5

    .line 964
    const-string v3, "WifiNative"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to setup iface in wificond on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iget-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiNative;->teardownInterface(Ljava/lang/String;)V

    .line 966
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSetupClientInterfaceFailureDueToWificond()V

    .line 967
    monitor-exit v0

    return-object v2

    .line 969
    :cond_5
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    iget-object v4, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setupIface(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 970
    const-string v3, "WifiNative"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to setup iface in supplicant on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiNative;->teardownInterface(Ljava/lang/String;)V

    .line 972
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSetupClientInterfaceFailureDueToSupplicant()V

    .line 973
    monitor-exit v0

    return-object v2

    .line 975
    :cond_6
    new-instance v3, Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;

    iget v4, v1, Lcom/android/server/wifi/WifiNative$Iface;->id:I

    invoke-direct {v3, p0, v4}, Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;-><init>(Lcom/android/server/wifi/WifiNative;I)V

    iput-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->networkObserver:Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;

    .line 976
    iget-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->networkObserver:Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->registerNetworkObserver(Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 977
    const-string v3, "WifiNative"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to register network observer on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    iget-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiNative;->teardownInterface(Ljava/lang/String;)V

    .line 979
    monitor-exit v0

    return-object v2

    .line 981
    :cond_7
    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiMonitor;->startMonitoring(Ljava/lang/String;)V

    .line 984
    iget-object v2, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiNative;->isInterfaceUp(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/WifiNative;->onInterfaceStateChanged(Lcom/android/server/wifi/WifiNative$Iface;Z)V

    .line 985
    iget-object v2, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNative;->initializeNwParamsForClientInterface(Ljava/lang/String;)V

    .line 986
    const-string v2, "WifiNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully setup "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iget-object v2, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 988
    .end local v1    # "iface":Lcom/android/server/wifi/WifiNative$Iface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setupInterfaceForSoftApMode(Lcom/android/server/wifi/WifiNative$InterfaceCallback;)Ljava/lang/String;
    .locals 6
    .param p1, "interfaceCallback"    # Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    .line 1001
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1002
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative;->startHal()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1003
    const-string v1, "WifiNative"

    const-string v3, "Failed to start Hal"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSetupSoftApInterfaceFailureDueToHal()V

    .line 1005
    monitor-exit v0

    return-object v2

    .line 1007
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$1900(Lcom/android/server/wifi/WifiNative$IfaceManager;I)Lcom/android/server/wifi/WifiNative$Iface;

    move-result-object v1

    .line 1008
    .local v1, "iface":Lcom/android/server/wifi/WifiNative$Iface;
    if-nez v1, :cond_1

    .line 1009
    const-string v3, "WifiNative"

    const-string v4, "Failed to allocate new AP iface"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    monitor-exit v0

    return-object v2

    .line 1012
    :cond_1
    iput-object p1, v1, Lcom/android/server/wifi/WifiNative$Iface;->externalListener:Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    .line 1013
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->createApIface(Lcom/android/server/wifi/WifiNative$Iface;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    .line 1014
    iget-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1015
    const-string v3, "WifiNative"

    const-string v4, "Failed to create AP iface in vendor HAL"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    iget v4, v1, Lcom/android/server/wifi/WifiNative$Iface;->id:I

    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$600(Lcom/android/server/wifi/WifiNative$IfaceManager;I)Lcom/android/server/wifi/WifiNative$Iface;

    .line 1017
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSetupSoftApInterfaceFailureDueToHal()V

    .line 1018
    monitor-exit v0

    return-object v2

    .line 1020
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->setupFstInterface(Lcom/android/server/wifi/WifiNative$Iface;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1021
    const-string v3, "WifiNative"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to setup fst interface from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    iget-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiNative;->teardownInterface(Ljava/lang/String;)V

    .line 1023
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSetupSoftApInterfaceFailureDueToWificond()V

    .line 1024
    monitor-exit v0

    return-object v2

    .line 1026
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    iget-object v4, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WificondControl;->setupInterfaceForSoftApMode(Ljava/lang/String;)Landroid/net/wifi/IApInterface;

    move-result-object v3

    if-nez v3, :cond_4

    .line 1027
    const-string v3, "WifiNative"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to setup iface in wificond on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    iget-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiNative;->teardownInterface(Ljava/lang/String;)V

    .line 1029
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSetupSoftApInterfaceFailureDueToWificond()V

    .line 1030
    monitor-exit v0

    return-object v2

    .line 1032
    :cond_4
    new-instance v3, Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;

    iget v4, v1, Lcom/android/server/wifi/WifiNative$Iface;->id:I

    invoke-direct {v3, p0, v4}, Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;-><init>(Lcom/android/server/wifi/WifiNative;I)V

    iput-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->networkObserver:Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;

    .line 1033
    iget-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->networkObserver:Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->registerNetworkObserver(Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1034
    const-string v3, "WifiNative"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to register network observer on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    iget-object v3, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiNative;->teardownInterface(Ljava/lang/String;)V

    .line 1036
    monitor-exit v0

    return-object v2

    .line 1040
    :cond_5
    iget-object v2, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiNative;->isInterfaceUp(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/WifiNative;->onInterfaceStateChanged(Lcom/android/server/wifi/WifiNative$Iface;Z)V

    .line 1041
    const-string v2, "WifiNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully setup "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    iget-object v2, v1, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 1043
    .end local v1    # "iface":Lcom/android/server/wifi/WifiNative$Iface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public signalPoll(Ljava/lang/String;)Lcom/android/server/wifi/WifiNative$SignalPollResult;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1253
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WificondControl;->signalPoll(Ljava/lang/String;)Lcom/android/server/wifi/WifiNative$SignalPollResult;

    move-result-object v0

    return-object v0
.end method

.method public simAuthFailedResponse(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 1793
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->sendCurrentNetworkEapSimGsmAuthFailure(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public simAuthResponse(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "response"    # Ljava/lang/String;

    .line 1772
    const-string v0, "GSM-AUTH"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1773
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->sendCurrentNetworkEapSimGsmAuthResponse(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1775
    :cond_0
    const-string v0, "UMTS-AUTH"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1776
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->sendCurrentNetworkEapSimUmtsAuthResponse(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1778
    :cond_1
    const-string v0, "UMTS-AUTS"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1779
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->sendCurrentNetworkEapSimUmtsAutsResponse(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1782
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public simIdentityResponse(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "unencryptedResponse"    # Ljava/lang/String;
    .param p4, "encryptedResponse"    # Ljava/lang/String;

    .line 1816
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->sendCurrentNetworkEapIdentityResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startBgScan(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "settings"    # Lcom/android/server/wifi/WifiNative$ScanSettings;
    .param p3, "eventHandler"    # Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 2336
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiVendorHal;->startBgScan(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z

    move-result v0

    return v0
.end method

.method public startFilteringMulticastV4Packets(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1564
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->stopRxFilter(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    .line 1565
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->removeRxFilter(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    .line 1567
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->startRxFilter(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    .line 1564
    :cond_0
    return v1
.end method

.method public startFilteringMulticastV6Packets(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1588
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->stopRxFilter(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    .line 1589
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->removeRxFilter(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    .line 1591
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->startRxFilter(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1588
    :goto_0
    return v1
.end method

.method public startLoggingRingBuffer(IIIILjava/lang/String;)Z
    .locals 6
    .param p1, "verboseLevel"    # I
    .param p2, "flags"    # I
    .param p3, "maxInterval"    # I
    .param p4, "minDataSize"    # I
    .param p5, "ringName"    # Ljava/lang/String;

    .line 2537
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi/WifiVendorHal;->startLoggingRingBuffer(IIIILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startPktFateMonitoring(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2845
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->startPktFateMonitoring(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startPnoScan(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$PnoSettings;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "pnoSettings"    # Lcom/android/server/wifi/WifiNative$PnoSettings;

    .line 1325
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WificondControl;->startPnoScan(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$PnoSettings;)Z

    move-result v0

    return v0
.end method

.method public startRssiMonitoring(Ljava/lang/String;BBLcom/android/server/wifi/WifiNative$WifiRssiEventHandler;)I
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "maxRssi"    # B
    .param p3, "minRssi"    # B
    .param p4, "rssiEventHandler"    # Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;

    .line 2931
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wifi/WifiVendorHal;->startRssiMonitoring(Ljava/lang/String;BBLcom/android/server/wifi/WifiNative$WifiRssiEventHandler;)I

    move-result v0

    return v0
.end method

.method public startSendingOffloadedPacket(Ljava/lang/String;I[B[BII)I
    .locals 9
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "slot"    # I
    .param p3, "dstMac"    # [B
    .param p4, "packet"    # [B
    .param p5, "protocol"    # I
    .param p6, "period"    # I

    .line 2899
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiNative;->getMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 2900
    .local v0, "srcMac":[B
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    move-object v2, p1

    move v3, p2

    move-object v4, v0

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wifi/WifiVendorHal;->startSendingOffloadedPacket(Ljava/lang/String;I[B[B[BII)I

    move-result v1

    return v1
.end method

.method public startSoftAp(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/WifiNative$SoftApListener;)Z
    .locals 4
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "listener"    # Lcom/android/server/wifi/WifiNative$SoftApListener;

    .line 1401
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/wifi/WificondControl;->startHostapd(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$SoftApListener;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1402
    const-string v0, "WifiNative"

    const-string v2, "Failed to start hostapd"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSetupSoftApInterfaceFailureDueToHostapd()V

    .line 1404
    return v1

    .line 1406
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative;->waitForHostapdConnection()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1407
    const-string v0, "WifiNative"

    const-string v2, "Failed to establish connection to hostapd"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSetupSoftApInterfaceFailureDueToHostapd()V

    .line 1409
    return v1

    .line 1411
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mHostapdHal:Lcom/android/server/wifi/HostapdHal;

    new-instance v2, Lcom/android/server/wifi/WifiNative$HostapdDeathHandlerInternal;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/wifi/WifiNative$HostapdDeathHandlerInternal;-><init>(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiNative$1;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/HostapdHal;->registerDeathHandler(Lcom/android/server/wifi/WifiNative$HostapdDeathEventHandler;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1412
    const-string v0, "WifiNative"

    const-string v2, "Failed to register hostapd death handler"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSetupSoftApInterfaceFailureDueToHostapd()V

    .line 1414
    return v1

    .line 1416
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mHostapdHal:Lcom/android/server/wifi/HostapdHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/HostapdHal;->isVendorHostapdHal()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1417
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mHostapdHal:Lcom/android/server/wifi/HostapdHal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/HostapdHal;->addVendorAccessPoint(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/WifiNative$SoftApListener;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1418
    const-string v0, "WifiNative"

    const-string v2, "Failed to add Vendor acccess point"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSetupSoftApInterfaceFailureDueToHostapd()V

    .line 1420
    return v1

    .line 1422
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mHostapdHal:Lcom/android/server/wifi/HostapdHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/HostapdHal;->addAccessPoint(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1423
    const-string v0, "WifiNative"

    const-string v2, "Failed to add acccess point"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSetupSoftApInterfaceFailureDueToHostapd()V

    .line 1425
    return v1

    .line 1427
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public startTdls(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "macAddr"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .line 1698
    if-eqz p3, :cond_0

    .line 1699
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->initiateTdlsDiscover(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1700
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->initiateTdlsSetup(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1702
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->initiateTdlsTeardown(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1704
    :goto_0
    return-void
.end method

.method public startWpsPbc(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;

    .line 1714
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->startWpsPbc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startWpsPinDisplay(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;

    .line 1736
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->startWpsPinDisplay(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .line 1725
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startWpsRegistrar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;

    .line 1839
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->startWpsRegistrar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public stopBgScan(Ljava/lang/String;)V
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2344
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->stopBgScan(Ljava/lang/String;)V

    .line 2345
    return-void
.end method

.method public stopFilteringMulticastV4Packets(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1576
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->stopRxFilter(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    .line 1577
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->addRxFilter(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    .line 1579
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->startRxFilter(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    .line 1576
    :cond_0
    return v1
.end method

.method public stopFilteringMulticastV6Packets(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1600
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->stopRxFilter(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    .line 1601
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->addRxFilter(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    .line 1603
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->startRxFilter(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1600
    :goto_0
    return v1
.end method

.method public stopPnoScan(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1334
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WificondControl;->stopPnoScan(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public stopRssiMonitoring(Ljava/lang/String;)I
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 2942
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->stopRssiMonitoring(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public stopSendingOffloadedPacket(Ljava/lang/String;I)I
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "slot"    # I

    .line 2912
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiVendorHal;->stopSendingOffloadedPacket(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public stopSoftAp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1437
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mHostapdHal:Lcom/android/server/wifi/HostapdHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/HostapdHal;->isVendorHostapdHal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1438
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mHostapdHal:Lcom/android/server/wifi/HostapdHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/HostapdHal;->removeVendorAccessPoint(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1439
    const-string v0, "WifiNative"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to remove vendor access point on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1441
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mHostapdHal:Lcom/android/server/wifi/HostapdHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/HostapdHal;->removeAccessPoint(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1442
    const-string v0, "WifiNative"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to remove access point on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WificondControl;->stopHostapd(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public teardownAllInterfaces()V
    .locals 6

    .line 1156
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1157
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    invoke-static {v1}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$2000(Lcom/android/server/wifi/WifiNative$IfaceManager;)Ljava/util/Iterator;

    move-result-object v1

    .line 1158
    .local v1, "ifaceIdIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1159
    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$1100(Lcom/android/server/wifi/WifiNative$IfaceManager;I)Lcom/android/server/wifi/WifiNative$Iface;

    move-result-object v2

    .line 1160
    .local v2, "iface":Lcom/android/server/wifi/WifiNative$Iface;
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1161
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNative;->onInterfaceDestroyed(Lcom/android/server/wifi/WifiNative$Iface;)V

    .line 1162
    const-string v3, "WifiNative"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Successfully torn down "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    .end local v2    # "iface":Lcom/android/server/wifi/WifiNative$Iface;
    goto :goto_0

    .line 1164
    :cond_0
    const-string v2, "WifiNative"

    const-string v3, "Successfully torn down all ifaces"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    .end local v1    # "ifaceIdIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    monitor-exit v0

    .line 1166
    return-void

    .line 1165
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public teardownInterface(Ljava/lang/String;)V
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1125
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1126
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mIfaceMgr:Lcom/android/server/wifi/WifiNative$IfaceManager;

    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$1200(Lcom/android/server/wifi/WifiNative$IfaceManager;Ljava/lang/String;)Lcom/android/server/wifi/WifiNative$Iface;

    move-result-object v1

    .line 1127
    .local v1, "iface":Lcom/android/server/wifi/WifiNative$Iface;
    if-nez v1, :cond_0

    .line 1128
    const-string v2, "WifiNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to teardown an invalid iface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    monitor-exit v0

    return-void

    .line 1133
    :cond_0
    iget v2, v1, Lcom/android/server/wifi/WifiNative$Iface;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1134
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->removeStaIface(Lcom/android/server/wifi/WifiNative$Iface;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1135
    const-string v2, "WifiNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove iface in vendor HAL="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    monitor-exit v0

    return-void

    .line 1138
    :cond_1
    iget v2, v1, Lcom/android/server/wifi/WifiNative$Iface;->type:I

    if-nez v2, :cond_2

    .line 1139
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->removeApIface(Lcom/android/server/wifi/WifiNative$Iface;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1140
    const-string v2, "WifiNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove iface in vendor HAL="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    monitor-exit v0

    return-void

    .line 1144
    :cond_2
    const-string v2, "WifiNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully initiated teardown for iface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    .end local v1    # "iface":Lcom/android/server/wifi/WifiNative$Iface;
    monitor-exit v0

    .line 1146
    return-void

    .line 1145
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public umtsAuthFailedResponse(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 1803
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->sendCurrentNetworkEapSimUmtsAuthFailure(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
