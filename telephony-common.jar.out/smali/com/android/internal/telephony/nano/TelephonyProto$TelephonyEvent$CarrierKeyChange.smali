.class public final Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarrierKeyChange"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange$KeyType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;


# instance fields
.field public isDownloadSuccessful:Z

.field public keyType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2547
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2548
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    .line 2549
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;
    .locals 2

    .line 2530
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    if-nez v0, :cond_1

    .line 2531
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2533
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    if-nez v1, :cond_0

    .line 2534
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    .line 2536
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2538
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;
    .locals 1
    .param p0, "input"    # Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2632
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 2626
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;
    .locals 1

    .line 2552
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->keyType:I

    .line 2553
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->isDownloadSuccessful:Z

    .line 2554
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    .line 2555
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->cachedSize:I

    .line 2556
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .line 2573
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2574
    .local v0, "size":I
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->keyType:I

    if-eqz v1, :cond_0

    .line 2575
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->keyType:I

    .line 2576
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2578
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->isDownloadSuccessful:Z

    if-eqz v1, :cond_1

    .line 2579
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->isDownloadSuccessful:Z

    .line 2580
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2582
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;
    .locals 3
    .param p1, "input"    # Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2590
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2591
    .local v0, "tag":I
    if-eqz v0, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 2595
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2596
    return-object p0

    .line 2617
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->isDownloadSuccessful:Z

    .end local v0    # "tag":I
    goto :goto_1

    .line 2601
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 2602
    .local v1, "initialPos":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 2603
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 2610
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 2611
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    .line 2612
    goto :goto_1

    .line 2607
    :pswitch_0
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->keyType:I

    .line 2608
    nop

    .line 2621
    .end local v0    # "tag":I
    .end local v1    # "initialPos":I
    .end local v2    # "value":I
    :cond_2
    :goto_1
    goto :goto_0

    .line 2593
    .restart local v0    # "tag":I
    :cond_3
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2517
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    move-result-object p1

    return-object p1
.end method

.method public writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2562
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->keyType:I

    if-eqz v0, :cond_0

    .line 2563
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->keyType:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2565
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->isDownloadSuccessful:Z

    if-eqz v0, :cond_1

    .line 2566
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->isDownloadSuccessful:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2568
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2569
    return-void
.end method
