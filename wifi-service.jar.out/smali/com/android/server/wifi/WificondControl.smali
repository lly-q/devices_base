.class public Lcom/android/server/wifi/WificondControl;
.super Ljava/lang/Object;
.source "WificondControl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WificondControl$ApInterfaceEventCallback;,
        Lcom/android/server/wifi/WificondControl$PnoScanEventHandler;,
        Lcom/android/server/wifi/WificondControl$ScanEventHandler;
    }
.end annotation


# static fields
.field private static final MAX_SSID_LEN:I = 0x20

.field public static final SCAN_TYPE_PNO_SCAN:I = 0x1

.field public static final SCAN_TYPE_SINGLE_SCAN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WificondControl"


# instance fields
.field private mApInterfaceListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/IApInterfaceEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mApInterfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/IApInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mCarrierNetworkConfig:Lcom/android/server/wifi/CarrierNetworkConfig;

.field private mClientInterfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/IClientInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mDeathEventHandler:Lcom/android/server/wifi/WifiNative$WificondDeathEventHandler;

.field private mPnoScanEventHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/IPnoScanEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mScanEventHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/IScanEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mVerboseLoggingEnabled:Z

.field private mWifiInjector:Lcom/android/server/wifi/WifiInjector;

.field private mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

.field private mWificond:Landroid/net/wifi/IWificond;

.field private mWificondScanners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/IWifiScannerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiInjector;Lcom/android/server/wifi/WifiMonitor;Lcom/android/server/wifi/CarrierNetworkConfig;)V
    .locals 1
    .param p1, "wifiInjector"    # Lcom/android/server/wifi/WifiInjector;
    .param p2, "wifiMonitor"    # Lcom/android/server/wifi/WifiMonitor;
    .param p3, "carrierNetworkConfig"    # Lcom/android/server/wifi/CarrierNetworkConfig;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WificondControl;->mVerboseLoggingEnabled:Z

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WificondControl;->mClientInterfaces:Ljava/util/HashMap;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WificondControl;->mApInterfaces:Ljava/util/HashMap;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificondScanners:Ljava/util/HashMap;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WificondControl;->mScanEventHandlers:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WificondControl;->mPnoScanEventHandlers:Ljava/util/HashMap;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WificondControl;->mApInterfaceListeners:Ljava/util/HashMap;

    .line 113
    iput-object p1, p0, Lcom/android/server/wifi/WificondControl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    .line 114
    iput-object p2, p0, Lcom/android/server/wifi/WificondControl;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    .line 115
    iput-object p3, p0, Lcom/android/server/wifi/WificondControl;->mCarrierNetworkConfig:Lcom/android/server/wifi/CarrierNetworkConfig;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/WificondControl;)Lcom/android/server/wifi/WifiMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WificondControl;

    .line 65
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WificondControl;)Lcom/android/server/wifi/WifiInjector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WificondControl;

    .line 65
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    return-object v0
.end method

.method private clearState()V
    .locals 1

    .line 939
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mClientInterfaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 940
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificondScanners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 941
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mPnoScanEventHandlers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 942
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mScanEventHandlers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 943
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mApInterfaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 944
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mApInterfaceListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 945
    return-void
.end method

.method private getApInterface(Ljava/lang/String;)Landroid/net/wifi/IApInterface;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 851
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mApInterfaces:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/IApInterface;

    return-object v0
.end method

.method private getClientInterface(Ljava/lang/String;)Landroid/net/wifi/IClientInterface;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 417
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mClientInterfaces:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/IClientInterface;

    return-object v0
.end method

.method private static getScanType(I)I
    .locals 3
    .param p0, "scanType"    # I

    .line 623
    packed-switch p0, :pswitch_data_0

    .line 631
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid scan type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 627
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 625
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

.method private getScannerImpl(Ljava/lang/String;)Landroid/net/wifi/IWifiScannerImpl;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 532
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificondScanners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/IWifiScannerImpl;

    return-object v0
.end method

.method private retrieveWificondAndRegisterForDeath()Z
    .locals 4

    .line 216
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 217
    iget-boolean v0, p0, Lcom/android/server/wifi/WificondControl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 218
    const-string v0, "WificondControl"

    const-string v2, "Wificond handle already retrieved"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    return v1

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->makeWificond()Landroid/net/wifi/IWificond;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    .line 224
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 225
    const-string v0, "WificondControl"

    const-string v1, "Failed to get reference to wificond"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return v2

    .line 229
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    invoke-interface {v0}, Landroid/net/wifi/IWificond;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    nop

    .line 235
    return v1

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WificondControl"

    const-string v3, "Failed to register death notification for wificond"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return v2
.end method


# virtual methods
.method public abortScan(Ljava/lang/String;)V
    .locals 4
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 803
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WificondControl;->getScannerImpl(Ljava/lang/String;)Landroid/net/wifi/IWifiScannerImpl;

    move-result-object v0

    .line 804
    .local v0, "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    if-nez v0, :cond_0

    .line 805
    const-string v1, "WificondControl"

    const-string v2, "No valid wificond scanner interface handler"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    return-void

    .line 809
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/net/wifi/IWifiScannerImpl;->abortScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    goto :goto_0

    .line 810
    :catch_0
    move-exception v1

    .line 811
    .local v1, "e1":Landroid/os/RemoteException;
    const-string v2, "WificondControl"

    const-string v3, "Failed to request abortScan due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    .end local v1    # "e1":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public binderDied()V
    .locals 2

    .line 178
    const-string v0, "WificondControl"

    const-string v1, "Wificond died!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-direct {p0}, Lcom/android/server/wifi/WificondControl;->clearState()V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    .line 183
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mDeathEventHandler:Lcom/android/server/wifi/WifiNative$WificondDeathEventHandler;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mDeathEventHandler:Lcom/android/server/wifi/WifiNative$WificondDeathEventHandler;

    invoke-interface {v0}, Lcom/android/server/wifi/WifiNative$WificondDeathEventHandler;->onDeath()V

    .line 186
    :cond_0
    return-void
.end method

.method public disableHostapd()Z
    .locals 4

    .line 425
    invoke-direct {p0}, Lcom/android/server/wifi/WificondControl;->retrieveWificondAndRegisterForDeath()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 426
    return v1

    .line 429
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    invoke-interface {v0}, Landroid/net/wifi/IWificond;->disableHostapd()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WificondControl"

    const-string v3, "Failed to disable hostapd due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public disableSupplicant()Z
    .locals 4

    .line 442
    invoke-direct {p0}, Lcom/android/server/wifi/WificondControl;->retrieveWificondAndRegisterForDeath()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 443
    return v1

    .line 446
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    invoke-interface {v0}, Landroid/net/wifi/IWificond;->disableSupplicant()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WificondControl"

    const-string v3, "Failed to disable supplicant due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public enableSupplicant()Z
    .locals 4

    .line 458
    invoke-direct {p0}, Lcom/android/server/wifi/WificondControl;->retrieveWificondAndRegisterForDeath()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 459
    return v1

    .line 462
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    invoke-interface {v0}, Landroid/net/wifi/IWificond;->enableSupplicant()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WificondControl"

    const-string v3, "Failed to enable supplicant due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public enableVerboseLogging(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 192
    iput-boolean p1, p0, Lcom/android/server/wifi/WificondControl;->mVerboseLoggingEnabled:Z

    .line 193
    return-void
.end method

.method public getChannelsForBand(I)[I
    .locals 4
    .param p1, "band"    # I

    .line 828
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 829
    const-string v0, "WificondControl"

    const-string v2, "No valid wificond scanner interface handler"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    return-object v1

    .line 833
    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 841
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported band "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 843
    :catch_0
    move-exception v0

    goto :goto_0

    .line 837
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    invoke-interface {v0}, Landroid/net/wifi/IWificond;->getAvailable5gNonDFSChannels()[I

    move-result-object v0

    return-object v0

    .line 835
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    invoke-interface {v0}, Landroid/net/wifi/IWificond;->getAvailable2gChannels()[I

    move-result-object v0

    return-object v0

    .line 839
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    invoke-interface {v0}, Landroid/net/wifi/IWificond;->getAvailableDFSChannels()[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 843
    :goto_0
    nop

    .line 844
    .local v0, "e1":Landroid/os/RemoteException;
    const-string v2, "WificondControl"

    const-string v3, "Failed to request getChannelsForBand due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    .end local v0    # "e1":Landroid/os/RemoteException;
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getScanResults(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 25
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "scanType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 542
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 543
    .local v2, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WificondControl;->getScannerImpl(Ljava/lang/String;)Landroid/net/wifi/IWifiScannerImpl;

    move-result-object v3

    .line 544
    .local v3, "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    if-nez v3, :cond_0

    .line 545
    const-string v0, "WificondControl"

    const-string v4, "No valid wificond scanner interface handler"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return-object v2

    .line 550
    :cond_0
    if-nez p2, :cond_1

    .line 551
    :try_start_0
    invoke-interface {v3}, Landroid/net/wifi/IWifiScannerImpl;->getScanResults()[Lcom/android/server/wifi/wificond/NativeScanResult;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, "nativeResults":[Lcom/android/server/wifi/wificond/NativeScanResult;
    goto :goto_0

    .line 609
    .end local v0    # "nativeResults":[Lcom/android/server/wifi/wificond/NativeScanResult;
    :catch_0
    move-exception v0

    move-object/from16 v20, v3

    goto/16 :goto_4

    .line 553
    :cond_1
    :try_start_1
    invoke-interface {v3}, Landroid/net/wifi/IWifiScannerImpl;->getPnoScanResults()[Lcom/android/server/wifi/wificond/NativeScanResult;

    move-result-object v0

    .restart local v0    # "nativeResults":[Lcom/android/server/wifi/wificond/NativeScanResult;
    :goto_0
    move-object v5, v0

    .line 555
    .end local v0    # "nativeResults":[Lcom/android/server/wifi/wificond/NativeScanResult;
    .local v5, "nativeResults":[Lcom/android/server/wifi/wificond/NativeScanResult;
    array-length v6, v5

    const/4 v0, 0x0

    move v7, v0

    :goto_1
    if-ge v7, v6, :cond_5

    aget-object v0, v5, v7

    move-object v8, v0

    .line 556
    .local v8, "result":Lcom/android/server/wifi/wificond/NativeScanResult;
    iget-object v0, v8, Lcom/android/server/wifi/wificond/NativeScanResult;->ssid:[B

    invoke-static {v0}, Landroid/net/wifi/WifiSsid;->createFromByteArray([B)Landroid/net/wifi/WifiSsid;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v15, v0

    .line 559
    .local v15, "wifiSsid":Landroid/net/wifi/WifiSsid;
    :try_start_2
    iget-object v0, v8, Lcom/android/server/wifi/wificond/NativeScanResult;->bssid:[B

    invoke-static {v0}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v14, v0

    .line 563
    .local v14, "bssid":Ljava/lang/String;
    nop

    .line 562
    nop

    .line 564
    if-nez v14, :cond_2

    .line 565
    :try_start_3
    const-string v0, "WificondControl"

    const-string v9, "Illegal null bssid"

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 566
    nop

    .line 555
    move-object/from16 v20, v3

    move-object/from16 v23, v5

    move/from16 v24, v6

    goto/16 :goto_3

    .line 568
    :cond_2
    :try_start_4
    iget-object v0, v8, Lcom/android/server/wifi/wificond/NativeScanResult;->infoElement:[B

    .line 569
    invoke-static {v0}, Lcom/android/server/wifi/util/InformationElementUtil;->parseInformationElements([B)[Landroid/net/wifi/ScanResult$InformationElement;

    move-result-object v0

    move-object v12, v0

    .line 570
    .local v12, "ies":[Landroid/net/wifi/ScanResult$InformationElement;
    new-instance v0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;

    invoke-direct {v0}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;-><init>()V

    move-object v11, v0

    .line 572
    .local v11, "capabilities":Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;
    iget-object v0, v8, Lcom/android/server/wifi/wificond/NativeScanResult;->capability:Ljava/util/BitSet;

    invoke-virtual {v11, v12, v0}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->from([Landroid/net/wifi/ScanResult$InformationElement;Ljava/util/BitSet;)V

    .line 573
    invoke-virtual {v11}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->generateCapabilitiesString()Ljava/lang/String;

    move-result-object v13
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 576
    .local v13, "flags":Ljava/lang/String;
    :try_start_5
    new-instance v10, Lcom/android/server/wifi/hotspot2/NetworkDetail;

    const/4 v0, 0x0

    iget v9, v8, Lcom/android/server/wifi/wificond/NativeScanResult;->frequency:I

    invoke-direct {v10, v14, v12, v0, v9}, Lcom/android/server/wifi/hotspot2/NetworkDetail;-><init>(Ljava/lang/String;[Landroid/net/wifi/ScanResult$InformationElement;Ljava/util/List;I)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    .line 580
    .local v10, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    nop

    .line 579
    nop

    .line 582
    :try_start_6
    new-instance v0, Lcom/android/server/wifi/ScanDetail;

    iget v9, v8, Lcom/android/server/wifi/wificond/NativeScanResult;->signalMbm:I

    div-int/lit8 v16, v9, 0x64

    iget v9, v8, Lcom/android/server/wifi/wificond/NativeScanResult;->frequency:I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    move-object/from16 v20, v3

    :try_start_7
    iget-wide v3, v8, Lcom/android/server/wifi/wificond/NativeScanResult;->tsf:J

    .end local v3    # "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    .local v20, "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    const/16 v19, 0x0

    move/from16 v17, v9

    move-object v9, v0

    move-object/from16 v21, v11

    move-object v11, v15

    .end local v11    # "capabilities":Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;
    .local v21, "capabilities":Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;
    move-object/from16 v22, v12

    move-object v12, v14

    .end local v12    # "ies":[Landroid/net/wifi/ScanResult$InformationElement;
    .local v22, "ies":[Landroid/net/wifi/ScanResult$InformationElement;
    move-object/from16 v23, v5

    move-object v5, v14

    move/from16 v14, v16

    .end local v14    # "bssid":Ljava/lang/String;
    .local v5, "bssid":Ljava/lang/String;
    .local v23, "nativeResults":[Lcom/android/server/wifi/wificond/NativeScanResult;
    move/from16 v24, v6

    move-object v6, v15

    move/from16 v15, v17

    .end local v15    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    .local v6, "wifiSsid":Landroid/net/wifi/WifiSsid;
    move-wide/from16 v16, v3

    move-object/from16 v18, v22

    invoke-direct/range {v9 .. v19}, Lcom/android/server/wifi/ScanDetail;-><init>(Lcom/android/server/wifi/hotspot2/NetworkDetail;Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJ[Landroid/net/wifi/ScanResult$InformationElement;Ljava/util/List;)V

    .line 584
    .local v0, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v0}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v3

    .line 587
    .local v3, "scanResult":Landroid/net/wifi/ScanResult;
    invoke-virtual {v0}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForEapNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v1, Lcom/android/server/wifi/WificondControl;->mCarrierNetworkConfig:Lcom/android/server/wifi/CarrierNetworkConfig;

    .line 588
    invoke-virtual {v6}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/android/server/wifi/CarrierNetworkConfig;->isCarrierNetwork(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 589
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/net/wifi/ScanResult;->isCarrierAp:Z

    .line 590
    iget-object v4, v1, Lcom/android/server/wifi/WificondControl;->mCarrierNetworkConfig:Lcom/android/server/wifi/CarrierNetworkConfig;

    .line 591
    invoke-virtual {v6}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/android/server/wifi/CarrierNetworkConfig;->getNetworkEapType(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/wifi/ScanResult;->carrierApEapType:I

    .line 592
    iget-object v4, v1, Lcom/android/server/wifi/WificondControl;->mCarrierNetworkConfig:Lcom/android/server/wifi/CarrierNetworkConfig;

    .line 593
    invoke-virtual {v6}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/android/server/wifi/CarrierNetworkConfig;->getCarrierName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/wifi/ScanResult;->carrierName:Ljava/lang/String;

    .line 596
    :cond_3
    iget-object v4, v8, Lcom/android/server/wifi/wificond/NativeScanResult;->radioChainInfos:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 597
    iget-object v4, v8, Lcom/android/server/wifi/wificond/NativeScanResult;->radioChainInfos:Ljava/util/ArrayList;

    .line 598
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/net/wifi/ScanResult$RadioChainInfo;

    iput-object v4, v3, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    .line 599
    const/4 v4, 0x0

    .line 600
    .local v4, "idx":I
    iget-object v9, v8, Lcom/android/server/wifi/wificond/NativeScanResult;->radioChainInfos:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wifi/wificond/RadioChainInfo;

    .line 601
    .local v11, "nativeRadioChainInfo":Lcom/android/server/wifi/wificond/RadioChainInfo;
    iget-object v12, v3, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    new-instance v14, Landroid/net/wifi/ScanResult$RadioChainInfo;

    invoke-direct {v14}, Landroid/net/wifi/ScanResult$RadioChainInfo;-><init>()V

    aput-object v14, v12, v4

    .line 602
    iget-object v12, v3, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    aget-object v12, v12, v4

    iget v14, v11, Lcom/android/server/wifi/wificond/RadioChainInfo;->chainId:I

    iput v14, v12, Landroid/net/wifi/ScanResult$RadioChainInfo;->id:I

    .line 603
    iget-object v12, v3, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    aget-object v12, v12, v4

    iget v14, v11, Lcom/android/server/wifi/wificond/RadioChainInfo;->level:I

    iput v14, v12, Landroid/net/wifi/ScanResult$RadioChainInfo;->level:I

    .line 604
    add-int/lit8 v4, v4, 0x1

    .line 605
    .end local v11    # "nativeRadioChainInfo":Lcom/android/server/wifi/wificond/RadioChainInfo;
    goto :goto_2

    .line 607
    .end local v4    # "idx":I
    :cond_4
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v0    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v3    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v5    # "bssid":Ljava/lang/String;
    .end local v6    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    .end local v8    # "result":Lcom/android/server/wifi/wificond/NativeScanResult;
    .end local v10    # "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .end local v13    # "flags":Ljava/lang/String;
    .end local v21    # "capabilities":Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;
    .end local v22    # "ies":[Landroid/net/wifi/ScanResult$InformationElement;
    goto :goto_3

    .line 577
    .end local v20    # "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    .end local v23    # "nativeResults":[Lcom/android/server/wifi/wificond/NativeScanResult;
    .local v3, "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    .local v5, "nativeResults":[Lcom/android/server/wifi/wificond/NativeScanResult;
    .restart local v8    # "result":Lcom/android/server/wifi/wificond/NativeScanResult;
    .local v11, "capabilities":Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;
    .restart local v12    # "ies":[Landroid/net/wifi/ScanResult$InformationElement;
    .restart local v13    # "flags":Ljava/lang/String;
    .restart local v14    # "bssid":Ljava/lang/String;
    .restart local v15    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    :catch_1
    move-exception v0

    move-object/from16 v20, v3

    move-object/from16 v23, v5

    move/from16 v24, v6

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    move-object v5, v14

    move-object v6, v15

    .line 578
    .end local v3    # "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    .end local v11    # "capabilities":Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;
    .end local v12    # "ies":[Landroid/net/wifi/ScanResult$InformationElement;
    .end local v14    # "bssid":Ljava/lang/String;
    .end local v15    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .local v5, "bssid":Ljava/lang/String;
    .restart local v6    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    .restart local v20    # "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    .restart local v21    # "capabilities":Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;
    .restart local v22    # "ies":[Landroid/net/wifi/ScanResult$InformationElement;
    .restart local v23    # "nativeResults":[Lcom/android/server/wifi/wificond/NativeScanResult;
    const-string v3, "WificondControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Illegal argument for scan result with bssid: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 579
    goto :goto_3

    .line 560
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v6    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    .end local v13    # "flags":Ljava/lang/String;
    .end local v20    # "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    .end local v21    # "capabilities":Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;
    .end local v22    # "ies":[Landroid/net/wifi/ScanResult$InformationElement;
    .end local v23    # "nativeResults":[Lcom/android/server/wifi/wificond/NativeScanResult;
    .restart local v3    # "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    .local v5, "nativeResults":[Lcom/android/server/wifi/wificond/NativeScanResult;
    .restart local v15    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    :catch_2
    move-exception v0

    move-object/from16 v20, v3

    move-object/from16 v23, v5

    move/from16 v24, v6

    move-object v6, v15

    .line 561
    .end local v3    # "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    .end local v5    # "nativeResults":[Lcom/android/server/wifi/wificond/NativeScanResult;
    .end local v15    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v6    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    .restart local v20    # "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    .restart local v23    # "nativeResults":[Lcom/android/server/wifi/wificond/NativeScanResult;
    const-string v3, "WificondControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal argument "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v8, Lcom/android/server/wifi/wificond/NativeScanResult;->bssid:[B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    .line 562
    nop

    .line 555
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v6    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    .end local v8    # "result":Lcom/android/server/wifi/wificond/NativeScanResult;
    :goto_3
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v20

    move-object/from16 v5, v23

    move/from16 v6, v24

    goto/16 :goto_1

    .line 609
    .end local v23    # "nativeResults":[Lcom/android/server/wifi/wificond/NativeScanResult;
    :catch_3
    move-exception v0

    goto :goto_4

    .line 611
    .end local v20    # "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    .restart local v3    # "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    :cond_5
    move-object/from16 v20, v3

    .end local v3    # "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    .restart local v20    # "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    goto :goto_5

    .line 609
    .end local v20    # "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    .restart local v3    # "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    :catch_4
    move-exception v0

    move-object/from16 v20, v3

    .line 610
    .end local v3    # "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    .local v0, "e1":Landroid/os/RemoteException;
    .restart local v20    # "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    :goto_4
    const-string v3, "WificondControl"

    const-string v4, "Failed to create ScanDetail ArrayList"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    .end local v0    # "e1":Landroid/os/RemoteException;
    :goto_5
    iget-boolean v0, v1, Lcom/android/server/wifi/WificondControl;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_6

    .line 613
    const-string v0, "WificondControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " scan results from wificond"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_6
    return-object v2
.end method

.method public getTxPacketCounters(Ljava/lang/String;)Lcom/android/server/wifi/WifiNative$TxPacketCounters;
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 507
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WificondControl;->getClientInterface(Ljava/lang/String;)Landroid/net/wifi/IClientInterface;

    move-result-object v0

    .line 508
    .local v0, "iface":Landroid/net/wifi/IClientInterface;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 509
    const-string v2, "WificondControl"

    const-string v3, "No valid wificond client interface handler"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return-object v1

    .line 515
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/net/wifi/IClientInterface;->getPacketCounters()[I

    move-result-object v2

    .line 516
    .local v2, "resultArray":[I
    if-eqz v2, :cond_2

    array-length v3, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 523
    :cond_1
    nop

    .line 522
    nop

    .line 524
    new-instance v1, Lcom/android/server/wifi/WifiNative$TxPacketCounters;

    invoke-direct {v1}, Lcom/android/server/wifi/WifiNative$TxPacketCounters;-><init>()V

    .line 525
    .local v1, "counters":Lcom/android/server/wifi/WifiNative$TxPacketCounters;
    const/4 v3, 0x0

    aget v3, v2, v3

    iput v3, v1, Lcom/android/server/wifi/WifiNative$TxPacketCounters;->txSucceeded:I

    .line 526
    const/4 v3, 0x1

    aget v3, v2, v3

    iput v3, v1, Lcom/android/server/wifi/WifiNative$TxPacketCounters;->txFailed:I

    .line 527
    return-object v1

    .line 517
    .end local v1    # "counters":Lcom/android/server/wifi/WifiNative$TxPacketCounters;
    :cond_2
    :goto_0
    :try_start_1
    const-string v3, "WificondControl"

    const-string v4, "Invalid signal poll result from wificond"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 518
    return-object v1

    .line 520
    .end local v2    # "resultArray":[I
    :catch_0
    move-exception v2

    .line 521
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "WificondControl"

    const-string v4, "Failed to do signal polling due to remote exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    return-object v1
.end method

.method public initialize(Lcom/android/server/wifi/WifiNative$WificondDeathEventHandler;)Z
    .locals 2
    .param p1, "handler"    # Lcom/android/server/wifi/WifiNative$WificondDeathEventHandler;

    .line 202
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mDeathEventHandler:Lcom/android/server/wifi/WifiNative$WificondDeathEventHandler;

    if-eqz v0, :cond_0

    .line 203
    const-string v0, "WificondControl"

    const-string v1, "Death handler already present"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    iput-object p1, p0, Lcom/android/server/wifi/WificondControl;->mDeathEventHandler:Lcom/android/server/wifi/WifiNative$WificondDeathEventHandler;

    .line 206
    invoke-virtual {p0}, Lcom/android/server/wifi/WificondControl;->disableHostapd()Z

    .line 207
    invoke-virtual {p0}, Lcom/android/server/wifi/WificondControl;->tearDownInterfaces()Z

    .line 208
    const/4 v0, 0x1

    return v0
.end method

.method public runOemCmd(Ljava/lang/String;)Z
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;

    .line 949
    const-string v0, "WificondControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sending oem cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->makeWificond()Landroid/net/wifi/IWificond;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    .line 951
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 952
    const-string v0, "WificondControl"

    const-string v2, "Failed to get reference to wificond"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    return v1

    .line 957
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/net/wifi/IWificond;->setOemCommandParam([B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 958
    const-string v0, "WificondControl"

    const-string v2, "Failed to run oem command"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 959
    return v1

    .line 961
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 962
    :catch_0
    move-exception v0

    .line 963
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WificondControl"

    const-string v3, "Failed to run oem command due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public scan(Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;)Z
    .locals 11
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

    .line 647
    .local p3, "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p4, "hiddenNetworkSSIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WificondControl;->getScannerImpl(Ljava/lang/String;)Landroid/net/wifi/IWifiScannerImpl;

    move-result-object v0

    .line 648
    .local v0, "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 649
    const-string v2, "WificondControl"

    const-string v3, "No valid wificond scanner interface handler"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    return v1

    .line 652
    :cond_0
    new-instance v2, Lcom/android/server/wifi/wificond/SingleScanSettings;

    invoke-direct {v2}, Lcom/android/server/wifi/wificond/SingleScanSettings;-><init>()V

    .line 654
    .local v2, "settings":Lcom/android/server/wifi/wificond/SingleScanSettings;
    :try_start_0
    invoke-static {p2}, Lcom/android/server/wifi/WificondControl;->getScanType(I)I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/wificond/SingleScanSettings;->scanType:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 658
    nop

    .line 659
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/android/server/wifi/wificond/SingleScanSettings;->channelSettings:Ljava/util/ArrayList;

    .line 660
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/android/server/wifi/wificond/SingleScanSettings;->hiddenNetworks:Ljava/util/ArrayList;

    .line 662
    if-eqz p3, :cond_1

    .line 663
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 664
    .local v4, "freq":Ljava/lang/Integer;
    new-instance v5, Lcom/android/server/wifi/wificond/ChannelSettings;

    invoke-direct {v5}, Lcom/android/server/wifi/wificond/ChannelSettings;-><init>()V

    .line 665
    .local v5, "channel":Lcom/android/server/wifi/wificond/ChannelSettings;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Lcom/android/server/wifi/wificond/ChannelSettings;->frequency:I

    .line 666
    iget-object v6, v2, Lcom/android/server/wifi/wificond/SingleScanSettings;->channelSettings:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    .end local v4    # "freq":Ljava/lang/Integer;
    .end local v5    # "channel":Lcom/android/server/wifi/wificond/ChannelSettings;
    goto :goto_0

    .line 669
    :cond_1
    if-eqz p4, :cond_5

    .line 671
    move v3, v1

    .local v3, "count":I
    :goto_1
    const/4 v4, 0x2

    if-ge v3, v4, :cond_5

    .line 672
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 673
    .local v5, "ssid":Ljava/lang/String;
    new-instance v6, Lcom/android/server/wifi/wificond/HiddenNetwork;

    invoke-direct {v6}, Lcom/android/server/wifi/wificond/HiddenNetwork;-><init>()V

    .line 675
    .local v6, "network":Lcom/android/server/wifi/wificond/HiddenNetwork;
    if-nez v3, :cond_2

    .line 676
    :try_start_1
    invoke-static {v5}, Lcom/android/server/wifi/WifiGbk;->getUtfBytes(Ljava/lang/String;)[B

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/wifi/wificond/HiddenNetwork;->ssid:[B

    goto :goto_3

    .line 679
    :catch_0
    move-exception v7

    goto :goto_4

    .line 678
    :cond_2
    invoke-static {v5}, Lcom/android/server/wifi/WifiGbk;->getGbkBytes(Ljava/lang/String;)[B

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/wifi/wificond/HiddenNetwork;->ssid:[B
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 682
    :goto_3
    nop

    .line 683
    iget-object v7, v6, Lcom/android/server/wifi/wificond/HiddenNetwork;->ssid:[B

    array-length v7, v7

    const/16 v8, 0x20

    if-le v7, v8, :cond_3

    .line 684
    const-string v7, "WificondControl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SSID is too long after conversion, skipping this ssid! SSID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/android/server/wifi/wificond/HiddenNetwork;->ssid:[B

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " , network.ssid.size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/android/server/wifi/wificond/HiddenNetwork;->ssid:[B

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    goto :goto_2

    .line 688
    :cond_3
    iget-object v7, v2, Lcom/android/server/wifi/wificond/SingleScanSettings;->hiddenNetworks:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    .end local v5    # "ssid":Ljava/lang/String;
    .end local v6    # "network":Lcom/android/server/wifi/wificond/HiddenNetwork;
    goto :goto_2

    .line 679
    .restart local v5    # "ssid":Ljava/lang/String;
    .restart local v6    # "network":Lcom/android/server/wifi/wificond/HiddenNetwork;
    :goto_4
    nop

    .line 680
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string v8, "WificondControl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Illegal argument "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 681
    goto :goto_2

    .line 671
    .end local v5    # "ssid":Ljava/lang/String;
    .end local v6    # "network":Lcom/android/server/wifi/wificond/HiddenNetwork;
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 713
    .end local v3    # "count":I
    :cond_5
    :try_start_2
    invoke-interface {v0, v2}, Landroid/net/wifi/IWifiScannerImpl;->scan(Lcom/android/server/wifi/wificond/SingleScanSettings;)Z

    move-result v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    return v3

    .line 714
    :catch_1
    move-exception v3

    .line 715
    .local v3, "e1":Landroid/os/RemoteException;
    const-string v4, "WificondControl"

    const-string v5, "Failed to request scan due to remote exception"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    .end local v3    # "e1":Landroid/os/RemoteException;
    return v1

    .line 655
    :catch_2
    move-exception v3

    .line 656
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "WificondControl"

    const-string v5, "Invalid scan type "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 657
    return v1
.end method

.method public setMacAddress(Ljava/lang/String;Landroid/net/MacAddress;)Z
    .locals 6
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "mac"    # Landroid/net/MacAddress;

    .line 918
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WificondControl;->getClientInterface(Ljava/lang/String;)Landroid/net/wifi/IClientInterface;

    move-result-object v0

    .line 919
    .local v0, "mClientInterface":Landroid/net/wifi/IClientInterface;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 920
    const-string v2, "WificondControl"

    const-string v3, "No valid wificond client interface handler"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    return v1

    .line 923
    :cond_0
    invoke-virtual {p2}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v2

    .line 926
    .local v2, "macByteArray":[B
    :try_start_0
    invoke-interface {v0, v2}, Landroid/net/wifi/IClientInterface;->setMacAddress([B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 930
    nop

    .line 931
    const/4 v1, 0x1

    return v1

    .line 927
    :catch_0
    move-exception v3

    .line 928
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "WificondControl"

    const-string v5, "Failed to setMacAddress due to remote exception"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    return v1
.end method

.method public setupInterfaceForClientMode(Ljava/lang/String;)Landroid/net/wifi/IClientInterface;
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 244
    const-string v0, "WificondControl"

    const-string v1, "Setting up interface for client mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-direct {p0}, Lcom/android/server/wifi/WificondControl;->retrieveWificondAndRegisterForDeath()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 246
    return-object v1

    .line 249
    :cond_0
    move-object v0, v1

    .line 251
    .local v0, "clientInterface":Landroid/net/wifi/IClientInterface;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    invoke-interface {v2, p1}, Landroid/net/wifi/IWificond;->createClientInterface(Ljava/lang/String;)Landroid/net/wifi/IClientInterface;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v2

    .line 255
    nop

    .line 257
    if-nez v0, :cond_1

    .line 258
    const-string v2, "WificondControl"

    const-string v3, "Could not get IClientInterface instance from wificond"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-object v1

    .line 261
    :cond_1
    invoke-interface {v0}, Landroid/net/wifi/IClientInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 264
    iget-object v2, p0, Lcom/android/server/wifi/WificondControl;->mClientInterfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :try_start_1
    invoke-interface {v0}, Landroid/net/wifi/IClientInterface;->getWifiScannerImpl()Landroid/net/wifi/IWifiScannerImpl;

    move-result-object v2

    .line 267
    .local v2, "wificondScanner":Landroid/net/wifi/IWifiScannerImpl;
    if-nez v2, :cond_2

    .line 268
    const-string v3, "WificondControl"

    const-string v4, "Failed to get WificondScannerImpl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-object v1

    .line 271
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WificondControl;->mWificondScanners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    invoke-interface {v2}, Landroid/net/wifi/IWifiScannerImpl;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 273
    new-instance v1, Lcom/android/server/wifi/WificondControl$ScanEventHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wifi/WificondControl$ScanEventHandler;-><init>(Lcom/android/server/wifi/WificondControl;Ljava/lang/String;)V

    .line 274
    .local v1, "scanEventHandler":Lcom/android/server/wifi/WificondControl$ScanEventHandler;
    iget-object v3, p0, Lcom/android/server/wifi/WificondControl;->mScanEventHandlers:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-interface {v2, v1}, Landroid/net/wifi/IWifiScannerImpl;->subscribeScanEvents(Landroid/net/wifi/IScanEvent;)V

    .line 276
    new-instance v3, Lcom/android/server/wifi/WificondControl$PnoScanEventHandler;

    invoke-direct {v3, p0, p1}, Lcom/android/server/wifi/WificondControl$PnoScanEventHandler;-><init>(Lcom/android/server/wifi/WificondControl;Ljava/lang/String;)V

    .line 277
    .local v3, "pnoScanEventHandler":Lcom/android/server/wifi/WificondControl$PnoScanEventHandler;
    iget-object v4, p0, Lcom/android/server/wifi/WificondControl;->mPnoScanEventHandlers:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    invoke-interface {v2, v3}, Landroid/net/wifi/IWifiScannerImpl;->subscribePnoScanEvents(Landroid/net/wifi/IPnoScanEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 281
    .end local v1    # "scanEventHandler":Lcom/android/server/wifi/WificondControl$ScanEventHandler;
    .end local v2    # "wificondScanner":Landroid/net/wifi/IWifiScannerImpl;
    .end local v3    # "pnoScanEventHandler":Lcom/android/server/wifi/WificondControl$PnoScanEventHandler;
    goto :goto_0

    .line 279
    :catch_0
    move-exception v1

    .line 280
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WificondControl"

    const-string v3, "Failed to refresh wificond scanner due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0

    .line 252
    :catch_1
    move-exception v2

    .line 253
    .local v2, "e1":Landroid/os/RemoteException;
    const-string v3, "WificondControl"

    const-string v4, "Failed to get IClientInterface due to remote exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-object v1
.end method

.method public setupInterfaceForSoftApMode(Ljava/lang/String;)Landroid/net/wifi/IApInterface;
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 333
    const-string v0, "WificondControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting up interface for soft ap mode. iface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-direct {p0}, Lcom/android/server/wifi/WificondControl;->retrieveWificondAndRegisterForDeath()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 340
    return-object v1

    .line 343
    :cond_0
    move-object v0, v1

    .line 345
    .local v0, "apInterface":Landroid/net/wifi/IApInterface;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    invoke-interface {v2, p1}, Landroid/net/wifi/IWificond;->createApInterface(Ljava/lang/String;)Landroid/net/wifi/IApInterface;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 349
    nop

    .line 351
    if-nez v0, :cond_1

    .line 352
    const-string v2, "WificondControl"

    const-string v3, "Could not get IApInterface instance from wificond"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return-object v1

    .line 355
    :cond_1
    invoke-interface {v0}, Landroid/net/wifi/IApInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 358
    iget-object v1, p0, Lcom/android/server/wifi/WificondControl;->mApInterfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    return-object v0

    .line 346
    :catch_0
    move-exception v2

    .line 347
    .local v2, "e1":Landroid/os/RemoteException;
    const-string v3, "WificondControl"

    const-string v4, "Failed to get IApInterface due to remote exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return-object v1
.end method

.method public signalPoll(Ljava/lang/String;)Lcom/android/server/wifi/WifiNative$SignalPollResult;
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 476
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WificondControl;->getClientInterface(Ljava/lang/String;)Landroid/net/wifi/IClientInterface;

    move-result-object v0

    .line 477
    .local v0, "iface":Landroid/net/wifi/IClientInterface;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 478
    const-string v2, "WificondControl"

    const-string v3, "No valid wificond client interface handler"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    return-object v1

    .line 484
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/net/wifi/IClientInterface;->signalPoll()[I

    move-result-object v2

    .line 485
    .local v2, "resultArray":[I
    if-eqz v2, :cond_2

    array-length v3, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 492
    :cond_1
    nop

    .line 491
    nop

    .line 493
    new-instance v1, Lcom/android/server/wifi/WifiNative$SignalPollResult;

    invoke-direct {v1}, Lcom/android/server/wifi/WifiNative$SignalPollResult;-><init>()V

    .line 494
    .local v1, "pollResult":Lcom/android/server/wifi/WifiNative$SignalPollResult;
    const/4 v3, 0x0

    aget v3, v2, v3

    iput v3, v1, Lcom/android/server/wifi/WifiNative$SignalPollResult;->currentRssi:I

    .line 495
    const/4 v3, 0x1

    aget v3, v2, v3

    iput v3, v1, Lcom/android/server/wifi/WifiNative$SignalPollResult;->txBitrate:I

    .line 496
    const/4 v3, 0x2

    aget v3, v2, v3

    iput v3, v1, Lcom/android/server/wifi/WifiNative$SignalPollResult;->associationFrequency:I

    .line 497
    return-object v1

    .line 486
    .end local v1    # "pollResult":Lcom/android/server/wifi/WifiNative$SignalPollResult;
    :cond_2
    :goto_0
    :try_start_1
    const-string v3, "WificondControl"

    const-string v4, "Invalid signal poll result from wificond"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 487
    return-object v1

    .line 489
    .end local v2    # "resultArray":[I
    :catch_0
    move-exception v2

    .line 490
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "WificondControl"

    const-string v4, "Failed to do signal polling due to remote exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    return-object v1
.end method

.method public startHostapd(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$SoftApListener;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/android/server/wifi/WifiNative$SoftApListener;

    .line 864
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WificondControl;->getApInterface(Ljava/lang/String;)Landroid/net/wifi/IApInterface;

    move-result-object v0

    .line 865
    .local v0, "iface":Landroid/net/wifi/IApInterface;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 866
    const-string v2, "WificondControl"

    const-string v3, "No valid ap interface handler"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    return v1

    .line 870
    :cond_0
    :try_start_0
    new-instance v2, Lcom/android/server/wifi/WificondControl$ApInterfaceEventCallback;

    invoke-direct {v2, p0, p2}, Lcom/android/server/wifi/WificondControl$ApInterfaceEventCallback;-><init>(Lcom/android/server/wifi/WificondControl;Lcom/android/server/wifi/WifiNative$SoftApListener;)V

    .line 871
    .local v2, "callback":Landroid/net/wifi/IApInterfaceEventCallback;
    iget-object v3, p0, Lcom/android/server/wifi/WificondControl;->mApInterfaceListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    invoke-interface {v0, v2}, Landroid/net/wifi/IApInterface;->startHostapd(Landroid/net/wifi/IApInterfaceEventCallback;)Z

    move-result v3

    .line 873
    .local v3, "success":Z
    if-nez v3, :cond_1

    .line 874
    const-string v4, "WificondControl"

    const-string v5, "Failed to start hostapd."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    return v1

    .line 880
    .end local v2    # "callback":Landroid/net/wifi/IApInterfaceEventCallback;
    .end local v3    # "success":Z
    :cond_1
    nop

    .line 881
    const/4 v1, 0x1

    return v1

    .line 877
    :catch_0
    move-exception v2

    .line 878
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "WificondControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in starting soft AP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    return v1
.end method

.method public startPnoScan(Ljava/lang/String;Lcom/android/server/wifi/WifiNative$PnoSettings;)Z
    .locals 12
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "pnoSettings"    # Lcom/android/server/wifi/WifiNative$PnoSettings;

    .line 727
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WificondControl;->getScannerImpl(Ljava/lang/String;)Landroid/net/wifi/IWifiScannerImpl;

    move-result-object v0

    .line 728
    .local v0, "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 729
    const-string v2, "WificondControl"

    const-string v3, "No valid wificond scanner interface handler"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    return v1

    .line 732
    :cond_0
    new-instance v2, Lcom/android/server/wifi/wificond/PnoSettings;

    invoke-direct {v2}, Lcom/android/server/wifi/wificond/PnoSettings;-><init>()V

    .line 733
    .local v2, "settings":Lcom/android/server/wifi/wificond/PnoSettings;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/android/server/wifi/wificond/PnoSettings;->pnoNetworks:Ljava/util/ArrayList;

    .line 734
    iget v3, p2, Lcom/android/server/wifi/WifiNative$PnoSettings;->periodInMs:I

    iput v3, v2, Lcom/android/server/wifi/wificond/PnoSettings;->intervalMs:I

    .line 735
    iget v3, p2, Lcom/android/server/wifi/WifiNative$PnoSettings;->min24GHzRssi:I

    iput v3, v2, Lcom/android/server/wifi/wificond/PnoSettings;->min2gRssi:I

    .line 736
    iget v3, p2, Lcom/android/server/wifi/WifiNative$PnoSettings;->min5GHzRssi:I

    iput v3, v2, Lcom/android/server/wifi/wificond/PnoSettings;->min5gRssi:I

    .line 737
    iget-object v3, p2, Lcom/android/server/wifi/WifiNative$PnoSettings;->networkList:[Lcom/android/server/wifi/WifiNative$PnoNetwork;

    if-eqz v3, :cond_4

    .line 738
    iget-object v3, p2, Lcom/android/server/wifi/WifiNative$PnoSettings;->networkList:[Lcom/android/server/wifi/WifiNative$PnoNetwork;

    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 739
    .local v6, "network":Lcom/android/server/wifi/WifiNative$PnoNetwork;
    new-instance v7, Lcom/android/server/wifi/wificond/PnoNetwork;

    invoke-direct {v7}, Lcom/android/server/wifi/wificond/PnoNetwork;-><init>()V

    .line 740
    .local v7, "condNetwork":Lcom/android/server/wifi/wificond/PnoNetwork;
    iget-byte v8, v6, Lcom/android/server/wifi/WifiNative$PnoNetwork;->flags:B

    const/4 v9, 0x1

    and-int/2addr v8, v9

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    move v9, v1

    :goto_1
    iput-boolean v9, v7, Lcom/android/server/wifi/wificond/PnoNetwork;->isHidden:Z

    .line 743
    :try_start_0
    iget-object v8, v6, Lcom/android/server/wifi/WifiNative$PnoNetwork;->ssid:Ljava/lang/String;

    .line 744
    invoke-static {v8}, Lcom/android/server/wifi/util/NativeUtil;->decodeSsid(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v8

    iput-object v8, v7, Lcom/android/server/wifi/wificond/PnoNetwork;->ssid:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    nop

    .line 749
    iget-object v8, v7, Lcom/android/server/wifi/wificond/PnoNetwork;->ssid:[B

    array-length v8, v8

    const/16 v9, 0x20

    if-gt v8, v9, :cond_2

    .line 750
    iget-object v8, v2, Lcom/android/server/wifi/wificond/PnoSettings;->pnoNetworks:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    :cond_2
    iget-object v8, v7, Lcom/android/server/wifi/wificond/PnoNetwork;->ssid:[B

    invoke-static {v8}, Lcom/android/server/wifi/WifiGbk;->isAllAscii([B)Z

    move-result v8

    if-nez v8, :cond_3

    .line 754
    new-instance v8, Lcom/android/server/wifi/wificond/PnoNetwork;

    invoke-direct {v8}, Lcom/android/server/wifi/wificond/PnoNetwork;-><init>()V

    .line 755
    .local v8, "condNetwork2":Lcom/android/server/wifi/wificond/PnoNetwork;
    iget-boolean v9, v7, Lcom/android/server/wifi/wificond/PnoNetwork;->isHidden:Z

    iput-boolean v9, v8, Lcom/android/server/wifi/wificond/PnoNetwork;->isHidden:Z

    .line 756
    iget-object v9, v7, Lcom/android/server/wifi/wificond/PnoNetwork;->ssid:[B

    invoke-static {v9}, Lcom/android/server/wifi/WifiGbk;->toGbk([B)[B

    move-result-object v9

    iput-object v9, v8, Lcom/android/server/wifi/wificond/PnoNetwork;->ssid:[B

    .line 757
    iget-object v9, v8, Lcom/android/server/wifi/wificond/PnoNetwork;->ssid:[B

    if-eqz v9, :cond_3

    .line 758
    iget-object v9, v2, Lcom/android/server/wifi/wificond/PnoSettings;->pnoNetworks:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    const-string v9, "WificondControl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WifiGbk - pnoScan add extra Gbk ssid for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v6, Lcom/android/server/wifi/WifiNative$PnoNetwork;->ssid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6    # "network":Lcom/android/server/wifi/WifiNative$PnoNetwork;
    .end local v7    # "condNetwork":Lcom/android/server/wifi/wificond/PnoNetwork;
    .end local v8    # "condNetwork2":Lcom/android/server/wifi/wificond/PnoNetwork;
    goto :goto_2

    .line 745
    .restart local v6    # "network":Lcom/android/server/wifi/WifiNative$PnoNetwork;
    .restart local v7    # "condNetwork":Lcom/android/server/wifi/wificond/PnoNetwork;
    :catch_0
    move-exception v8

    .line 746
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const-string v9, "WificondControl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Illegal argument "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v6, Lcom/android/server/wifi/WifiNative$PnoNetwork;->ssid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 747
    nop

    .line 738
    .end local v6    # "network":Lcom/android/server/wifi/WifiNative$PnoNetwork;
    .end local v7    # "condNetwork":Lcom/android/server/wifi/wificond/PnoNetwork;
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 767
    :cond_4
    :try_start_1
    invoke-interface {v0, v2}, Landroid/net/wifi/IWifiScannerImpl;->startPnoScan(Lcom/android/server/wifi/wificond/PnoSettings;)Z

    move-result v3

    .line 768
    .local v3, "success":Z
    iget-object v4, p0, Lcom/android/server/wifi/WificondControl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiInjector;->getWifiMetrics()Lcom/android/server/wifi/WifiMetrics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiMetrics;->incrementPnoScanStartAttempCount()V

    .line 769
    if-nez v3, :cond_5

    .line 770
    iget-object v4, p0, Lcom/android/server/wifi/WificondControl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiInjector;->getWifiMetrics()Lcom/android/server/wifi/WifiMetrics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiMetrics;->incrementPnoScanFailedCount()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 772
    :cond_5
    return v3

    .line 773
    .end local v3    # "success":Z
    :catch_1
    move-exception v3

    .line 774
    .local v3, "e1":Landroid/os/RemoteException;
    const-string v4, "WificondControl"

    const-string v5, "Failed to start pno scan due to remote exception"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    .end local v3    # "e1":Landroid/os/RemoteException;
    return v1
.end method

.method public stopHostapd(Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 892
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WificondControl;->getApInterface(Ljava/lang/String;)Landroid/net/wifi/IApInterface;

    move-result-object v0

    .line 893
    .local v0, "iface":Landroid/net/wifi/IApInterface;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 894
    const-string v2, "WificondControl"

    const-string v3, "No valid ap interface handler"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    return v1

    .line 898
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/net/wifi/IApInterface;->stopHostapd()Z

    move-result v2

    .line 899
    .local v2, "success":Z
    if-nez v2, :cond_1

    .line 900
    const-string v3, "WificondControl"

    const-string v4, "Failed to stop hostapd."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 901
    return v1

    .line 906
    .end local v2    # "success":Z
    :cond_1
    nop

    .line 907
    iget-object v1, p0, Lcom/android/server/wifi/WificondControl;->mApInterfaceListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    const/4 v1, 0x1

    return v1

    .line 903
    :catch_0
    move-exception v2

    .line 904
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "WificondControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in stopping soft AP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    return v1
.end method

.method public stopPnoScan(Ljava/lang/String;)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 785
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WificondControl;->getScannerImpl(Ljava/lang/String;)Landroid/net/wifi/IWifiScannerImpl;

    move-result-object v0

    .line 786
    .local v0, "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 787
    const-string v2, "WificondControl"

    const-string v3, "No valid wificond scanner interface handler"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    return v1

    .line 791
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/net/wifi/IWifiScannerImpl;->stopPnoScan()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 792
    :catch_0
    move-exception v2

    .line 793
    .local v2, "e1":Landroid/os/RemoteException;
    const-string v3, "WificondControl"

    const-string v4, "Failed to stop pno scan due to remote exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    .end local v2    # "e1":Landroid/os/RemoteException;
    return v1
.end method

.method public tearDownClientInterface(Ljava/lang/String;)Z
    .locals 4
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 292
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WificondControl;->getClientInterface(Ljava/lang/String;)Landroid/net/wifi/IClientInterface;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 293
    const-string v0, "WificondControl"

    const-string v2, "No valid wificond client interface handler"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return v1

    .line 297
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificondScanners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/IWifiScannerImpl;

    .line 298
    .local v0, "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    if-eqz v0, :cond_1

    .line 299
    invoke-interface {v0}, Landroid/net/wifi/IWifiScannerImpl;->unsubscribeScanEvents()V

    .line 300
    invoke-interface {v0}, Landroid/net/wifi/IWifiScannerImpl;->unsubscribePnoScanEvents()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 305
    .end local v0    # "scannerImpl":Landroid/net/wifi/IWifiScannerImpl;
    :cond_1
    nop

    .line 309
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWificond;->tearDownClientInterface(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 313
    .local v0, "success":Z
    nop

    .line 312
    nop

    .line 314
    if-nez v0, :cond_2

    .line 315
    const-string v2, "WificondControl"

    const-string v3, "Failed to teardown client interface"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return v1

    .line 319
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WificondControl;->mClientInterfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v1, p0, Lcom/android/server/wifi/WificondControl;->mWificondScanners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v1, p0, Lcom/android/server/wifi/WificondControl;->mScanEventHandlers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v1, p0, Lcom/android/server/wifi/WificondControl;->mPnoScanEventHandlers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const/4 v1, 0x1

    return v1

    .line 310
    .end local v0    # "success":Z
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e1":Landroid/os/RemoteException;
    const-string v2, "WificondControl"

    const-string v3, "Failed to teardown client interface due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return v1

    .line 302
    .end local v0    # "e1":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 303
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WificondControl"

    const-string v3, "Failed to unsubscribe wificond scanner due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return v1
.end method

.method public tearDownInterfaces()Z
    .locals 4

    .line 393
    const-string v0, "WificondControl"

    const-string v1, "tearing down interfaces in wificond"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-direct {p0}, Lcom/android/server/wifi/WificondControl;->retrieveWificondAndRegisterForDeath()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 397
    return v1

    .line 401
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificondScanners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 402
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/IWifiScannerImpl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/IWifiScannerImpl;

    invoke-interface {v3}, Landroid/net/wifi/IWifiScannerImpl;->unsubscribeScanEvents()V

    .line 403
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/IWifiScannerImpl;

    invoke-interface {v3}, Landroid/net/wifi/IWifiScannerImpl;->unsubscribePnoScanEvents()V

    .line 404
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/IWifiScannerImpl;>;"
    goto :goto_0

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    invoke-interface {v0}, Landroid/net/wifi/IWificond;->tearDownInterfaces()V

    .line 406
    invoke-direct {p0}, Lcom/android/server/wifi/WificondControl;->clearState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    const/4 v0, 0x1

    return v0

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WificondControl"

    const-string v3, "Failed to tear down interfaces due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public tearDownSoftApInterface(Ljava/lang/String;)Z
    .locals 4
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 368
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WificondControl;->getApInterface(Ljava/lang/String;)Landroid/net/wifi/IApInterface;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 369
    const-string v0, "WificondControl"

    const-string v2, "No valid wificond ap interface handler"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return v1

    .line 374
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWificond;->tearDownApInterface(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    .local v0, "success":Z
    nop

    .line 377
    nop

    .line 379
    if-nez v0, :cond_1

    .line 380
    const-string v2, "WificondControl"

    const-string v3, "Failed to teardown AP interface"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return v1

    .line 383
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WificondControl;->mApInterfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-object v1, p0, Lcom/android/server/wifi/WificondControl;->mApInterfaceListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const/4 v1, 0x1

    return v1

    .line 375
    .end local v0    # "success":Z
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e1":Landroid/os/RemoteException;
    const-string v2, "WificondControl"

    const-string v3, "Failed to teardown AP interface due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return v1
.end method
