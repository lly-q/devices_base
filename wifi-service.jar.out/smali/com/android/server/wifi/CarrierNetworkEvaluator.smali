.class public Lcom/android/server/wifi/CarrierNetworkEvaluator;
.super Ljava/lang/Object;
.source "CarrierNetworkEvaluator.java"

# interfaces
.implements Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;


# static fields
.field private static final CARRIER_NETWORK_SCORE:I = 0x3c

.field private static final NAME:Ljava/lang/String; = "CarrierNetworkEvaluator"


# instance fields
.field private final mLocalLog:Landroid/util/LocalLog;

.field private mVerboseLoggingEnabled:Z

.field private final mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConfigManager;Landroid/util/LocalLog;)V
    .locals 1
    .param p1, "configManager"    # Lcom/android/server/wifi/WifiConfigManager;
    .param p2, "localLog"    # Landroid/util/LocalLog;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/CarrierNetworkEvaluator;->mVerboseLoggingEnabled:Z

    .line 50
    iput-object p1, p0, Lcom/android/server/wifi/CarrierNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 51
    iput-object p2, p0, Lcom/android/server/wifi/CarrierNetworkEvaluator;->mLocalLog:Landroid/util/LocalLog;

    .line 53
    return-void
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/android/server/wifi/CarrierNetworkEvaluator;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 58
    iget-boolean v0, p0, Lcom/android/server/wifi/CarrierNetworkEvaluator;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "CarrierNetworkEvaluator"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public enableVerboseLogging(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 116
    iput-boolean p1, p0, Lcom/android/server/wifi/CarrierNetworkEvaluator;->mVerboseLoggingEnabled:Z

    .line 117
    return-void
.end method

.method public evaluateNetworks(Ljava/util/List;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;ZZLjava/util/List;)Landroid/net/wifi/WifiConfiguration;
    .locals 7
    .param p2, "currentNetwork"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "currentBssid"    # Ljava/lang/String;
    .param p4, "connected"    # Z
    .param p5, "untrustedNetworkAllowed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;",
            "Landroid/net/wifi/WifiConfiguration;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/server/wifi/ScanDetail;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;>;)",
            "Landroid/net/wifi/WifiConfiguration;"
        }
    .end annotation

    .line 88
    .local p1, "scanDetails":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    .local p6, "connectableNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/wifi/ScanDetail;Landroid/net/wifi/WifiConfiguration;>;>;"
    const/4 v0, 0x0

    .line 90
    .local v0, "carrierNetworkCandidate":Landroid/net/wifi/WifiConfiguration;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/ScanDetail;

    .line 91
    .local v2, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v2}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v3

    .line 92
    .local v3, "scanResult":Landroid/net/wifi/ScanResult;
    if-eqz v3, :cond_1

    iget-boolean v4, v3, Landroid/net/wifi/ScanResult;->isCarrierAp:Z

    if-eqz v4, :cond_1

    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found carrier ap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/CarrierNetworkEvaluator;->localLog(Ljava/lang/String;)V

    .line 94
    iget-object v4, p0, Lcom/android/server/wifi/CarrierNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 95
    invoke-virtual {v4, v2}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetworkForScanDetail(Lcom/android/server/wifi/ScanDetail;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 96
    if-nez v0, :cond_0

    .line 97
    const-string v4, "did not find any wifi config for carrier ap."

    invoke-direct {p0, v4}, Lcom/android/server/wifi/CarrierNetworkEvaluator;->localLog(Ljava/lang/String;)V

    goto :goto_1

    .line 100
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/CarrierNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/16 v6, 0x3c

    invoke-virtual {v4, v5, v3, v6}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkCandidateScanResult(ILandroid/net/wifi/ScanResult;I)Z

    .line 102
    iget-object v4, p0, Lcom/android/server/wifi/CarrierNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    .line 106
    .end local v2    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v3    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_1
    :goto_1
    goto :goto_0

    .line 108
    :cond_2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 68
    const-string v0, "CarrierNetworkEvaluator"

    return-object v0
.end method

.method public update(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;)V"
        }
    .end annotation

    .line 74
    .local p1, "scanDetails":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    return-void
.end method
