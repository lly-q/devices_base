.class public final Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TelephonyCallSession"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;


# instance fields
.field public events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

.field public eventsDropped:Z

.field public phoneId:I

.field public startTimeMinutes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4572
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4573
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    .line 4574
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;
    .locals 2

    .line 4549
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    if-nez v0, :cond_1

    .line 4550
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 4552
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    if-nez v1, :cond_0

    .line 4553
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    .line 4555
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4557
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;
    .locals 1
    .param p0, "input"    # Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4695
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 4689
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;
    .locals 2

    .line 4577
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->startTimeMinutes:I

    .line 4578
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->phoneId:I

    .line 4579
    invoke-static {}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    .line 4580
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->eventsDropped:Z

    .line 4581
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    .line 4582
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->cachedSize:I

    .line 4583
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .line 4611
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 4612
    .local v0, "size":I
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->startTimeMinutes:I

    if-eqz v1, :cond_0

    .line 4613
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->startTimeMinutes:I

    .line 4614
    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4616
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->phoneId:I

    if-eqz v1, :cond_1

    .line 4617
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->phoneId:I

    .line 4618
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4620
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 4621
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 4622
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    aget-object v2, v2, v1

    .line 4623
    .local v2, "element":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;
    if-eqz v2, :cond_2

    .line 4624
    const/4 v3, 0x3

    .line 4625
    invoke-static {v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    .line 4621
    .end local v2    # "element":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4629
    .end local v1    # "i":I
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->eventsDropped:Z

    if-eqz v1, :cond_4

    .line 4630
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->eventsDropped:Z

    .line 4631
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4633
    :cond_4
    return v0
.end method

.method public mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;
    .locals 6
    .param p1, "input"    # Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4641
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4642
    .local v0, "tag":I
    if-eqz v0, :cond_8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v1, 0x10

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 4646
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 4647
    return-object p0

    .line 4680
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->eventsDropped:Z

    .end local v0    # "tag":I
    goto :goto_3

    .line 4660
    .restart local v0    # "tag":I
    :cond_1
    nop

    .line 4661
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 4662
    .local v1, "arrayLength":I
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    array-length v2, v2

    .line 4663
    .local v2, "i":I
    :goto_1
    add-int v4, v2, v1

    new-array v4, v4, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    .line 4665
    .local v4, "newArray":[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;
    if-eqz v2, :cond_3

    .line 4666
    iget-object v5, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    invoke-static {v5, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4668
    :cond_3
    :goto_2
    array-length v3, v4

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_4

    .line 4669
    new-instance v3, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    invoke-direct {v3}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;-><init>()V

    aput-object v3, v4, v2

    .line 4670
    aget-object v3, v4, v2

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 4671
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4668
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4674
    :cond_4
    new-instance v3, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    invoke-direct {v3}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;-><init>()V

    aput-object v3, v4, v2

    .line 4675
    aget-object v3, v4, v2

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 4676
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    .line 4677
    goto :goto_3

    .line 4656
    .end local v1    # "arrayLength":I
    .end local v2    # "i":I
    .end local v4    # "newArray":[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->phoneId:I

    .line 4657
    goto :goto_3

    .line 4652
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->startTimeMinutes:I

    .line 4653
    nop

    .line 4684
    .end local v0    # "tag":I
    :cond_7
    :goto_3
    goto :goto_0

    .line 4644
    .restart local v0    # "tag":I
    :cond_8
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3549
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    move-result-object p1

    return-object p1
.end method

.method public writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4589
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->startTimeMinutes:I

    if-eqz v0, :cond_0

    .line 4590
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->startTimeMinutes:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4592
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->phoneId:I

    if-eqz v0, :cond_1

    .line 4593
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->phoneId:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4595
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 4596
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 4597
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    aget-object v1, v1, v0

    .line 4598
    .local v1, "element":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;
    if-eqz v1, :cond_2

    .line 4599
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 4596
    .end local v1    # "element":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4603
    .end local v0    # "i":I
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->eventsDropped:Z

    if-eqz v0, :cond_4

    .line 4604
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->eventsDropped:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4606
    :cond_4
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4607
    return-void
.end method
