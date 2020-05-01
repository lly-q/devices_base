.class public final Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;
.super Ljava/lang/Object;
.source "OnePlusStandbyAnalyzer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SnapShot"
.end annotation


# instance fields
.field private mBatteryDrop:I

.field private mIsEnterDeepIdle:Z

.field private mMinimumPeriod:J

.field private mSnapShotType:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

.field private mStatisticType:Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

.field private mmA:F

.field private mmACriteria:F

.field final synthetic this$0:Lcom/android/server/OnePlusStandbyAnalyzer;


# direct methods
.method public constructor <init>(Lcom/android/server/OnePlusStandbyAnalyzer;Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p2, "snapshot"    # Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;
    .param p3, "statistic"    # Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    .line 1622
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1623
    iput-object p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mSnapShotType:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    .line 1624
    iput-object p3, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mStatisticType:Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    .line 1625
    return-void
.end method

.method public constructor <init>(Lcom/android/server/OnePlusStandbyAnalyzer;Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;IFF)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p2, "snapshot"    # Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;
    .param p3, "statistic"    # Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;
    .param p4, "batteryDrop"    # I
    .param p5, "mA"    # F
    .param p6, "mACriteria"    # F

    .line 1636
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1637
    iput-object p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mSnapShotType:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    .line 1638
    iput-object p3, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mStatisticType:Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    .line 1639
    iput p4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mBatteryDrop:I

    .line 1640
    iput p5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mmA:F

    .line 1641
    iput p6, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mmACriteria:F

    .line 1642
    return-void
.end method

.method public constructor <init>(Lcom/android/server/OnePlusStandbyAnalyzer;Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;IFFJZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p2, "snapshot"    # Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;
    .param p3, "statistic"    # Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;
    .param p4, "batteryDrop"    # I
    .param p5, "mA"    # F
    .param p6, "mACriteria"    # F
    .param p7, "minimumPeriod"    # J
    .param p9, "fortest"    # Z

    .line 1627
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1628
    iput-object p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mSnapShotType:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    .line 1629
    iput-object p3, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mStatisticType:Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    .line 1630
    iput p4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mBatteryDrop:I

    .line 1631
    iput p5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mmA:F

    .line 1632
    iput p6, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mmACriteria:F

    .line 1633
    iput-wide p7, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mMinimumPeriod:J

    .line 1634
    invoke-static {p1, p9}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$202(Lcom/android/server/OnePlusStandbyAnalyzer;Z)Z

    .line 1635
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1645
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$300(Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1647
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mStatisticType:Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;->KWL_WR:Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    if-ne v0, v1, :cond_10

    .line 1649
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1651
    .local v0, "startTime":J
    const/4 v2, 0x0

    .line 1652
    .local v2, "stats":Lcom/android/internal/os/BatteryStatsImpl;
    const-wide/16 v3, 0x0

    .line 1653
    .local v3, "upTimeMs":J
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mSnapShotType:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    sget-object v6, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    const-wide/16 v7, 0x3e8

    const/4 v9, 0x0

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mSnapShotType:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    sget-object v6, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->END:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    if-ne v5, v6, :cond_2

    .line 1655
    :cond_0
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$300(Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v2

    .line 1658
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v5, v5, Lcom/android/server/OnePlusStandbyAnalyzer;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v5, v2}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    .line 1659
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v5, v5, Lcom/android/server/OnePlusStandbyAnalyzer;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v6, -0x1

    invoke-virtual {v5, v9, v6}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    .line 1661
    if-eqz v2, :cond_1

    .line 1662
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    mul-long/2addr v5, v7

    invoke-virtual {v2, v5, v6, v9}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryUptime(JI)J

    move-result-wide v5

    div-long v3, v5, v7

    .line 1663
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1664
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-static {v5, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1665
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Time on battery of uptime : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1668
    iget-object v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$300(Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/BatteryStatsService;->UpdateKernelWakelocks()V

    .line 1671
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$SNAPSHOT_TYPE:[I

    iget-object v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mSnapShotType:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    invoke-virtual {v6}, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/16 v6, 0x3f2

    packed-switch v5, :pswitch_data_0

    .line 1671
    .end local v0    # "startTime":J
    .end local v2    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v3    # "upTimeMs":J
    goto/16 :goto_3

    .line 1817
    .restart local v0    # "startTime":J
    .restart local v2    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v3    # "upTimeMs":J
    :pswitch_0
    const-string v5, "======CALCULATE======"

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1818
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$2100(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    .line 1819
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$2200(Lcom/android/server/OnePlusStandbyAnalyzer;)Z

    move-result v5

    .line 1820
    .local v5, "needGenBatteryOutlier":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "needGenBatteryOutlier : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1821
    iget-object v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v6, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$2300(Lcom/android/server/OnePlusStandbyAnalyzer;Z)V

    .line 1823
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@@@@[End] Calculate & Judge in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .end local v0    # "startTime":J
    .end local v2    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v3    # "upTimeMs":J
    .end local v5    # "needGenBatteryOutlier":Z
    goto/16 :goto_3

    .line 1754
    .restart local v0    # "startTime":J
    .restart local v2    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v3    # "upTimeMs":J
    :pswitch_1
    const-string v5, "OPSA"

    const-string v10, "======END======"

    invoke-static {v5, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$1500(Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/DeviceIdleController;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/server/DeviceIdleController;->removeMessages(I)V

    .line 1760
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v5, v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$002(Lcom/android/server/OnePlusStandbyAnalyzer;Z)Z

    .line 1762
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, v5, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfEnd:J

    .line 1763
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iput-wide v3, v5, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawUptimeOfEnd:J

    .line 1765
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mBatteryDrop:I

    invoke-static {v5, v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$1702(Lcom/android/server/OnePlusStandbyAnalyzer;I)I

    .line 1766
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mmA:F

    invoke-static {v5, v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$1802(Lcom/android/server/OnePlusStandbyAnalyzer;F)F

    .line 1767
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mmACriteria:F

    invoke-static {v5, v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$1902(Lcom/android/server/OnePlusStandbyAnalyzer;F)F

    .line 1768
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-wide v10, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mMinimumPeriod:J

    invoke-static {v5, v10, v11}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$2002(Lcom/android/server/OnePlusStandbyAnalyzer;J)J

    .line 1772
    if-eqz v2, :cond_4

    .line 1773
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v5, v5, Lcom/android/server/OnePlusStandbyAnalyzer;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v5

    .line 1774
    .local v5, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    iget-object v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v10, v6, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfEndDeepidle:Ljava/util/List;

    .line 1775
    sget-boolean v6, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string v10, "End"

    iget-object v11, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v11, v11, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfEndDeepidle:Ljava/util/List;

    invoke-static {v6, v10, v11, v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$900(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/List;Z)V

    .line 1778
    :cond_3
    iget-object v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v10, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v11, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-wide v11, v11, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfEnd:J

    mul-long/2addr v11, v7

    iget-object v13, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mSnapShotType:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    invoke-virtual {v10, v2, v11, v12, v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->genUidWakeupAlarmMap(Lcom/android/internal/os/BatteryStatsImpl;JLcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;)Ljava/util/Map;

    move-result-object v10

    iput-object v10, v6, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_End_Map:Ljava/util/Map;

    .line 1779
    sget-boolean v6, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v6, :cond_4

    .line 1780
    iget-object v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string v10, "End-WL"

    iget-object v11, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v11, v11, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_End_Map:Ljava/util/Map;

    invoke-static {v6, v10, v11, v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$1000(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 1781
    iget-object v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string v10, "End"

    iget-object v11, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v11, v11, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_End_Map:Ljava/util/Map;

    invoke-virtual {v6, v10, v11, v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpUidWakeupAlarmsMap(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 1786
    .end local v5    # "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :cond_4
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$300(Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v6

    iget-object v10, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-wide v10, v10, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfEnd:J

    invoke-virtual {v6, v10, v11}, Lcom/android/server/am/BatteryStatsService;->snapShotKernelWakelockStats(J)Ljava/util/Map;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWL_End_Map:Ljava/util/Map;

    .line 1788
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$300(Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/BatteryStatsService;->snapShotWakeupReasonStats()Ljava/util/Map;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/OnePlusStandbyAnalyzer;->mWR_End_Map:Ljava/util/Map;

    .line 1791
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_End_List:Ljava/util/List;

    .line 1792
    move v5, v9

    .line 1792
    .local v5, "i":I
    :goto_0
    sget v6, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    if-ge v5, v6, :cond_5

    .line 1793
    iget-object v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-wide v10, v6, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfEnd:J

    mul-long/2addr v10, v7

    invoke-virtual {v2, v5, v10, v11, v9}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v10

    div-long/2addr v10, v7

    .line 1794
    .local v10, "timeMs":J
    iget-object v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v6, v6, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_End_List:Ljava/util/List;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1792
    .end local v10    # "timeMs":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1796
    .end local v5    # "i":I
    :cond_5
    sget-boolean v5, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string v6, "End-Signal"

    iget-object v7, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v7, v7, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_End_List:Ljava/util/List;

    invoke-static {v5, v6, v7}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$1100(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/List;)V

    .line 1800
    :cond_6
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    sget-object v6, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->END:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    sget-object v7, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_FILE:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/OnePlusStandbyAnalyzer;->getRPMInfo(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Ljava/lang/String;)V

    .line 1803
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string v6, "End"

    sget-object v7, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_MASTER_FILE:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$1200(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1807
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    sget-object v6, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->END:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    sget-object v7, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_MASTER_FILE:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/OnePlusStandbyAnalyzer;->getRPMMasterInfo(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Ljava/lang/String;)V

    .line 1810
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string v7, "End"

    sget-object v8, Lcom/android/server/OnePlusStandbyAnalyzer;->WIFI_WAKEUP_FILE:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/OnePlusStandbyAnalyzer;->getWiFiWakeUpCountMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_End_Map:Ljava/util/Map;

    .line 1811
    sget-boolean v5, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string v6, "End"

    iget-object v7, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v7, v7, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_End_Map:Ljava/util/Map;

    invoke-static {v5, v6, v7}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$1400(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;)V

    .line 1813
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@@@@[End] SnapShot in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1814
    goto/16 :goto_3

    .line 1674
    :pswitch_2
    const-string v5, "OPSA"

    const-string v10, "======START======"

    invoke-static {v5, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const/4 v10, 0x1

    invoke-static {v5, v10}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$002(Lcom/android/server/OnePlusStandbyAnalyzer;Z)Z

    .line 1683
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v5, v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$402(Lcom/android/server/OnePlusStandbyAnalyzer;Z)Z

    .line 1685
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v5, v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$502(Lcom/android/server/OnePlusStandbyAnalyzer;Z)Z

    .line 1687
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v5, v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$602(Lcom/android/server/OnePlusStandbyAnalyzer;Z)Z

    .line 1689
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;->NOT_AVAILABLE:Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    invoke-static {v5, v10}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$702(Lcom/android/server/OnePlusStandbyAnalyzer;Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;)Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    .line 1691
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v5, v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$800(Lcom/android/server/OnePlusStandbyAnalyzer;Z)V

    .line 1694
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, v5, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfStart:J

    .line 1695
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iput-wide v3, v5, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawUptimeOfStart:J

    .line 1699
    if-eqz v2, :cond_a

    .line 1700
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v5, v5, Lcom/android/server/OnePlusStandbyAnalyzer;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v5

    .line 1701
    .local v5, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    iget-object v10, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v11, v10, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfStartDeepIdle:Ljava/util/List;

    .line 1702
    sget-boolean v10, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string v11, "Start"

    iget-object v12, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v12, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfStartDeepIdle:Ljava/util/List;

    invoke-static {v10, v11, v12, v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$900(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/List;Z)V

    .line 1705
    :cond_8
    iget-object v10, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v11, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v12, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-wide v12, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfStart:J

    mul-long/2addr v12, v7

    iget-object v14, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mSnapShotType:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    invoke-virtual {v11, v2, v12, v13, v14}, Lcom/android/server/OnePlusStandbyAnalyzer;->genUidWakeupAlarmMap(Lcom/android/internal/os/BatteryStatsImpl;JLcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;)Ljava/util/Map;

    move-result-object v11

    iput-object v11, v10, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_Start_Map:Ljava/util/Map;

    .line 1706
    sget-boolean v10, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v10, :cond_9

    .line 1707
    iget-object v10, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string v11, "Start-WL"

    iget-object v12, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v12, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_Start_Map:Ljava/util/Map;

    invoke-static {v10, v11, v12, v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$1000(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 1708
    iget-object v10, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string v11, "Start"

    iget-object v12, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v12, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_Start_Map:Ljava/util/Map;

    invoke-virtual {v10, v11, v12, v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpUidWakeupAlarmsMap(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 1710
    .end local v5    # "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :cond_9
    goto :goto_1

    .line 1711
    :cond_a
    const-string/jumbo v5, "stats == null"

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1715
    :goto_1
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v10, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v10}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$300(Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-wide v11, v11, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfStart:J

    invoke-virtual {v10, v11, v12}, Lcom/android/server/am/BatteryStatsService;->snapShotKernelWakelockStats(J)Ljava/util/Map;

    move-result-object v10

    iput-object v10, v5, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWL_Start_Map:Ljava/util/Map;

    .line 1717
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v10, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v10}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$300(Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/BatteryStatsService;->snapShotWakeupReasonStats()Ljava/util/Map;

    move-result-object v10

    iput-object v10, v5, Lcom/android/server/OnePlusStandbyAnalyzer;->mWR_Start_Map:Ljava/util/Map;

    .line 1720
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v5, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Start_List:Ljava/util/List;

    .line 1721
    move v5, v9

    .line 1721
    .local v5, "i":I
    :goto_2
    sget v10, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    if-ge v5, v10, :cond_b

    .line 1722
    iget-object v10, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-wide v10, v10, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfStart:J

    mul-long/2addr v10, v7

    invoke-virtual {v2, v5, v10, v11, v9}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v10

    div-long/2addr v10, v7

    .line 1723
    .restart local v10    # "timeMs":J
    iget-object v12, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v12, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Start_List:Ljava/util/List;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1721
    .end local v10    # "timeMs":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1725
    .end local v5    # "i":I
    :cond_b
    sget-boolean v5, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string v7, "Start-Signal"

    iget-object v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v8, v8, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Start_List:Ljava/util/List;

    invoke-static {v5, v7, v8}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$1100(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/List;)V

    .line 1729
    :cond_c
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    sget-object v7, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    sget-object v8, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_FILE:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Lcom/android/server/OnePlusStandbyAnalyzer;->getRPMInfo(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Ljava/lang/String;)V

    .line 1732
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string v7, "Start"

    sget-object v8, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_MASTER_FILE:Ljava/lang/String;

    invoke-static {v5, v7, v8}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$1200(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    sget-object v7, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    sget-object v8, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_MASTER_FILE:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Lcom/android/server/OnePlusStandbyAnalyzer;->getRPMMasterInfo(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Ljava/lang/String;)V

    .line 1739
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$1300(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    .line 1742
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v7, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string v8, "Start"

    sget-object v9, Lcom/android/server/OnePlusStandbyAnalyzer;->WIFI_WAKEUP_FILE:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->getWiFiWakeUpCountMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    iput-object v7, v5, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Start_Map:Ljava/util/Map;

    .line 1743
    sget-boolean v5, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string v7, "Start"

    iget-object v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v8, v8, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Start_Map:Ljava/util/Map;

    invoke-static {v5, v7, v8}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$1400(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;)V

    .line 1746
    :cond_d
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$1500(Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/DeviceIdleController;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/server/DeviceIdleController;->removeMessages(I)V

    .line 1748
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$1600(Lcom/android/server/OnePlusStandbyAnalyzer;)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v5, v7, v9

    if-eqz v5, :cond_e

    .line 1749
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$1500(Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/DeviceIdleController;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v7}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$1600(Lcom/android/server/OnePlusStandbyAnalyzer;)J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/DeviceIdleController;->sendEmptyMessageDelayed(IJ)V

    .line 1751
    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@@@@[START] SnapShot in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1752
    nop

    .line 1826
    .end local v0    # "startTime":J
    .end local v2    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v3    # "upTimeMs":J
    :goto_3
    goto :goto_4

    .line 1828
    :cond_f
    const-string/jumbo v0, "mBatteryStatsService == null"

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1830
    :cond_10
    :goto_4
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
