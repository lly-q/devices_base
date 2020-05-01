.class Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;
.super Ljava/lang/Object;
.source "RuimRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfCsimMipUppLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0

    .line 542
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;
    .param p2, "x1"    # Lcom/android/internal/telephony/uicc/RuimRecords$1;

    .line 542
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    return-void
.end method


# virtual methods
.method checkLengthLegal(II)Z
    .locals 3
    .param p1, "length"    # I
    .param p2, "expectLength"    # I

    .line 549
    if-ge p1, p2, :cond_0

    .line 550
    const-string v0, "RuimRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CSIM MIPUPP format error, length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "expected length at least ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const/4 v0, 0x0

    return v0

    .line 554
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getEfName()Ljava/lang/String;
    .locals 1

    .line 545
    const-string v0, "EF_CSIM_MIPUPP"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 18
    .param p1, "ar"    # Landroid/os/AsyncResult;

    move-object/from16 v1, p0

    .line 561
    move-object/from16 v2, p1

    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, [B

    .line 563
    .local v3, "data":[B
    array-length v0, v3

    const/4 v4, 0x1

    if-ge v0, v4, :cond_0

    .line 564
    const-string v0, "RuimRecords"

    const-string v4, "MIPUPP read error"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    return-void

    .line 568
    :cond_0
    new-instance v0, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v0, v3}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    move-object v5, v0

    .line 570
    .local v5, "bitStream":Lcom/android/internal/util/BitwiseInputStream;
    const/16 v0, 0x8

    :try_start_0
    invoke-virtual {v5, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    .line 572
    .local v6, "mipUppLength":I
    shl-int/lit8 v6, v6, 0x3

    .line 574
    invoke-virtual {v1, v6, v4}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v7

    if-nez v7, :cond_1

    .line 575
    return-void

    .line 578
    :cond_1
    invoke-virtual {v5, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    .line 579
    .local v7, "retryInfoInclude":I
    add-int/lit8 v6, v6, -0x1

    .line 581
    if-ne v7, v4, :cond_3

    .line 582
    const/16 v8, 0xb

    invoke-virtual {v1, v6, v8}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v9

    if-nez v9, :cond_2

    .line 583
    return-void

    .line 585
    :cond_2
    invoke-virtual {v5, v8}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 587
    add-int/lit8 v6, v6, -0xb

    .line 590
    :cond_3
    const/4 v8, 0x4

    invoke-virtual {v1, v6, v8}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v9

    if-nez v9, :cond_4

    .line 591
    return-void

    .line 593
    :cond_4
    invoke-virtual {v5, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v9

    .line 594
    .local v9, "numNai":I
    add-int/lit8 v6, v6, -0x4

    .line 597
    const/4 v10, 0x0

    move v11, v6

    move v6, v10

    .local v6, "index":I
    .local v11, "mipUppLength":I
    :goto_0
    if-ge v6, v9, :cond_11

    .line 598
    invoke-virtual {v1, v11, v8}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v12

    if-nez v12, :cond_5

    .line 599
    return-void

    .line 601
    :cond_5
    invoke-virtual {v5, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v12

    .line 602
    .local v12, "naiEntryIndex":I
    add-int/lit8 v11, v11, -0x4

    .line 604
    invoke-virtual {v1, v11, v0}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v13

    if-nez v13, :cond_6

    .line 605
    return-void

    .line 607
    :cond_6
    invoke-virtual {v5, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v13

    .line 608
    .local v13, "naiLength":I
    add-int/lit8 v11, v11, -0x8

    .line 610
    if-nez v12, :cond_a

    .line 612
    shl-int/lit8 v4, v13, 0x3

    invoke-virtual {v1, v11, v4}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v4

    if-nez v4, :cond_7

    .line 613
    return-void

    .line 615
    :cond_7
    new-array v4, v13, [C

    .line 616
    .local v4, "naiCharArray":[C
    nop

    .local v10, "index1":I
    :goto_1
    move v8, v10

    .end local v10    # "index1":I
    .local v8, "index1":I
    if-ge v8, v13, :cond_8

    .line 617
    invoke-virtual {v5, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v10

    and-int/lit16 v10, v10, 0xff

    int-to-char v10, v10

    aput-char v10, v4, v8

    .line 616
    add-int/lit8 v10, v8, 0x1

    .end local v8    # "index1":I
    .restart local v10    # "index1":I
    goto :goto_1

    .line 619
    .end local v10    # "index1":I
    :cond_8
    iget-object v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v4}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0, v8}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$902(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;

    .line 620
    const-string v0, "RuimRecords"

    const/4 v8, 0x2

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 621
    const-string v0, "RuimRecords"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MIPUPP Nai = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$900(Lcom/android/internal/telephony/uicc/RuimRecords;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_9
    return-void

    .line 626
    .end local v4    # "naiCharArray":[C
    :cond_a
    shl-int/lit8 v14, v13, 0x3

    add-int/lit8 v14, v14, 0x66

    invoke-virtual {v1, v11, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v14

    if-nez v14, :cond_b

    .line 627
    return-void

    .line 629
    :cond_b
    shl-int/lit8 v14, v13, 0x3

    add-int/lit8 v14, v14, 0x65

    invoke-virtual {v5, v14}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 630
    invoke-virtual {v5, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v14

    .line 631
    .local v14, "mnAaaSpiIndicator":I
    shl-int/lit8 v15, v13, 0x3

    add-int/lit8 v15, v15, 0x66

    sub-int/2addr v11, v15

    .line 633
    const/16 v15, 0x20

    if-ne v14, v4, :cond_d

    .line 634
    invoke-virtual {v1, v11, v15}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v16

    if-nez v16, :cond_c

    .line 635
    return-void

    .line 637
    :cond_c
    invoke-virtual {v5, v15}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 638
    add-int/lit8 v11, v11, -0x20

    .line 642
    :cond_d
    const/4 v0, 0x5

    invoke-virtual {v1, v11, v0}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v0

    if-nez v0, :cond_e

    .line 643
    return-void

    .line 645
    :cond_e
    invoke-virtual {v5, v8}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 646
    add-int/lit8 v11, v11, -0x4

    .line 647
    invoke-virtual {v5, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v0

    .line 648
    .local v0, "mnHaSpiIndicator":I
    add-int/lit8 v11, v11, -0x1

    .line 650
    if-ne v0, v4, :cond_10

    .line 651
    invoke-virtual {v1, v11, v15}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v16

    if-nez v16, :cond_f

    .line 652
    return-void

    .line 654
    :cond_f
    invoke-virtual {v5, v15}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    add-int/lit8 v11, v11, -0x20

    .line 597
    .end local v0    # "mnHaSpiIndicator":I
    .end local v12    # "naiEntryIndex":I
    .end local v13    # "naiLength":I
    .end local v14    # "mnAaaSpiIndicator":I
    :cond_10
    add-int/lit8 v6, v6, 0x1

    const/16 v0, 0x8

    goto/16 :goto_0

    .line 662
    .end local v6    # "index":I
    .end local v7    # "retryInfoInclude":I
    .end local v9    # "numNai":I
    .end local v11    # "mipUppLength":I
    :cond_11
    nop

    .line 663
    return-void

    .line 659
    :catch_0
    move-exception v0

    .line 660
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "RuimRecords"

    const-string v6, "MIPUPP read Exception error!"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    return-void
.end method
