.class Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;
.super Ljava/lang/Object;
.source "WifiConnectivityManager.java"

# interfaces
.implements Landroid/net/wifi/WifiScanner$ScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllSingleScanListener"
.end annotation


# instance fields
.field private mNumScanResultsIgnoredDueToSingleRadioChain:I

.field private mScanDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityManager;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiConnectivityManager;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->mScanDetails:Ljava/util/List;

    .line 364
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->mNumScanResultsIgnoredDueToSingleRadioChain:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiConnectivityManager;Lcom/android/server/wifi/WifiConnectivityManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;
    .param p2, "x1"    # Lcom/android/server/wifi/WifiConnectivityManager$1;

    .line 362
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;)V

    return-void
.end method


# virtual methods
.method public clearScanDetails()V
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->mScanDetails:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 368
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->mNumScanResultsIgnoredDueToSingleRadioChain:I

    .line 369
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 3
    .param p1, "reason"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 377
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerScanListener onFailure: reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->access$400(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method public onFullResult(Landroid/net/wifi/ScanResult;)V
    .locals 3
    .param p1, "fullScanResult"    # Landroid/net/wifi/ScanResult;

    .line 429
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->access$500(Lcom/android/server/wifi/WifiConnectivityManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->access$600(Lcom/android/server/wifi/WifiConnectivityManager;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->access$1100(Lcom/android/server/wifi/WifiConnectivityManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AllSingleScanListener onFullResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " capabilities "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->access$400(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V

    .line 440
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->access$1200(Lcom/android/server/wifi/WifiConnectivityManager;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 444
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->mNumScanResultsIgnoredDueToSingleRadioChain:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->mNumScanResultsIgnoredDueToSingleRadioChain:I

    .line 445
    return-void

    .line 448
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->mScanDetails:Ljava/util/List;

    invoke-static {p1}, Lcom/android/server/wifi/util/ScanResultUtil;->toScanDetail(Landroid/net/wifi/ScanResult;)Lcom/android/server/wifi/ScanDetail;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    return-void

    .line 430
    :cond_3
    :goto_0
    return-void
.end method

.method public onPeriodChanged(I)V
    .locals 0
    .param p1, "periodInMs"    # I

    .line 383
    return-void
.end method

.method public onResults([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 3
    .param p1, "results"    # [Landroid/net/wifi/WifiScanner$ScanData;

    .line 387
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->access$500(Lcom/android/server/wifi/WifiConnectivityManager;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->access$600(Lcom/android/server/wifi/WifiConnectivityManager;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->access$700(Lcom/android/server/wifi/WifiConnectivityManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 395
    aget-object v0, p1, v1

    invoke-virtual {v0}, Landroid/net/wifi/WifiScanner$ScanData;->isAllChannelsScanned()Z

    move-result v0

    if-nez v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    const-string v1, "AllSingleScanListener waiting for full band scan results."

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->access$400(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->clearScanDetails()V

    .line 398
    return-void

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->access$702(Lcom/android/server/wifi/WifiConnectivityManager;Z)Z

    .line 403
    :cond_2
    array-length v0, p1

    if-lez v0, :cond_3

    .line 404
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->access$800(Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->mScanDetails:Ljava/util/List;

    aget-object v1, p1, v1

    .line 405
    invoke-virtual {v1}, Landroid/net/wifi/WifiScanner$ScanData;->isAllChannelsScanned()Z

    move-result v1

    .line 404
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wifi/WifiMetrics;->incrementAvailableNetworksHistograms(Ljava/util/List;Z)V

    .line 407
    :cond_3
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->mNumScanResultsIgnoredDueToSingleRadioChain:I

    if-lez v0, :cond_4

    .line 408
    const-string v0, "WifiConnectivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of scan results ignored due to single radio chain scan: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->mNumScanResultsIgnoredDueToSingleRadioChain:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->mScanDetails:Ljava/util/List;

    const-string v2, "AllSingleScanListener"

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->access$900(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    .line 412
    .local v0, "wasConnectAttempted":Z
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->clearScanDetails()V

    .line 418
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityManager;->access$1000(Lcom/android/server/wifi/WifiConnectivityManager;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 419
    if-eqz v0, :cond_5

    .line 420
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityManager;->access$800(Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMetrics;->incrementNumConnectivityWatchdogPnoBad()V

    goto :goto_0

    .line 422
    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityManager;->access$800(Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMetrics;->incrementNumConnectivityWatchdogPnoGood()V

    .line 425
    :cond_6
    :goto_0
    return-void

    .line 388
    .end local v0    # "wasConnectAttempted":Z
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->clearScanDetails()V

    .line 389
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->access$702(Lcom/android/server/wifi/WifiConnectivityManager;Z)Z

    .line 390
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .line 373
    return-void
.end method
