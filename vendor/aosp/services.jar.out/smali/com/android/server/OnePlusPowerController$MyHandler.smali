.class Lcom/android/server/OnePlusPowerController$MyHandler;
.super Landroid/os/Handler;
.source "OnePlusPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/OnePlusPowerController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1548
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    .line 1549
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1550
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 1554
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OnePlusPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x15be

    const/4 v2, 0x0

    if-eq v0, v1, :cond_16

    const/16 v1, 0x1e6c

    if-eq v0, v1, :cond_15

    const/4 v1, 0x2

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    .line 1719
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$4200(Lcom/android/server/OnePlusPowerController;)Landroid/app/Notification;

    move-result-object v0

    .line 1720
    .local v0, "notification":Landroid/app/Notification;
    if-eqz v0, :cond_17

    .line 1721
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$4300(Lcom/android/server/OnePlusPowerController;)Landroid/app/NotificationManager;

    move-result-object v1

    const-string/jumbo v2, "powercontrol"

    const v3, 0x528877

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_5

    .line 1705
    .end local v0    # "notification":Landroid/app/Notification;
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$4000(Lcom/android/server/OnePlusPowerController;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$3900(Lcom/android/server/OnePlusPowerController;)Landroid/app/AlarmManager$OnAlarmListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1706
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$1600(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController$IdleStats;->getNextSleepStart()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1707
    .local v0, "sleepStart":Ljava/time/LocalDateTime;
    if-eqz v0, :cond_1

    .line 1708
    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->minusMinutes(J)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 1709
    .local v1, "restrictionStart":Ljava/time/LocalDateTime;
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$4000(Lcom/android/server/OnePlusPowerController;)Landroid/app/AlarmManager;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    .line 1710
    invoke-static {v2, v1}, Lcom/android/server/OnePlusPowerController;->access$4100(Lcom/android/server/OnePlusPowerController;Ljava/time/LocalDateTime;)J

    move-result-wide v5

    const-string v7, "PowerController.EarlyRestriction"

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    .line 1712
    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$3900(Lcom/android/server/OnePlusPowerController;)Landroid/app/AlarmManager$OnAlarmListener;

    move-result-object v8

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$800(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;

    move-result-object v9

    .line 1709
    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1713
    .end local v1    # "restrictionStart":Ljava/time/LocalDateTime;
    goto/16 :goto_5

    .line 1714
    :cond_1
    const-string v1, "OnePlusPowerController"

    const-string v2, "No sleep start time, so pass the early restriction!"

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    goto/16 :goto_5

    .line 1616
    .end local v0    # "sleepStart":Ljava/time/LocalDateTime;
    :pswitch_2
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$3200(Lcom/android/server/OnePlusPowerController;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "PowerControl"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1617
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OnePlusPowerController;->access$3100(Lcom/android/server/OnePlusPowerController;Lorg/json/JSONArray;)V

    .line 1618
    goto/16 :goto_5

    .line 1684
    .end local v0    # "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$1700(Lcom/android/server/OnePlusPowerController;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_5

    .line 1685
    :cond_2
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$3800()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1686
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$1600(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$IdleStats;->mFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 1687
    :try_start_0
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$1600(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/OnePlusPowerController$IdleStats;->restoreIdleItemsLocked()V

    .line 1688
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1689
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$000(Lcom/android/server/OnePlusPowerController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1690
    :try_start_1
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/OnePlusPowerController;->getSleepState(Ljava/time/LocalDateTime;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$502(I)I

    .line 1691
    new-array v0, v3, [I

    const/16 v3, 0x50

    aput v3, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1692
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController;->scheduleNextAlarmIfNeededLocked()V

    .line 1694
    :cond_3
    monitor-exit v1

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1688
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 1620
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$1700(Lcom/android/server/OnePlusPowerController;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_5

    .line 1621
    :cond_4
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$1600(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController$IdleStats;->getSize()I

    move-result v0

    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$2600()I

    move-result v1

    if-lt v0, v1, :cond_c

    .line 1622
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$3400(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1623
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$3400(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;

    move-result-object v4

    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$1600(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController$IdleStats;->getDataSet()[[D

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$1600(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController$IdleStats;->getSize()I

    move-result v6

    const/4 v7, 0x2

    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$2400()I

    move-result v8

    const/16 v9, 0x64

    invoke-static/range {v4 .. v9}, Lcom/android/server/OnePlusPowerController$KMeans;->access$3500(Lcom/android/server/OnePlusPowerController$KMeans;[[DIIII)V

    .line 1626
    const/4 v0, 0x0

    .line 1627
    .local v0, "size":I
    move v1, v0

    move v0, v2

    .line 1627
    .local v0, "i":I
    .local v1, "size":I
    :goto_0
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$2400()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 1628
    iget-object v4, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v4}, Lcom/android/server/OnePlusPowerController;->access$3400(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/OnePlusPowerController$KMeans;->getClusterSize(I)I

    move-result v4

    if-le v4, v1, :cond_5

    .line 1629
    iget-object v4, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v4}, Lcom/android/server/OnePlusPowerController;->access$3400(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/OnePlusPowerController$KMeans;->getClusterSize(I)I

    move-result v1

    .line 1627
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1635
    .end local v0    # "i":I
    :cond_6
    const/4 v0, 0x0

    .line 1636
    .local v0, "label":I
    const-wide/16 v4, 0x0

    .line 1637
    .local v4, "length":J
    move-wide v5, v4

    move v4, v0

    move v0, v2

    .line 1637
    .local v0, "j":I
    .local v4, "label":I
    .local v5, "length":J
    :goto_1
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$2400()I

    move-result v7

    if-ge v0, v7, :cond_8

    .line 1638
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v7}, Lcom/android/server/OnePlusPowerController;->access$3400(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/server/OnePlusPowerController$KMeans;->getClusterSize(I)I

    move-result v7

    if-ne v7, v1, :cond_7

    .line 1639
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v7}, Lcom/android/server/OnePlusPowerController;->access$3400(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/server/OnePlusPowerController$KMeans;->getClusterCenterY(I)J

    move-result-wide v7

    cmp-long v7, v7, v5

    if-lez v7, :cond_7

    .line 1640
    move v4, v0

    .line 1641
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v7}, Lcom/android/server/OnePlusPowerController;->access$3400(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/server/OnePlusPowerController$KMeans;->getClusterCenterY(I)J

    move-result-wide v5

    .line 1637
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1647
    .end local v0    # "j":I
    :cond_8
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$3400(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Lcom/android/server/OnePlusPowerController$KMeans;->getClusterCoefVar(II)D

    move-result-wide v7

    .line 1648
    .local v7, "coefVarStart":D
    const-string v0, "OnePlusPowerController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "coefVarStart="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "%.3f"

    new-array v11, v3, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v11, v2

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", threshold="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "%.3f"

    new-array v3, v3, [Ljava/lang/Object;

    .line 1649
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$3600()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v3, v2

    invoke-static {v10, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1648
    invoke-static {v0, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$3600()D

    move-result-wide v9

    cmpl-double v0, v7, v9

    if-lez v0, :cond_9

    .line 1651
    const-string v0, "OnePlusPowerController"

    const-string v2, "The variation of start time is too large, so discard that result of computation."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    goto/16 :goto_5

    .line 1656
    :cond_9
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$1600(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1657
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$3400(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/OnePlusPowerController$KMeans;->getClusterCenterX(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v0

    .line 1658
    .local v0, "start":Ljava/time/LocalTime;
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v3}, Lcom/android/server/OnePlusPowerController;->access$3400(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/OnePlusPowerController$KMeans;->getClusterCenterY(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v3

    .line 1659
    .local v3, "duration":Ljava/time/Duration;
    iget-object v9, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v9}, Lcom/android/server/OnePlusPowerController;->access$1600(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/android/server/OnePlusPowerController$IdleStats;->setDeepSleepStart(Ljava/time/LocalTime;)V

    .line 1660
    iget-object v9, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v9}, Lcom/android/server/OnePlusPowerController;->access$1600(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/android/server/OnePlusPowerController$IdleStats;->setDeepSleepDuration(Ljava/time/Duration;)V

    .line 1663
    .end local v0    # "start":Ljava/time/LocalTime;
    .end local v3    # "duration":Ljava/time/Duration;
    :cond_a
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController;->scheduleNextAlarmIfNeededLocked()V

    .line 1665
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$3700()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1666
    nop

    .line 1666
    .local v2, "i":I
    :goto_2
    move v0, v2

    .line 1666
    .end local v2    # "i":I
    .local v0, "i":I
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$2400()I

    move-result v2

    if-ge v0, v2, :cond_b

    .line 1667
    const-string v2, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Size of Cluster "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v9}, Lcom/android/server/OnePlusPowerController;->access$3400(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/android/server/OnePlusPowerController$KMeans;->getClusterSize(I)I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    const-string v2, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Center of Cluster "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v9}, Lcom/android/server/OnePlusPowerController;->access$3400(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/android/server/OnePlusPowerController$KMeans;->getClusterCenterX(I)J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    .line 1669
    invoke-static {v9}, Lcom/android/server/OnePlusPowerController;->access$3400(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/android/server/OnePlusPowerController$KMeans;->getClusterCenterY(I)J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1668
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    add-int/lit8 v2, v0, 0x1

    .line 1666
    .end local v0    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 1671
    .end local v2    # "i":I
    :cond_b
    const-string v0, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> Choose Cluster "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    .end local v1    # "size":I
    .end local v4    # "label":I
    .end local v5    # "length":J
    .end local v7    # "coefVarStart":D
    :cond_c
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$1700(Lcom/android/server/OnePlusPowerController;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_5

    .line 1677
    :cond_d
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$3800()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1678
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$1600(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$IdleStats;->mFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 1679
    :try_start_3
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$1600(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/OnePlusPowerController$IdleStats;->recordIdleItemLocked()V

    .line 1680
    monitor-exit v0

    goto/16 :goto_5

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    .line 1601
    :pswitch_6
    :try_start_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    .line 1602
    .local v0, "json":Lorg/json/JSONObject;
    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1603
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v2, "tag"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1604
    .local v2, "tag":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1400()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1605
    const-string v3, "OnePlusPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_ADD_EXCLUSIVE_WAKELOCK: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lorg/json/JSONObject;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    const-string v3, "OnePlusPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_ADD_EXCLUSIVE_WAKELOCK: packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", tag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    :cond_e
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v3}, Lcom/android/server/OnePlusPowerController;->access$2200(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManagerInternal;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/os/PowerManagerInternal;->addExclusiveWakeLock(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1613
    .end local v0    # "json":Lorg/json/JSONObject;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "tag":Ljava/lang/String;
    goto/16 :goto_5

    .line 1611
    :catch_0
    move-exception v0

    .line 1612
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_ADD_EXCLUSIVE_WAKELOCK error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_5

    .line 1586
    :pswitch_7
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isChinaRegionInternal() = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v4}, Lcom/android/server/OnePlusPowerController;->isChinaRegionInternal()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isIndiaRegionInternal() = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    .line 1587
    invoke-virtual {v4}, Lcom/android/server/OnePlusPowerController;->isIndiaRegionInternal()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1586
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    :cond_f
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController;->isChinaRegionInternal()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController;->isIndiaRegionInternal()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1590
    :cond_10
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$1200(Lcom/android/server/OnePlusPowerController;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "doze_mode_policy"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1592
    const-string v0, "OnePlusPowerController"

    const-string/jumbo v2, "put 1 to Settings.System.DOZE_MODE_POLICY"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$1200(Lcom/android/server/OnePlusPowerController;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "optimal_power_save_mode_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1595
    const-string v0, "OnePlusPowerController"

    const-string/jumbo v1, "put 2 to Settings.System.OPTIMAL_POWER_SAVE_MODE_ENABLED"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1557
    :pswitch_8
    const-string/jumbo v0, "persist.sys.device_first_boot"

    .line 1558
    .local v0, "key":Ljava/lang/String;
    const-string v4, "1"

    const-string/jumbo v5, "persist.sys.device_first_boot"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1560
    .local v4, "isFirstBoot":Z
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v5}, Lcom/android/server/OnePlusPowerController;->access$3200(Lcom/android/server/OnePlusPowerController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "doze_mode_policy"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_11

    move v5, v3

    goto :goto_3

    :cond_11
    move v5, v2

    :goto_3
    invoke-static {v5}, Lcom/android/server/OnePlusPowerController;->access$1102(Z)Z

    .line 1561
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    iget-object v6, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v6}, Lcom/android/server/OnePlusPowerController;->access$3200(Lcom/android/server/OnePlusPowerController;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "optimal_power_save_mode_enabled"

    const/4 v8, -0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/server/OnePlusPowerController;->access$602(Lcom/android/server/OnePlusPowerController;I)I

    .line 1563
    if-eqz v4, :cond_13

    .line 1564
    new-array v5, v3, [I

    aput v2, v5, v2

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1565
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$1200(Lcom/android/server/OnePlusPowerController;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "doze_mode_policy"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1567
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$3200(Lcom/android/server/OnePlusPowerController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "optimal_power_save_mode_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    .line 1570
    :cond_12
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$1200(Lcom/android/server/OnePlusPowerController;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "doze_mode_policy"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1572
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$3200(Lcom/android/server/OnePlusPowerController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "optimal_power_save_mode_enabled"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1577
    :cond_13
    :goto_4
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1400()Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INITIALIZE_STATE: mAggressive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1100()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mOPSMEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    iget-object v5, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    .line 1578
    invoke-static {v5}, Lcom/android/server/OnePlusPowerController;->access$600(Lcom/android/server/OnePlusPowerController;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/OnePlusPowerController;->convertOPSMEnabledToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mUserSleep = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    .line 1579
    invoke-static {v3}, Lcom/android/server/OnePlusPowerController;->access$1700(Lcom/android/server/OnePlusPowerController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1577
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    :cond_14
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$3300(Lcom/android/server/OnePlusPowerController;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    .line 1582
    .local v1, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1400()Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "subInfoList: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1701
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v4    # "isFirstBoot":Z
    :cond_15
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$4000(Lcom/android/server/OnePlusPowerController;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$3900(Lcom/android/server/OnePlusPowerController;)Landroid/app/AlarmManager$OnAlarmListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1702
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController;->leaveOPSM()V

    .line 1703
    goto :goto_5

    .line 1698
    :cond_16
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v0, v2}, Lcom/android/server/OnePlusPowerController;->enterOPSMIfAppropriated(Z)V

    .line 1699
    nop

    .line 1728
    :cond_17
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
