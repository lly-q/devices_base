.class Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;
.super Ljava/lang/Object;
.source "WifiConnectivityManager.java"

# interfaces
.implements Landroid/net/wifi/WifiScanner$PnoScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PnoScanListener"
.end annotation


# instance fields
.field private mLowRssiNetworkRetryDelay:I

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

    .line 504
    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->mScanDetails:Ljava/util/List;

    .line 506
    const/16 p1, 0x4e20

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->mLowRssiNetworkRetryDelay:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiConnectivityManager;Lcom/android/server/wifi/WifiConnectivityManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;
    .param p2, "x1"    # Lcom/android/server/wifi/WifiConnectivityManager$1;

    .line 504
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;)V

    return-void
.end method


# virtual methods
.method public clearScanDetails()V
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->mScanDetails:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 511
    return-void
.end method

.method public getLowRssiNetworkRetryDelay()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 521
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->mLowRssiNetworkRetryDelay:I

    return v0
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 3
    .param p1, "reason"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 530
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PnoScanListener onFailure: reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->access$400(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->access$1608(Lcom/android/server/wifi/WifiConnectivityManager;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 535
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->access$1700(Lcom/android/server/wifi/WifiConnectivityManager;I)V

    goto :goto_0

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->access$1602(Lcom/android/server/wifi/WifiConnectivityManager;I)I

    .line 538
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    const-string v1, "Failed to successfully start PNO scan for 5 times"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->access$400(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V

    .line 541
    :goto_0
    return-void
.end method

.method public onFullResult(Landroid/net/wifi/ScanResult;)V
    .locals 0
    .param p1, "fullScanResult"    # Landroid/net/wifi/ScanResult;

    .line 558
    return-void
.end method

.method public onPeriodChanged(I)V
    .locals 3
    .param p1, "periodInMs"    # I

    .line 545
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PnoScanListener onPeriodChanged: actual scan period "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->access$400(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V

    .line 547
    return-void
.end method

.method public onPnoNetworkFound([Landroid/net/wifi/ScanResult;)V
    .locals 6
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .line 562
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 563
    .local v3, "result":Landroid/net/wifi/ScanResult;
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    if-nez v4, :cond_0

    .line 564
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    const-string v5, "Skipping scan result with null information elements"

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConnectivityManager;->access$400(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V

    .line 565
    goto :goto_1

    .line 567
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->mScanDetails:Ljava/util/List;

    invoke-static {v3}, Lcom/android/server/wifi/util/ScanResultUtil;->toScanDetail(Landroid/net/wifi/ScanResult;)Lcom/android/server/wifi/ScanDetail;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 571
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->mScanDetails:Ljava/util/List;

    const-string v3, "PnoScanListener"

    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/WifiConnectivityManager;->access$900(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    .line 572
    .local v0, "wasConnectAttempted":Z
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->clearScanDetails()V

    .line 573
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v2, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->access$1602(Lcom/android/server/wifi/WifiConnectivityManager;I)I

    .line 575
    if-nez v0, :cond_3

    .line 577
    iget v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->mLowRssiNetworkRetryDelay:I

    const v2, 0x13880

    if-le v1, v2, :cond_2

    .line 578
    iput v2, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->mLowRssiNetworkRetryDelay:I

    .line 580
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    iget v2, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->mLowRssiNetworkRetryDelay:I

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->access$1700(Lcom/android/server/wifi/WifiConnectivityManager;I)V

    .line 583
    iget v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->mLowRssiNetworkRetryDelay:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->mLowRssiNetworkRetryDelay:I

    goto :goto_2

    .line 585
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->resetLowRssiNetworkRetryDelay()V

    .line 587
    :goto_2
    return-void
.end method

.method public onResults([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 0
    .param p1, "results"    # [Landroid/net/wifi/WifiScanner$ScanData;

    .line 554
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .line 526
    return-void
.end method

.method public resetLowRssiNetworkRetryDelay()V
    .locals 1

    .line 516
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->mLowRssiNetworkRetryDelay:I

    .line 517
    return-void
.end method
