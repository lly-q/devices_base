.class public Lcom/android/server/wifi/SavedNetworkEvaluator;
.super Ljava/lang/Object;
.source "SavedNetworkEvaluator.java"

# interfaces
.implements Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;


# static fields
.field private static final NAME:Ljava/lang/String; = "SavedNetworkEvaluator"

.field private static final TAG:Ljava/lang/String; = "SavedNetworkEvaluator"


# instance fields
.field private DBG:Z

.field private final mBand5GHzAward:I

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private final mConnectivityHelper:Lcom/android/server/wifi/WifiConnectivityHelper;

.field private final mLastSelectionAward:I

.field private final mLocalLog:Landroid/util/LocalLog;

.field private final mRssiScoreOffset:I

.field private final mRssiScoreSlope:I

.field private final mSameBssidAward:I

.field private final mSameNetworkAward:I

.field private final mScoringParams:Lcom/android/server/wifi/ScoringParams;

.field private final mSecurityAward:I

.field private final mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/ScoringParams;Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/Clock;Landroid/util/LocalLog;Lcom/android/server/wifi/WifiConnectivityHelper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scoringParams"    # Lcom/android/server/wifi/ScoringParams;
    .param p3, "configManager"    # Lcom/android/server/wifi/WifiConfigManager;
    .param p4, "clock"    # Lcom/android/server/wifi/Clock;
    .param p5, "localLog"    # Landroid/util/LocalLog;
    .param p6, "connectivityHelper"    # Lcom/android/server/wifi/WifiConnectivityHelper;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->DBG:Z

    .line 56
    iput-object p2, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mScoringParams:Lcom/android/server/wifi/ScoringParams;

    .line 57
    iput-object p3, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 58
    iput-object p4, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mClock:Lcom/android/server/wifi/Clock;

    .line 59
    iput-object p5, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mLocalLog:Landroid/util/LocalLog;

    .line 60
    iput-object p6, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mConnectivityHelper:Lcom/android/server/wifi/WifiConnectivityHelper;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mRssiScoreSlope:I

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mRssiScoreOffset:I

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mSameBssidAward:I

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mSameNetworkAward:I

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mLastSelectionAward:I

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mSecurityAward:I

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mBand5GHzAward:I

    .line 76
    return-void
.end method

.method private calculateBssidScore(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .locals 21
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;
    .param p2, "network"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "currentNetwork"    # Landroid/net/wifi/WifiConfiguration;
    .param p4, "currentBssid"    # Ljava/lang/String;
    .param p5, "sbuf"    # Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 171
    move-object/from16 v5, p5

    const/4 v6, 0x0

    .line 172
    .local v6, "score":I
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v7

    .line 174
    .local v7, "is5GHz":Z
    const-string v8, "[ "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v8, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v8, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, " RSSI:"

    .line 175
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v8, v1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v8, " ] "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    iget-object v8, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mScoringParams:Lcom/android/server/wifi/ScoringParams;

    iget v9, v1, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/ScoringParams;->getGoodRssi(I)I

    move-result v8

    .line 178
    .local v8, "rssiSaturationThreshold":I
    iget v9, v1, Landroid/net/wifi/ScanResult;->level:I

    if-ge v9, v8, :cond_0

    iget v9, v1, Landroid/net/wifi/ScanResult;->level:I

    goto :goto_0

    .line 179
    :cond_0
    move v9, v8

    .line 180
    .local v9, "rssi":I
    :goto_0
    iget v10, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mRssiScoreOffset:I

    add-int/2addr v10, v9

    iget v11, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mRssiScoreSlope:I

    mul-int/2addr v10, v11

    add-int/2addr v6, v10

    .line 181
    const-string v10, " RSSI score: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v10, ","

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    if-eqz v7, :cond_1

    .line 185
    iget v10, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mBand5GHzAward:I

    add-int/2addr v6, v10

    .line 186
    const-string v10, " 5GHz bonus: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v10, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mBand5GHzAward:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v10, ","

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    :cond_1
    iget-object v10, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiConfigManager;->getLastSelectedNetwork()I

    move-result v10

    .line 191
    .local v10, "lastUserSelectedNetworkId":I
    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    iget v11, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v10, v11, :cond_3

    .line 193
    iget-object v11, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v11}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v11

    iget-object v13, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 194
    invoke-virtual {v13}, Lcom/android/server/wifi/WifiConfigManager;->getLastSelectedTimeStamp()J

    move-result-wide v13

    sub-long/2addr v11, v13

    .line 195
    .local v11, "timeDifference":J
    const-wide/16 v13, 0x0

    cmp-long v13, v11, v13

    if-lez v13, :cond_3

    .line 196
    iget v13, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mLastSelectionAward:I

    const-wide/16 v14, 0x3e8

    div-long v16, v11, v14

    const-wide/16 v18, 0x3c

    div-long v14, v16, v18

    long-to-int v14, v14

    sub-int/2addr v13, v14

    .line 197
    .local v13, "bonus":I
    if-lez v13, :cond_2

    move v14, v13

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    :goto_1
    add-int/2addr v6, v14

    .line 198
    const-string v14, " User selection "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-wide/16 v14, 0x3e8

    div-long v14, v11, v14

    div-long v14, v14, v18

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v14, " minutes ago, bonus: "

    .line 199
    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v14, ","

    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    .end local v11    # "timeDifference":J
    .end local v13    # "bonus":I
    :cond_3
    if-eqz v3, :cond_4

    iget v11, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v12, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v11, v12, :cond_4

    .line 208
    iget v11, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mSameNetworkAward:I

    add-int/2addr v6, v11

    .line 209
    const-string v11, " Same network bonus: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v11, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mSameNetworkAward:I

    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v11, ","

    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    iget-object v11, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mConnectivityHelper:Lcom/android/server/wifi/WifiConnectivityHelper;

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiConnectivityHelper;->isFirmwareRoamingSupported()Z

    move-result v11

    if-eqz v11, :cond_4

    if-eqz v4, :cond_4

    iget-object v11, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 214
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 215
    iget v11, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mSameBssidAward:I

    add-int/2addr v6, v11

    .line 216
    const-string v11, " Equivalent BSSID bonus: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v11, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mSameBssidAward:I

    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v11, ","

    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    :cond_4
    if-eqz v4, :cond_5

    iget-object v11, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 222
    iget v11, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mSameBssidAward:I

    add-int/2addr v6, v11

    .line 223
    const-string v11, " Same BSSID bonus: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v11, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mSameBssidAward:I

    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v11, ","

    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    :cond_5
    invoke-static/range {p2 .. p2}, Lcom/android/server/wifi/WifiConfigurationUtil;->isConfigForOpenNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 228
    iget v11, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mSecurityAward:I

    add-int/2addr v6, v11

    .line 229
    const-string v11, " Secure network bonus: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v11, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mSecurityAward:I

    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v11, ","

    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    :cond_6
    const-string v11, " ## Total score: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v11, "\n"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    return v6
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 89
    iget-boolean v0, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SavedNetworkEvaluator"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    return-void
.end method

.method private updateSavedNetworkSelectionStatus()V
    .locals 8

    .line 104
    iget-object v0, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworks()Ljava/util/List;

    move-result-object v0

    .line 105
    .local v0, "savedNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 106
    const-string v1, "No saved networks."

    invoke-direct {p0, v1}, Lcom/android/server/wifi/SavedNetworkEvaluator;->localLog(Ljava/lang/String;)V

    .line 107
    return-void

    .line 110
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 111
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 117
    .local v3, "network":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 118
    goto :goto_0

    .line 123
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v5, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConfigManager;->tryEnableNetwork(I)Z

    .line 129
    iget-object v4, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v5, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConfigManager;->clearNetworkCandidateScanResult(I)Z

    .line 132
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v4

    .line 133
    .local v4, "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v5

    if-nez v5, :cond_4

    .line 134
    const-string v5, "  "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Lcom/android/server/wifi/WifiNetworkSelector;->toNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    const/4 v5, 0x1

    .line 137
    .local v5, "index":I
    :goto_1
    const/16 v6, 0xe

    if-ge v5, v6, :cond_3

    .line 140
    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v6

    .line 144
    .local v6, "count":I
    if-lez v6, :cond_2

    .line 145
    const-string v7, "reason="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    invoke-static {v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkDisableReasonString(I)Ljava/lang/String;

    move-result-object v7

    .line 146
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, ", count="

    .line 148
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v7, "; "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    .end local v6    # "count":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 151
    .end local v5    # "index":I
    :cond_3
    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    .end local v3    # "network":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_4
    goto :goto_0

    .line 155
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 156
    const-string v2, "Disabled saved networks:"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SavedNetworkEvaluator;->localLog(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SavedNetworkEvaluator;->localLog(Ljava/lang/String;)V

    .line 159
    :cond_6
    return-void
.end method


# virtual methods
.method public enableVerboseLogging(Z)V
    .locals 0
    .param p1, "verbose"    # Z

    .line 82
    iput-boolean p1, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->DBG:Z

    .line 83
    return-void
.end method

.method public evaluateNetworks(Ljava/util/List;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;ZZLjava/util/List;)Landroid/net/wifi/WifiConfiguration;
    .locals 17
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

    .local p1, "scanDetails":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    .local p6, "connectableNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/wifi/ScanDetail;Landroid/net/wifi/WifiConfiguration;>;>;"
    move-object/from16 v6, p0

    .line 248
    move-object/from16 v7, p6

    const/high16 v0, -0x80000000

    .line 249
    .local v0, "highestScore":I
    const/4 v1, 0x0

    .line 250
    .local v1, "scanResultCandidate":Landroid/net/wifi/ScanResult;
    const/4 v2, 0x0

    .line 251
    .local v2, "candidate":Landroid/net/wifi/WifiConfiguration;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v8, v3

    .line 253
    .local v8, "scoreHistory":Ljava/lang/StringBuffer;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v12, v0

    move-object v10, v1

    move-object v11, v2

    .end local v0    # "highestScore":I
    .end local v1    # "scanResultCandidate":Landroid/net/wifi/ScanResult;
    .end local v2    # "candidate":Landroid/net/wifi/WifiConfiguration;
    .local v10, "scanResultCandidate":Landroid/net/wifi/ScanResult;
    .local v11, "candidate":Landroid/net/wifi/WifiConfiguration;
    .local v12, "highestScore":I
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/wifi/ScanDetail;

    .line 254
    .local v13, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v13}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v14

    .line 258
    .local v14, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v0, v6, Lcom/android/server/wifi/SavedNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 259
    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetworkForScanDetailAndCache(Lcom/android/server/wifi/ScanDetail;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v15

    .line 261
    .local v15, "network":Landroid/net/wifi/WifiConfiguration;
    if-nez v15, :cond_1

    .line 262
    nop

    .line 253
    .end local v13    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v14    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v15    # "network":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_1
    move-object/from16 v16, v9

    goto/16 :goto_2

    .line 271
    .restart local v13    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .restart local v14    # "scanResult":Landroid/net/wifi/ScanResult;
    .restart local v15    # "network":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    goto :goto_1

    .line 275
    :cond_2
    nop

    .line 276
    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v5

    .line 277
    .local v5, "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setSeenInLastQualifiedNetworkSelection(Z)V

    .line 279
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 280
    goto :goto_1

    .line 281
    :cond_3
    iget-object v0, v15, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v15, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    const-string v1, "any"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v15, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iget-object v1, v14, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Lcom/android/server/wifi/WifiNetworkSelector;->toNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has specified BSSID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v15, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Skip "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v14, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/server/wifi/SavedNetworkEvaluator;->localLog(Ljava/lang/String;)V

    .line 288
    goto :goto_1

    .line 289
    :cond_4
    invoke-static {v15}, Lcom/android/server/wifi/util/TelephonyUtil;->isSimConfig(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v6, Lcom/android/server/wifi/SavedNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 290
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigManager;->isSimPresent()Z

    move-result v0

    if-nez v0, :cond_5

    .line 292
    goto :goto_1

    .line 295
    :cond_5
    move-object v0, v6

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v16, v9

    move-object v9, v5

    move-object v5, v8

    .end local v5    # "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    .local v9, "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/SavedNetworkEvaluator;->calculateBssidScore(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 302
    .local v0, "score":I
    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidateScore()I

    move-result v1

    if-gt v0, v1, :cond_6

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidateScore()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 303
    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v1

    if-eqz v1, :cond_7

    iget v1, v14, Landroid/net/wifi/ScanResult;->level:I

    .line 304
    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/ScanResult;->level:I

    if-le v1, v2, :cond_7

    .line 305
    :cond_6
    iget-object v1, v6, Lcom/android/server/wifi/SavedNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v2, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2, v14, v0}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkCandidateScanResult(ILandroid/net/wifi/ScanResult;I)Z

    .line 311
    :cond_7
    iget-boolean v1, v15, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    if-eqz v1, :cond_8

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Lcom/android/server/wifi/WifiNetworkSelector;->toNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has external score."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/android/server/wifi/SavedNetworkEvaluator;->localLog(Ljava/lang/String;)V

    .line 314
    goto :goto_2

    .line 317
    :cond_8
    if-eqz v7, :cond_9

    .line 318
    iget-object v1, v6, Lcom/android/server/wifi/SavedNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v2, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 319
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 318
    invoke-static {v13, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    :cond_9
    if-gt v0, v12, :cond_a

    if-ne v0, v12, :cond_b

    if-eqz v10, :cond_b

    iget v1, v14, Landroid/net/wifi/ScanResult;->level:I

    iget v2, v10, Landroid/net/wifi/ScanResult;->level:I

    if-le v1, v2, :cond_b

    .line 326
    :cond_a
    move v1, v0

    .line 327
    .end local v12    # "highestScore":I
    .local v1, "highestScore":I
    move-object v2, v14

    .line 328
    .end local v10    # "scanResultCandidate":Landroid/net/wifi/ScanResult;
    .local v2, "scanResultCandidate":Landroid/net/wifi/ScanResult;
    iget-object v3, v6, Lcom/android/server/wifi/SavedNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v4, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4, v2, v1}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkCandidateScanResult(ILandroid/net/wifi/ScanResult;I)Z

    .line 331
    iget-object v3, v6, Lcom/android/server/wifi/SavedNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v4, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 333
    .end local v9    # "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    .end local v11    # "candidate":Landroid/net/wifi/WifiConfiguration;
    .end local v13    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v14    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v15    # "network":Landroid/net/wifi/WifiConfiguration;
    .local v0, "candidate":Landroid/net/wifi/WifiConfiguration;
    move-object v11, v0

    move v12, v1

    move-object v10, v2

    .line 253
    .end local v0    # "candidate":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "highestScore":I
    .end local v2    # "scanResultCandidate":Landroid/net/wifi/ScanResult;
    .restart local v10    # "scanResultCandidate":Landroid/net/wifi/ScanResult;
    .restart local v11    # "candidate":Landroid/net/wifi/WifiConfiguration;
    .restart local v12    # "highestScore":I
    :cond_b
    :goto_2
    move-object/from16 v9, v16

    goto/16 :goto_0

    .line 335
    :cond_c
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_d

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/server/wifi/SavedNetworkEvaluator;->localLog(Ljava/lang/String;)V

    .line 339
    :cond_d
    if-nez v10, :cond_e

    .line 340
    const-string v0, "did not see any good candidates."

    invoke-direct {v6, v0}, Lcom/android/server/wifi/SavedNetworkEvaluator;->localLog(Ljava/lang/String;)V

    .line 342
    :cond_e
    return-object v11
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 97
    const-string v0, "SavedNetworkEvaluator"

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

    .line 165
    .local p1, "scanDetails":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    invoke-direct {p0}, Lcom/android/server/wifi/SavedNetworkEvaluator;->updateSavedNetworkSelectionStatus()V

    .line 166
    return-void
.end method
