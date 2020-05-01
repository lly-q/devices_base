.class Lcom/android/server/wifi/WifiGbk$BssCache;
.super Ljava/lang/Object;
.source "WifiGbk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiGbk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BssCache"
.end annotation


# static fields
.field public static final SECURITY_EAP:I = 0x3

.field public static final SECURITY_NONE:I = 0x0

.field public static final SECURITY_PSK:I = 0x2

.field public static final SECURITY_WEP:I = 0x1


# instance fields
.field public BSSID:Ljava/lang/String;

.field public SSID:Ljava/lang/String;

.field public expire_count:I

.field public frequency:I

.field isGbk:Z

.field public level:I

.field public security:I

.field public ssidBytes:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v0}, Landroid/net/wifi/WifiSsid;->getOctets()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiGbk$BssCache;->ssidBytes:[B

    .line 561
    iget-object v0, p0, Lcom/android/server/wifi/WifiGbk$BssCache;->ssidBytes:[B

    invoke-static {v0}, Lcom/android/server/wifi/WifiGbk;->isGbk([B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiGbk$BssCache;->isGbk:Z

    .line 563
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/wifi/util/NativeUtil;->addEnclosingQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiGbk$BssCache;->SSID:Ljava/lang/String;

    .line 564
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/WifiGbk$BssCache;->BSSID:Ljava/lang/String;

    .line 565
    invoke-static {p1}, Lcom/android/server/wifi/WifiGbk$BssCache;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiGbk$BssCache;->security:I

    .line 566
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/server/wifi/WifiGbk$BssCache;->level:I

    .line 567
    iget v0, p1, Landroid/net/wifi/ScanResult;->frequency:I

    iput v0, p0, Lcom/android/server/wifi/WifiGbk$BssCache;->frequency:I

    .line 568
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wifi/WifiGbk$BssCache;->expire_count:I

    .line 570
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiGbk$BssCache;->isGbk:Z

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/server/wifi/WifiGbk$BssCache;->ssidBytes:[B

    const-string v1, "GBK"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiGbk;->encodeSsid([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 573
    .local v0, "ssid":Ljava/lang/String;
    iput-object v0, p0, Lcom/android/server/wifi/WifiGbk$BssCache;->SSID:Ljava/lang/String;

    .line 576
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiGbk$BssCache;->replaceSSIDinScanResult(Landroid/net/wifi/ScanResult;)Z

    .line 578
    .end local v0    # "ssid":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static bssToString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "SSID"    # Ljava/lang/String;
    .param p1, "security"    # I

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/wifi/WifiGbk$BssCache;->securityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .line 632
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    const/4 v0, 0x1

    return v0

    .line 634
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 635
    const/4 v0, 0x2

    return v0

    .line 636
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 637
    const/4 v0, 0x3

    return v0

    .line 639
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 3
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 643
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 644
    return v2

    .line 646
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v2, 0x3

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 647
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 650
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1

    .line 648
    :cond_3
    :goto_1
    return v2
.end method

.method private replaceSSIDinScanResult(Landroid/net/wifi/ScanResult;)Z
    .locals 3
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .line 599
    iget-object v0, p0, Lcom/android/server/wifi/WifiGbk$BssCache;->SSID:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiGbk;->getSsidBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 600
    .local v0, "utfBytes":[B
    iget-object v1, p0, Lcom/android/server/wifi/WifiGbk$BssCache;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 604
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiGbk$BssCache;->SSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->removeEnclosingQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 605
    invoke-static {v0}, Landroid/net/wifi/WifiSsid;->createFromByteArray([B)Landroid/net/wifi/WifiSsid;

    move-result-object v1

    iput-object v1, p1, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 607
    const/4 v1, 0x1

    return v1

    .line 601
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "replaceSSIDinScanResult fail - result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/WifiGbk;->loge(Ljava/lang/String;)V

    .line 602
    const/4 v1, 0x0

    return v1
.end method

.method public static securityToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "security"    # I

    .line 654
    packed-switch p0, :pswitch_data_0

    .line 664
    const-string v0, "?"

    return-object v0

    .line 662
    :pswitch_0
    const-string v0, "EAP"

    return-object v0

    .line 660
    :pswitch_1
    const-string v0, "PSK"

    return-object v0

    .line 658
    :pswitch_2
    const-string v0, "WEP"

    return-object v0

    .line 656
    :pswitch_3
    const-string v0, "NONE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public matches(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "SSID"    # Ljava/lang/String;
    .param p2, "security"    # I

    .line 625
    iget-object v0, p0, Lcom/android/server/wifi/WifiGbk$BssCache;->SSID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 626
    return v1

    .line 628
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/WifiGbk$BssCache;->security:I

    if-ne v0, p2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "BSSID"    # Ljava/lang/String;
    .param p2, "SSID"    # Ljava/lang/String;

    .line 618
    iget-object v0, p0, Lcom/android/server/wifi/WifiGbk$BssCache;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 619
    const/4 v0, 0x0

    return v0

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiGbk$BssCache;->SSID:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public matches(Ljava/lang/String;[B)Z
    .locals 1
    .param p1, "BSSID"    # Ljava/lang/String;
    .param p2, "ssidBytes"    # [B

    .line 611
    iget-object v0, p0, Lcom/android/server/wifi/WifiGbk$BssCache;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 612
    const/4 v0, 0x0

    return v0

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiGbk$BssCache;->ssidBytes:[B

    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bss("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiGbk$BssCache;->SSID:Ljava/lang/String;

    .line 675
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 677
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/wifi/WifiGbk$BssCache;->BSSID:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 678
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiGbk$BssCache;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    :cond_0
    const-string v1, ", isGbk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiGbk$BssCache;->isGbk:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 681
    const-string v1, ", security="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiGbk$BssCache;->security:I

    invoke-static {v1}, Lcom/android/server/wifi/WifiGbk$BssCache;->securityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiGbk$BssCache;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 683
    const-string v1, ", frequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiGbk$BssCache;->frequency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 685
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .line 582
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v0}, Landroid/net/wifi/WifiSsid;->getOctets()[B

    move-result-object v0

    .line 583
    .local v0, "ssidBytes":[B
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wifi/WifiGbk$BssCache;->matches(Ljava/lang/String;[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 584
    return-void

    .line 587
    :cond_0
    invoke-static {p1}, Lcom/android/server/wifi/WifiGbk$BssCache;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiGbk$BssCache;->security:I

    .line 588
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v1, p0, Lcom/android/server/wifi/WifiGbk$BssCache;->level:I

    .line 589
    iget v1, p1, Landroid/net/wifi/ScanResult;->frequency:I

    iput v1, p0, Lcom/android/server/wifi/WifiGbk$BssCache;->frequency:I

    .line 590
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/wifi/WifiGbk$BssCache;->expire_count:I

    .line 592
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiGbk$BssCache;->isGbk:Z

    if-eqz v1, :cond_1

    .line 594
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiGbk$BssCache;->replaceSSIDinScanResult(Landroid/net/wifi/ScanResult;)Z

    .line 596
    :cond_1
    return-void
.end method
