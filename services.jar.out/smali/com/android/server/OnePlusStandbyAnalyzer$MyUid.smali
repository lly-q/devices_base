.class public Lcom/android/server/OnePlusStandbyAnalyzer$MyUid;
.super Landroid/os/BatteryStats$Uid;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyUid"
.end annotation


# instance fields
.field private final mUid:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 4730
    invoke-direct {p0}, Landroid/os/BatteryStats$Uid;-><init>()V

    .line 4731
    iput p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$MyUid;->mUid:I

    .line 4732
    return-void
.end method


# virtual methods
.method public getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 4746
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 4899
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 1

    .line 5003
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 5018
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;
    .locals 1

    .line 5038
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;
    .locals 1

    .line 5033
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 5013
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 5028
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 5023
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 4914
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCpuActiveTime()J
    .locals 2

    .line 5071
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCpuClusterTimes()[J
    .locals 1

    .line 5076
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCpuFreqTimes(I)[J
    .locals 1
    .param p1, "which"    # I

    .line 5061
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCpuFreqTimes(II)[J
    .locals 1
    .param p1, "procState"    # I
    .param p2, "which"    # I

    .line 5081
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeferredJobsCheckinLineLocked(Ljava/lang/StringBuilder;I)V
    .locals 0
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "which"    # I

    .line 5048
    return-void
.end method

.method public getDeferredJobsLineLocked(Ljava/lang/StringBuilder;I)V
    .locals 0
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "which"    # I

    .line 5052
    return-void
.end method

.method public getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 4909
    const/4 v0, 0x0

    return-object v0
.end method

.method public getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 4919
    const/4 v0, 0x0

    return-object v0
.end method

.method public getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 4924
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFullWifiLockTime(JI)J
    .locals 2
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .line 4844
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getJobCompletionStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation

    .line 4766
    const/4 v0, 0x0

    return-object v0
.end method

.method public getJobStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation

    .line 4761
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMobileRadioActiveCount(I)I
    .locals 1
    .param p1, "which"    # I

    .line 4978
    const/4 v0, 0x0

    return v0
.end method

.method public getMobileRadioActiveTime(I)J
    .locals 2
    .param p1, "which"    # I

    .line 4973
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMobileRadioApWakeupCount(I)J
    .locals 2
    .param p1, "which"    # I

    .line 5056
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 1

    .line 5008
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 4751
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkActivityBytes(II)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "which"    # I

    .line 4963
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNetworkActivityPackets(II)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "which"    # I

    .line 4968
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPackageStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Pkg;",
            ">;"
        }
    .end annotation

    .line 4786
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPidStats()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/BatteryStats$Uid$Pid;",
            ">;"
        }
    .end annotation

    .line 4776
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProcessStateTime(IJI)J
    .locals 2
    .param p1, "state"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .line 4929
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;
    .locals 1
    .param p1, "state"    # I

    .line 4934
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProcessStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Proc;",
            ">;"
        }
    .end annotation

    .line 4781
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScreenOffCpuFreqTimes(I)[J
    .locals 1
    .param p1, "which"    # I

    .line 5066
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScreenOffCpuFreqTimes(II)[J
    .locals 1
    .param p1, "procState"    # I
    .param p2, "which"    # I

    .line 5086
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSensorStats()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/BatteryStats$Uid$Sensor;",
            ">;"
        }
    .end annotation

    .line 4771
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSyncStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation

    .line 4756
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemCpuTimeUs(I)J
    .locals 2
    .param p1, "which"    # I

    .line 4988
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTimeAtCpuSpeed(III)J
    .locals 2
    .param p1, "cluster"    # I
    .param p2, "step"    # I
    .param p3, "which"    # I

    .line 4993
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    .line 4736
    iget v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$MyUid;->mUid:I

    return v0
.end method

.method public getUserActivityCount(II)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "which"    # I

    .line 4953
    const/4 v0, 0x0

    return v0
.end method

.method public getUserCpuTimeUs(I)J
    .locals 2
    .param p1, "which"    # I

    .line 4983
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVibratorOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 4939
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 4904
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWakelockStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Wakelock;",
            ">;"
        }
    .end annotation

    .line 4741
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiBatchedScanCount(II)I
    .locals 1
    .param p1, "csphBin"    # I
    .param p2, "which"    # I

    .line 4889
    const/4 v0, 0x0

    return v0
.end method

.method public getWifiBatchedScanTime(IJI)J
    .locals 2
    .param p1, "csphBin"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .line 4884
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 1

    .line 4998
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiMulticastTime(JI)J
    .locals 2
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .line 4894
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiRadioApWakeupCount(I)J
    .locals 2
    .param p1, "which"    # I

    .line 5043
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiRunningTime(JI)J
    .locals 2
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .line 4839
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiScanActualTime(J)J
    .locals 2
    .param p1, "elapsedRealtimeUs"    # J

    .line 4869
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiScanBackgroundCount(I)I
    .locals 1
    .param p1, "which"    # I

    .line 4864
    const/4 v0, 0x0

    return v0
.end method

.method public getWifiScanBackgroundTime(J)J
    .locals 2
    .param p1, "elapsedRealtimeUs"    # J

    .line 4874
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 4879
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiScanCount(I)I
    .locals 1
    .param p1, "which"    # I

    .line 4854
    const/4 v0, 0x0

    return v0
.end method

.method public getWifiScanTime(JI)J
    .locals 2
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .line 4849
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiScanTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 4859
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasNetworkActivity()Z
    .locals 1

    .line 4958
    const/4 v0, 0x0

    return v0
.end method

.method public hasUserActivity()Z
    .locals 1

    .line 4948
    const/4 v0, 0x0

    return v0
.end method

.method public noteActivityPausedLocked(J)V
    .locals 0
    .param p1, "elapsedRealtime"    # J

    .line 4835
    return-void
.end method

.method public noteActivityResumedLocked(J)V
    .locals 0
    .param p1, "elapsedRealtime"    # J

    .line 4831
    return-void
.end method

.method public noteFullWifiLockAcquiredLocked(J)V
    .locals 0
    .param p1, "elapsedRealtime"    # J

    .line 4799
    return-void
.end method

.method public noteFullWifiLockReleasedLocked(J)V
    .locals 0
    .param p1, "elapsedRealtime"    # J

    .line 4803
    return-void
.end method

.method public noteUserActivityLocked(I)V
    .locals 0
    .param p1, "type"    # I

    .line 4944
    return-void
.end method

.method public noteWifiBatchedScanStartedLocked(IJ)V
    .locals 0
    .param p1, "csph"    # I
    .param p2, "elapsedRealtime"    # J

    .line 4815
    return-void
.end method

.method public noteWifiBatchedScanStoppedLocked(J)V
    .locals 0
    .param p1, "elapsedRealtime"    # J

    .line 4819
    return-void
.end method

.method public noteWifiMulticastDisabledLocked(J)V
    .locals 0
    .param p1, "elapsedRealtime"    # J

    .line 4827
    return-void
.end method

.method public noteWifiMulticastEnabledLocked(J)V
    .locals 0
    .param p1, "elapsedRealtime"    # J

    .line 4823
    return-void
.end method

.method public noteWifiRunningLocked(J)V
    .locals 0
    .param p1, "elapsedRealtime"    # J

    .line 4791
    return-void
.end method

.method public noteWifiScanStartedLocked(J)V
    .locals 0
    .param p1, "elapsedRealtime"    # J

    .line 4807
    return-void
.end method

.method public noteWifiScanStoppedLocked(J)V
    .locals 0
    .param p1, "elapsedRealtime"    # J

    .line 4811
    return-void
.end method

.method public noteWifiStoppedLocked(J)V
    .locals 0
    .param p1, "elapsedRealtime"    # J

    .line 4795
    return-void
.end method
