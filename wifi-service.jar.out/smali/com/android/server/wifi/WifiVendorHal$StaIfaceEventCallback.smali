.class Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;
.super Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback$Stub;
.source "WifiVendorHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiVendorHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StaIfaceEventCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiVendorHal;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiVendorHal;)V
    .locals 0

    .line 2814
    iput-object p1, p0, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-direct {p0}, Landroid/hardware/wifi/V1_0/IWifiStaIfaceEventCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/WifiVendorHal$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/WifiVendorHal;
    .param p2, "x1"    # Lcom/android/server/wifi/WifiVendorHal$1;

    .line 2814
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;-><init>(Lcom/android/server/wifi/WifiVendorHal;)V

    return-void
.end method


# virtual methods
.method public onBackgroundFullScanResult(IILandroid/hardware/wifi/V1_0/StaScanResult;)V
    .locals 3
    .param p1, "cmdId"    # I
    .param p2, "bucketsScanned"    # I
    .param p3, "result"    # Landroid/hardware/wifi/V1_0/StaScanResult;

    .line 2829
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v0, v0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBackgroundFullScanResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->d(Ljava/lang/String;)V

    .line 2831
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2832
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v1, v1, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v1, v1, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget v1, v1, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->cmdId:I

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 2833
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v1, v1, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget-object v1, v1, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->eventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 2834
    .local v1, "eventHandler":Lcom/android/server/wifi/WifiNative$ScanEventHandler;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2835
    invoke-static {p3}, Lcom/android/server/wifi/WifiVendorHal;->access$1300(Landroid/hardware/wifi/V1_0/StaScanResult;)Landroid/net/wifi/ScanResult;

    move-result-object v0

    invoke-interface {v1, v0, p2}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onFullScanResult(Landroid/net/wifi/ScanResult;I)V

    .line 2836
    return-void

    .line 2832
    .end local v1    # "eventHandler":Lcom/android/server/wifi/WifiNative$ScanEventHandler;
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    .line 2834
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onBackgroundScanFailure(I)V
    .locals 3
    .param p1, "cmdId"    # I

    .line 2817
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v0, v0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBackgroundScanFailure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->d(Ljava/lang/String;)V

    .line 2819
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2820
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v1, v1, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v1, v1, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget v1, v1, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->cmdId:I

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 2821
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v1, v1, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget-object v1, v1, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->eventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 2822
    .local v1, "eventHandler":Lcom/android/server/wifi/WifiNative$ScanEventHandler;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2823
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanStatus(I)V

    .line 2824
    return-void

    .line 2820
    .end local v1    # "eventHandler":Lcom/android/server/wifi/WifiNative$ScanEventHandler;
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    .line 2822
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onBackgroundScanResults(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "cmdId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/wifi/V1_0/StaScanData;",
            ">;)V"
        }
    .end annotation

    .line 2840
    .local p2, "scanDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/StaScanData;>;"
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v0, v0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBackgroundScanResults "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->d(Ljava/lang/String;)V

    .line 2845
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2846
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v1, v1, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v1, v1, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget v1, v1, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->cmdId:I

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 2847
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v1, v1, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    iget-object v1, v1, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->eventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 2848
    .local v1, "eventHandler":Lcom/android/server/wifi/WifiNative$ScanEventHandler;
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v2, v2, Lcom/android/server/wifi/WifiVendorHal;->mScan:Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;

    invoke-static {p1, p2}, Lcom/android/server/wifi/WifiVendorHal;->access$1400(ILjava/util/ArrayList;)[Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wifi/WifiVendorHal$CurrentBackgroundScan;->latestScanResults:[Landroid/net/wifi/WifiScanner$ScanData;

    .line 2849
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2850
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanStatus(I)V

    .line 2851
    return-void

    .line 2846
    .end local v1    # "eventHandler":Lcom/android/server/wifi/WifiNative$ScanEventHandler;
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    .line 2849
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onRssiThresholdBreached(I[BI)V
    .locals 3
    .param p1, "cmdId"    # I
    .param p2, "currBssid"    # [B
    .param p3, "currRssi"    # I

    .line 2855
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v0, v0, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRssiThresholdBreached "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "currRssi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->d(Ljava/lang/String;)V

    .line 2857
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2858
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->access$1500(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v1, 0x1d7f

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 2859
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$StaIfaceEventCallback;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->access$1500(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;

    move-result-object v1

    .line 2860
    .local v1, "eventHandler":Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2861
    int-to-byte v0, p3

    invoke-interface {v1, v0}, Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;->onRssiThresholdBreached(B)V

    .line 2862
    return-void

    .line 2858
    .end local v1    # "eventHandler":Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    .line 2860
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
