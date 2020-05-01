.class public Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;
.super Ljava/lang/Object;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TxRxSum"
.end annotation


# instance fields
.field public rxPkts:J

.field public txPkts:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->reset()V

    .line 394
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0
    .param p1, "txPkts"    # J
    .param p3, "rxPkts"    # J

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput-wide p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    .line 398
    iput-wide p3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    .line 399
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;)V
    .locals 2
    .param p1, "sum"    # Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    iget-wide v0, p1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    .line 403
    iget-wide v0, p1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    .line 404
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .line 407
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    .line 408
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    .line 409
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{txSum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " rxSum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDataActivityTxRxSum()V
    .locals 2

    .line 422
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    .line 423
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    .line 424
    return-void
.end method

.method public updateDataStallTxRxSum()V
    .locals 2

    .line 417
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTcpTxPackets()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    .line 418
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTcpRxPackets()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    .line 419
    return-void
.end method
