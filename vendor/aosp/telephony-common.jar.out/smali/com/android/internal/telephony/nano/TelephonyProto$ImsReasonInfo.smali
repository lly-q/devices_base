.class public final Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImsReasonInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;


# instance fields
.field public extraCode:I

.field public extraMessage:Ljava/lang/String;

.field public reasonCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1533
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1534
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    .line 1535
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;
    .locals 2

    .line 1513
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    if-nez v0, :cond_1

    .line 1514
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1516
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    if-nez v1, :cond_0

    .line 1517
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    .line 1519
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1521
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;
    .locals 1
    .param p0, "input"    # Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1618
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 1612
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;
    .locals 1

    .line 1538
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->reasonCode:I

    .line 1539
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->extraCode:I

    .line 1540
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->extraMessage:Ljava/lang/String;

    .line 1541
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    .line 1542
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->cachedSize:I

    .line 1543
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .line 1563
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1564
    .local v0, "size":I
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->reasonCode:I

    if-eqz v1, :cond_0

    .line 1565
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->reasonCode:I

    .line 1566
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1568
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->extraCode:I

    if-eqz v1, :cond_1

    .line 1569
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->extraCode:I

    .line 1570
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1572
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->extraMessage:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1573
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->extraMessage:Ljava/lang/String;

    .line 1574
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1576
    :cond_2
    return v0
.end method

.method public mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;
    .locals 2
    .param p1, "input"    # Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1584
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1585
    .local v0, "tag":I
    if-eqz v0, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    .line 1589
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1590
    return-object p0

    .line 1603
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->extraMessage:Ljava/lang/String;

    .end local v0    # "tag":I
    goto :goto_1

    .line 1599
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->extraCode:I

    .line 1600
    goto :goto_1

    .line 1595
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->reasonCode:I

    .line 1596
    nop

    .line 1607
    .end local v0    # "tag":I
    :cond_3
    :goto_1
    goto :goto_0

    .line 1587
    .restart local v0    # "tag":I
    :cond_4
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1507
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

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

    .line 1549
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->reasonCode:I

    if-eqz v0, :cond_0

    .line 1550
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->reasonCode:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1552
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->extraCode:I

    if-eqz v0, :cond_1

    .line 1553
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->extraCode:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1555
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->extraMessage:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1556
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->extraMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1558
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1559
    return-void
.end method
