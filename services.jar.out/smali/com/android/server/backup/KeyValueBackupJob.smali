.class public Lcom/android/server/backup/KeyValueBackupJob;
.super Landroid/app/job/JobService;
.source "KeyValueBackupJob.java"


# static fields
.field private static final JOB_ID:I = 0x5039

.field private static final MAX_DEFERRAL:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String; = "KeyValueBackupJob"

.field private static sKeyValueJobService:Landroid/content/ComponentName;

.field private static sNextScheduled:J

.field private static sScheduled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/server/backup/KeyValueBackupJob;

    .line 38
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/backup/KeyValueBackupJob;->sKeyValueJobService:Landroid/content/ComponentName;

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/backup/KeyValueBackupJob;->sScheduled:Z

    .line 48
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/backup/KeyValueBackupJob;->sNextScheduled:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static cancel(Landroid/content/Context;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .line 91
    const-class v0, Lcom/android/server/backup/KeyValueBackupJob;

    monitor-enter v0

    .line 92
    :try_start_0
    const-string/jumbo v1, "jobscheduler"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    .line 93
    .local v1, "js":Landroid/app/job/JobScheduler;
    const/16 v2, 0x5039

    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 94
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/android/server/backup/KeyValueBackupJob;->sNextScheduled:J

    .line 95
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/backup/KeyValueBackupJob;->sScheduled:Z

    .line 96
    .end local v1    # "js":Landroid/app/job/JobScheduler;
    monitor-exit v0

    .line 97
    return-void

    .line 96
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static nextScheduled()J
    .locals 3

    .line 100
    const-class v0, Lcom/android/server/backup/KeyValueBackupJob;

    monitor-enter v0

    .line 101
    :try_start_0
    sget-wide v1, Lcom/android/server/backup/KeyValueBackupJob;->sNextScheduled:J

    monitor-exit v0

    return-wide v1

    .line 102
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static schedule(Landroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V
    .locals 15
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "delay"    # J
    .param p3, "constants"    # Lcom/android/server/backup/BackupManagerConstants;

    .line 55
    const-class v1, Lcom/android/server/backup/KeyValueBackupJob;

    monitor-enter v1

    .line 56
    :try_start_0
    sget-boolean v0, Lcom/android/server/backup/KeyValueBackupJob;->sScheduled:Z

    if-eqz v0, :cond_0

    .line 57
    monitor-exit v1

    return-void

    .line 65
    :cond_0
    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 66
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/backup/BackupManagerConstants;->getKeyValueBackupIntervalMilliseconds()J

    move-result-wide v2

    .line 67
    .local v2, "interval":J
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/backup/BackupManagerConstants;->getKeyValueBackupFuzzMilliseconds()J

    move-result-wide v4

    .line 68
    .local v4, "fuzz":J
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/backup/BackupManagerConstants;->getKeyValueBackupRequiredNetworkType()I

    move-result v0

    .line 69
    .local v0, "networkType":I
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/backup/BackupManagerConstants;->getKeyValueBackupRequireCharging()Z

    move-result v6

    .line 70
    .local v6, "needsCharging":Z
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 71
    const-wide/16 v7, 0x0

    cmp-long v7, p1, v7

    if-gtz v7, :cond_1

    .line 72
    :try_start_2
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    long-to-int v8, v4

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    int-to-long v7, v7

    add-long/2addr v7, v2

    .line 75
    .end local p1    # "delay":J
    .local v7, "delay":J
    move-wide v9, v7

    goto :goto_0

    .line 75
    .end local v7    # "delay":J
    .restart local p1    # "delay":J
    :cond_1
    move-wide/from16 v9, p1

    .line 75
    .end local p1    # "delay":J
    .local v9, "delay":J
    :goto_0
    :try_start_3
    const-string v7, "KeyValueBackupJob"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Scheduling k/v pass in "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v11, 0x3e8

    div-long v11, v9, v11

    const-wide/16 v13, 0x3c

    div-long/2addr v11, v13

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " minutes"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v7, Landroid/app/job/JobInfo$Builder;

    const/16 v8, 0x5039

    sget-object v11, Lcom/android/server/backup/KeyValueBackupJob;->sKeyValueJobService:Landroid/content/ComponentName;

    invoke-direct {v7, v8, v11}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 78
    invoke-virtual {v7, v9, v10}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v7

    .line 79
    invoke-virtual {v7, v0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v7

    .line 80
    invoke-virtual {v7, v6}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v7

    const-wide/32 v11, 0x5265c00

    .line 81
    invoke-virtual {v7, v11, v12}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v7

    .line 82
    .local v7, "builder":Landroid/app/job/JobInfo$Builder;
    const-string/jumbo v8, "jobscheduler"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v11, p0

    :try_start_4
    invoke-virtual {v11, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/job/JobScheduler;

    .line 83
    .local v8, "js":Landroid/app/job/JobScheduler;
    invoke-virtual {v7}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    add-long/2addr v12, v9

    sput-wide v12, Lcom/android/server/backup/KeyValueBackupJob;->sNextScheduled:J

    .line 86
    const/4 v12, 0x1

    sput-boolean v12, Lcom/android/server/backup/KeyValueBackupJob;->sScheduled:Z

    .line 87
    .end local v0    # "networkType":I
    .end local v2    # "interval":J
    .end local v4    # "fuzz":J
    .end local v6    # "needsCharging":Z
    .end local v7    # "builder":Landroid/app/job/JobInfo$Builder;
    .end local v8    # "js":Landroid/app/job/JobScheduler;
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v0

    move-object v11, p0

    goto :goto_3

    .line 70
    .end local v9    # "delay":J
    .restart local p1    # "delay":J
    :catchall_1
    move-exception v0

    move-object v11, p0

    :goto_1
    :try_start_5
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 87
    :catchall_2
    move-exception v0

    goto :goto_2

    .line 70
    :catchall_3
    move-exception v0

    goto :goto_1

    .line 87
    :catchall_4
    move-exception v0

    move-object v11, p0

    .line 87
    .end local p1    # "delay":J
    .restart local v9    # "delay":J
    :goto_2
    move-wide/from16 v9, p1

    :goto_3
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_3
.end method

.method public static schedule(Landroid/content/Context;Lcom/android/server/backup/BackupManagerConstants;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "constants"    # Lcom/android/server/backup/BackupManagerConstants;

    .line 51
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    .line 52
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 107
    const-class v0, Lcom/android/server/backup/KeyValueBackupJob;

    monitor-enter v0

    .line 108
    const-wide/16 v1, 0x0

    :try_start_0
    sput-wide v1, Lcom/android/server/backup/KeyValueBackupJob;->sNextScheduled:J

    .line 109
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/backup/KeyValueBackupJob;->sScheduled:Z

    .line 110
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->getInstance()Lcom/android/server/backup/Trampoline;

    move-result-object v0

    .line 115
    .local v0, "service":Lcom/android/server/backup/Trampoline;
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/backup/Trampoline;->backupNow()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    goto :goto_0

    :catch_0
    move-exception v2

    .line 120
    :goto_0
    return v1

    .line 110
    .end local v0    # "service":Lcom/android/server/backup/Trampoline;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 126
    const/4 v0, 0x0

    return v0
.end method
