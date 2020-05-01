.class Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;
.super Landroid/os/Handler;
.source "OnePlusProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "suspendProcessHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusProcessManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 874
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    .line 875
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 876
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 880
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 881
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 882
    return-void

    .line 884
    :cond_0
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$300()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 887
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 888
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v2, v2, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 889
    .local v2, "index":I
    if-gez v2, :cond_2

    .line 890
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 891
    :try_start_1
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 893
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    return-void

    .line 892
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4

    .line 895
    .end local v2    # "index":I
    :cond_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 896
    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->isUidSuspended(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 897
    return-void

    .line 901
    :cond_3
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    monitor-enter v2

    .line 902
    :try_start_5
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 903
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 905
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$400()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 906
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 907
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->access$500(Lcom/android/server/am/OnePlusProcessManager;)Landroid/os/Handler;

    move-result-object v1

    add-int/lit16 v2, v0, -0x2710

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 908
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 909
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "suspendProcessHandler mCharging  so skip uid ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :cond_4
    return-void

    .line 913
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->access$500(Lcom/android/server/am/OnePlusProcessManager;)Landroid/os/Handler;

    move-result-object v1

    add-int/lit16 v2, v0, -0x2710

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 914
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 915
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "suspendProcessHandler hasMessages alreay so skip uid ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :cond_6
    return-void

    .line 918
    :cond_7
    sput v0, Lcom/android/server/am/OnePlusProcessManager;->mPendingUid:I

    .line 919
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v1, :cond_8

    .line 920
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "suspendProcessHandler handleMessage uid ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :cond_8
    const/4 v1, 0x0

    .line 923
    .local v1, "suspendRelateUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 925
    .local v3, "suspendSuccess":Z
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusProcessManager;->access$600(Lcom/android/server/am/OnePlusProcessManager;I)D

    move-result-wide v4

    .line 926
    .local v4, "suspendReturn":D
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->access$700(Lcom/android/server/am/OnePlusProcessManager;)D

    move-result-wide v6

    cmpl-double v2, v4, v6

    if-nez v2, :cond_9

    .line 928
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusProcessManager;->access$800(Lcom/android/server/am/OnePlusProcessManager;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 930
    :cond_9
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->access$700(Lcom/android/server/am/OnePlusProcessManager;)D

    move-result-wide v6

    cmpl-double v2, v4, v6

    const/4 v6, 0x0

    if-nez v2, :cond_a

    if-eqz v1, :cond_a

    .line 931
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusProcessManager;->access$900(Lcom/android/server/am/OnePlusProcessManager;I)Z

    move-result v2

    .line 933
    .end local v3    # "suspendSuccess":Z
    .local v2, "suspendSuccess":Z
    sget-object v7, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 934
    :try_start_6
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 936
    if-eqz v2, :cond_10

    .line 937
    move v3, v6

    .line 937
    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_10

    .line 938
    iget-object v7, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/am/OnePlusProcessManager;->access$900(Lcom/android/server/am/OnePlusProcessManager;I)Z

    .line 937
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 935
    .end local v3    # "i":I
    :catchall_1
    move-exception v3

    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v3

    .line 942
    .end local v2    # "suspendSuccess":Z
    .local v3, "suspendSuccess":Z
    :cond_a
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusProcessManager;->access$1000(Lcom/android/server/am/OnePlusProcessManager;I)J

    move-result-wide v7

    .line 943
    .local v7, "delay":J
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->access$1100(Lcom/android/server/am/OnePlusProcessManager;)D

    move-result-wide v9

    cmpl-double v2, v4, v9

    if-nez v2, :cond_c

    .line 944
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_b

    .line 945
    const-string v2, "OnePlusProcessManager"

    const-string/jumbo v9, "suspendProcessHandler skip suspend: SUSPEND_FAIL_NOTRY"

    invoke-static {v2, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :cond_b
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    monitor-enter v2

    .line 947
    :try_start_8
    sget-object v9, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 948
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 949
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 950
    sput v6, Lcom/android/server/am/OnePlusProcessManager;->mPendingUid:I

    .line 951
    return-void

    .line 948
    :catchall_2
    move-exception v6

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v6

    .line 952
    :cond_c
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->access$1200(Lcom/android/server/am/OnePlusProcessManager;)D

    move-result-wide v9

    cmpl-double v2, v4, v9

    if-nez v2, :cond_d

    .line 953
    const-wide/16 v9, 0x5

    mul-long/2addr v7, v9

    goto :goto_1

    .line 954
    :cond_d
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->access$1300(Lcom/android/server/am/OnePlusProcessManager;)D

    move-result-wide v9

    cmpl-double v2, v4, v9

    if-lez v2, :cond_e

    .line 955
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->access$1300(Lcom/android/server/am/OnePlusProcessManager;)D

    move-result-wide v9

    sub-double v9, v4, v9

    double-to-long v9, v9

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    const-wide/16 v11, 0x3e8

    mul-long v7, v9, v11

    goto :goto_1

    .line 957
    :cond_e
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$1400()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 958
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v2, v2, Lcom/android/server/am/OnePlusProcessManager;->mAlarmAdjust:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 959
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v2, v2, Lcom/android/server/am/OnePlusProcessManager;->mAlarmAdjust:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 960
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusProcessManager;->access$1500(Lcom/android/server/am/OnePlusProcessManager;I)Ljava/lang/String;

    move-result-object v2

    .line 961
    .local v2, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_f

    .line 963
    :try_start_a
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v9, v9, Lcom/android/server/am/OnePlusProcessManager;->mAlarm:Landroid/app/IAlarmManager;

    const/4 v10, 0x1

    invoke-interface {v9, v2, v10, v10}, Landroid/app/IAlarmManager;->setBlockAlarmUid(Ljava/lang/String;ZI)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0

    .line 965
    goto :goto_1

    .line 964
    :catch_0
    move-exception v9

    .line 970
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_f
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v2, v0, v7, v8}, Lcom/android/server/am/OnePlusProcessManager;->access$1600(Lcom/android/server/am/OnePlusProcessManager;IJ)V

    .line 973
    sget-object v9, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    monitor-enter v9

    .line 974
    :try_start_b
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "suspendReturn ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    monitor-exit v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 978
    move v2, v3

    .line 978
    .end local v3    # "suspendSuccess":Z
    .end local v7    # "delay":J
    .local v2, "suspendSuccess":Z
    :cond_10
    if-eqz v2, :cond_11

    .line 979
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    monitor-enter v3

    .line 980
    :try_start_c
    sget-object v7, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 981
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 982
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 981
    :catchall_3
    move-exception v6

    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v6

    .line 984
    :cond_11
    :goto_2
    sput v6, Lcom/android/server/am/OnePlusProcessManager;->mPendingUid:I

    .line 985
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v3, :cond_12

    .line 986
    const-string v3, "OnePlusProcessManager"

    const-string/jumbo v6, "suspendProcessHandler end"

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :cond_12
    return-void

    .line 976
    .end local v2    # "suspendSuccess":Z
    .restart local v3    # "suspendSuccess":Z
    .restart local v7    # "delay":J
    :catchall_4
    move-exception v2

    :try_start_e
    monitor-exit v9
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v2

    .line 903
    .end local v1    # "suspendRelateUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "suspendSuccess":Z
    .end local v4    # "suspendReturn":D
    .end local v7    # "delay":J
    :catchall_5
    move-exception v1

    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    throw v1

    .line 895
    :catchall_6
    move-exception v2

    :try_start_10
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    throw v2

    .line 885
    :cond_13
    :goto_3
    return-void
.end method
