.class public Landroid/net/arp/OPArpPeer;
.super Ljava/lang/Object;
.source "OPArpPeer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/arp/OPArpPeer$ProbeTask;,
        Landroid/net/arp/OPArpPeer$ArpPeerChangeCallback;
    }
.end annotation


# static fields
.field private static final ANY_MAC_BYTES:[B

.field private static final ANY_MAC_STR:Ljava/lang/String; = "any"

.field public static final ARP_DUP_RESPONSE_TIMEOUT:I = 0x7d0

.field public static final ARP_FIRST_RESPONSE_TIMEOUT:I = 0xfa0

.field private static final ARP_LENGTH:I = 0x1c

.field private static final ARP_READ_LENGTH:I = 0x3c

.field private static final ARP_TYPE:I = 0x806

.field private static final ETHERNET_LENGTH:I = 0xe

.field private static final ETHERNET_TYPE:I = 0x1

.field private static final IPV4_LENGTH:I = 0x4

.field private static final L2_BROADCAST:[B

.field private static final MAC_ADDR_LENGTH:I = 0x6

.field public static final MAX_LENGTH:I = 0x5dc

.field private static final TAG:Ljava/lang/String; = "arp_OPArpPeer"


# instance fields
.field private mCallback:Landroid/net/arp/OPArpPeer$ArpPeerChangeCallback;

.field private mContext:Landroid/content/Context;

.field private mDupArpThreshhold:I

.field protected mDupTarget:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private mHwAddr:[B

.field protected mIface:Ljava/net/NetworkInterface;

.field private mIfaceName:Ljava/lang/String;

.field private mInterfaceBroadcastAddr:Landroid/system/PacketSocketAddress;

.field private mMyAddr:Ljava/net/Inet4Address;

.field protected mNetwork:Landroid/net/Network;

.field private mSocket:Ljava/io/FileDescriptor;

.field protected mTarget:Ljava/net/Inet4Address;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    const/4 v0, 0x6

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Landroid/net/arp/OPArpPeer;->L2_BROADCAST:[B

    .line 199
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroid/net/arp/OPArpPeer;->ANY_MAC_BYTES:[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Network;Landroid/net/arp/OPArpPeer$ArpPeerChangeCallback;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "network"    # Landroid/net/Network;
    .param p3, "callback"    # Landroid/net/arp/OPArpPeer$ArpPeerChangeCallback;
    .param p4, "dupArpThreshhold"    # I

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/arp/OPArpPeer;->mCallback:Landroid/net/arp/OPArpPeer$ArpPeerChangeCallback;

    .line 81
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/arp/OPArpPeer;->mDupArpThreshhold:I

    .line 88
    iput-object p1, p0, Landroid/net/arp/OPArpPeer;->mContext:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Landroid/net/arp/OPArpPeer;->mNetwork:Landroid/net/Network;

    .line 90
    iput-object p3, p0, Landroid/net/arp/OPArpPeer;->mCallback:Landroid/net/arp/OPArpPeer$ArpPeerChangeCallback;

    .line 91
    iput p4, p0, Landroid/net/arp/OPArpPeer;->mDupArpThreshhold:I

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Landroid/net/arp/OPArpPeer;->mDupArpThreshhold:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/net/arp/OPArpPeer;->mDupTarget:Ljava/util/List;

    .line 93
    return-void
.end method

.method static synthetic access$000(Landroid/net/arp/OPArpPeer;I)I
    .locals 1
    .param p0, "x0"    # Landroid/net/arp/OPArpPeer;
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1}, Landroid/net/arp/OPArpPeer;->findDupTarget(I)I

    move-result v0

    return v0
.end method

.method private byteCheck([BI)Z
    .locals 4
    .param p1, "addr"    # [B
    .param p2, "value"    # I

    .line 385
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-byte v3, p1, v2

    .line 386
    .local v3, "i":B
    if-eq v3, p2, :cond_0

    .line 387
    return v1

    .line 385
    .end local v3    # "i":B
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 390
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static closeQuietly(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .line 409
    :try_start_0
    invoke-static {p0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    goto :goto_0

    :catch_0
    move-exception v0

    .line 411
    :goto_0
    return-void
.end method

.method private findDupTarget(I)I
    .locals 19
    .param p1, "timeoutMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 213
    move/from16 v2, p1

    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 214
    .local v3, "buf":Ljava/nio/ByteBuffer;
    iget-object v4, v1, Landroid/net/arp/OPArpPeer;->mTarget:Ljava/net/Inet4Address;

    invoke-virtual {v4}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v4

    .line 215
    .local v4, "desiredIp":[B
    const/4 v5, 0x0

    .line 218
    .local v5, "peerMac":[B
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    int-to-long v8, v2

    add-long/2addr v6, v8

    .line 219
    .local v6, "timeout":J
    const-string v8, "arp_OPArpPeer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "findDupTarget "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Landroid/net/arp/OPArpPeer;->mTarget:Ljava/net/Inet4Address;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 225
    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 228
    sget-object v8, Landroid/net/arp/OPArpPeer;->L2_BROADCAST:[B

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 229
    iget-object v8, v1, Landroid/net/arp/OPArpPeer;->mHwAddr:[B

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 230
    const/16 v8, 0x806

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 232
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 233
    sget v9, Landroid/system/OsConstants;->ETH_P_IP:I

    int-to-short v9, v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 234
    const/4 v9, 0x6

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 235
    const/4 v10, 0x4

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 236
    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 237
    iget-object v11, v1, Landroid/net/arp/OPArpPeer;->mHwAddr:[B

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 238
    iget-object v11, v1, Landroid/net/arp/OPArpPeer;->mMyAddr:Ljava/net/Inet4Address;

    invoke-virtual {v11}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 239
    new-array v11, v9, [B

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 240
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 241
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 244
    const/4 v11, 0x0

    :try_start_0
    iget-object v12, v1, Landroid/net/arp/OPArpPeer;->mSocket:Ljava/io/FileDescriptor;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v15

    const/16 v16, 0x0

    iget-object v9, v1, Landroid/net/arp/OPArpPeer;->mInterfaceBroadcastAddr:Landroid/system/PacketSocketAddress;

    move-object/from16 v17, v9

    invoke-static/range {v12 .. v17}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 250
    nop

    .line 252
    new-array v9, v0, [B

    .line 254
    .local v9, "socketBuf":[B
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    cmp-long v12, v12, v6

    if-gez v12, :cond_5

    iget-object v12, v1, Landroid/net/arp/OPArpPeer;->mDupTarget:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    iget v13, v1, Landroid/net/arp/OPArpPeer;->mDupArpThreshhold:I

    if-ge v12, v13, :cond_5

    .line 255
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v12, v6, v12

    .line 256
    .local v12, "duration":J
    invoke-static {v12, v13}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v14

    .line 257
    .local v14, "t":Landroid/system/StructTimeval;
    iget-object v15, v1, Landroid/net/arp/OPArpPeer;->mSocket:Ljava/io/FileDescriptor;

    sget v10, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v8, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-static {v15, v10, v8, v14}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 259
    move v8, v11

    .line 261
    .local v8, "readLen":I
    :try_start_1
    iget-object v10, v1, Landroid/net/arp/OPArpPeer;->mSocket:Ljava/io/FileDescriptor;

    invoke-static {v10, v9, v11, v0}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v8, v10

    .line 267
    nop

    .line 270
    const/16 v10, 0x2a

    if-lt v8, v10, :cond_4

    .line 271
    const/16 v10, 0x1c

    new-array v15, v10, [B

    .line 273
    .local v15, "recvBuf":[B
    const/16 v0, 0xe

    invoke-static {v9, v0, v15, v11, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 276
    aget-byte v10, v15, v11

    if-nez v10, :cond_4

    const/4 v10, 0x1

    aget-byte v11, v15, v10

    if-ne v11, v10, :cond_4

    const/4 v10, 0x2

    aget-byte v11, v15, v10

    const/16 v0, 0x8

    if-ne v11, v0, :cond_4

    const/4 v11, 0x3

    aget-byte v16, v15, v11

    if-nez v16, :cond_4

    const/4 v0, 0x4

    aget-byte v11, v15, v0

    const/4 v10, 0x6

    if-ne v11, v10, :cond_4

    const/4 v11, 0x5

    aget-byte v11, v15, v11

    if-ne v11, v0, :cond_4

    aget-byte v11, v15, v10

    if-nez v11, :cond_4

    const/4 v10, 0x7

    aget-byte v10, v15, v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    const/16 v10, 0xe

    aget-byte v10, v15, v10

    const/4 v11, 0x0

    aget-byte v0, v4, v11

    if-ne v10, v0, :cond_4

    const/16 v0, 0xf

    aget-byte v0, v15, v0

    const/4 v10, 0x1

    aget-byte v11, v4, v10

    if-ne v0, v11, :cond_4

    const/16 v0, 0x10

    aget-byte v0, v15, v0

    const/4 v11, 0x2

    aget-byte v11, v4, v11

    if-ne v0, v11, :cond_4

    const/16 v0, 0x11

    aget-byte v0, v15, v0

    const/4 v11, 0x3

    aget-byte v11, v4, v11

    if-ne v0, v11, :cond_4

    .line 286
    const/4 v0, 0x6

    new-array v11, v0, [B

    .line 287
    .end local v5    # "peerMac":[B
    .local v11, "peerMac":[B
    const/4 v5, 0x0

    const/16 v10, 0x8

    invoke-static {v15, v10, v11, v5, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 288
    const-string v5, "arp_OPArpPeer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "got the new MAC: "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Landroid/net/arp/OPArpPeer;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v5, 0x0

    .line 290
    .local v5, "newArpReponse":Z
    invoke-virtual {v1, v11}, Landroid/net/arp/OPArpPeer;->isValidPeerMac([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    const-string v0, "arp_OPArpPeer"

    const-string/jumbo v10, "the mac is not validpeerMac"

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    nop

    .line 252
    move-object v5, v11

    const/16 v0, 0x5dc

    goto/16 :goto_4

    .line 294
    :cond_0
    iget-object v10, v1, Landroid/net/arp/OPArpPeer;->mDupTarget:Ljava/util/List;

    monitor-enter v10

    .line 295
    :try_start_2
    iget-object v0, v1, Landroid/net/arp/OPArpPeer;->mDupTarget:Ljava/util/List;

    invoke-virtual {v1, v0, v11}, Landroid/net/arp/OPArpPeer;->isDupTargetArp(Ljava/util/List;[B)I

    move-result v0

    if-gez v0, :cond_1

    .line 296
    const/4 v5, 0x1

    .line 297
    const-string v0, "arp_OPArpPeer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v18, v3

    :try_start_3
    const-string v3, "add entry:"

    .line 297
    .end local v3    # "buf":Ljava/nio/ByteBuffer;
    .local v18, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Landroid/net/arp/OPArpPeer;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, v1, Landroid/net/arp/OPArpPeer;->mDupTarget:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    const-string v0, "arp_OPArpPeer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current mDupTarget.size() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/net/arp/OPArpPeer;->mDupTarget:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 301
    .end local v18    # "buf":Ljava/nio/ByteBuffer;
    .restart local v3    # "buf":Ljava/nio/ByteBuffer;
    :cond_1
    move-object/from16 v18, v3

    .line 301
    .end local v3    # "buf":Ljava/nio/ByteBuffer;
    .restart local v18    # "buf":Ljava/nio/ByteBuffer;
    :goto_1
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 302
    if-eqz v5, :cond_2

    iget-object v0, v1, Landroid/net/arp/OPArpPeer;->mCallback:Landroid/net/arp/OPArpPeer$ArpPeerChangeCallback;

    if-eqz v0, :cond_2

    .line 303
    const-string v0, "arp_OPArpPeer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "new response received and the mDupTarget.size() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/net/arp/OPArpPeer;->mDupTarget:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, v1, Landroid/net/arp/OPArpPeer;->mCallback:Landroid/net/arp/OPArpPeer$ArpPeerChangeCallback;

    iget-object v2, v1, Landroid/net/arp/OPArpPeer;->mDupTarget:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/net/arp/OPArpPeer$ArpPeerChangeCallback;->onArpReponseChanged(I)V

    .line 307
    :cond_2
    iget-object v0, v1, Landroid/net/arp/OPArpPeer;->mDupTarget:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, v1, Landroid/net/arp/OPArpPeer;->mDupArpThreshhold:I

    if-ne v0, v2, :cond_3

    .line 308
    nop

    .line 313
    move-object v5, v11

    goto :goto_5

    .line 312
    .end local v5    # "newArpReponse":Z
    .end local v8    # "readLen":I
    .end local v12    # "duration":J
    .end local v14    # "t":Landroid/system/StructTimeval;
    .end local v15    # "recvBuf":[B
    :cond_3
    move-object v5, v11

    goto :goto_3

    .line 301
    .end local v18    # "buf":Ljava/nio/ByteBuffer;
    .restart local v3    # "buf":Ljava/nio/ByteBuffer;
    .restart local v5    # "newArpReponse":Z
    .restart local v8    # "readLen":I
    .restart local v12    # "duration":J
    .restart local v14    # "t":Landroid/system/StructTimeval;
    .restart local v15    # "recvBuf":[B
    :catchall_0
    move-exception v0

    move-object/from16 v18, v3

    .line 301
    .end local v3    # "buf":Ljava/nio/ByteBuffer;
    .restart local v18    # "buf":Ljava/nio/ByteBuffer;
    :goto_2
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 312
    .end local v8    # "readLen":I
    .end local v11    # "peerMac":[B
    .end local v12    # "duration":J
    .end local v14    # "t":Landroid/system/StructTimeval;
    .end local v15    # "recvBuf":[B
    .end local v18    # "buf":Ljava/nio/ByteBuffer;
    .restart local v3    # "buf":Ljava/nio/ByteBuffer;
    .local v5, "peerMac":[B
    :cond_4
    move-object/from16 v18, v3

    .line 252
    .end local v3    # "buf":Ljava/nio/ByteBuffer;
    .restart local v18    # "buf":Ljava/nio/ByteBuffer;
    :goto_3
    move-object/from16 v3, v18

    const/16 v0, 0x5dc

    move/from16 v2, p1

    .line 252
    .end local v18    # "buf":Ljava/nio/ByteBuffer;
    .restart local v3    # "buf":Ljava/nio/ByteBuffer;
    :goto_4
    const/4 v8, 0x1

    const/4 v10, 0x4

    const/4 v11, 0x0

    goto/16 :goto_0

    .line 262
    .restart local v8    # "readLen":I
    .restart local v12    # "duration":J
    .restart local v14    # "t":Landroid/system/StructTimeval;
    :catch_0
    move-exception v0

    move-object/from16 v18, v3

    .line 265
    .end local v3    # "buf":Ljava/nio/ByteBuffer;
    .local v0, "se":Ljava/lang/Exception;
    .restart local v18    # "buf":Ljava/nio/ByteBuffer;
    const-string v2, "arp_OPArpPeer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ARP read failure: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v2, 0x0

    return v2

    .line 313
    .end local v0    # "se":Ljava/lang/Exception;
    .end local v8    # "readLen":I
    .end local v12    # "duration":J
    .end local v14    # "t":Landroid/system/StructTimeval;
    .end local v18    # "buf":Ljava/nio/ByteBuffer;
    .restart local v3    # "buf":Ljava/nio/ByteBuffer;
    :cond_5
    move-object/from16 v18, v3

    .line 313
    .end local v3    # "buf":Ljava/nio/ByteBuffer;
    .restart local v18    # "buf":Ljava/nio/ByteBuffer;
    :goto_5
    iget-object v0, v1, Landroid/net/arp/OPArpPeer;->mDupTarget:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 245
    .end local v9    # "socketBuf":[B
    .end local v18    # "buf":Ljava/nio/ByteBuffer;
    .restart local v3    # "buf":Ljava/nio/ByteBuffer;
    :catch_1
    move-exception v0

    move-object/from16 v18, v3

    .line 248
    .end local v3    # "buf":Ljava/nio/ByteBuffer;
    .restart local v0    # "se":Ljava/lang/Exception;
    .restart local v18    # "buf":Ljava/nio/ByteBuffer;
    const-string v2, "arp_OPArpPeer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ARP send failure: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v2, 0x0

    return v2
.end method

.method private getIpv4InterfaceAddress()Ljava/net/Inet4Address;
    .locals 6

    .line 144
    :try_start_0
    iget-object v0, p0, Landroid/net/arp/OPArpPeer;->mIfaceName:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 145
    .local v0, "iface":Ljava/net/NetworkInterface;
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 146
    .local v1, "ipAddres":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 148
    .local v2, "inetAddress":Ljava/net/InetAddress;
    instance-of v3, v2, Ljava/net/Inet4Address;

    if-eqz v3, :cond_0

    .line 149
    const-string v3, "arp_OPArpPeer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Local Source address:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    move-object v3, v2

    check-cast v3, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 152
    .end local v2    # "inetAddress":Ljava/net/InetAddress;
    :cond_0
    goto :goto_0

    .line 155
    .end local v0    # "iface":Ljava/net/NetworkInterface;
    .end local v1    # "ipAddres":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    goto :goto_1

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/net/SocketException;
    const-string v1, "arp_OPArpPeer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t determine ifindex or MAC address for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/arp/OPArpPeer;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .end local v0    # "e":Ljava/net/SocketException;
    :goto_1
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    check-cast v0, Ljava/net/Inet4Address;

    return-object v0
.end method

.method private initInterface()Z
    .locals 4

    .line 114
    :try_start_0
    iget-object v0, p0, Landroid/net/arp/OPArpPeer;->mIfaceName:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    iput-object v0, p0, Landroid/net/arp/OPArpPeer;->mIface:Ljava/net/NetworkInterface;

    .line 115
    iget-object v0, p0, Landroid/net/arp/OPArpPeer;->mIface:Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/arp/OPArpPeer;->mHwAddr:[B

    .line 116
    const-string v0, "arp_OPArpPeer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mac addr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/arp/OPArpPeer;->mHwAddr:[B

    invoke-virtual {p0, v2}, Landroid/net/arp/OPArpPeer;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/arp/OPArpPeer;->mIface:Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v0, Landroid/system/PacketSocketAddress;

    iget-object v1, p0, Landroid/net/arp/OPArpPeer;->mIface:Ljava/net/NetworkInterface;

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v1

    sget-object v2, Landroid/net/arp/OPArpPeer;->L2_BROADCAST:[B

    invoke-direct {v0, v1, v2}, Landroid/system/PacketSocketAddress;-><init>(I[B)V

    iput-object v0, p0, Landroid/net/arp/OPArpPeer;->mInterfaceBroadcastAddr:Landroid/system/PacketSocketAddress;

    .line 119
    iget-object v0, p0, Landroid/net/arp/OPArpPeer;->mInterfaceBroadcastAddr:Landroid/system/PacketSocketAddress;

    const/16 v1, 0x806

    iput-short v1, v0, Landroid/system/PacketSocketAddress;->sll_protocol:S

    .line 120
    const-string v0, "arp_OPArpPeer"

    const-string v1, " initInterface OK"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    nop

    .line 125
    const/4 v0, 0x1

    return v0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/net/SocketException;
    const-string v1, "arp_OPArpPeer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t determine ifindex or MAC address for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/arp/OPArpPeer;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v1, 0x0

    return v1
.end method

.method private initSocket()Z
    .locals 3

    .line 130
    :try_start_0
    sget v0, Landroid/system/OsConstants;->AF_PACKET:I

    sget v1, Landroid/system/OsConstants;->SOCK_RAW:I

    sget v2, Landroid/system/OsConstants;->ETH_P_ARP:I

    invoke-static {v0, v1, v2}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/net/arp/OPArpPeer;->mSocket:Ljava/io/FileDescriptor;

    .line 131
    new-instance v0, Landroid/system/PacketSocketAddress;

    sget v1, Landroid/system/OsConstants;->ETH_P_ARP:I

    int-to-short v1, v1

    iget-object v2, p0, Landroid/net/arp/OPArpPeer;->mIface:Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/system/PacketSocketAddress;-><init>(SI)V

    .line 132
    .local v0, "addr":Landroid/system/PacketSocketAddress;
    iget-object v1, p0, Landroid/net/arp/OPArpPeer;->mSocket:Ljava/io/FileDescriptor;

    invoke-static {v1, v0}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 133
    const-string v1, "arp_OPArpPeer"

    const-string v2, " initsocket OK"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v0    # "addr":Landroid/system/PacketSocketAddress;
    nop

    .line 138
    const/4 v0, 0x1

    return v0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "arp_OPArpPeer"

    const-string v2, "Error creating packet socket"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    const/4 v1, 0x0

    return v1
.end method

.method private isEqualArray([B[B)Z
    .locals 5
    .param p1, "sourceArray"    # [B
    .param p2, "targetArray"    # [B

    .line 333
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 334
    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 335
    aget-byte v3, p1, v2

    aget-byte v4, p2, v2

    if-eq v3, v4, :cond_0

    .line 336
    return v1

    .line 334
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 339
    .end local v2    # "i":I
    :cond_1
    return v0

    .line 341
    :cond_2
    if-ne p1, p2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0
.end method

.method protected static macAddressToByteArray(Ljava/lang/String;)[B
    .locals 4
    .param p0, "macStr"    # Ljava/lang/String;

    .line 202
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "any"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    const-string v0, ":"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "cleanMac":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 207
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Llibcore/util/HexEncoding;->decode([CZ)[B

    move-result-object v1

    return-object v1

    .line 205
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid mac string length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    .end local v0    # "cleanMac":Ljava/lang/String;
    :cond_2
    :goto_0
    sget-object v0, Landroid/net/arp/OPArpPeer;->ANY_MAC_BYTES:[B

    return-object v0
.end method


# virtual methods
.method protected byteArrayToHex([B)Ljava/lang/String;
    .locals 6
    .param p1, "a"    # [B

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 349
    array-length v3, p1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    .line 350
    const-string v3, "%02x:"

    new-array v4, v4, [Ljava/lang/Object;

    aget-byte v5, p1, v2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 352
    :cond_0
    const-string v3, "%02x"

    new-array v4, v4, [Ljava/lang/Object;

    aget-byte v5, p1, v2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 355
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public close()V
    .locals 2

    .line 397
    iget-object v0, p0, Landroid/net/arp/OPArpPeer;->mSocket:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Landroid/net/arp/OPArpPeer;->mSocket:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/net/arp/OPArpPeer;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 399
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/arp/OPArpPeer;->mSocket:Ljava/io/FileDescriptor;

    .line 402
    :cond_0
    iget-object v0, p0, Landroid/net/arp/OPArpPeer;->mDupTarget:Ljava/util/List;

    monitor-enter v0

    .line 403
    :try_start_0
    iget-object v1, p0, Landroid/net/arp/OPArpPeer;->mDupTarget:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 404
    monitor-exit v0

    .line 405
    return-void

    .line 404
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public doDupArp(Ljava/lang/String;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "myAddress"    # Ljava/net/Inet4Address;
    .param p3, "target"    # Ljava/net/Inet4Address;

    .line 167
    iput-object p1, p0, Landroid/net/arp/OPArpPeer;->mIfaceName:Ljava/lang/String;

    .line 168
    if-nez p2, :cond_0

    .line 169
    invoke-direct {p0}, Landroid/net/arp/OPArpPeer;->getIpv4InterfaceAddress()Ljava/net/Inet4Address;

    move-result-object p2

    .line 172
    :cond_0
    iput-object p2, p0, Landroid/net/arp/OPArpPeer;->mMyAddr:Ljava/net/Inet4Address;

    .line 173
    iput-object p3, p0, Landroid/net/arp/OPArpPeer;->mTarget:Ljava/net/Inet4Address;

    .line 175
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/net/arp/OPArpPeer;->initInterface()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/net/arp/OPArpPeer;->initSocket()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    goto :goto_0

    .line 180
    :cond_1
    nop

    .line 182
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/net/arp/OPArpPeer$ProbeTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/net/arp/OPArpPeer$ProbeTask;-><init>(Landroid/net/arp/OPArpPeer;Landroid/net/arp/OPArpPeer$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 183
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 184
    const/4 v1, 0x1

    return v1

    .line 176
    .end local v0    # "thread":Ljava/lang/Thread;
    :cond_2
    :goto_0
    return v0

    .line 177
    :catch_0
    move-exception v1

    .line 178
    .local v1, "exception":Ljava/lang/Exception;
    const-string v2, "arp_OPArpPeer"

    const-string v3, "doDupArp "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    return v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 417
    :try_start_0
    iget-object v0, p0, Landroid/net/arp/OPArpPeer;->mSocket:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    .line 418
    const-string v0, "arp_OPArpPeer"

    const-string v1, " OPArpPeer was finalized without closing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-virtual {p0}, Landroid/net/arp/OPArpPeer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 423
    nop

    .line 424
    return-void

    .line 422
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method protected isDupTargetArp(Ljava/util/List;[B)I
    .locals 5
    .param p2, "peerMacAddr"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;[B)I"
        }
    .end annotation

    .line 318
    .local p1, "gatewayList":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v0, 0x0

    .line 320
    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 323
    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 324
    const-string v1, "arp_OPArpPeer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " i ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", gatewaylist ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {p0, v4}, Landroid/net/arp/OPArpPeer;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",peermac ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Landroid/net/arp/OPArpPeer;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {p0, v1, p2}, Landroid/net/arp/OPArpPeer;->isEqualArray([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 326
    return v0

    .line 323
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    :cond_2
    return v2

    .line 321
    :cond_3
    :goto_1
    return v2
.end method

.method protected isOriginalNetworkConnected()Z
    .locals 3

    .line 188
    iget-object v0, p0, Landroid/net/arp/OPArpPeer;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 189
    .local v0, "cm":Landroid/net/ConnectivityManager;
    iget-object v1, p0, Landroid/net/arp/OPArpPeer;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 190
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    return v2

    .line 193
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method protected isValidPeerMac([B)Z
    .locals 4
    .param p1, "mac"    # [B

    .line 361
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 362
    return v0

    .line 364
    :cond_0
    array-length v1, p1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_4

    .line 365
    invoke-direct {p0, p1, v0}, Landroid/net/arp/OPArpPeer;->byteCheck([BI)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0xff

    invoke-direct {p0, p1, v1}, Landroid/net/arp/OPArpPeer;->byteCheck([BI)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 371
    :cond_1
    aget-byte v1, p1, v0

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 372
    const-string v1, "arp_OPArpPeer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isValidPeerMac false : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Landroid/net/arp/OPArpPeer;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return v0

    .line 376
    :cond_2
    iget-object v1, p0, Landroid/net/arp/OPArpPeer;->mHwAddr:[B

    invoke-direct {p0, p1, v1}, Landroid/net/arp/OPArpPeer;->isEqualArray([B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 377
    return v0

    .line 380
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 366
    :cond_4
    :goto_0
    const-string v1, "arp_OPArpPeer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isValidPeerMac false : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Landroid/net/arp/OPArpPeer;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return v0
.end method

.method protected onProbeFinished()V
    .locals 0

    .line 109
    return-void
.end method
