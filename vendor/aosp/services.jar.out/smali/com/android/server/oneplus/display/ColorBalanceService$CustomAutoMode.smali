.class Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;
.super Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;
.source "ColorBalanceService.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oneplus/display/ColorBalanceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomAutoMode"
.end annotation


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mEndTime:Ljava/time/LocalTime;

.field private mLastActivatedTime:Ljava/time/LocalDateTime;

.field private mStartTime:Ljava/time/LocalTime;

.field private final mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/server/oneplus/display/ColorBalanceService;


# direct methods
.method public constructor <init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .locals 2

    .line 1581
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;Lcom/android/server/oneplus/display/ColorBalanceService$1;)V

    .line 1582
    invoke-virtual {p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1583
    new-instance v0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode$1;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;Lcom/android/server/oneplus/display/ColorBalanceService;)V

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1589
    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;

    .line 1571
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->updateActivated()V

    return-void
.end method

.method private updateActivated()V
    .locals 9

    .line 1596
    const-string v0, "ColorBalanceService"

    const-string v1, "CustomAutoMode updateActivated!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1300(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1598
    :try_start_0
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    .line 1599
    .local v1, "now":Ljava/time/LocalDateTime;
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mStartTime:Ljava/time/LocalTime;

    invoke-static {v2, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->getDateTimeBefore(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    .line 1600
    .local v2, "start":Ljava/time/LocalDateTime;
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mEndTime:Ljava/time/LocalTime;

    invoke-static {v3, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object v3

    .line 1601
    .local v3, "end":Ljava/time/LocalDateTime;
    invoke-virtual {v1, v3}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v4

    .line 1603
    .local v4, "activated":Z
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    .line 1604
    .local v5, "setActivated":Z
    :goto_0
    if-nez v5, :cond_7

    iget-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1400(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1400(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eq v8, v4, :cond_7

    .line 1606
    :cond_1
    iget-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1400(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1400(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1607
    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v1, v3}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    move v6, v7

    :goto_2
    move v5, v6

    goto :goto_5

    .line 1609
    :cond_4
    invoke-virtual {v1, v3}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_3

    :cond_5
    goto :goto_4

    :cond_6
    :goto_3
    move v6, v7

    :goto_4
    move v5, v6

    .line 1612
    :cond_7
    :goto_5
    const-string v6, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CustomAutoMode updateActivated! setActivated = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    if-eqz v5, :cond_8

    .line 1614
    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1402(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1615
    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$400(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    .line 1617
    :cond_8
    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1502(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1618
    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1400(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {p0, v6, v1}, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->updateNextAlarm(Ljava/lang/Boolean;Ljava/time/LocalDateTime;)V

    .line 1619
    .end local v1    # "now":Ljava/time/LocalDateTime;
    .end local v2    # "start":Ljava/time/LocalDateTime;
    .end local v3    # "end":Ljava/time/LocalDateTime;
    .end local v4    # "activated":Z
    .end local v5    # "setActivated":Z
    monitor-exit v0

    .line 1620
    return-void

    .line 1619
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateActivatedOnCustomStartTimeChanged()V
    .locals 2

    .line 1591
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1592
    .local v0, "now":Ljava/time/LocalDateTime;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->updateNextAlarm(Ljava/lang/Boolean;Ljava/time/LocalDateTime;)V

    .line 1593
    return-void
.end method

.method private updateNextAlarm(Ljava/lang/Boolean;Ljava/time/LocalDateTime;)V
    .locals 12
    .param p1, "activated"    # Ljava/lang/Boolean;
    .param p2, "now"    # Ljava/time/LocalDateTime;

    .line 1630
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mStartTime:Ljava/time/LocalTime;

    invoke-static {v0, p2}, Lcom/android/server/oneplus/display/ColorBalanceService;->getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1631
    .local v0, "nextStart":Ljava/time/LocalDateTime;
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mEndTime:Ljava/time/LocalTime;

    invoke-static {v1, p2}, Lcom/android/server/oneplus/display/ColorBalanceService;->getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 1632
    .local v1, "nextEnd":Ljava/time/LocalDateTime;
    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1633
    const-string v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateNextAlarm nextStart setExact:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v10

    .line 1635
    .local v10, "millis":J
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x1

    const-string v7, "ColorBalanceService"

    const/4 v9, 0x0

    move-wide v5, v10

    move-object v8, p0

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1636
    .end local v10    # "millis":J
    goto :goto_0

    .line 1637
    :cond_0
    const-string v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateNextAlarm nextEnd setExact:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v10

    .line 1639
    .restart local v10    # "millis":J
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x1

    const-string v7, "ColorBalanceService"

    const/4 v9, 0x0

    move-wide v5, v10

    move-object v8, p0

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1641
    .end local v10    # "millis":J
    :goto_0
    return-void
.end method


# virtual methods
.method public onActivated(Z)V
    .locals 2
    .param p1, "activated"    # Z

    .line 1670
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1671
    .local v0, "now":Ljava/time/LocalDateTime;
    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 1672
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->updateNextAlarm(Ljava/lang/Boolean;Ljava/time/LocalDateTime;)V

    .line 1673
    return-void
.end method

.method public onAlarm()V
    .locals 2

    .line 1691
    const-string v0, "ColorBalanceService"

    const-string/jumbo v1, "onAlarm"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->updateActivated()V

    .line 1693
    return-void
.end method

.method public onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .locals 1
    .param p1, "endTime"    # Ljava/time/LocalTime;

    .line 1684
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mEndTime:Ljava/time/LocalTime;

    .line 1685
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 1686
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->updateActivated()V

    .line 1687
    return-void
.end method

.method public onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .locals 1
    .param p1, "startTime"    # Ljava/time/LocalTime;

    .line 1677
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mStartTime:Ljava/time/LocalTime;

    .line 1678
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 1679
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->updateActivated()V

    .line 1680
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1645
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1646
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1647
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-virtual {v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1649
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$400(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ColorDisplayController;->getCustomStartTime()Ljava/time/LocalTime;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mStartTime:Ljava/time/LocalTime;

    .line 1650
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$400(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ColorDisplayController;->getCustomEndTime()Ljava/time/LocalTime;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mEndTime:Ljava/time/LocalTime;

    .line 1653
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->updateActivated()V

    .line 1654
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1658
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-virtual {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1659
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1660
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 1661
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1400(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1662
    const-string v0, "ColorBalanceService"

    const-string v1, "CustomAutoMode stop,disable night display mode!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$400(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1664
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$400(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    .line 1666
    :cond_0
    return-void
.end method
