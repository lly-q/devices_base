.class Lcom/android/server/am/OnePlusBGController$1;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusBGController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusBGController;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusBGController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusBGController;

    .line 358
    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$1;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 360
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const v3, -0x13fe5cd1

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "com.test.bgc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    goto/16 :goto_5

    .line 365
    :cond_2
    const-string v0, "code"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "code":Ljava/lang/String;
    const-string/jumbo v1, "shot_dump"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 367
    const-string v1, "BGC"

    const-string v2, "==shot_dump=="

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$1;->this$0:Lcom/android/server/am/OnePlusBGController;

    sget-object v2, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;->ONESHOT:Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusBGController;->dumpSnapShotData(Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;)V

    goto/16 :goto_5

    .line 369
    :cond_3
    const-string v1, "e_d"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 370
    const-string v1, "BGC"

    const-string v2, "==e_d=="

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const-string v1, "enable DEBUG_ONEPLUS"

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 372
    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->access$302(Z)Z

    goto/16 :goto_5

    .line 373
    :cond_4
    const-string v1, "d_d"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 374
    const-string v1, "BGC"

    const-string v3, "==d_d=="

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const-string v1, "disable DEBUG_ONEPLUS"

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 376
    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->access$302(Z)Z

    goto/16 :goto_5

    .line 377
    :cond_5
    const-string v1, "e_bgc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 378
    const-string v1, "BGC"

    const-string v2, "==e_bgc=="

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const-string v1, "enable DEBUG_BGC"

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 380
    sput-boolean v3, Lcom/android/server/am/OnePlusBGController;->DEBUG_BGC:Z

    goto/16 :goto_5

    .line 381
    :cond_6
    const-string v1, "d_bgc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 382
    const-string v1, "BGC"

    const-string v3, "==d_bgc=="

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string v1, "disable DEBUG_BGC"

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 384
    sput-boolean v2, Lcom/android/server/am/OnePlusBGController;->DEBUG_BGC:Z

    goto/16 :goto_5

    .line 385
    :cond_7
    const-string v1, "bg_dump"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 386
    const-string v1, "BGC"

    const-string v4, "==bg_dump=="

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const-string v1, "BGC"

    const-string v4, "Dump of all UID state stats:"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    nop

    .line 388
    .local v2, "i":I
    :goto_2
    move v1, v2

    .line 388
    .end local v2    # "i":I
    .local v1, "i":I
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$1;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->access$400(Lcom/android/server/am/OnePlusBGController;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_13

    .line 389
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$1;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->access$400(Lcom/android/server/am/OnePlusBGController;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBGController$UidStat;

    .line 390
    .local v2, "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$UidStat;->getState()I

    move-result v4

    invoke-virtual {v2, v4, v3}, Lcom/android/server/am/OnePlusBGController$UidStat;->update(IZ)V

    .line 391
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$UidStat;->dump()V

    .line 388
    .end local v2    # "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    add-int/lit8 v2, v1, 0x1

    .line 388
    .end local v1    # "i":I
    .local v2, "i":I
    goto :goto_2

    .line 393
    .end local v2    # "i":I
    :cond_8
    const-string/jumbo v1, "sipper_dump"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 394
    const-string v1, "BGC"

    const-string v2, "==sipper_dump=="

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const-string v1, "BGC"

    const-string v2, "Dump of all UID sipper stats:"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$1;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->access$500(Lcom/android/server/am/OnePlusBGController;)V

    goto/16 :goto_5

    .line 397
    :cond_9
    const-string/jumbo v1, "sipperlist_dump"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 398
    const-string v1, "BGC"

    const-string v2, "==sipperlist_dump=="

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const-string v1, "BGC"

    const-string v2, "Dump of all UID sipper list stats:"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$1;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->access$600(Lcom/android/server/am/OnePlusBGController;)V

    goto/16 :goto_5

    .line 401
    :cond_a
    const-string/jumbo v1, "sipper"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 402
    const-string v1, "BGC"

    const-string v2, "==sipper=="

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const-string/jumbo v1, "uid"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 404
    .local v1, "str_uid":Ljava/lang/String;
    if-eqz v1, :cond_c

    .line 405
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 406
    .local v2, "uid":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dump of UID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sipper stats:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 407
    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$1;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->access$700(Lcom/android/server/am/OnePlusBGController;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    .line 408
    .local v3, "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    if-eqz v3, :cond_b

    .line 409
    invoke-virtual {v3}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 410
    invoke-virtual {v3}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->dumpRecords()V

    .line 413
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dump of UID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " uidstats:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 414
    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController$1;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v4}, Lcom/android/server/am/OnePlusBGController;->access$400(Lcom/android/server/am/OnePlusBGController;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusBGController$UidStat;

    .line 415
    .local v4, "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    if-eqz v4, :cond_c

    .line 416
    invoke-virtual {v4}, Lcom/android/server/am/OnePlusBGController$UidStat;->dump()V

    .line 419
    .end local v1    # "str_uid":Ljava/lang/String;
    .end local v2    # "uid":I
    .end local v3    # "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    .end local v4    # "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    :cond_c
    goto/16 :goto_5

    :cond_d
    const-string v1, "budget_reset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 420
    const-string v1, "BGC"

    const-string v2, "==budget_reset=="

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$1;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->access$800(Lcom/android/server/am/OnePlusBGController;)V

    goto/16 :goto_5

    .line 422
    :cond_e
    const-string/jumbo v1, "sensor_dump"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 423
    const-string v1, "BGC"

    const-string v3, "==sensor_dump=="

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const-string/jumbo v1, "uid"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 425
    .restart local v1    # "str_uid":Ljava/lang/String;
    const-string/jumbo v3, "sid"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 426
    .local v3, "str_sensorid":Ljava/lang/String;
    if-eqz v1, :cond_10

    if-eqz v3, :cond_10

    .line 427
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 428
    .local v4, "uid":I
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 429
    .local v5, "sid":I
    const/4 v6, 0x0

    .line 430
    .local v6, "isRunning":Z
    iget-object v7, p0, Lcom/android/server/am/OnePlusBGController$1;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v7}, Lcom/android/server/am/OnePlusBGController;->access$900(Lcom/android/server/am/OnePlusBGController;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v7

    .line 431
    .local v7, "stats":Lcom/android/internal/os/BatteryStatsImpl;
    monitor-enter v7

    .line 432
    :try_start_0
    invoke-virtual {v7, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v8

    invoke-virtual {v8, v5, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-result-object v2

    .line 433
    .local v2, "stepSensorTimer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v2, :cond_f

    .line 434
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v8

    move v6, v8

    goto :goto_3

    .line 436
    :cond_f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "StopwatchTimer of sensor:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " is null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 438
    .end local v2    # "stepSensorTimer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :goto_3
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dump of UID:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " is using sensor:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 440
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$1;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2, v5}, Lcom/android/server/am/OnePlusBGController;->access$1000(Lcom/android/server/am/OnePlusBGController;I)V

    .line 440
    .end local v1    # "str_uid":Ljava/lang/String;
    .end local v3    # "str_sensorid":Ljava/lang/String;
    .end local v4    # "uid":I
    .end local v5    # "sid":I
    .end local v6    # "isRunning":Z
    .end local v7    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    goto :goto_4

    .line 438
    .restart local v1    # "str_uid":Ljava/lang/String;
    .restart local v3    # "str_sensorid":Ljava/lang/String;
    .restart local v4    # "uid":I
    .restart local v5    # "sid":I
    .restart local v6    # "isRunning":Z
    .restart local v7    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 442
    .end local v1    # "str_uid":Ljava/lang/String;
    .end local v3    # "str_sensorid":Ljava/lang/String;
    .end local v4    # "uid":I
    .end local v5    # "sid":I
    .end local v6    # "isRunning":Z
    .end local v7    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    :cond_10
    :goto_4
    goto :goto_5

    :cond_11
    const-string/jumbo v1, "sensor_dump2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 443
    const-string v1, "BGC"

    const-string v2, "==sensor_dump2=="

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$1;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->access$1100(Lcom/android/server/am/OnePlusBGController;)V

    goto :goto_5

    .line 445
    :cond_12
    const-string/jumbo v1, "t_dump"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 446
    const-string v1, "BGC"

    const-string v2, "==t_dump=="

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$1;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->access$1200(Lcom/android/server/am/OnePlusBGController;)V

    .line 452
    .end local v0    # "code":Ljava/lang/String;
    :cond_13
    :goto_5
    return-void
.end method
