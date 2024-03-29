.class public final Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;
.super Ljava/lang/Object;
.source "NanDataPathRequestInd.java"


# instance fields
.field public final appInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public discoverySessionId:B

.field public ndpInstanceId:I

.field public final peerDiscMacAddr:[B

.field public securityRequired:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->peerDiscMacAddr:[B

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->appInfo:Ljava/util/ArrayList;

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 102
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 103
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x20

    int-to-long v5, v3

    .line 104
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 103
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 107
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 108
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 109
    new-instance v5, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;

    invoke-direct {v5}, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;-><init>()V

    .line 110
    .local v5, "_hidl_vec_element":Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;
    mul-int/lit8 v6, v4, 0x20

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 111
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .end local v5    # "_hidl_vec_element":Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 115
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_index_0":I
    :cond_0
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;",
            ">;)V"
        }
    .end annotation

    .line 151
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 153
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 154
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 155
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 156
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 157
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 158
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;

    mul-int/lit8 v5, v2, 0x20

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    .end local v2    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 163
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 164
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 36
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 37
    return v0

    .line 39
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 40
    return v1

    .line 42
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;

    if-eq v2, v3, :cond_2

    .line 43
    return v1

    .line 45
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;

    .line 46
    .local v2, "other":Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;
    iget-byte v3, p0, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->discoverySessionId:B

    iget-byte v4, v2, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->discoverySessionId:B

    if-eq v3, v4, :cond_3

    .line 47
    return v1

    .line 49
    :cond_3
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->peerDiscMacAddr:[B

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->peerDiscMacAddr:[B

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 50
    return v1

    .line 52
    :cond_4
    iget v3, p0, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->ndpInstanceId:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->ndpInstanceId:I

    if-eq v3, v4, :cond_5

    .line 53
    return v1

    .line 55
    :cond_5
    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->securityRequired:Z

    iget-boolean v4, v2, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->securityRequired:Z

    if-eq v3, v4, :cond_6

    .line 56
    return v1

    .line 58
    :cond_6
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->appInfo:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->appInfo:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 59
    return v1

    .line 61
    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 66
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->discoverySessionId:B

    .line 67
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->peerDiscMacAddr:[B

    .line 68
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->ndpInstanceId:I

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->securityRequired:Z

    .line 70
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->appInfo:Ljava/util/ArrayList;

    .line 71
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 66
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 16
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 120
    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->discoverySessionId:B

    .line 122
    const-wide/16 v4, 0x1

    add-long v4, p3, v4

    .line 123
    .local v4, "_hidl_array_offset_0":J
    iget-object v6, v0, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->peerDiscMacAddr:[B

    const/4 v7, 0x6

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 124
    nop

    .line 126
    .end local v4    # "_hidl_array_offset_0":J
    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->ndpInstanceId:I

    .line 127
    const-wide/16 v6, 0xc

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v6

    iput-boolean v6, v0, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->securityRequired:Z

    .line 129
    const-wide/16 v6, 0x10

    add-long v8, p3, v6

    add-long/2addr v8, v4

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 130
    .local v4, "_hidl_vec_size":I
    mul-int/lit8 v5, v4, 0x1

    int-to-long v9, v5

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v5, p3, v6

    add-long v13, v5, v2

    .line 130
    const/4 v15, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 134
    .local v2, "childBlob":Landroid/os/HwBlob;
    iget-object v3, v0, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->appInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 135
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 137
    mul-int/lit8 v5, v3, 0x1

    int-to-long v5, v5

    invoke-virtual {v2, v5, v6}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v5

    .line 138
    .local v5, "_hidl_vec_element":B
    iget-object v6, v0, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->appInfo:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .end local v5    # "_hidl_vec_element":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 141
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_index_0":I
    .end local v4    # "_hidl_vec_size":I
    :cond_0
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 93
    const-wide/16 v0, 0x20

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 94
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 95
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, ".discoverySessionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->discoverySessionId:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, ", .peerDiscMacAddr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->peerDiscMacAddr:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, ", .ndpInstanceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->ndpInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, ", .securityRequired = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->securityRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ", .appInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->appInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 11
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 168
    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    iget-byte v4, p0, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->discoverySessionId:B

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 170
    const-wide/16 v2, 0x1

    add-long/2addr v2, p2

    .line 171
    .local v2, "_hidl_array_offset_0":J
    iget-object v4, p0, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->peerDiscMacAddr:[B

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 172
    nop

    .line 174
    .end local v2    # "_hidl_array_offset_0":J
    const-wide/16 v2, 0x8

    add-long v4, p2, v2

    iget v6, p0, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->ndpInstanceId:I

    invoke-virtual {p1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 175
    const-wide/16 v4, 0xc

    add-long v6, p2, v4

    iget-boolean v8, p0, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->securityRequired:Z

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 177
    iget-object v6, p0, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->appInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 178
    .local v6, "_hidl_vec_size":I
    const-wide/16 v7, 0x10

    add-long v9, p2, v7

    add-long/2addr v9, v2

    invoke-virtual {p1, v9, v10, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 179
    add-long v2, p2, v7

    add-long/2addr v2, v4

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 180
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v6, 0x1

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 181
    .local v2, "childBlob":Landroid/os/HwBlob;
    nop

    .local v4, "_hidl_index_0":I
    :goto_0
    move v3, v4

    .end local v4    # "_hidl_index_0":I
    .local v3, "_hidl_index_0":I
    if-ge v3, v6, :cond_0

    .line 182
    mul-int/lit8 v4, v3, 0x1

    int-to-long v4, v4

    iget-object v9, p0, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->appInfo:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    invoke-virtual {v2, v4, v5, v9}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 181
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "_hidl_index_0":I
    .restart local v4    # "_hidl_index_0":I
    goto :goto_0

    .line 184
    .end local v4    # "_hidl_index_0":I
    :cond_0
    add-long/2addr v7, p2

    add-long/2addr v7, v0

    invoke-virtual {p1, v7, v8, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 186
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v6    # "_hidl_vec_size":I
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 144
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 145
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/wifi/V1_0/NanDataPathRequestInd;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 146
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 147
    return-void
.end method
