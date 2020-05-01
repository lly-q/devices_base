.class Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;
.super Ljava/lang/Object;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcKeepaliveTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker$KeepaliveRecord;
    }
.end annotation


# instance fields
.field private final mKeepalives:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker$KeepaliveRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;)V
    .locals 0

    .line 2361
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->this$1:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2372
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->mKeepalives:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;Lcom/android/internal/telephony/dataconnection/DataConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DataConnection$1;

    .line 2361
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;)V

    return-void
.end method


# virtual methods
.method getHandleForSlot(I)I
    .locals 3
    .param p1, "slotId"    # I

    .line 2375
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->mKeepalives:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2376
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->mKeepalives:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker$KeepaliveRecord;

    .line 2377
    .local v1, "kr":Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker$KeepaliveRecord;
    iget v2, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker$KeepaliveRecord;->slotId:I

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->mKeepalives:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    return v2

    .line 2375
    .end local v1    # "kr":Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker$KeepaliveRecord;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2379
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method handleKeepaliveStarted(ILcom/android/internal/telephony/dataconnection/KeepaliveStatus;)V
    .locals 4
    .param p1, "slot"    # I
    .param p2, "ks"    # Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;

    .line 2396
    iget v0, p2, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->statusCode:I

    packed-switch v0, :pswitch_data_0

    .line 2413
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->this$1:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid KeepaliveStatus Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->statusCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2398
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->this$1:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    iget v1, p2, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->errorCode:I

    .line 2399
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->keepaliveStatusErrorToPacketKeepaliveError(I)I

    move-result v1

    .line 2398
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->onPacketKeepaliveEvent(II)V

    .line 2400
    goto :goto_0

    .line 2402
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->this$1:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->onPacketKeepaliveEvent(II)V

    .line 2406
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->this$1:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding keepalive handle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->sessionHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->access$5200(Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;Ljava/lang/String;)V

    .line 2408
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->mKeepalives:Landroid/util/SparseArray;

    iget v1, p2, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->sessionHandle:I

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker$KeepaliveRecord;

    iget v3, p2, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->statusCode:I

    invoke-direct {v2, p0, p1, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker$KeepaliveRecord;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2411
    nop

    .line 2416
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method handleKeepaliveStatus(Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;)V
    .locals 5
    .param p1, "ks"    # Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;

    .line 2420
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->mKeepalives:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->sessionHandle:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker$KeepaliveRecord;

    .line 2422
    .local v0, "kr":Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker$KeepaliveRecord;
    if-nez v0, :cond_0

    .line 2426
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->this$1:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Discarding keepalive event for different data connection:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->access$5300(Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;Ljava/lang/String;)V

    .line 2427
    return-void

    .line 2430
    :cond_0
    iget v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker$KeepaliveRecord;->currentStatus:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 2475
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->this$1:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Keepalive Status received, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker$KeepaliveRecord;->currentStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2437
    :pswitch_0
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->statusCode:I

    packed-switch v1, :pswitch_data_1

    .line 2454
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->this$1:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Keepalive Status received, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->statusCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    .line 2456
    goto/16 :goto_0

    .line 2451
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->this$1:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v2, "Invalid unsolicied Keepalive Pending Status!"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    .line 2452
    goto/16 :goto_0

    .line 2439
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->this$1:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker$KeepaliveRecord;->slotId:I

    iget v4, p1, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->errorCode:I

    .line 2440
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->keepaliveStatusErrorToPacketKeepaliveError(I)I

    move-result v4

    .line 2439
    invoke-virtual {v1, v3, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->onPacketKeepaliveEvent(II)V

    .line 2441
    iput v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker$KeepaliveRecord;->currentStatus:I

    .line 2442
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->mKeepalives:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->sessionHandle:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 2443
    goto :goto_0

    .line 2445
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->this$1:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    const-string v2, "Pending Keepalive received active status!"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->access$5400(Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;Ljava/lang/String;)V

    .line 2446
    iput v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker$KeepaliveRecord;->currentStatus:I

    .line 2447
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->this$1:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    iget v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker$KeepaliveRecord;->slotId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->onPacketKeepaliveEvent(II)V

    .line 2449
    goto :goto_0

    .line 2432
    :pswitch_4
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->this$1:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v2, "Inactive Keepalive received status!"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    .line 2433
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->this$1:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    iget v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker$KeepaliveRecord;->slotId:I

    const/16 v3, -0x1f

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->onPacketKeepaliveEvent(II)V

    .line 2435
    goto :goto_0

    .line 2458
    :pswitch_5
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->statusCode:I

    packed-switch v1, :pswitch_data_2

    .line 2471
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->this$1:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Keepalive Status received, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->statusCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    .line 2473
    goto :goto_0

    .line 2460
    :pswitch_6
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->this$1:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v4, "Keepalive received stopped status!"

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    .line 2461
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->this$1:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    iget v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker$KeepaliveRecord;->slotId:I

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->onPacketKeepaliveEvent(II)V

    .line 2463
    iput v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker$KeepaliveRecord;->currentStatus:I

    .line 2464
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->mKeepalives:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;->sessionHandle:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 2465
    goto :goto_0

    .line 2468
    :pswitch_7
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;->this$1:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v2, "Active Keepalive received invalid status!"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    .line 2469
    nop

    .line 2477
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method keepaliveStatusErrorToPacketKeepaliveError(I)I
    .locals 1
    .param p1, "error"    # I

    .line 2383
    packed-switch p1, :pswitch_data_0

    .line 2391
    const/16 v0, -0x1f

    return v0

    .line 2387
    :pswitch_0
    const/16 v0, -0x1e

    return v0

    .line 2385
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
