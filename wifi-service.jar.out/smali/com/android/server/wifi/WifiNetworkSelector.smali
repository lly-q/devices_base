.class public Lcom/android/server/wifi/WifiNetworkSelector;
.super Ljava/lang/Object;
.source "WifiNetworkSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;
    }
.end annotation


# static fields
.field public static final EVALUATOR_MIN_PRIORITY:I = 0x6

.field private static final INVALID_TIME_STAMP:J = -0x8000000000000000L

.field public static final MAX_NUM_EVALUATORS:I = 0x6

.field public static final MINIMUM_NETWORK_SELECTION_INTERVAL_MS:I = 0x2710
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WifiNetworkSelector"


# instance fields
.field private DBG:Z

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private volatile mConnectableNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/server/wifi/ScanDetail;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mEnableAutoJoinWhenAssociated:Z

.field private final mEvaluators:[Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;

.field private mFilteredNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation
.end field

.field private mLastNetworkSelectionTimeStamp:J

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mP2pMode:I

.field private final mScoringParams:Lcom/android/server/wifi/ScoringParams;

.field private final mStayOnNetworkMinimumRxRate:I

.field private final mStayOnNetworkMinimumTxRate:I

.field private final mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/ScoringParams;Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/Clock;Landroid/util/LocalLog;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scoringParams"    # Lcom/android/server/wifi/ScoringParams;
    .param p3, "configManager"    # Lcom/android/server/wifi/WifiConfigManager;
    .param p4, "clock"    # Lcom/android/server/wifi/Clock;
    .param p5, "localLog"    # Landroid/util/LocalLog;

    .line 743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mLastNetworkSelectionTimeStamp:J

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mConnectableNetworks:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mFilteredNetworks:Ljava/util/List;

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mP2pMode:I

    .line 147
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;

    iput-object v1, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mEvaluators:[Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;

    .line 150
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiNetworkSelector;->DBG:Z

    .line 745
    iput-object p1, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mContext:Landroid/content/Context;

    .line 747
    iput-object p3, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 748
    iput-object p4, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    .line 749
    iput-object p2, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mScoringParams:Lcom/android/server/wifi/ScoringParams;

    .line 750
    iput-object p5, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mLocalLog:Landroid/util/LocalLog;

    .line 752
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mEnableAutoJoinWhenAssociated:Z

    .line 754
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mStayOnNetworkMinimumTxRate:I

    .line 756
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mStayOnNetworkMinimumRxRate:I

    .line 758
    return-void
.end method

.method private canSelectInBlacklist(Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;Landroid/net/wifi/ScanResult;)Z
    .locals 1
    .param p1, "status"    # Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;
    .param p2, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 626
    iget-boolean v0, p1, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->isBlacklisted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->isBlacklistedLowSignal:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/wifi/WifiNetworkSelector;->isSignalSufficient(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private filterScanResults(Ljava/util/List;Ljava/util/Map;ZLjava/lang/String;)Ljava/util/List;
    .locals 15
    .param p3, "isConnected"    # Z
    .param p4, "currentBssid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation

    .local p1, "scanDetails":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    .local p2, "bssidBlacklistMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;>;"
    move-object v0, p0

    move-object/from16 v1, p2

    .line 325
    move-object/from16 v2, p4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v3, "unscoredNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkKey;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v4, "validScanDetails":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 328
    .local v5, "noValidSsid":Ljava/lang/StringBuffer;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 329
    .local v6, "blacklistedBssid":Ljava/lang/StringBuffer;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 330
    .local v7, "lowRssi":Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .line 332
    .local v8, "scanResultsHaveCurrentBssid":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wifi/ScanDetail;

    .line 333
    .local v10, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v10}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v11

    .line 335
    .local v11, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v12, v11, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 336
    iget-object v12, v11, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v12, " / "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 337
    goto :goto_0

    .line 341
    :cond_0
    iget-object v12, v11, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 342
    const/4 v8, 0x1

    .line 345
    :cond_1
    invoke-static {v11}, Lcom/android/server/wifi/WifiNetworkSelector;->toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v12

    .line 348
    .local v12, "scanId":Ljava/lang/String;
    iget-object v13, v11, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-interface {v1, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 349
    iget-object v13, v11, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;

    .line 350
    .local v13, "status":Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;
    invoke-direct {v0, v13, v11}, Lcom/android/server/wifi/WifiNetworkSelector;->canSelectInBlacklist(Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;Landroid/net/wifi/ScanResult;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 351
    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v14, " / "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 352
    goto :goto_0

    .line 366
    .end local v13    # "status":Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;
    :cond_2
    invoke-virtual {v0, v11}, Lcom/android/server/wifi/WifiNetworkSelector;->isSignalTooWeak(Landroid/net/wifi/ScanResult;)Z

    move-result v13

    if-eqz v13, :cond_4

    if-eqz p3, :cond_4

    .line 372
    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v13, "("

    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    invoke-virtual {v11}, Landroid/net/wifi/ScanResult;->is24GHz()Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, "2.4GHz"

    goto :goto_1

    :cond_3
    const-string v13, "5GHz"

    :goto_1
    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v13, ")"

    .line 374
    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v13, v11, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v13, " / "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    goto :goto_0

    .line 379
    :cond_4
    iget v13, v0, Lcom/android/server/wifi/WifiNetworkSelector;->mP2pMode:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    iget-object v13, v11, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v14, "WAPI-KEY"

    .line 380
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    iget-object v13, v11, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v14, "WAPI-CERT"

    .line 381
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 382
    :cond_5
    const-string v13, "WifiNetworkSelector"

    const-string v14, "skip wapi ap when p2p connected"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    goto/16 :goto_0

    .line 387
    :cond_6
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    .end local v10    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v11    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v12    # "scanId":Ljava/lang/String;
    goto/16 :goto_0

    .line 394
    :cond_7
    if-eqz p3, :cond_8

    if-nez v8, :cond_8

    .line 395
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Current connected BSSID "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is not in the scan results. Skip network selection."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 397
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 398
    return-object v4

    .line 401
    :cond_8
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-eqz v9, :cond_9

    .line 402
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Networks filtered out due to invalid SSID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 405
    :cond_9
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-eqz v9, :cond_a

    .line 406
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Networks filtered out due to blacklist: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 409
    :cond_a
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-eqz v9, :cond_b

    .line 410
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Networks filtered out due to low signal strength: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 413
    :cond_b
    return-object v4
.end method

.method private is5GHzNetworkAvailable(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;)Z"
        }
    .end annotation

    .line 223
    .local p1, "scanDetails":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/ScanDetail;

    .line 224
    .local v1, "detail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v1}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v2

    .line 225
    .local v2, "result":Landroid/net/wifi/ScanResult;
    invoke-virtual {v2}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    .line 226
    .end local v1    # "detail":Lcom/android/server/wifi/ScanDetail;
    .end local v2    # "result":Landroid/net/wifi/ScanResult;
    :cond_0
    goto :goto_0

    .line 227
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isCurrentNetworkSufficient(Landroid/net/wifi/WifiInfo;Ljava/util/List;)Z
    .locals 9
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiInfo;",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;)Z"
        }
    .end annotation

    .line 166
    .local p2, "scanDetails":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 167
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 170
    .local v0, "network":Landroid/net/wifi/WifiConfiguration;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 171
    const-string v2, "No current connected network."

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 172
    return v1

    .line 174
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current connected network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    .line 179
    .local v2, "currentRssi":I
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mScoringParams:Lcom/android/server/wifi/ScoringParams;

    .line 180
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/ScoringParams;->getSufficientRssi(I)I

    move-result v3

    const/4 v4, 0x1

    if-le v2, v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v1

    .line 181
    .local v3, "hasQualifiedRssi":Z
    :goto_0
    iget-wide v5, p1, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    iget v7, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mStayOnNetworkMinimumTxRate:I

    int-to-double v7, v7

    cmpl-double v5, v5, v7

    if-gtz v5, :cond_3

    iget-wide v5, p1, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    iget v7, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mStayOnNetworkMinimumRxRate:I

    int-to-double v7, v7

    cmpl-double v5, v5, v7

    if-lez v5, :cond_2

    goto :goto_1

    :cond_2
    move v5, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v4

    .line 183
    .local v5, "hasActiveStream":Z
    :goto_2
    if-eqz v3, :cond_4

    if-eqz v5, :cond_4

    .line 184
    const-string v1, "Stay on current network because of good RSSI and ongoing traffic"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 185
    return v4

    .line 189
    :cond_4
    iget-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v6, :cond_5

    .line 190
    const-string v4, "Current network is an ephemeral one."

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 191
    return v1

    .line 195
    :cond_5
    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigurationUtil;->isConfigForOpenNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 196
    const-string v4, "Current network is a open one."

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 197
    return v1

    .line 200
    :cond_6
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 202
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiNetworkSelector;->is5GHzNetworkAvailable(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 203
    const-string v4, "Current network is 2.4GHz. 5GHz networks available."

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 204
    return v1

    .line 207
    :cond_7
    if-nez v3, :cond_8

    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current network RSSI["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]-acceptable but not qualified."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 209
    return v1

    .line 213
    :cond_8
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    if-lez v6, :cond_9

    iget-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    if-nez v6, :cond_9

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current network has ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] no-internet access reports."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 216
    return v1

    .line 218
    :cond_9
    return v4
.end method

.method private isNetworkSelectionNeeded(Ljava/util/List;Landroid/net/wifi/WifiInfo;ZZ)Z
    .locals 6
    .param p2, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p3, "connected"    # Z
    .param p4, "disconnected"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;",
            "Landroid/net/wifi/WifiInfo;",
            "ZZ)Z"
        }
    .end annotation

    .line 232
    .local p1, "scanDetails":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 233
    const-string v0, "Empty connectivity scan results. Skip network selection."

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 234
    return v1

    .line 237
    :cond_0
    const/4 v0, 0x1

    if-eqz p3, :cond_5

    .line 239
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mEnableAutoJoinWhenAssociated:Z

    if-nez v2, :cond_1

    .line 240
    const-string v0, "Switching networks in connected state is not allowed. Skip network selection."

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 242
    return v1

    .line 247
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_should_switch_network"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    .line 249
    const-string v0, "WIFI_SHOULD_SWITCH_NETWORK is 0, skip network selection."

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 250
    return v1

    .line 252
    :cond_2
    const-string v2, "WIFI_SHOULD_SWITCH_NETWORK is 1"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 257
    iget-wide v2, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mLastNetworkSelectionTimeStamp:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 258
    iget-object v2, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v2}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mLastNetworkSelectionTimeStamp:J

    sub-long/2addr v2, v4

    .line 260
    .local v2, "gap":J
    const-wide/16 v4, 0x2710

    cmp-long v4, v2, v4

    if-gez v4, :cond_3

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too short since last network selection: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms. Skip network selection."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 263
    return v1

    .line 267
    .end local v2    # "gap":J
    :cond_3
    invoke-direct {p0, p2, p1}, Lcom/android/server/wifi/WifiNetworkSelector;->isCurrentNetworkSufficient(Landroid/net/wifi/WifiInfo;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 268
    const-string v0, "Current connected network already sufficient. Skip network selection."

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 269
    return v1

    .line 271
    :cond_4
    const-string v1, "Current connected network is not sufficient."

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 272
    return v0

    .line 274
    :cond_5
    if-eqz p4, :cond_6

    .line 275
    return v0

    .line 279
    :cond_6
    const-string v0, "WifiStateMachine is in neither CONNECTED nor DISCONNECTED state. Skip network selection."

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 281
    return v1
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 161
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiNetworkSelector;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiNetworkSelector"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    return-void
.end method

.method private overrideCandidateWithUserConnectChoice(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 6
    .param p1, "candidate"    # Landroid/net/wifi/WifiConfiguration;

    .line 553
    move-object v0, p1

    .line 554
    .local v0, "tempConfig":Landroid/net/wifi/WifiConfiguration;
    move-object v1, p1

    .line 555
    .local v1, "originalCandidate":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v2

    .line 557
    .local v2, "scanResultCandidate":Landroid/net/wifi/ScanResult;
    :goto_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 558
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v3

    .line 559
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v4, v3}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 561
    if-eqz v0, :cond_1

    .line 562
    nop

    .line 563
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v4

    .line 564
    .local v4, "tempStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 565
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v2

    .line 566
    move-object p1, v0

    .line 568
    .end local v4    # "tempStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_0
    nop

    .line 572
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_0

    .line 569
    .restart local v3    # "key":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connect choice: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has no corresponding saved config."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 570
    nop

    .line 574
    .end local v3    # "key":Ljava/lang/String;
    :cond_2
    if-eq p1, v1, :cond_3

    .line 575
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "After user selection adjustment, the final candidate is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-static {p1}, Lcom/android/server/wifi/WifiNetworkSelector;->toNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 575
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 579
    :cond_3
    return-object p1
.end method

.method public static toNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 2
    .param p0, "network"    # Landroid/net/wifi/WifiConfiguration;

    .line 297
    if-nez p0, :cond_0

    .line 298
    const/4 v0, 0x0

    return-object v0

    .line 301
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 4
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 289
    if-nez p0, :cond_0

    const-string v0, "NULL"

    goto :goto_0

    .line 290
    :cond_0
    const-string v0, "%s:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 289
    :goto_0
    return-object v0
.end method

.method private vendorReenableNetworks(Ljava/util/List;ZZLjava/util/Map;)V
    .locals 11
    .param p2, "connected"    # Z
    .param p3, "disconnected"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;ZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;",
            ">;)V"
        }
    .end annotation

    .line 588
    .local p1, "goodNetworks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    .local p4, "bssidBlacklistMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;>;"
    if-nez p2, :cond_9

    if-eqz p3, :cond_9

    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 592
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/ScanDetail;

    .line 593
    .local v1, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    iget-object v2, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 594
    invoke-virtual {v2, v1}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetworkForScanDetailAndCache(Lcom/android/server/wifi/ScanDetail;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 595
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v2, :cond_2

    .line 596
    goto :goto_0

    .line 597
    :cond_2
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v3

    .line 598
    .local v3, "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    .line 599
    goto :goto_0

    .line 600
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v4

    .line 602
    .local v4, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v5, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiNetworkSelector;->isSignalSufficient(Landroid/net/wifi/ScanResult;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 603
    goto :goto_0

    .line 604
    :cond_4
    const/4 v5, 0x1

    .line 605
    .local v5, "needEnableNetwork":Z
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 606
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;

    .line 607
    .local v8, "bssidBlacklistStatus":Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;
    iget-object v9, v8, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->scanResult:Landroid/net/wifi/ScanResult;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v10, v8, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->scanResult:Landroid/net/wifi/ScanResult;

    .line 608
    invoke-virtual {v9, v2, v10}, Lcom/android/server/wifi/WifiConfigManager;->isConfigMatchScanResult(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 609
    iget-boolean v9, v8, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->isBlacklisted:Z

    if-eqz v9, :cond_5

    .line 610
    const/4 v5, 0x0

    .line 612
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;>;"
    .end local v8    # "bssidBlacklistStatus":Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;
    :cond_5
    goto :goto_1

    .line 613
    :cond_6
    if-eqz v5, :cond_7

    .line 614
    const-string v6, "WifiNetworkSelector"

    const-string v7, "re-enable disabled network because rssi is good."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget-object v6, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v7, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v8, 0x0

    const/16 v9, 0x3e8

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/wifi/WifiConfigManager;->enableNetwork(IZI)Z

    .line 617
    .end local v1    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    .end local v4    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v5    # "needEnableNetwork":Z
    :cond_7
    goto :goto_0

    .line 618
    :cond_8
    return-void

    .line 589
    :cond_9
    :goto_2
    return-void
.end method


# virtual methods
.method public enableVerboseLogging(Z)V
    .locals 0
    .param p1, "verbose"    # Z

    .line 152
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNetworkSelector;->DBG:Z

    .line 153
    return-void
.end method

.method public getConnectableScanDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/server/wifi/ScanDetail;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;>;"
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mConnectableNetworks:Ljava/util/List;

    return-object v0
.end method

.method public getFilteredScanDetailsForCarrierUnsavedNetworks(Lcom/android/server/wifi/CarrierNetworkConfig;)Ljava/util/List;
    .locals 5
    .param p1, "carrierConfig"    # Lcom/android/server/wifi/CarrierNetworkConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/CarrierNetworkConfig;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation

    .line 454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .local v0, "carrierUnsavedNetworks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mFilteredNetworks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/ScanDetail;

    .line 456
    .local v2, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v2}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v3

    .line 458
    .local v3, "scanResult":Landroid/net/wifi/ScanResult;
    invoke-static {v3}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForEapNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 459
    invoke-virtual {p1, v4}, Lcom/android/server/wifi/CarrierNetworkConfig;->isCarrierNetwork(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 460
    goto :goto_0

    .line 464
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v4, v2}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetworkForScanDetailAndCache(Lcom/android/server/wifi/ScanDetail;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 465
    goto :goto_0

    .line 468
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    .end local v2    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v3    # "scanResult":Landroid/net/wifi/ScanResult;
    goto :goto_0

    .line 470
    :cond_3
    return-object v0
.end method

.method public getFilteredScanDetailsForOpenUnsavedNetworks()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .local v0, "openUnsavedNetworks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mFilteredNetworks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/ScanDetail;

    .line 427
    .local v2, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v2}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v3

    .line 429
    .local v3, "scanResult":Landroid/net/wifi/ScanResult;
    invoke-static {v3}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForOpenNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 430
    goto :goto_0

    .line 434
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v4, v2}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetworkForScanDetailAndCache(Lcom/android/server/wifi/ScanDetail;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 435
    goto :goto_0

    .line 438
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    .end local v2    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v3    # "scanResult":Landroid/net/wifi/ScanResult;
    goto :goto_0

    .line 440
    :cond_2
    return-object v0
.end method

.method public isSignalSufficient(Landroid/net/wifi/ScanResult;)Z
    .locals 3
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 313
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mScoringParams:Lcom/android/server/wifi/ScoringParams;

    iget v2, p1, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/ScoringParams;->getSufficientRssi(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSignalTooWeak(Landroid/net/wifi/ScanResult;)Z
    .locals 3
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 308
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mScoringParams:Lcom/android/server/wifi/ScoringParams;

    iget v2, p1, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/ScoringParams;->getEntryRssi(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public registerNetworkEvaluator(Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;I)Z
    .locals 3
    .param p1, "evaluator"    # Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;
    .param p2, "priority"    # I

    .line 726
    const/4 v0, 0x0

    if-ltz p2, :cond_2

    const/4 v1, 0x6

    if-lt p2, v1, :cond_0

    goto :goto_0

    .line 731
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mEvaluators:[Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;

    aget-object v1, v1, p2

    if-eqz v1, :cond_1

    .line 732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Priority "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is already registered by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mEvaluators:[Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;

    aget-object v2, v2, p2

    .line 733
    invoke-interface {v2}, Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 732
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 734
    return v0

    .line 737
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mEvaluators:[Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;

    aput-object p1, v0, p2

    .line 738
    const/4 v0, 0x1

    return v0

    .line 727
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid network evaluator priority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 728
    return v0
.end method

.method public saveP2pMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 762
    iput p1, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mP2pMode:I

    .line 763
    return-void
.end method

.method public selectNetwork(Ljava/util/List;Ljava/util/Map;Landroid/net/wifi/WifiInfo;ZZZ)Landroid/net/wifi/WifiConfiguration;
    .locals 20
    .param p3, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p4, "connected"    # Z
    .param p5, "disconnected"    # Z
    .param p6, "untrustedNetworkAllowed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;",
            ">;",
            "Landroid/net/wifi/WifiInfo;",
            "ZZZ)",
            "Landroid/net/wifi/WifiConfiguration;"
        }
    .end annotation

    .local p1, "scanDetails":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    .local p2, "bssidBlacklistMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v10, p4

    move/from16 v11, p5

    .line 651
    iget-object v3, v0, Lcom/android/server/wifi/WifiNetworkSelector;->mFilteredNetworks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 652
    iget-object v3, v0, Lcom/android/server/wifi/WifiNetworkSelector;->mConnectableNetworks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 653
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 654
    const-string v3, "Empty connectivity scan result"

    invoke-direct {v0, v3}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 655
    return-object v4

    .line 658
    :cond_0
    iget-object v3, v0, Lcom/android/server/wifi/WifiNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 659
    invoke-virtual/range {p3 .. p3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v12

    .line 663
    .local v12, "currentNetwork":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v13

    .line 666
    .local v13, "currentBssid":Ljava/lang/String;
    move-object/from16 v14, p3

    invoke-direct {v0, v1, v14, v10, v11}, Lcom/android/server/wifi/WifiNetworkSelector;->isNetworkSelectionNeeded(Ljava/util/List;Landroid/net/wifi/WifiInfo;ZZ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 667
    return-object v4

    .line 671
    :cond_1
    iget-object v3, v0, Lcom/android/server/wifi/WifiNetworkSelector;->mEvaluators:[Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;

    array-length v5, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_3

    aget-object v8, v3, v7

    .line 672
    .local v8, "registeredEvaluator":Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;
    if-eqz v8, :cond_2

    .line 673
    invoke-interface {v8, v1}, Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;->update(Ljava/util/List;)V

    .line 671
    .end local v8    # "registeredEvaluator":Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 679
    :cond_3
    invoke-direct {v0, v1, v2, v10, v13}, Lcom/android/server/wifi/WifiNetworkSelector;->filterScanResults(Ljava/util/List;Ljava/util/Map;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/wifi/WifiNetworkSelector;->mFilteredNetworks:Ljava/util/List;

    .line 686
    iget-object v3, v0, Lcom/android/server/wifi/WifiNetworkSelector;->mFilteredNetworks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 687
    return-object v4

    .line 689
    :cond_4
    iget-object v3, v0, Lcom/android/server/wifi/WifiNetworkSelector;->mFilteredNetworks:Ljava/util/List;

    invoke-direct {v0, v3, v10, v11, v2}, Lcom/android/server/wifi/WifiNetworkSelector;->vendorReenableNetworks(Ljava/util/List;ZZLjava/util/Map;)V

    .line 692
    const/4 v3, 0x0

    .line 693
    .local v3, "selectedNetwork":Landroid/net/wifi/WifiConfiguration;
    iget-object v15, v0, Lcom/android/server/wifi/WifiNetworkSelector;->mEvaluators:[Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;

    array-length v9, v15

    move-object/from16 v16, v3

    move v8, v6

    .end local v3    # "selectedNetwork":Landroid/net/wifi/WifiConfiguration;
    .local v16, "selectedNetwork":Landroid/net/wifi/WifiConfiguration;
    :goto_1
    if-ge v8, v9, :cond_7

    aget-object v7, v15, v8

    .line 694
    .local v7, "registeredEvaluator":Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;
    if-eqz v7, :cond_6

    .line 695
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "About to run "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 696
    new-instance v4, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/server/wifi/WifiNetworkSelector;->mFilteredNetworks:Ljava/util/List;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v6, v0, Lcom/android/server/wifi/WifiNetworkSelector;->mConnectableNetworks:Ljava/util/List;

    move-object v3, v7

    move-object v5, v12

    move-object/from16 v17, v6

    move-object v6, v13

    move-object v1, v7

    move v7, v10

    .end local v7    # "registeredEvaluator":Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;
    .local v1, "registeredEvaluator":Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;
    move/from16 v18, v8

    move/from16 v8, p6

    move/from16 v19, v9

    move-object/from16 v9, v17

    invoke-interface/range {v3 .. v9}, Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;->evaluateNetworks(Ljava/util/List;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;ZZLjava/util/List;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 699
    .end local v16    # "selectedNetwork":Landroid/net/wifi/WifiConfiguration;
    .restart local v3    # "selectedNetwork":Landroid/net/wifi/WifiConfiguration;
    if-eqz v3, :cond_5

    .line 700
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " selects "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    invoke-static {v3}, Lcom/android/server/wifi/WifiNetworkSelector;->toNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 700
    invoke-direct {v0, v4}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 703
    goto :goto_3

    .line 693
    .end local v1    # "registeredEvaluator":Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;
    :cond_5
    move-object/from16 v16, v3

    goto :goto_2

    .end local v3    # "selectedNetwork":Landroid/net/wifi/WifiConfiguration;
    .restart local v16    # "selectedNetwork":Landroid/net/wifi/WifiConfiguration;
    :cond_6
    move/from16 v18, v8

    move/from16 v19, v9

    :goto_2
    add-int/lit8 v8, v18, 0x1

    move/from16 v9, v19

    move-object/from16 v1, p1

    goto/16 :goto_1

    .line 708
    :cond_7
    move-object/from16 v3, v16

    .end local v16    # "selectedNetwork":Landroid/net/wifi/WifiConfiguration;
    .restart local v3    # "selectedNetwork":Landroid/net/wifi/WifiConfiguration;
    :goto_3
    if-eqz v3, :cond_8

    .line 709
    invoke-direct {v0, v3}, Lcom/android/server/wifi/WifiNetworkSelector;->overrideCandidateWithUserConnectChoice(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 710
    iget-object v1, v0, Lcom/android/server/wifi/WifiNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/wifi/WifiNetworkSelector;->mLastNetworkSelectionTimeStamp:J

    .line 713
    :cond_8
    return-object v3
.end method

.method public setUserConnectChoice(I)Z
    .locals 12
    .param p1, "netId"    # I

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "userSelectNetwork: network ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 502
    .local v0, "selected":Landroid/net/wifi/WifiConfiguration;
    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 508
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 509
    iget-object v2, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    .line 513
    :cond_1
    const/4 v1, 0x0

    .line 514
    .local v1, "change":Z
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    .line 516
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v3

    .line 517
    .local v3, "currentTime":J
    iget-object v5, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworks()Ljava/util/List;

    move-result-object v5

    .line 519
    .local v5, "savedNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 520
    .local v7, "network":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v8

    .line 521
    .local v8, "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    iget v9, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v9, v10, :cond_3

    .line 522
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 523
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Remove user selection preference of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " Set Time: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoiceTimestamp()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 523
    invoke-direct {p0, v9}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 526
    iget-object v9, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v10, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiConfigManager;->clearNetworkConnectChoice(I)Z

    .line 527
    const/4 v1, 0x1

    goto :goto_0

    .line 532
    :cond_3
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getSeenInLastQualifiedNetworkSelection()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 533
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 534
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 535
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Add key: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " Set Time: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-static {v7}, Lcom/android/server/wifi/WifiNetworkSelector;->toNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 535
    invoke-direct {p0, v9}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 537
    iget-object v9, p0, Lcom/android/server/wifi/WifiNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v10, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v9, v10, v2, v3, v4}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkConnectChoice(ILjava/lang/String;J)Z

    .line 538
    const/4 v1, 0x1

    .line 540
    .end local v7    # "network":Landroid/net/wifi/WifiConfiguration;
    .end local v8    # "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_5
    goto/16 :goto_0

    .line 542
    :cond_6
    return v1

    .line 503
    .end local v1    # "change":Z
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "currentTime":J
    .end local v5    # "savedNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_7
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userSelectNetwork: Invalid configuration with nid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 504
    return v1
.end method
