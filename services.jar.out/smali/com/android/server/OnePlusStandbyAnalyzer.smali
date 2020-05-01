.class public Lcom/android/server/OnePlusStandbyAnalyzer;
.super Ljava/lang/Object;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OnePlusStandbyAnalyzer$MyUid;,
        Lcom/android/server/OnePlusStandbyAnalyzer$MyBatterySipper;,
        Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$AudioInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;,
        Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;,
        Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;,
        Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;,
        Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;,
        Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;,
        Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;,
        Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;,
        Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    }
.end annotation


# static fields
.field public static final APPID:Ljava/lang/String; = "NYNCG4I0TI"

.field private static DEBUG_ONEPLUS:Z = false

.field static DEBUG_STANDBY:Z = false

.field private static DIAGNOSIS_ISSUE_POWER_OTHER:I = 0x0

.field public static FAKE_LEVEL_DROP:I = 0x0

.field private static final FIX_DUMP_ONE:I = 0x1

.field public static final INVALID:I = -0x1

.field public static final INVALID_UID:I = -0x3e7

.field private static final MAX_DUMP_COUNT:I = 0x3

.field private static final MAX_RECORD_COUNT:I = 0x28

.field public static final MDM_DETAIL:Ljava/lang/String; = "dl"

.field public static final MDM_EVENT:Ljava/lang/String; = "standby"

.field public static final MDM_PACKAGE:Ljava/lang/String; = "pn"

.field public static final MDM_REASON_TYPE:Ljava/lang/String; = "tp"

.field public static final PROP_QXDM_IF_NEED_PACK:Ljava/lang/String; = "persist.sys.standby_qxdm"

.field public static final PROP_QXDM_IF_UNDER_RECORDING:Ljava/lang/String; = "persist.sys.standby_qxdm_recording"

.field public static final PROP_QXDM_VENDOR_CLEAN:Ljava/lang/String; = "persist.sys.qxdm_clean_old"

.field private static final PROP_STANDBY_DEBUG_ON:Ljava/lang/String; = "persist.sys.standby_debug"

.field public static final QUALCOMM_MHZ:I = 0x124f800

.field private static final QXDM_RECHECK_MAX:I = 0x3

.field private static final READ_TIMEOUT:J = 0x1388L

.field public static RPM_FILE:Ljava/lang/String; = null

.field public static RPM_FILE_FOR_SDM845:Ljava/lang/String; = null

.field public static RPM_MASTER_FILE:Ljava/lang/String; = null

.field public static RPM_MASTER_FILE_FOR_SDM845:Ljava/lang/String; = null

.field public static final STANDBY_ASSIST_FILE:Ljava/lang/String; = "/data/system/power/diagnosis_assist.txt"

.field public static final STANDBY_DIAGNOSIS_FILE:Ljava/lang/String; = "/data/system/power/diagnosis_standby.txt"

.field public static final STANDBY_RPM_FILE:Ljava/lang/String; = "/data/system/power/diagnosis_rpm.txt"

.field private static final TAG:Ljava/lang/String; = "OPSA"

.field private static final USERSPACE_WAKELOCK:Ljava/lang/String; = "PowerManagerService.WakeLocks"

.field public static WIFI_WAKEUP_FILE:Ljava/lang/String; = null

.field public static WIFI_WAKEUP_FILE_FOR_SDM845:Ljava/lang/String; = null

.field private static mAVERAGE_CURRENT_EXCEED_FOR_MINOR:F = 0.0f

.field private static mKERNELSPACE_WL_CRITERIA:F = 0.0f

.field private static mKERNELSPACE_WL_CRITERIA_FOR_MINOR:F = 0.0f

.field private static mKERNEL_WAKEUP_COUNT_CRITERIA:I = 0x0

.field private static mKERNEL_WAKEUP_COUNT_CRITERIA_FOR_MINOR:I = 0x0

.field private static mRPM_SLEEP_ACC_DURATION_DIFF_PERCENT:F = 0.0f

.field private static mRPM_SLPI_SLEEPCOUNT_DIFF_CRITERIA:J = 0x0L

.field private static mRPM_TIME_SLM_SEC_CRITERIA:J = 0x0L

.field private static mSIGNAL_BAD_CRITERIA:F = 0.0f

.field private static mSIGNAL_BAD_CRITERIA_FOR_MINOR:F = 0.0f

.field private static mUNACCOUNTED_CRITERIA:F = 0.0f

.field private static mUNACCOUNTED_CRITERIA_FOR_MINOR:F = 0.0f

.field private static mUSERSPACE_WL_CRITERIA:F = 0.0f

.field private static mUSERSPACE_WL_CRITERIA_FOR_MINOR:F = 0.0f

.field private static final mVersion:Ljava/lang/String; = "2.02"


# instance fields
.field cptor:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;",
            ">;"
        }
    .end annotation
.end field

.field cptor2:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;",
            ">;"
        }
    .end annotation
.end field

.field cptor3:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;",
            ">;"
        }
    .end annotation
.end field

.field cptor4:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;",
            ">;"
        }
    .end annotation
.end field

.field cptor5:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$AudioInfo;",
            ">;"
        }
    .end annotation
.end field

.field cptor6:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAudio_WL_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

.field private mByPassed_KWL_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceIdleController:Lcom/android/server/DeviceIdleController;

.field private mDiagnosisAsNormal:Z

.field private mDiagnosisInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDiagnosis_ASSIST_Info:Ljava/lang/String;

.field private mDiagnosis_RPM_Info:Ljava/lang/String;

.field private mEverEnterDeepDoze:Z

.field private mEverQXDMRecordingByMyself:Z

.field private mIfEverGenQXDMToCleanUp:Z

.field private mIsQuickSimulate:Z

.field private mIsSDM845:Z

.field mKWLDiffList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;",
            ">;"
        }
    .end annotation
.end field

.field mKWLDiffMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;",
            ">;"
        }
    .end annotation
.end field

.field mKWLMap_End:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end field

.field mKWLMap_Start:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end field

.field mKWL_End_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mKWL_Start_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLastQXDMGrabTimeStamp:J

.field private mMDMEnabled:Z

.field private mMiddleCheckPeriod:J

.field private mMinimumQXDMGrabPeriod:J

.field private mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

.field private mOemExSvc:Lcom/oem/os/IOemExService;

.field private mOnePlusDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mQXDMGrabGapAfterStandbyStart:J

.field private mQXDMGrabMechanism:Z

.field private mQXDMTriggeringReason:Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

.field private mQXDM_Ready_Check_Count:I

.field private mQXDM_Recoding:Z

.field mRPMInfo_Diff_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;",
            ">;"
        }
    .end annotation
.end field

.field mRPMMasterInfo_Diff_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRPMModePattern:Ljava/util/regex/Pattern;

.field private mRPMModeSDM845Pattern:Ljava/util/regex/Pattern;

.field private mRPM_BaseString:Ljava/lang/String;

.field private mRPM_Master_Pattern_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private mRPM_Master_SDM845_Pattern:Ljava/util/regex/Pattern;

.field private mRPM_SDM845_BaseString:Ljava/lang/String;

.field mRawRealtimeOfEnd:J

.field mRawRealtimeOfStart:J

.field mRawUptimeOfEnd:J

.field mRawUptimeOfStart:J

.field mSignal_Diff_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mSignal_End_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mSignal_Start_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mSippersOfEndDeepidle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field mSippersOfStartDeepIdle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mStadby_totalPowerMah:D

.field private mStandbyAbnReportingEnabled:Z

.field private mStandby_Battery_Drop:I

.field private mStandby_KernelSpaceWL_Ms:J

.field private mStandby_MiniumPeriod:J

.field private mStandby_Ms:J

.field private mStandby_SignalBad_Ms:J

.field private mStandby_Sipper_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mStandby_Uptime_Ms:J

.field private mStandby_UserSpaceWL_Ms:J

.field private mStandby_WR_Count:J

.field private mStandby_WUA_Count:I

.field private mStandby_mA:F

.field private mStandby_mA_Criteria:F

.field private mStandby_unAccounted_Sipper:Lcom/android/internal/os/BatterySipper;

.field mTeleChgInfo_Diff_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mUidPacketDiffList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;",
            ">;"
        }
    .end annotation
.end field

.field mUidPacket_Diff_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;",
            ">;"
        }
    .end annotation
.end field

.field mUidWUADiffList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;",
            ">;"
        }
    .end annotation
.end field

.field mUidWUA_End_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;",
            ">;"
        }
    .end annotation
.end field

.field mUidWUA_Start_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUnderStandbyPeriod:Z

.field mWLDiffList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWL_End_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mWL_Start_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mWRDiffList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWRDiffMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWRMap_End:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end field

.field mWRMap_Start:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end field

.field mWR_End_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mWR_Start_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mWiFiWakeUp_Diff_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWiFiWakeUp_End_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mWiFiWakeUp_Start_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiWakeupPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 61
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    .line 64
    const-string/jumbo v0, "persist.sys.standby_debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    .line 174
    const/16 v0, 0x15

    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->DIAGNOSIS_ISSUE_POWER_OTHER:I

    .line 178
    const/16 v0, 0x32

    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->FAKE_LEVEL_DROP:I

    .line 680
    const-string v0, "/d/rpm_stats"

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_FILE:Ljava/lang/String;

    .line 681
    const-string v0, "/d/rpmh/stats"

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_FILE_FOR_SDM845:Ljava/lang/String;

    .line 682
    const-string v0, "/d/rpm_master_stats"

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_MASTER_FILE:Ljava/lang/String;

    .line 683
    const-string v0, "/d/rpmh/master_stats"

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_MASTER_FILE_FOR_SDM845:Ljava/lang/String;

    .line 858
    const-string v0, "/sys/kernel/debug/wlan_wakeup/wlan_wakeup_reason"

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->WIFI_WAKEUP_FILE:Ljava/lang/String;

    .line 861
    const-string v0, "/sys/kernel/debug/wlan_wakeup/wlan_wakeup_reason"

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->WIFI_WAKEUP_FILE_FOR_SDM845:Ljava/lang/String;

    .line 897
    const/high16 v0, 0x41200000    # 10.0f

    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUSERSPACE_WL_CRITERIA:F

    .line 898
    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNELSPACE_WL_CRITERIA:F

    .line 899
    const/16 v1, 0xc8

    sput v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNEL_WAKEUP_COUNT_CRITERIA:I

    .line 900
    const v1, 0x4479c000    # 999.0f

    sput v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mSIGNAL_BAD_CRITERIA:F

    .line 901
    const/high16 v2, 0x40a00000    # 5.0f

    sput v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUNACCOUNTED_CRITERIA:F

    .line 905
    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mAVERAGE_CURRENT_EXCEED_FOR_MINOR:F

    .line 908
    sput v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUSERSPACE_WL_CRITERIA_FOR_MINOR:F

    .line 909
    sput v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNELSPACE_WL_CRITERIA_FOR_MINOR:F

    .line 910
    const/16 v0, 0x96

    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNEL_WAKEUP_COUNT_CRITERIA_FOR_MINOR:I

    .line 911
    sput v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mSIGNAL_BAD_CRITERIA_FOR_MINOR:F

    .line 912
    const/high16 v0, 0x40600000    # 3.5f

    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUNACCOUNTED_CRITERIA_FOR_MINOR:F

    .line 915
    const-wide/16 v0, 0x708

    sput-wide v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_TIME_SLM_SEC_CRITERIA:J

    .line 918
    const/high16 v0, 0x42200000    # 40.0f

    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SLEEP_ACC_DURATION_DIFF_PERCENT:F

    .line 921
    const-wide/32 v0, 0x100000

    sput-wide v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SLPI_SLEEPCOUNT_DIFF_CRITERIA:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/BatteryStatsService;Lcom/android/server/DeviceIdleController;Z)V
    .locals 5
    .param p1, "batteryStatsService"    # Lcom/android/server/am/BatteryStatsService;
    .param p2, "deviceIdleController"    # Lcom/android/server/DeviceIdleController;
    .param p3, "ifReporting"    # Z

    .line 944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisAsNormal:Z

    .line 107
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    .line 116
    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUnderStandbyPeriod:Z

    .line 119
    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIfEverGenQXDMToCleanUp:Z

    .line 123
    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandbyAbnReportingEnabled:Z

    .line 127
    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMGrabMechanism:Z

    .line 130
    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDM_Recoding:Z

    .line 137
    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverQXDMRecordingByMyself:Z

    .line 140
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;->NOT_AVAILABLE:Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    iput-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMTriggeringReason:Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    .line 147
    const-wide/32 v1, 0xa4cb800

    iput-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMinimumQXDMGrabPeriod:J

    .line 152
    const-wide/32 v1, 0x6ddd00

    iput-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMGrabGapAfterStandbyStart:J

    .line 156
    const-wide/32 v1, 0xa4cb80

    iput-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMiddleCheckPeriod:J

    .line 161
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mLastQXDMGrabTimeStamp:J

    .line 164
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDM_Ready_Check_Count:I

    .line 177
    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsQuickSimulate:Z

    .line 603
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMDMEnabled:Z

    .line 676
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mByPassed_KWL_List:Ljava/util/List;

    .line 677
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mAudio_WL_List:Ljava/util/List;

    .line 678
    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverEnterDeepDoze:Z

    .line 679
    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z

    .line 784
    const-string v2, "RPM Mode:vlow\\n\\t\\scount:(\\d*)\\n.*time since last mode\\(sec\\):(\\d*).*RPM Mode:vmin\\n\\t\\scount:(\\d*)\\n.*time since last mode\\(sec\\):(\\d*)\\n.*"

    const/16 v3, 0x20

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMModePattern:Ljava/util/regex/Pattern;

    .line 815
    const-string v2, "RPM Mode:aosd\\n\\t\\scount:(\\d*)\\n.*time since last mode\\(sec\\):(\\d*).*RPM Mode:cxsd\\n\\t\\scount:(\\d*)\\n.*time since last mode\\(sec\\):(\\d*)\\n.*"

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMModeSDM845Pattern:Ljava/util/regex/Pattern;

    .line 820
    const-string v2, ".*MPSS\\n\\tVersion.*\\tSleep Accumulated Duration:0x([0-9a-f]*)\\n\\nADSP\\n\\tVersion.*\\tSleep Accumulated Duration:0x([0-9a-f]*)\\n\\nCDSP\\n\\tVersion.*"

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_SDM845_Pattern:Ljava/util/regex/Pattern;

    .line 822
    const-string v2, "\\n\\tshutdown_req.*\\n\\twakeup_ind.*\\n\\tbringup_req.*\\n\\tbringup_ack.*\\n\\txo_last_entered_at:0x([0-9a-fA-F]*)\\n\\txo_last_exited_at:0x([0-9a-fA-F]*)\\n\\txo_accumulated_duration:0x([0-9a-fA-F]*)\\n\\tlast_sleep_transition_duration.*\\n\\tlast_wake_transition_duration.*\\n\\txo_count:0x([0-9a-fA-F]*)\\n"

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_BaseString:Ljava/lang/String;

    .line 824
    const-string v2, "\\n\\tVersion:0x([0-9a-f]*)\\n\\tSleep Count:0x([0-9a-f]*)\\n\\tSleep Last Entered At:0x([0-9a-f]*)\\n\\tSleep Last Exited At:0x([0-9a-f]*)\\n\\tSleep Accumulated Duration:0x([0-9a-f]*)\\n\\n"

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SDM845_BaseString:Ljava/lang/String;

    .line 862
    const-string/jumbo v2, "uc (\\d*) bc (\\d*) v4_mc (\\d*) v6_mc (\\d*) ra (\\d*) ns (\\d*) na (\\d*) pno_match (\\d*) pno_complete (\\d*) gscan (\\d*) low_rssi (\\d*) rssi_breach (\\d*) icmp (\\d*) icmpv6 (\\d*) oem (\\d*) unspecified (\\d*).*"

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWifiWakeupPattern:Ljava/util/regex/Pattern;

    .line 1012
    new-instance v2, Lcom/android/server/OnePlusStandbyAnalyzer$1;

    invoke-direct {v2, p0}, Lcom/android/server/OnePlusStandbyAnalyzer$1;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 2072
    new-instance v2, Lcom/android/server/OnePlusStandbyAnalyzer$2;

    invoke-direct {v2, p0}, Lcom/android/server/OnePlusStandbyAnalyzer$2;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor2:Ljava/util/Comparator;

    .line 2721
    new-instance v2, Lcom/android/server/OnePlusStandbyAnalyzer$3;

    invoke-direct {v2, p0}, Lcom/android/server/OnePlusStandbyAnalyzer$3;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor6:Ljava/util/Comparator;

    .line 2819
    new-instance v2, Lcom/android/server/OnePlusStandbyAnalyzer$4;

    invoke-direct {v2, p0}, Lcom/android/server/OnePlusStandbyAnalyzer$4;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor4:Ljava/util/Comparator;

    .line 3965
    new-instance v2, Lcom/android/server/OnePlusStandbyAnalyzer$8;

    invoke-direct {v2, p0}, Lcom/android/server/OnePlusStandbyAnalyzer$8;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor5:Ljava/util/Comparator;

    .line 3995
    new-instance v2, Lcom/android/server/OnePlusStandbyAnalyzer$9;

    invoke-direct {v2, p0}, Lcom/android/server/OnePlusStandbyAnalyzer$9;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor3:Ljava/util/Comparator;

    .line 4059
    new-instance v2, Lcom/android/server/OnePlusStandbyAnalyzer$10;

    invoke-direct {v2, p0}, Lcom/android/server/OnePlusStandbyAnalyzer$10;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor:Ljava/util/Comparator;

    .line 945
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 946
    new-instance v2, Lcom/android/server/OnePlusDiagnosisUtil;

    const-string v3, "/data/system/power/diagnosis_standby.txt"

    const/16 v4, 0x28

    invoke-direct {v2, v3, v4}, Lcom/android/server/OnePlusDiagnosisUtil;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOnePlusDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

    .line 947
    iput-object p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    .line 948
    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v2}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 949
    new-instance v2, Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0, v0}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 950
    const-string v0, "OEMExService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oem/os/IOemExService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOemExSvc:Lcom/oem/os/IOemExService;

    .line 951
    new-instance v0, Lnet/oneplus/odm/insight/tracker/OSTracker;

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v2}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "NYNCG4I0TI"

    invoke-direct {v0, v2, v3}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 953
    iput-boolean p3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandbyAbnReportingEnabled:Z

    .line 954
    const-string v0, "OPSA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "init reporting-flag to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandbyAbnReportingEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const-string/jumbo v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 958
    .local v0, "platformStr":Ljava/lang/String;
    const-string/jumbo v2, "sdm845"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "msmnile"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 959
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z

    .line 960
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_FILE_FOR_SDM845:Ljava/lang/String;

    sput-object v1, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_FILE:Ljava/lang/String;

    .line 961
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_MASTER_FILE_FOR_SDM845:Ljava/lang/String;

    sput-object v1, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_MASTER_FILE:Ljava/lang/String;

    .line 962
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer;->WIFI_WAKEUP_FILE_FOR_SDM845:Ljava/lang/String;

    sput-object v1, Lcom/android/server/OnePlusStandbyAnalyzer;->WIFI_WAKEUP_FILE:Ljava/lang/String;

    .line 966
    :cond_1
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mByPassed_KWL_List:Ljava/util/List;

    const-string v2, "PowerManagerService.WakeLocks"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 967
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mByPassed_KWL_List:Ljava/util/List;

    const-string v2, "NETLINK"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 970
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mAudio_WL_List:Ljava/util/List;

    const-string v2, "AudioMix"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 971
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mAudio_WL_List:Ljava/util/List;

    const-string v2, "AudioDirectOut"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 972
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mAudio_WL_List:Ljava/util/List;

    const-string v2, "AudioOffload"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 976
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mAudio_WL_List:Ljava/util/List;

    const-string v2, "AudioIn"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 979
    invoke-direct {p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->initRPMRexMap()V

    .line 981
    invoke-direct {p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->startTelephonyMonitor()V

    .line 982
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/OnePlusStandbyAnalyzer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;

    .line 59
    iget-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUnderStandbyPeriod:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/OnePlusStandbyAnalyzer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "x1"    # Z

    .line 59
    iput-boolean p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUnderStandbyPeriod:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/Map;
    .param p3, "x3"    # Z

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpUidWakeLockMap(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpSignal(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpRPMMasterInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/OnePlusStandbyAnalyzer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;

    .line 59
    invoke-direct {p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->cleanUpTele()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/Map;

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpWiFiStatsMap(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/DeviceIdleController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;

    .line 59
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/OnePlusStandbyAnalyzer;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;

    .line 59
    iget-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMiddleCheckPeriod:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/android/server/OnePlusStandbyAnalyzer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "x1"    # I

    .line 59
    iput p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Battery_Drop:I

    return p1
.end method

.method static synthetic access$1802(Lcom/android/server/OnePlusStandbyAnalyzer;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "x1"    # F

    .line 59
    iput p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA:F

    return p1
.end method

.method static synthetic access$1902(Lcom/android/server/OnePlusStandbyAnalyzer;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "x1"    # F

    .line 59
    iput p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA_Criteria:F

    return p1
.end method

.method static synthetic access$2002(Lcom/android/server/OnePlusStandbyAnalyzer;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "x1"    # J

    .line 59
    iput-wide p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_MiniumPeriod:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/android/server/OnePlusStandbyAnalyzer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "x1"    # Z

    .line 59
    iput-boolean p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsQuickSimulate:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/OnePlusStandbyAnalyzer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;

    .line 59
    invoke-direct {p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->calculateDiff()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/OnePlusStandbyAnalyzer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;

    .line 59
    invoke-direct {p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->judgeRootCause()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/OnePlusStandbyAnalyzer;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "x1"    # Z

    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/OnePlusStandbyAnalyzer;->genBatteryOutlierIfAppropriate(Z)V

    return-void
.end method

.method static synthetic access$2400()J
    .locals 2

    .line 59
    sget-wide v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_TIME_SLM_SEC_CRITERIA:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/am/BatteryStatsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;

    .line 59
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/OnePlusStandbyAnalyzer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "x1"    # Z

    .line 59
    iput-boolean p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverEnterDeepDoze:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/server/OnePlusStandbyAnalyzer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "x1"    # Z

    .line 59
    iput-boolean p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIfEverGenQXDMToCleanUp:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/server/OnePlusStandbyAnalyzer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "x1"    # Z

    .line 59
    iput-boolean p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverQXDMRecordingByMyself:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/server/OnePlusStandbyAnalyzer;Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;)Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "x1"    # Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    .line 59
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMTriggeringReason:Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/OnePlusStandbyAnalyzer;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "x1"    # Z

    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateQXDM_Property(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Z

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpBatterySipperListInfo(Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method private calculateDiff()V
    .locals 23

    .line 3819
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 3822
    .local v1, "startTime":J
    iget-wide v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfEnd:J

    iget-wide v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfStart:J

    sub-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    .line 3824
    iget-wide v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawUptimeOfEnd:J

    iget-wide v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawUptimeOfStart:J

    sub-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Uptime_Ms:J

    .line 3828
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffMap:Ljava/util/Map;

    .line 3830
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_UserSpaceWL_Ms:J

    .line 3831
    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWL_End_Map:Ljava/util/Map;

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWL_Start_Map:Ljava/util/Map;

    if-eqz v5, :cond_3

    .line 3832
    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWL_End_Map:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 3833
    .local v6, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3834
    .local v7, "kwlname":Ljava/lang/String;
    const-wide/16 v8, 0x0

    .line 3835
    .local v8, "holding":J
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 3836
    .local v16, "end":J
    iget-object v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWL_Start_Map:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 3837
    .local v10, "start":Ljava/lang/Long;
    if-eqz v10, :cond_0

    .line 3838
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sub-long v8, v16, v11

    .line 3843
    .end local v8    # "holding":J
    .end local v10    # "start":Ljava/lang/Long;
    .local v12, "start":Ljava/lang/Long;
    .local v14, "holding":J
    :goto_1
    move-wide v14, v8

    move-object v12, v10

    goto :goto_2

    .line 3840
    .end local v12    # "start":Ljava/lang/Long;
    .end local v14    # "holding":J
    .restart local v8    # "holding":J
    .restart local v10    # "start":Ljava/lang/Long;
    :cond_0
    move-wide/from16 v8, v16

    .line 3841
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_1

    .line 3843
    .end local v8    # "holding":J
    .end local v10    # "start":Ljava/lang/Long;
    .restart local v12    # "start":Ljava/lang/Long;
    .restart local v14    # "holding":J
    :goto_2
    iget-object v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffMap:Ljava/util/Map;

    new-instance v10, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object v8, v10

    move-object v9, v7

    move-object v3, v10

    move-wide v10, v14

    move-object/from16 v20, v12

    move-object v4, v13

    move-wide/from16 v12, v18

    .end local v12    # "start":Ljava/lang/Long;
    .local v20, "start":Ljava/lang/Long;
    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-wide v5, v14

    move-wide/from16 v14, v16

    .end local v6    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v14    # "holding":J
    .local v5, "holding":J
    .local v22, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-direct/range {v8 .. v15}, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;-><init>(Ljava/lang/String;JJJ)V

    invoke-interface {v4, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3845
    const-string v3, "PowerManagerService.WakeLocks"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3846
    iput-wide v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_UserSpaceWL_Ms:J

    .line 3848
    .end local v5    # "holding":J
    .end local v7    # "kwlname":Ljava/lang/String;
    .end local v16    # "end":J
    .end local v20    # "start":Ljava/lang/Long;
    .end local v22    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_1
    nop

    .line 3832
    move-object/from16 v5, v21

    const-wide/16 v3, 0x0

    goto :goto_0

    .line 3850
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    .line 3851
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3853
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3858
    :cond_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffMap:Ljava/util/Map;

    .line 3860
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WR_Count:J

    .line 3861
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWR_End_Map:Ljava/util/Map;

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWR_Start_Map:Ljava/util/Map;

    if-eqz v3, :cond_6

    .line 3862
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWR_End_Map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 3863
    .local v5, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3864
    .local v6, "wrname":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 3865
    .local v7, "end":I
    const/4 v8, 0x0

    .line 3866
    .local v8, "count":I
    iget-object v9, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWR_Start_Map:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 3867
    .local v9, "start":Ljava/lang/Integer;
    if-eqz v9, :cond_4

    .line 3868
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sub-int/2addr v10, v11

    .end local v8    # "count":I
    .local v10, "count":I
    goto :goto_4

    .line 3870
    .end local v10    # "count":I
    .restart local v8    # "count":I
    :cond_4
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 3871
    .end local v8    # "count":I
    .restart local v10    # "count":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 3873
    :goto_4
    iget-object v8, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffMap:Ljava/util/Map;

    new-instance v11, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v11, v6, v10, v12, v7}, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;-><init>(Ljava/lang/String;III)V

    invoke-interface {v8, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3875
    iget-wide v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WR_Count:J

    int-to-long v13, v10

    add-long/2addr v11, v13

    iput-wide v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WR_Count:J

    .line 3876
    .end local v5    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "wrname":Ljava/lang/String;
    .end local v7    # "end":I
    .end local v9    # "start":Ljava/lang/Integer;
    .end local v10    # "count":I
    goto :goto_3

    .line 3879
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    .line 3880
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3882
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    new-instance v5, Lcom/android/server/OnePlusStandbyAnalyzer$7;

    invoke-direct {v5, v0}, Lcom/android/server/OnePlusStandbyAnalyzer$7;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3892
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Diff_List:Ljava/util/List;

    .line 3894
    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_SignalBad_Ms:J

    .line 3895
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_End_List:Ljava/util/List;

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Start_List:Ljava/util/List;

    if-eqz v3, :cond_8

    .line 3896
    move v3, v4

    .local v3, "i":I
    :goto_5
    sget v5, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    if-ge v3, v5, :cond_8

    .line 3897
    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_End_List:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Start_List:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 3898
    .local v5, "diff":J
    iget-object v7, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Diff_List:Ljava/util/List;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3900
    const/4 v7, 0x1

    if-gt v3, v7, :cond_7

    .line 3901
    iget-wide v7, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_SignalBad_Ms:J

    add-long/2addr v7, v5

    iput-wide v7, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_SignalBad_Ms:J

    .line 3896
    .end local v5    # "diff":J
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 3906
    .end local v3    # "i":I
    :cond_8
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfStartDeepIdle:Ljava/util/List;

    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfEndDeepidle:Ljava/util/List;

    invoke-direct {v0, v3, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->calculateSipperDiff(Ljava/util/List;Ljava/util/List;)V

    .line 3909
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_Start_Map:Ljava/util/Map;

    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_End_Map:Ljava/util/Map;

    invoke-direct {v0, v3, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->calculateWakeLockDiff(Ljava/util/Map;Ljava/util/Map;)V

    .line 3915
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacket_Diff_Map:Ljava/util/Map;

    invoke-virtual {v0, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->convertMapToListWithOrder(Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    .line 3918
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_Start_Map:Ljava/util/Map;

    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_End_Map:Ljava/util/Map;

    invoke-direct {v0, v3, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->calculateWakeupAlarmDiff(Ljava/util/Map;Ljava/util/Map;)V

    .line 3927
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Start_Map:Ljava/util/Map;

    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_End_Map:Ljava/util/Map;

    invoke-direct {v0, v3, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->calculateWiFiWakeUpDiff(Ljava/util/Map;Ljava/util/Map;)V

    .line 3930
    iget-wide v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Uptime_Ms:J

    iget-wide v7, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_UserSpaceWL_Ms:J

    sub-long/2addr v5, v7

    iput-wide v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_KernelSpaceWL_Ms:J

    .line 3933
    sget-boolean v3, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_9

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpWakeLockRanking(Ljava/util/List;)V

    .line 3934
    :cond_9
    sget-boolean v3, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_a

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpKernalWakelockRanking(Ljava/util/List;)V

    .line 3935
    :cond_a
    sget-boolean v3, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_b

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpWakeupReasonRanking(Ljava/util/List;)V

    .line 3937
    :cond_b
    sget-boolean v3, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_c

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpPacketInfoRanking(Ljava/util/List;)V

    .line 3938
    :cond_c
    sget-boolean v3, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_d

    const-string v3, "Diff-Signal"

    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Diff_List:Ljava/util/List;

    invoke-direct {v0, v3, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpSignal(Ljava/lang/String;Ljava/util/List;)V

    .line 3939
    :cond_d
    sget-boolean v3, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_e

    const-string v3, "Diff-RPM"

    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v3, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpRPMStatsDiff(Ljava/lang/String;Ljava/util/List;)V

    .line 3940
    :cond_e
    sget-boolean v3, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_f

    const-string v3, "Diff-RPMMaster"

    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v3, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpRPMMasterStatsDiff(Ljava/lang/String;Ljava/util/List;)V

    .line 3941
    :cond_f
    sget-boolean v3, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_10

    const-string v3, "Diff-WiFiWakeUp"

    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    invoke-direct {v0, v3, v5, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpWiFiWakeUpStatsDiff(Ljava/lang/String;Ljava/util/List;Z)V

    .line 3943
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@@@[calculateDiff] in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3944
    return-void
.end method

.method private calculateRPMDiff(Ljava/util/Map;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2773
    .local p1, "startMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;Ljava/lang/Integer;>;"
    .local p2, "endMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 2775
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    .line 2776
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2777
    .local v1, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 2778
    .local v2, "count":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    .line 2779
    .local v3, "rpmType":Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2780
    .local v4, "end":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 2781
    .local v5, "startInfo":Ljava/lang/Integer;
    const/4 v6, 0x0

    .line 2782
    .local v6, "start":I
    if-eqz v5, :cond_0

    .line 2783
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2784
    sub-int v2, v4, v6

    goto :goto_1

    .line 2786
    :cond_0
    const/4 v6, 0x0

    .line 2787
    move v2, v4

    .line 2790
    :goto_1
    iget-object v7, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    new-instance v8, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;

    invoke-direct {v8, v3, v2, v6, v4}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;III)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2791
    .end local v1    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;Ljava/lang/Integer;>;"
    .end local v2    # "count":I
    .end local v3    # "rpmType":Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;
    .end local v4    # "end":I
    .end local v5    # "startInfo":Ljava/lang/Integer;
    .end local v6    # "start":I
    goto :goto_0

    .line 2793
    :cond_1
    return-void
.end method

.method private calculateSipperDiff(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)V"
        }
    .end annotation

    .line 4479
    .local p1, "sippers_start":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    .local p2, "sippers_end":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    invoke-direct {p0, p2}, Lcom/android/server/OnePlusStandbyAnalyzer;->cloneSipper_List(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    .line 4482
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_unAccounted_Sipper:Lcom/android/internal/os/BatterySipper;

    .line 4485
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStadby_totalPowerMah:D

    .line 4487
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 4488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "## sippers size[start, end]=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4494
    const/4 v0, 0x0

    .line 4495
    .local v0, "matchedCount":I
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 4496
    const/4 v1, 0x0

    .line 4498
    .local v1, "getMatched":Z
    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "matchedCount":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 4499
    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatterySipper;

    .line 4500
    .local v4, "bs_end":Lcom/android/internal/os/BatterySipper;
    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v5, v6, :cond_0

    .line 4501
    iput-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_unAccounted_Sipper:Lcom/android/internal/os/BatterySipper;

    .line 4504
    :cond_0
    move v5, v2

    .local v5, "j":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 4505
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatterySipper;

    .line 4506
    .local v6, "bs_start":Lcom/android/internal/os/BatterySipper;
    invoke-direct {p0, v4, v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->ifSipperMatched(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4511
    invoke-direct {p0, v6, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->substractIdlePower(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)V

    .line 4512
    const/4 v1, 0x1

    .line 4513
    add-int/lit8 v3, v3, 0x1

    .line 4514
    goto :goto_2

    .line 4504
    .end local v6    # "bs_start":Lcom/android/internal/os/BatterySipper;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4518
    .end local v5    # "j":I
    :cond_2
    :goto_2
    if-nez v1, :cond_3

    .line 4519
    const-string v5, "No-Match"

    invoke-direct {p0, v5, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->genBatterySipperInfo(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    .line 4522
    :cond_3
    iget-wide v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStadby_totalPowerMah:D

    iget-wide v7, v4, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-double/2addr v5, v7

    iput-wide v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStadby_totalPowerMah:D

    .line 4498
    .end local v4    # "bs_end":Lcom/android/internal/os/BatterySipper;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4525
    .end local v0    # "i":I
    :cond_4
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    new-instance v2, Lcom/android/server/OnePlusStandbyAnalyzer$11;

    invoke-direct {v2, p0}, Lcom/android/server/OnePlusStandbyAnalyzer$11;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4533
    .end local v1    # "getMatched":Z
    nop

    .line 4536
    move v0, v3

    goto :goto_3

    .line 4534
    .end local v3    # "matchedCount":I
    .local v0, "matchedCount":I
    :cond_5
    const-string v1, "## fetal error, mStandby_Sipper_List == null"

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4536
    :goto_3
    return-void

    .line 4490
    .end local v0    # "matchedCount":I
    :cond_6
    const-string v0, "## one of sippers is null, can\'t calculate just return."

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4491
    return-void
.end method

.method private calculateWakeLockDiff(Ljava/util/Map;Ljava/util/Map;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .local p1, "startMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .local p2, "endMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3974
    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    .line 3976
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    .line 3977
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 3978
    .local v4, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    const-wide/16 v5, 0x0

    .line 3979
    .local v5, "holding":J
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 3980
    .local v16, "end":J
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 3981
    .local v7, "start":Ljava/lang/Long;
    if-eqz v7, :cond_0

    .line 3982
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v5, v16, v8

    goto :goto_1

    .line 3984
    :cond_0
    move-wide/from16 v5, v16

    .line 3985
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 3987
    :goto_1
    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    new-instance v15, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object v8, v15

    move-wide v10, v5

    move-object v1, v14

    move-object v2, v15

    move-wide/from16 v14, v16

    invoke-direct/range {v8 .. v15}, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;-><init>(Ljava/lang/String;JJJ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3990
    .end local v4    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v5    # "holding":J
    .end local v7    # "start":Ljava/lang/Long;
    .end local v16    # "end":J
    nop

    .line 3977
    move-object/from16 v1, p1

    goto :goto_0

    .line 3992
    :cond_1
    iget-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor3:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3994
    :cond_2
    return-void
.end method

.method private calculateWakeupAlarmDiff(Ljava/util/Map;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;",
            ">;)V"
        }
    .end annotation

    .line 4004
    .local p1, "startMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    .local p2, "endMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 4006
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    .line 4008
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WUA_Count:I

    .line 4009
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4010
    .local v1, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    const/4 v2, 0x0

    .line 4011
    .local v2, "count":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 4012
    .local v3, "uid":Ljava/lang/Integer;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;

    .line 4013
    .local v4, "endInfo":Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;
    iget v5, v4, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mCount:I

    .line 4014
    .local v5, "end":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;

    .line 4015
    .local v6, "startInfo":Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;
    const/4 v7, 0x0

    .line 4016
    .local v7, "start":I
    if-eqz v6, :cond_0

    .line 4017
    iget v7, v6, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mCount:I

    .line 4018
    sub-int v2, v5, v7

    goto :goto_1

    .line 4020
    :cond_0
    const/4 v7, 0x0

    .line 4021
    move v2, v5

    .line 4024
    :goto_1
    iget-object v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    new-instance v9, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {v9, v10, v2, v7, v5}, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;-><init>(IIII)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4026
    iget v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WUA_Count:I

    add-int/2addr v8, v2

    iput v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WUA_Count:I

    .line 4027
    .end local v1    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    .end local v2    # "count":I
    .end local v3    # "uid":Ljava/lang/Integer;
    .end local v4    # "endInfo":Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;
    .end local v5    # "end":I
    .end local v6    # "startInfo":Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;
    .end local v7    # "start":I
    goto :goto_0

    .line 4029
    :cond_1
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor2:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4031
    :cond_2
    return-void
.end method

.method private calculateWiFiWakeUpDiff(Ljava/util/Map;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2796
    .local p1, "startMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;Ljava/lang/Integer;>;"
    .local p2, "endMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 2798
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    .line 2799
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2800
    .local v1, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 2801
    .local v2, "count":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    .line 2802
    .local v3, "WiFiWakeUpType":Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2803
    .local v4, "end":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 2804
    .local v5, "startInfo":Ljava/lang/Integer;
    const/4 v6, 0x0

    .line 2805
    .local v6, "start":I
    if-eqz v5, :cond_0

    .line 2806
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2807
    sub-int v2, v4, v6

    goto :goto_1

    .line 2809
    :cond_0
    const/4 v6, 0x0

    .line 2810
    move v2, v4

    .line 2813
    :goto_1
    iget-object v7, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    new-instance v8, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;

    invoke-direct {v8, v3, v2, v6, v4}, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;III)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2814
    .end local v1    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;Ljava/lang/Integer;>;"
    .end local v2    # "count":I
    .end local v3    # "WiFiWakeUpType":Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;
    .end local v4    # "end":I
    .end local v5    # "startInfo":Ljava/lang/Integer;
    .end local v6    # "start":I
    goto :goto_0

    .line 2816
    :cond_1
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor4:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2818
    :cond_2
    return-void
.end method

.method private checkifRPMAbnormal(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;",
            ">;)Z"
        }
    .end annotation

    .line 2826
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;>;"
    const/4 v0, 0x0

    .line 2827
    .local v0, "result":Z
    if-eqz p1, :cond_1

    .line 2828
    const/4 v1, 0x0

    .line 2828
    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2830
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->isVmin()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2831
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->isVminAbnormal()Z

    move-result v2

    if-ne v2, v3, :cond_0

    .line 2832
    const/4 v0, 0x1

    .line 2833
    goto :goto_1

    .line 2828
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2838
    .end local v1    # "i":I
    :cond_1
    const-string/jumbo v1, "list == null"

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2840
    :cond_2
    :goto_1
    return v0
.end method

.method private checkifRPMCanDeepSleep(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;",
            ">;)Z"
        }
    .end annotation

    .line 2843
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;>;"
    const/4 v0, 0x0

    .line 2844
    .local v0, "result":Z
    if-eqz p1, :cond_1

    .line 2845
    const/4 v1, 0x0

    .line 2845
    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2847
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->isVmin()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2848
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->isVimCanDeepSleep()Z

    move-result v2

    if-ne v2, v3, :cond_0

    .line 2849
    const/4 v0, 0x1

    .line 2850
    goto :goto_1

    .line 2845
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2855
    .end local v1    # "i":I
    :cond_1
    const-string/jumbo v1, "list == null"

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2857
    :cond_2
    :goto_1
    return v0
.end method

.method private cleanUpTele()V
    .locals 2

    .line 1006
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTeleChgInfo_Diff_List:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1007
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTeleChgInfo_Diff_List:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1008
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTeleChgInfo_Diff_List:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->cleanUp()V

    .line 1007
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1011
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private cloneSipper_List(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    .line 4463
    .local p1, "ori_list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    const/4 v0, 0x0

    .line 4464
    .local v0, "dest_list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-eqz p1, :cond_0

    .line 4465
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v1

    .line 4466
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    .line 4468
    .local v2, "sipper":Lcom/android/internal/os/BatterySipper;
    new-instance v3, Lcom/android/server/OnePlusStandbyAnalyzer$MyBatterySipper;

    invoke-direct {v3, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$MyBatterySipper;-><init>(Lcom/android/internal/os/BatterySipper;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4469
    .end local v2    # "sipper":Lcom/android/internal/os/BatterySipper;
    goto :goto_0

    .line 4471
    :cond_0
    const-string v1, "## fetal error, ori_list == null"

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4473
    :cond_1
    return-object v0
.end method

.method private dumpAudioRanking(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$AudioInfo;",
            ">;)V"
        }
    .end annotation

    .line 4088
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$AudioInfo;>;"
    if-eqz p1, :cond_1

    .line 4089
    const/4 v0, 0x0

    .line 4090
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4091
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "After Calcu # "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4092
    add-int/lit8 v0, v0, 0x1

    .line 4093
    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    .end local v0    # "count":I
    .end local v1    # "i":I
    goto :goto_1

    .line 4090
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4096
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method private dumpBatterySipperListInfo(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p3, "bfilter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;Z)V"
        }
    .end annotation

    .line 4369
    .local p2, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 4370
    const-wide/16 v0, 0x0

    .line 4371
    .local v0, "allPower":D
    const/4 v2, 0x0

    .line 4372
    .local v2, "count":I
    const/4 v3, 0x0

    .line 4372
    .local v3, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 4373
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatterySipper;

    .line 4374
    .local v4, "bs":Lcom/android/internal/os/BatterySipper;
    iget-wide v5, v4, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-double/2addr v0, v5

    .line 4375
    if-eqz p3, :cond_0

    if-eqz p3, :cond_1

    const/16 v5, 0xa

    if-ge v2, v5, :cond_1

    .line 4376
    :cond_0
    invoke-direct {p0, p1, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->genBatterySipperInfo(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    .line 4377
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 4372
    .end local v4    # "bs":Lcom/android/internal/os/BatterySipper;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4379
    .end local v3    # "i":I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], accumulated sum-up totalPowerMah="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4380
    .end local v0    # "allPower":D
    .end local v2    # "count":I
    goto :goto_1

    .line 4381
    :cond_3
    const-string/jumbo v0, "sippers == null or sippers.size() == 0"

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4383
    :goto_1
    return-void
.end method

.method private dumpCriteria()V
    .locals 4

    .line 1577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1578
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WL=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUSERSPACE_WL_CRITERIA:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUSERSPACE_WL_CRITERIA_FOR_MINOR:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "] |KWL=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNELSPACE_WL_CRITERIA:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNELSPACE_WL_CRITERIA_FOR_MINOR:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "] |KW=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNEL_WAKEUP_COUNT_CRITERIA:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNEL_WAKEUP_COUNT_CRITERIA_FOR_MINOR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] |SB=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mSIGNAL_BAD_CRITERIA:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mSIGNAL_BAD_CRITERIA_FOR_MINOR:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "] |HUC=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUNACCOUNTED_CRITERIA:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUNACCOUNTED_CRITERIA_FOR_MINOR:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "] |MINOR="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mAVERAGE_CURRENT_EXCEED_FOR_MINOR:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " |RPM_TSLM_SEC="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_TIME_SLM_SEC_CRITERIA:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |RPM_SAD="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SLEEP_ACC_DURATION_DIFF_PERCENT:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " |RPM_SLPI_SC="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SLPI_SLEEPCOUNT_DIFF_CRITERIA:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1587
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1588
    return-void
.end method

.method private dumpKernalWakelockRanking(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;",
            ">;)V"
        }
    .end annotation

    .line 4041
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;>;"
    if-eqz p1, :cond_1

    .line 4042
    const/4 v0, 0x0

    .line 4043
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4044
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "After Calcu # "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4045
    add-int/lit8 v0, v0, 0x1

    .line 4046
    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    .end local v0    # "count":I
    .end local v1    # "i":I
    goto :goto_1

    .line 4043
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4049
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method private dumpPacketInfoRanking(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;",
            ">;)V"
        }
    .end annotation

    .line 4098
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;>;"
    if-eqz p1, :cond_1

    .line 4099
    const/4 v0, 0x0

    .line 4100
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "After Calcu # "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4102
    add-int/lit8 v0, v0, 0x1

    .line 4103
    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    .end local v0    # "count":I
    .end local v1    # "i":I
    goto :goto_1

    .line 4100
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4106
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method private dumpRPMMasterInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "sourcefile"    # Ljava/lang/String;

    .line 2459
    const/4 v0, 0x0

    .line 2460
    .local v0, "fis":Ljava/io/FileInputStream;
    const/16 v1, 0x400

    .line 2461
    .local v1, "buf_size":I
    new-array v2, v1, [B

    .line 2462
    .local v2, "buffer":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#### ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2464
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 2465
    const/4 v3, 0x0

    .line 2466
    .local v3, "length":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2467
    .local v4, "nowELAPSED":J
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    move v3, v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 2468
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v2, v7, v3}, Ljava/lang/String;-><init>([BII)V

    .line 2469
    .local v6, "content":Ljava/lang/String;
    const-string v7, "OPSA"

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v4

    const-wide/16 v9, 0x1388

    cmp-long v7, v7, v9

    if-ltz v7, :cond_0

    .line 2472
    const-string v7, "**** Exceed read timeout, force exit ***"

    invoke-static {v7}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2473
    goto :goto_1

    .line 2475
    .end local v6    # "content":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 2482
    .end local v3    # "length":I
    .end local v4    # "nowELAPSED":J
    :cond_1
    :goto_1
    nop

    .line 2483
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 2484
    :catch_0
    move-exception v3

    .line 2486
    goto :goto_3

    .line 2485
    :cond_2
    :goto_2
    goto :goto_3

    .line 2481
    :catchall_0
    move-exception v3

    goto :goto_4

    .line 2478
    :catch_1
    move-exception v3

    .line 2479
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "**** Failed to read, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2482
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_2

    .line 2483
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 2476
    :catch_2
    move-exception v3

    .line 2477
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "**** File not found, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2482
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_2

    .line 2483
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 2487
    :goto_3
    return-void

    .line 2481
    :goto_4
    nop

    .line 2482
    if-eqz v0, :cond_3

    .line 2483
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    .line 2484
    :catch_3
    move-exception v4

    nop

    .line 2485
    :cond_3
    :goto_5
    throw v3
.end method

.method private dumpRPMMasterStatsDiff(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;",
            ">;)V"
        }
    .end annotation

    .line 2740
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;>;"
    if-eqz p2, :cond_0

    .line 2741
    const/4 v0, 0x0

    .line 2741
    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2742
    const-string v1, "OPSA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2745
    .end local v0    # "i":I
    :cond_0
    const-string v0, "OPSA"

    const-string/jumbo v1, "list == null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2747
    :cond_1
    return-void
.end method

.method private dumpRPMStatsDiff(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;",
            ">;)V"
        }
    .end annotation

    .line 2731
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;>;"
    if-eqz p2, :cond_0

    .line 2732
    const/4 v0, 0x0

    .line 2732
    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2733
    const-string v1, "OPSA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2736
    .end local v0    # "i":I
    :cond_0
    const-string v0, "OPSA"

    const-string/jumbo v1, "list == null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2738
    :cond_1
    return-void
.end method

.method private dumpRPMStatsMap(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2766
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;Ljava/lang/Integer;>;"
    if-eqz p2, :cond_0

    .line 2767
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2768
    .local v1, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;Ljava/lang/Integer;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2769
    .end local v1    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 2771
    :cond_0
    return-void
.end method

.method private dumpSignal(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 4051
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p2, :cond_0

    .line 4052
    const/4 v0, 0x0

    .line 4052
    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4053
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4052
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4056
    .end local v0    # "i":I
    :cond_0
    const-string/jumbo v0, "list == null"

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4058
    :cond_1
    return-void
.end method

.method private dumpUidWakeLockMap(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p3, "bfilter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .line 1945
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz p2, :cond_1

    .line 1947
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1948
    .local v0, "entryList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry;>;"
    sget-object v1, Lcom/android/server/-$$Lambda$OnePlusStandbyAnalyzer$W-Y8NF0AGtoKe92P3GHAgSEOKoY;->INSTANCE:Lcom/android/server/-$$Lambda$OnePlusStandbyAnalyzer$W-Y8NF0AGtoKe92P3GHAgSEOKoY;

    .line 1950
    .local v1, "sortByValue":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/util/Map$Entry;>;"
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1952
    nop

    .line 1953
    const/4 v2, 0x0

    .line 1954
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1955
    if-eqz p3, :cond_0

    if-eqz p3, :cond_1

    const/16 v4, 0xa

    if-ge v2, v4, :cond_1

    .line 1956
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "],"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1959
    add-int/lit8 v2, v2, 0x1

    .line 1954
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1963
    .end local v0    # "entryList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry;>;"
    .end local v1    # "sortByValue":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/util/Map$Entry;>;"
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method private dumpUidWakeupAlarmInfo(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p3, "bfilter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 4137
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    if-eqz p2, :cond_1

    .line 4138
    const/4 v0, 0x0

    .line 4139
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4140
    if-eqz p3, :cond_0

    if-eqz p3, :cond_1

    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    .line 4141
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "],"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4144
    add-int/lit8 v0, v0, 0x1

    .line 4139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4147
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private dumpWakeLockRanking(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;",
            ">;)V"
        }
    .end annotation

    .line 4068
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;>;"
    if-eqz p1, :cond_1

    .line 4069
    const/4 v0, 0x0

    .line 4070
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4071
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "After Calcu # "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->toFullString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4072
    add-int/lit8 v0, v0, 0x1

    .line 4073
    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    .end local v0    # "count":I
    .end local v1    # "i":I
    goto :goto_1

    .line 4070
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4076
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method private dumpWakeupReasonRanking(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;",
            ">;)V"
        }
    .end annotation

    .line 4078
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;>;"
    if-eqz p1, :cond_1

    .line 4079
    const/4 v0, 0x0

    .line 4080
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4081
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "After Calcu # "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4082
    add-int/lit8 v0, v0, 0x1

    .line 4083
    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    .end local v0    # "count":I
    .end local v1    # "i":I
    goto :goto_1

    .line 4080
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4086
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method private dumpWiFiStatsMap(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2759
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;Ljava/lang/Integer;>;"
    if-eqz p2, :cond_0

    .line 2760
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2761
    .local v1, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;Ljava/lang/Integer;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2762
    .end local v1    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 2764
    :cond_0
    return-void
.end method

.method private dumpWiFiWakeUpStatsDiff(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p3, "limit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 2749
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;>;"
    if-eqz p2, :cond_1

    .line 2750
    const/4 v0, 0x0

    .line 2750
    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2751
    if-eqz p3, :cond_0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 2751
    .end local v0    # "i":I
    goto :goto_1

    .line 2752
    .restart local v0    # "i":I
    :cond_0
    const-string v1, "OPSA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2750
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2755
    .end local v0    # "i":I
    :cond_1
    const-string/jumbo v0, "list == null"

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2757
    :cond_2
    :goto_1
    return-void
.end method

.method private dumpkwl(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;",
            ">;)V"
        }
    .end annotation

    .line 4033
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;>;"
    if-eqz p1, :cond_1

    .line 4034
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4035
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;

    iget-object v1, v1, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    const-string v2, "PowerManagerService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4036
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After Calcu # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4034
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4039
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private genBatteryOutlierIfAppropriate(Z)V
    .locals 4
    .param p1, "needGenBatteryOutlier"    # Z

    .line 1834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[opbugreportlite] mStandbyAbnReportingEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandbyAbnReportingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", needGenBatteryOutlier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1835
    iget-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandbyAbnReportingEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1838
    const-string v0, "[opbugreportlite] report it !, in 20 sec later"

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1839
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    const/16 v1, 0x3f1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController;->sendEmptyMessageDelayed(IJ)V

    goto :goto_0

    .line 1841
    :cond_0
    const-string v0, "[opbugreportlite] NOT report it, check if need cleanup qxdm logs immediately."

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1843
    invoke-virtual {p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->sendCleanUpQXDMIfAppropriate()V

    .line 1845
    :goto_0
    return-void
.end method

.method private genBatterySipperInfo(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "bs"    # Lcom/android/internal/os/BatterySipper;

    .line 4430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4431
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_2

    .line 4432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |T="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " |uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4434
    iget-object v2, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    iget-object v2, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |sPower="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4435
    invoke-virtual {p2}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " |wLTMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    .line 4439
    invoke-virtual {v2}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v4, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v4, :cond_1

    iget-object v3, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    nop

    :cond_1
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |pkgWHD="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |TPower="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 4442
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " |pt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 4443
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4432
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4446
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4447
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private genMDM_RPMMasterInfo(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 4419
    .local p1, "rpmmasterlist":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4421
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    .line 4422
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4423
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->toMDMString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4424
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4422
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4427
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private genRPMInfo(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 4400
    .local p2, "rpmlist":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;>;"
    .local p3, "rpmmasterlist":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4402
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 4403
    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4404
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4405
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4403
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4409
    .end local v2    # "i":I
    :cond_1
    if-eqz p3, :cond_3

    .line 4410
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4411
    nop

    .local v1, "i":I
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 4412
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4413
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_2

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4411
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4416
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private genRPMInfo(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4386
    .local p1, "rpmlist":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;>;"
    .local p2, "rpmmasterlist":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4387
    .local v0, "output_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 4388
    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 4389
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4388
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4392
    .end local v2    # "i":I
    :cond_0
    if-eqz p2, :cond_1

    .line 4393
    nop

    .local v1, "i":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4394
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4393
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4397
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private genTeleChgInfo(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1076
    .local p1, "telelist":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1078
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    .line 1079
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1080
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1084
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private get1stKWL(Ljava/util/List;)Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;",
            ">;)",
            "Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;"
        }
    .end annotation

    .line 3765
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;>;"
    const/4 v0, 0x0

    .line 3766
    .local v0, "target":Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;
    if-eqz p1, :cond_2

    .line 3767
    const/4 v1, 0x0

    .line 3768
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 3769
    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mByPassed_KWL_List:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;

    iget-object v4, v4, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3770
    if-nez v0, :cond_0

    .line 3771
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;

    .line 3773
    :cond_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_2

    .line 3774
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " st-KWL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3775
    add-int/lit8 v1, v1, 0x1

    .line 3768
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3782
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method private get1stTelephonyAbnormal(Ljava/util/List;)Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;",
            ">;)",
            "Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;"
        }
    .end annotation

    .line 3788
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;>;"
    const/4 v0, 0x0

    .line 3789
    .local v0, "target":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    const/4 v1, 0x0

    .line 3790
    .local v1, "rat_target":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    if-eqz p1, :cond_3

    .line 3792
    new-instance v2, Lcom/android/server/OnePlusStandbyAnalyzer$6;

    invoke-direct {v2, p0}, Lcom/android/server/OnePlusStandbyAnalyzer$6;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3797
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3798
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;

    .line 3805
    :cond_0
    nop

    .local v3, "i":I
    :goto_0
    move v2, v3

    .end local v3    # "i":I
    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 3806
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;

    iget-object v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->RAT_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    if-ne v3, v4, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;

    iget v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mTotalAbn:I

    if-lez v3, :cond_1

    .line 3808
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;

    .line 3809
    goto :goto_1

    .line 3805
    :cond_1
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 3812
    .end local v3    # "i":I
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 3813
    move-object v0, v1

    .line 3816
    :cond_3
    return-object v0
.end method

.method private static getCoalescedUsageList(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    .line 4642
    .local p0, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4644
    .local v0, "uidList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/os/BatterySipper;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4645
    .local v1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatterySipper;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 4646
    .local v2, "numSippers":I
    const/4 v3, 0x0

    move v4, v3

    .line 4646
    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_a

    .line 4647
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatterySipper;

    .line 4649
    .local v5, "sipper":Lcom/android/internal/os/BatterySipper;
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v6

    if-lez v6, :cond_9

    .line 4651
    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v6

    .line 4655
    .local v6, "realUid":I
    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v7

    invoke-static {v7}, Lcom/android/server/OnePlusStandbyAnalyzer;->isSharedGid(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4656
    nop

    .line 4657
    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v7

    .line 4656
    invoke-static {v3, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    .line 4661
    :cond_0
    invoke-static {v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->isSystemUid(I)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "mediaserver"

    iget-object v8, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 4662
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 4666
    const/16 v6, 0x3e8

    .line 4669
    :cond_1
    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v7

    if-eq v6, v7, :cond_2

    .line 4671
    new-instance v7, Lcom/android/internal/os/BatterySipper;

    iget-object v8, v5, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v9, Lcom/android/server/OnePlusStandbyAnalyzer$MyUid;

    invoke-direct {v9, v6}, Lcom/android/server/OnePlusStandbyAnalyzer$MyUid;-><init>(I)V

    const-wide/16 v10, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 4673
    .local v7, "newSipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v7, v5}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    .line 4674
    iget-object v8, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    iput-object v8, v7, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 4675
    iget-object v8, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    iput-object v8, v7, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 4676
    move-object v5, v7

    .line 4679
    .end local v7    # "newSipper":Lcom/android/internal/os/BatterySipper;
    :cond_2
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    .line 4680
    .local v7, "index":I
    if-gez v7, :cond_3

    .line 4682
    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 4685
    :cond_3
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/BatterySipper;

    .line 4686
    .local v8, "existingSipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v8, v5}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    .line 4687
    iget-object v9, v8, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    if-nez v9, :cond_4

    iget-object v9, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 4689
    iget-object v9, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    iput-object v9, v8, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 4692
    :cond_4
    iget-object v9, v8, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    if-eqz v9, :cond_5

    .line 4693
    iget-object v9, v8, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    array-length v9, v9

    goto :goto_1

    :cond_5
    move v9, v3

    .line 4694
    .local v9, "existingPackageLen":I
    :goto_1
    iget-object v10, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    if-eqz v10, :cond_6

    .line 4695
    iget-object v10, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    array-length v10, v10

    goto :goto_2

    :cond_6
    move v10, v3

    .line 4696
    .local v10, "newPackageLen":I
    :goto_2
    if-lez v10, :cond_8

    .line 4697
    add-int v11, v9, v10

    new-array v11, v11, [Ljava/lang/String;

    .line 4698
    .local v11, "newPackages":[Ljava/lang/String;
    if-lez v9, :cond_7

    .line 4699
    iget-object v12, v8, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    invoke-static {v12, v3, v11, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4702
    :cond_7
    iget-object v12, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    invoke-static {v12, v3, v11, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4704
    iput-object v11, v8, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 4707
    .end local v6    # "realUid":I
    .end local v7    # "index":I
    .end local v8    # "existingSipper":Lcom/android/internal/os/BatterySipper;
    .end local v9    # "existingPackageLen":I
    .end local v10    # "newPackageLen":I
    .end local v11    # "newPackages":[Ljava/lang/String;
    :cond_8
    :goto_3
    goto :goto_4

    .line 4708
    :cond_9
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4646
    .end local v5    # "sipper":Lcom/android/internal/os/BatterySipper;
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 4712
    .end local v4    # "i":I
    :cond_a
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 4713
    .local v4, "numUidSippers":I
    nop

    .line 4713
    .local v3, "i":I
    :goto_5
    if-ge v3, v4, :cond_b

    .line 4714
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4713
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 4718
    .end local v3    # "i":I
    :cond_b
    new-instance v3, Lcom/android/server/OnePlusStandbyAnalyzer$12;

    invoke-direct {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$12;-><init>()V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4724
    return-object v1
.end method

.method private getLongest_RPMSAD(Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;)J
    .locals 5
    .param p1, "activeRPM"    # Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    .line 3647
    const-wide/16 v0, 0x0

    .line 3648
    .local v0, "acctime":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 3651
    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-object v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->SLPI:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 3653
    :cond_0
    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-object v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    if-eq v3, p1, :cond_1

    .line 3654
    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-wide v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepAccDuration:J

    cmp-long v3, v0, v3

    if-gez v3, :cond_1

    .line 3655
    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-wide v0, v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepAccDuration:J

    .line 3648
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3659
    .end local v2    # "i":I
    :cond_2
    return-wide v0
.end method

.method private getSipperPkgInfo(Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;
    .locals 3
    .param p1, "bs"    # Lcom/android/internal/os/BatterySipper;

    .line 4450
    const-string v0, ""

    .line 4451
    .local v0, "pkgInfo":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 4452
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 4453
    .local v1, "pkg":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 4454
    move-object v0, v1

    goto :goto_1

    .line 4455
    :cond_1
    iget-object v2, p1, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 4456
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 4459
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v0
.end method

.method private iSQXDMLogReady()Z
    .locals 3

    .line 1323
    const-string/jumbo v0, "persist.vendor.qxdm.copylog"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1324
    .local v0, "copyDone":I
    if-nez v0, :cond_0

    .line 1325
    const-string v2, "QXDM log is ready"

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1326
    return v1

    .line 1328
    :cond_0
    const-string v1, "QXDM log is NOT ready"

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1329
    const/4 v1, 0x0

    return v1
.end method

.method private ifSipperMatched(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)Z
    .locals 6
    .param p1, "bs1"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "bs2"    # Lcom/android/internal/os/BatterySipper;

    .line 4538
    const/4 v0, 0x1

    .line 4539
    .local v0, "isMatched":Z
    iget-object v1, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 4540
    .local v1, "uid1":I
    :goto_0
    iget-object v3, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v3, :cond_1

    iget-object v2, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v2

    nop

    .line 4541
    .local v2, "uid2":I
    :cond_1
    iget-object v3, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-object v4, p2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    const/4 v5, 0x0

    if-eq v3, v4, :cond_2

    .line 4542
    return v5

    .line 4543
    :cond_2
    if-eq v1, v2, :cond_3

    .line 4544
    return v5

    .line 4545
    :cond_3
    return v0
.end method

.method private initRPMRexMap()V
    .locals 9

    .line 829
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_Pattern_Map:Ljava/util/Map;

    .line 830
    iget-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z

    const/16 v1, 0x20

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_Pattern_Map:Ljava/util/Map;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->MPSS:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const-string v6, ".*%s%s.*"

    new-array v7, v4, [Ljava/lang/Object;

    sget-object v8, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->MPSS:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v8}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    iget-object v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SDM845_BaseString:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_Pattern_Map:Ljava/util/Map;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->ADSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const-string v6, ".*%s%s.*"

    new-array v7, v4, [Ljava/lang/Object;

    sget-object v8, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->ADSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v8}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    iget-object v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SDM845_BaseString:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_Pattern_Map:Ljava/util/Map;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->CDSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const-string v6, ".*%s%s.*"

    new-array v7, v4, [Ljava/lang/Object;

    sget-object v8, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->CDSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v8}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    iget-object v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SDM845_BaseString:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_Pattern_Map:Ljava/util/Map;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->SLPI:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const-string v6, ".*%s%s.*"

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v7, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->SLPI:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v7}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SDM845_BaseString:Ljava/lang/String;

    aput-object v3, v4, v2

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 843
    :cond_0
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_Pattern_Map:Ljava/util/Map;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->MPSS:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const-string v6, ".*%s%s.*"

    new-array v7, v4, [Ljava/lang/Object;

    sget-object v8, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->MPSS:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v8}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    iget-object v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_BaseString:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_Pattern_Map:Ljava/util/Map;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->ADSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const-string v6, ".*%s%s.*"

    new-array v7, v4, [Ljava/lang/Object;

    sget-object v8, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->ADSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v8}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    iget-object v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_BaseString:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_Pattern_Map:Ljava/util/Map;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->SLPI:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const-string v6, ".*%s%s.*"

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v7, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->SLPI:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v7}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_BaseString:Ljava/lang/String;

    aput-object v3, v4, v2

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    :goto_0
    return-void
.end method

.method private static isSharedGid(I)Z
    .locals 1
    .param p0, "uid"    # I

    .line 4629
    invoke-static {p0}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isSystemUid(I)Z
    .locals 1
    .param p0, "uid"    # I

    .line 4633
    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2710

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private judgeRPM()Ljava/lang/String;
    .locals 18

    .line 3665
    move-object/from16 v0, p0

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->UNKNOWN:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3671
    .local v1, "detailCause":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_8

    .line 3677
    :cond_0
    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->checkifRPMCanDeepSleep(Ljava/util/List;)Z

    move-result v2

    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const-wide/16 v7, 0x0

    if-eqz v2, :cond_8

    .line 3679
    const-wide v10, 0x7fffffffffffffffL

    .line 3680
    .local v10, "smallest_acctime":J
    const-wide/16 v12, 0x0

    .line 3681
    .local v12, "longest_acctime":J
    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->UNKNOWN:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    .line 3682
    .local v2, "smallest_type":Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;
    const/4 v14, 0x0

    .line 3683
    .local v14, "percent":F
    move-object v15, v2

    const/4 v2, 0x0

    .local v2, "i":I
    .local v15, "smallest_type":Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;
    :goto_0
    iget-object v9, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_3

    .line 3685
    iget-object v9, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-wide v3, v9, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepAccDuration:J

    cmp-long v3, v12, v3

    if-gez v3, :cond_1

    .line 3686
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-wide v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepAccDuration:J

    .line 3689
    .end local v12    # "longest_acctime":J
    .local v3, "longest_acctime":J
    move-wide v12, v3

    .end local v3    # "longest_acctime":J
    .restart local v12    # "longest_acctime":J
    :cond_1
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-wide v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepAccDuration:J

    cmp-long v3, v10, v3

    if-ltz v3, :cond_2

    .line 3690
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-wide v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepAccDuration:J

    .line 3691
    .end local v10    # "smallest_acctime":J
    .local v3, "smallest_acctime":J
    iget-object v9, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-object v9, v9, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    .line 3683
    .end local v15    # "smallest_type":Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;
    .local v9, "smallest_type":Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;
    move-wide v10, v3

    move-object v15, v9

    .end local v3    # "smallest_acctime":J
    .end local v9    # "smallest_type":Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;
    .restart local v10    # "smallest_acctime":J
    .restart local v15    # "smallest_type":Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3694
    .end local v2    # "i":I
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[judgeRPM] longest_acctime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", smallest_acctime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", smallest_type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3696
    cmp-long v2, v12, v7

    if-eqz v2, :cond_4

    .line 3697
    sub-long v2, v12, v10

    long-to-float v2, v2

    mul-float/2addr v2, v6

    long-to-float v3, v12

    div-float/2addr v2, v3

    mul-float/2addr v2, v5

    .line 3698
    .end local v14    # "percent":F
    .local v2, "percent":F
    new-instance v3, Ljava/math/BigDecimal;

    float-to-double v4, v2

    invoke-direct {v3, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    .line 3699
    .local v3, "b":Ljava/math/BigDecimal;
    const/4 v4, 0x3

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    move-result v14

    .line 3700
    .end local v2    # "percent":F
    .restart local v14    # "percent":F
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[judgeRPM] percent[(longest-smallest)/longest] ="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " %"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3701
    .end local v3    # "b":Ljava/math/BigDecimal;
    goto :goto_1

    .line 3702
    :cond_4
    const-string v2, "[judgeRPM] longest_acctime == 0"

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3705
    :goto_1
    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SLEEP_ACC_DURATION_DIFF_PERCENT:F

    cmpl-float v2, v14, v2

    if-ltz v2, :cond_5

    .line 3707
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;->SLEEP_TIME_SHORT_:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3708
    return-object v1

    .line 3711
    :cond_5
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    move/from16 v2, v16

    .end local v16    # "i":I
    .local v2, "i":I
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 3713
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-object v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->SLPI:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    if-ne v3, v4, :cond_6

    .line 3714
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[judgeRPM] SLPI\'s SleepCount_Diff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-wide v4, v4, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepCountDiff:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", criteria="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SLPI_SLEEPCOUNT_DIFF_CRITERIA:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3715
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-wide v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepCountDiff:J

    sget-wide v5, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SLPI_SLEEPCOUNT_DIFF_CRITERIA:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_6

    .line 3717
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;->CANNOT_ENTER_ISLAND_MODE:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->SLPI:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3718
    return-object v1

    .line 3711
    :cond_6
    add-int/lit8 v16, v2, 0x1

    .end local v2    # "i":I
    .restart local v16    # "i":I
    goto :goto_2

    .line 3723
    .end local v10    # "smallest_acctime":J
    .end local v12    # "longest_acctime":J
    .end local v14    # "percent":F
    .end local v15    # "smallest_type":Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;
    .end local v16    # "i":I
    :cond_7
    goto/16 :goto_7

    .line 3727
    :cond_8
    invoke-static {}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->values()[Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_e

    aget-object v9, v2, v4

    .line 3730
    .local v9, "type":Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->SLPI:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    if-ne v9, v10, :cond_a

    .line 3727
    .end local v9    # "type":Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;
    :cond_9
    const/4 v14, 0x4

    goto/16 :goto_6

    .line 3732
    .restart local v9    # "type":Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;
    :cond_a
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    iget-object v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_9

    .line 3734
    invoke-virtual {v9}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-object v12, v12, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v12}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 3737
    iget-object v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-object v11, v11, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mCXState:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;

    sget-object v12, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;->A:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;

    if-ne v11, v12, :cond_d

    .line 3739
    iget-object v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-object v11, v11, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-direct {v0, v11}, Lcom/android/server/OnePlusStandbyAnalyzer;->getLongest_RPMSAD(Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;)J

    move-result-wide v11

    .line 3740
    .local v11, "longestRPMSAD":J
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[judgeRPM] CX_STATE:Active "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-object v14, v14, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ", longestRPMSAD="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3741
    cmp-long v13, v11, v7

    if-eqz v13, :cond_c

    .line 3742
    iget-object v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-wide v13, v13, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepAccDuration:J

    sub-long v13, v11, v13

    long-to-float v13, v13

    mul-float/2addr v13, v6

    long-to-float v14, v11

    div-float/2addr v13, v14

    mul-float/2addr v13, v5

    .line 3743
    .local v13, "percent":F
    new-instance v14, Ljava/math/BigDecimal;

    float-to-double v5, v13

    invoke-direct {v14, v5, v6}, Ljava/math/BigDecimal;-><init>(D)V

    move-object v5, v14

    .line 3744
    .local v5, "b":Ljava/math/BigDecimal;
    const/4 v6, 0x3

    const/4 v14, 0x4

    invoke-virtual {v5, v6, v14}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigDecimal;->floatValue()F

    move-result v13

    .line 3745
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[judgeRPM] percent[(longest-"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-object v6, v6, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\'s SAD)/longest] ="

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " %"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3746
    sget v6, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SLEEP_ACC_DURATION_DIFF_PERCENT:F

    cmpl-float v6, v13, v6

    if-ltz v6, :cond_b

    .line 3748
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;->CANNOT_ENTER_AOSD_:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3749
    return-object v1

    .line 3751
    .end local v5    # "b":Ljava/math/BigDecimal;
    .end local v13    # "percent":F
    :cond_b
    goto :goto_5

    .line 3752
    :cond_c
    const/4 v14, 0x4

    const-string v5, "[judgeRPM] longestRPMSAD == 0"

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .end local v11    # "longestRPMSAD":J
    goto :goto_5

    .line 3732
    :cond_d
    const/4 v14, 0x4

    :goto_5
    add-int/lit8 v10, v10, 0x1

    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v6, 0x3f800000    # 1.0f

    goto/16 :goto_4

    .line 3727
    .end local v9    # "type":Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;
    .end local v10    # "i":I
    :goto_6
    add-int/lit8 v4, v4, 0x1

    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v6, 0x3f800000    # 1.0f

    goto/16 :goto_3

    .line 3759
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;->CANNOT_ENTER_AOSD_:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->UNKNOWN:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3761
    :goto_7
    return-object v1

    .line 3672
    :cond_f
    :goto_8
    const-string v2, "[judgeRPM] oops, rpm data is not well retrieved, just return UNKNOWN"

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3673
    return-object v1
.end method

.method private judgeRootCause()Z
    .locals 60

    .line 2927
    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 2929
    .local v1, "daignosisAsAbn":Z
    iget-wide v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-gtz v2, :cond_0

    .line 2930
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "###### Due to mStandby_Ms: ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfStart:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfEnd:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "]="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " is less than 0, can\'t judge anything, need just return"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2932
    return v3

    .line 2934
    :cond_0
    iget-wide v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    iget-wide v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_MiniumPeriod:J

    cmp-long v2, v4, v6

    if-gez v2, :cond_1

    .line 2935
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "###### Due to mStandby_Ms: ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfStart:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfEnd:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "]="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " is less than "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_MiniumPeriod:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms, it\'s false alarm, just return"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2937
    return v3

    .line 2939
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2942
    .local v4, "startTime":J
    iput-boolean v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisAsNormal:Z

    .line 2945
    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 2948
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosis_ASSIST_Info:Ljava/lang/String;

    .line 2952
    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOnePlusDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

    const-string v6, "/data/system/power/diagnosis_assist.txt"

    invoke-virtual {v2, v6}, Lcom/android/server/OnePlusDiagnosisUtil;->resetAssitFile(Ljava/lang/String;)V

    .line 2955
    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOnePlusDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

    const-string v6, "/data/system/power/diagnosis_rpm.txt"

    invoke-virtual {v2, v6}, Lcom/android/server/OnePlusDiagnosisUtil;->resetAssitFile(Ljava/lang/String;)V

    .line 2957
    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NA:Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2958
    .local v2, "mDMPackage":Ljava/lang/String;
    sget-object v6, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NA:Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v6}, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2960
    .local v6, "mDMDetail":Ljava/lang/String;
    sget-object v7, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->NOT_DEFINDED:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 2961
    .local v7, "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2963
    .local v8, "batteryOutlierReason":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 2964
    .local v9, "sb":Ljava/lang/StringBuilder;
    iget-wide v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    invoke-static {v9, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 2965
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "###### Time of Standby period : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2967
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2968
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "###### Battery-Drop of Standby period : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Battery_Drop:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " %"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2969
    iget-object v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v11, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->DP:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    iget v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Battery_Drop:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2971
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "###### EverEnterDeepIdle : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverEnterDeepDoze:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2973
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2974
    new-instance v10, Ljava/math/BigDecimal;

    iget v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA:F

    float-to-double v11, v11

    invoke-direct {v10, v11, v12}, Ljava/math/BigDecimal;-><init>(D)V

    .line 2975
    .local v10, "b":Ljava/math/BigDecimal;
    const/4 v11, 0x4

    const/4 v12, 0x3

    invoke-virtual {v10, v12, v11}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v13

    invoke-virtual {v13}, Ljava/math/BigDecimal;->floatValue()F

    move-result v13

    iput v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA:F

    .line 2976
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "###### Average Current of Standby period : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, " mA, criteria="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA_Criteria:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, " mA"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2977
    iget-object v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v14, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->AC:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    iget v15, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA:F

    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2978
    iget-object v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v14, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->CRI:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    iget v15, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA_Criteria:F

    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2987
    iget-object v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v14, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->MIN:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    sget v15, Lcom/android/server/OnePlusStandbyAnalyzer;->mAVERAGE_CURRENT_EXCEED_FOR_MINOR:F

    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2990
    iget v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA:F

    iget v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA_Criteria:F

    sub-float/2addr v13, v14

    sget v14, Lcom/android/server/OnePlusStandbyAnalyzer;->mAVERAGE_CURRENT_EXCEED_FOR_MINOR:F

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_2

    .line 2991
    const-string v13, "###### Minor exceeding, lower down the criteria accordingly"

    invoke-static {v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2992
    sget v13, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNEL_WAKEUP_COUNT_CRITERIA_FOR_MINOR:I

    .line 2993
    .local v13, "local_KERNEL_WAKEUP_COUNT_CRITERIA":I
    sget v14, Lcom/android/server/OnePlusStandbyAnalyzer;->mUSERSPACE_WL_CRITERIA_FOR_MINOR:F

    .line 2994
    .local v14, "local_USERSPACE_WL_CRITERIA":F
    sget v15, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNELSPACE_WL_CRITERIA_FOR_MINOR:F

    .line 2995
    .local v15, "local_KERNELSPACE_WL_CRITERIA":F
    sget v16, Lcom/android/server/OnePlusStandbyAnalyzer;->mSIGNAL_BAD_CRITERIA_FOR_MINOR:F

    .line 2996
    .local v16, "local_SIGNAL_BAD_CRITERIA":F
    sget v17, Lcom/android/server/OnePlusStandbyAnalyzer;->mUNACCOUNTED_CRITERIA_FOR_MINOR:F

    .line 2996
    .local v17, "local_UNACCOUNTED_CRITERIA":F
    goto :goto_0

    .line 2998
    .end local v13    # "local_KERNEL_WAKEUP_COUNT_CRITERIA":I
    .end local v14    # "local_USERSPACE_WL_CRITERIA":F
    .end local v15    # "local_KERNELSPACE_WL_CRITERIA":F
    .end local v16    # "local_SIGNAL_BAD_CRITERIA":F
    .end local v17    # "local_UNACCOUNTED_CRITERIA":F
    :cond_2
    const-string v13, "###### Normal exceeding, use the normal criteria accordingly"

    invoke-static {v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2999
    sget v13, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNEL_WAKEUP_COUNT_CRITERIA:I

    .line 3000
    .restart local v13    # "local_KERNEL_WAKEUP_COUNT_CRITERIA":I
    sget v14, Lcom/android/server/OnePlusStandbyAnalyzer;->mUSERSPACE_WL_CRITERIA:F

    .line 3001
    .restart local v14    # "local_USERSPACE_WL_CRITERIA":F
    sget v15, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNELSPACE_WL_CRITERIA:F

    .line 3002
    .restart local v15    # "local_KERNELSPACE_WL_CRITERIA":F
    sget v16, Lcom/android/server/OnePlusStandbyAnalyzer;->mSIGNAL_BAD_CRITERIA:F

    .line 3003
    .restart local v16    # "local_SIGNAL_BAD_CRITERIA":F
    sget v17, Lcom/android/server/OnePlusStandbyAnalyzer;->mUNACCOUNTED_CRITERIA:F

    .line 3003
    .restart local v17    # "local_UNACCOUNTED_CRITERIA":F
    :goto_0
    move/from16 v18, v17

    .line 3006
    .end local v17    # "local_UNACCOUNTED_CRITERIA":F
    .local v18, "local_UNACCOUNTED_CRITERIA":F
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3007
    iget-wide v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Uptime_Ms:J

    invoke-static {v9, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3008
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "###### CPU Uptime of Standby period : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3011
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3012
    iget-wide v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_UserSpaceWL_Ms:J

    invoke-static {v9, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3013
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "###### UserSpace-WL(PowerManagerService.WakeLocks) of Standby period : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3016
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3017
    iget-wide v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_KernelSpaceWL_Ms:J

    invoke-static {v9, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3018
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "###### (Uptime - UserSpace-WL)KernelSpace of Standby period : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3021
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "###### Userspace WUA Count of Standby period : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WUA_Count:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " times"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3022
    sget-boolean v11, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    const/4 v12, 0x1

    if-eqz v11, :cond_3

    const-string v11, "Diff"

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    invoke-direct {v0, v11, v3, v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpUidWakeupAlarmInfo(Ljava/lang/String;Ljava/util/List;Z)V

    .line 3025
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "###### Kernel Wake-Up Count of Standby period : "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v22, v13

    iget-wide v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WR_Count:J

    .line 3025
    .end local v13    # "local_KERNEL_WAKEUP_COUNT_CRITERIA":I
    .local v22, "local_KERNEL_WAKEUP_COUNT_CRITERIA":I
    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " times"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3027
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpkwl(Ljava/util/List;)V

    .line 3030
    const-string v3, "Diff-RPM"

    iget-object v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v3, v11}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpRPMStatsDiff(Ljava/lang/String;Ljava/util/List;)V

    .line 3037
    const-string v3, "Diff-RPMMaster"

    iget-object v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v3, v11}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpRPMMasterStatsDiff(Ljava/lang/String;Ljava/util/List;)V

    .line 3046
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    iget-object v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v3, v11}, Lcom/android/server/OnePlusStandbyAnalyzer;->genRPMInfo(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 3050
    .local v3, "rpm_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOnePlusDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

    iget-wide v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    move/from16 v24, v1

    iget v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Battery_Drop:I

    .line 3050
    .end local v1    # "daignosisAsAbn":Z
    .local v24, "daignosisAsAbn":Z
    invoke-virtual {v11, v12, v13, v1, v3}, Lcom/android/server/OnePlusDiagnosisUtil;->genRaw(JILjava/util/List;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosis_RPM_Info:Ljava/lang/String;

    .line 3061
    const-string v1, "Diff-RPM"

    iget-object v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v1, v11, v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->genRPMInfo(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 3065
    .local v1, "rpm_all":Ljava/lang/String;
    iget-object v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v11}, Lcom/android/server/OnePlusStandbyAnalyzer;->genMDM_RPMMasterInfo(Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    .line 3066
    .local v11, "mdm_rpm_master_detail":Ljava/lang/String;
    const-string v12, "OPSA"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v2

    const-string v2, "###### RPM MDM_Detail : "

    .line 3066
    .end local v2    # "mDMPackage":Ljava/lang/String;
    .local v25, "mDMPackage":Ljava/lang/String;
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3073
    const-string v2, "Diff-WiFiWakeUp"

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    const/4 v13, 0x1

    invoke-direct {v0, v2, v12, v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpWiFiWakeUpStatsDiff(Ljava/lang/String;Ljava/util/List;Z)V

    .line 3076
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3077
    iget-wide v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_SignalBad_Ms:J

    invoke-static {v9, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3078
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "###### Signal Bad (None + Poor) of Standby period : "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3081
    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTeleChgInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->genTeleChgInfo(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 3082
    .local v2, "teleInfo":Ljava/lang/String;
    const-string v12, "OPSA"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v3

    const-string v3, "###### Diff-TeleChgInfo : "

    .line 3082
    .end local v3    # "rpm_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v26, "rpm_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3086
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTeleChgInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->get1stTelephonyAbnormal(Ljava/util/List;)Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;

    move-result-object v3

    .line 3087
    .local v3, "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    const-string v12, "OPSA"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v2

    const-string v2, "##### 1st-TelephonyAnomaly : "

    .line 3087
    .end local v2    # "teleInfo":Ljava/lang/String;
    .local v27, "teleInfo":Ljava/lang/String;
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3092
    sget-boolean v2, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v2, :cond_4

    const-string v2, "Diff - totalPowerMah"

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    const/4 v13, 0x1

    invoke-direct {v0, v2, v12, v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpBatterySipperListInfo(Ljava/lang/String;Ljava/util/List;Z)V

    .line 3095
    :cond_4
    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 3096
    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    new-instance v12, Lcom/android/server/OnePlusStandbyAnalyzer$5;

    invoke-direct {v12, v0}, Lcom/android/server/OnePlusStandbyAnalyzer$5;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    invoke-static {v2, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3101
    sget-boolean v2, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v2, :cond_5

    const-string v2, "Diff - wakeLockTimeMs"

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    const/4 v13, 0x1

    invoke-direct {v0, v2, v12, v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpBatterySipperListInfo(Ljava/lang/String;Ljava/util/List;Z)V

    .line 3104
    :cond_5
    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v12, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->VER:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const-string v13, "2.02"

    invoke-interface {v2, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3107
    iget-wide v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    long-to-float v2, v12

    const v12, 0x4a5bba00    # 3600000.0f

    div-float/2addr v2, v12

    .line 3108
    .local v2, "standby_hrs":F
    new-instance v12, Ljava/math/BigDecimal;

    move-object/from16 v28, v6

    move-object/from16 v29, v7

    float-to-double v6, v2

    .line 3108
    .end local v6    # "mDMDetail":Ljava/lang/String;
    .end local v7    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .local v28, "mDMDetail":Ljava/lang/String;
    .local v29, "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    invoke-direct {v12, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    move-object v6, v12

    .line 3109
    .end local v10    # "b":Ljava/math/BigDecimal;
    .local v6, "b":Ljava/math/BigDecimal;
    const/4 v7, 0x3

    const/4 v10, 0x4

    invoke-virtual {v6, v7, v10}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    .line 3110
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "###### standby_hrs : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, " h"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3111
    iget-object v7, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->SBHR:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3113
    iget-wide v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_UserSpaceWL_Ms:J

    long-to-float v7, v12

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v7, v10

    iget-wide v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    long-to-float v12, v12

    div-float/2addr v7, v12

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v7, v12

    .line 3114
    .local v7, "userSpaceWL_Percentage":F
    new-instance v13, Ljava/math/BigDecimal;

    move-object/from16 v30, v11

    float-to-double v10, v7

    .line 3114
    .end local v11    # "mdm_rpm_master_detail":Ljava/lang/String;
    .local v30, "mdm_rpm_master_detail":Ljava/lang/String;
    invoke-direct {v13, v10, v11}, Ljava/math/BigDecimal;-><init>(D)V

    move-object v6, v13

    .line 3115
    const/4 v10, 0x3

    const/4 v11, 0x4

    invoke-virtual {v6, v10, v11}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v13

    invoke-virtual {v13}, Ljava/math/BigDecimal;->floatValue()F

    move-result v7

    .line 3116
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "###### userSpaceWL_Percentage : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, " %"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3117
    iget-object v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v11, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->WLP:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3119
    iget-wide v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Uptime_Ms:J

    long-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v10, v11

    iget-wide v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    long-to-float v11, v12

    div-float/2addr v10, v11

    const/high16 v11, 0x42c80000    # 100.0f

    mul-float/2addr v10, v11

    .line 3120
    .local v10, "cpuRuning_Percentage":F
    new-instance v11, Ljava/math/BigDecimal;

    float-to-double v12, v10

    invoke-direct {v11, v12, v13}, Ljava/math/BigDecimal;-><init>(D)V

    move-object v6, v11

    .line 3121
    const/4 v11, 0x3

    const/4 v12, 0x4

    invoke-virtual {v6, v11, v12}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v13

    invoke-virtual {v13}, Ljava/math/BigDecimal;->floatValue()F

    move-result v10

    .line 3122
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "###### cpuRuning_Percentage : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, " %"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3123
    iget-object v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v12, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->CRP:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3125
    sub-float v11, v10, v7

    .line 3126
    .local v11, "kernelSpaceWL_Percentage":F
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "###### kernelSpaceWL_Percentage : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, " %"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3127
    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v13, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->KWLP:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    move-object/from16 v33, v6

    invoke-static {v11}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    .line 3127
    .end local v6    # "b":Ljava/math/BigDecimal;
    .local v33, "b":Ljava/math/BigDecimal;
    invoke-interface {v12, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3129
    move/from16 v13, v22

    int-to-float v6, v13

    .line 3129
    .end local v22    # "local_KERNEL_WAKEUP_COUNT_CRITERIA":I
    .restart local v13    # "local_KERNEL_WAKEUP_COUNT_CRITERIA":I
    mul-float/2addr v6, v2

    .line 3130
    .local v6, "local_wrCountCriteria":F
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v34, v2

    const-string v2, "###### local_wrCountCriteria : "

    .line 3130
    .end local v2    # "standby_hrs":F
    .local v34, "standby_hrs":F
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " times"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3132
    move-object/from16 v35, v9

    move/from16 v36, v10

    iget-wide v9, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_SignalBad_Ms:J

    .line 3132
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    .end local v10    # "cpuRuning_Percentage":F
    .local v35, "sb":Ljava/lang/StringBuilder;
    .local v36, "cpuRuning_Percentage":F
    long-to-float v2, v9

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v2, v9

    iget-wide v9, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    long-to-float v9, v9

    div-float/2addr v2, v9

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v2, v9

    .line 3133
    .local v2, "signalBad_Percentage":F
    new-instance v9, Ljava/math/BigDecimal;

    move/from16 v37, v13

    float-to-double v12, v2

    .line 3133
    .end local v13    # "local_KERNEL_WAKEUP_COUNT_CRITERIA":I
    .local v37, "local_KERNEL_WAKEUP_COUNT_CRITERIA":I
    invoke-direct {v9, v12, v13}, Ljava/math/BigDecimal;-><init>(D)V

    .line 3134
    .end local v33    # "b":Ljava/math/BigDecimal;
    .local v9, "b":Ljava/math/BigDecimal;
    const/4 v10, 0x3

    const/4 v12, 0x4

    invoke-virtual {v9, v10, v12}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v13

    invoke-virtual {v13}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    .line 3135
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "###### signalBad_Percentage : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, "  %"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3136
    iget-object v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v12, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->SBP:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3138
    invoke-direct/range {p0 .. p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->judgeRPM()Ljava/lang/String;

    move-result-object v10

    .line 3139
    .local v10, "rpmDetailJudge":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "###### [judgeRPM] :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3140
    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v13, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->RPM:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    move-object/from16 v38, v9

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 3140
    .end local v9    # "b":Ljava/math/BigDecimal;
    .local v38, "b":Ljava/math/BigDecimal;
    invoke-interface {v12, v13, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3142
    iget-object v9, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v12, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->WR:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    move-wide/from16 v39, v4

    iget-wide v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WR_Count:J

    .line 3142
    .end local v4    # "startTime":J
    .local v39, "startTime":J
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3144
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 3145
    .local v4, "unAccounted_Percentage":D
    iget-object v9, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_unAccounted_Sipper:Lcom/android/internal/os/BatterySipper;

    if-eqz v9, :cond_7

    .line 3146
    iget-wide v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStadby_totalPowerMah:D

    const-wide/16 v31, 0x0

    cmpl-double v9, v12, v31

    if-eqz v9, :cond_6

    .line 3147
    iget-object v9, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_unAccounted_Sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v12, v9, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v41, v4

    iget-wide v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStadby_totalPowerMah:D

    .line 3147
    .end local v4    # "unAccounted_Percentage":D
    .local v41, "unAccounted_Percentage":D
    div-double/2addr v12, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v12, v4

    .line 3148
    .end local v41    # "unAccounted_Percentage":D
    .local v12, "unAccounted_Percentage":D
    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v12, v13}, Ljava/math/BigDecimal;-><init>(D)V

    .line 3149
    .end local v38    # "b":Ljava/math/BigDecimal;
    .local v4, "b":Ljava/math/BigDecimal;
    const/4 v5, 0x3

    const/4 v9, 0x4

    invoke-virtual {v4, v5, v9}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v12

    .line 3150
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "###### existd unaccounted sipper, the percentage "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v9, " %"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3151
    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v9, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->UCP:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    move-object/from16 v43, v4

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    .line 3151
    .end local v4    # "b":Ljava/math/BigDecimal;
    .local v43, "b":Ljava/math/BigDecimal;
    invoke-interface {v5, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3153
    move-wide v4, v12

    move-object/from16 v9, v43

    goto :goto_1

    .line 3153
    .end local v12    # "unAccounted_Percentage":D
    .end local v43    # "b":Ljava/math/BigDecimal;
    .local v4, "unAccounted_Percentage":D
    .restart local v38    # "b":Ljava/math/BigDecimal;
    :cond_6
    move-wide/from16 v41, v4

    move-object/from16 v9, v38

    .line 3153
    .end local v38    # "b":Ljava/math/BigDecimal;
    .restart local v9    # "b":Ljava/math/BigDecimal;
    :goto_1
    const-string v12, "###### existd unaccounted sipper, but mStadby_totalPowerMah is 0"

    invoke-static {v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3159
    move-object/from16 v38, v9

    goto :goto_2

    .line 3155
    .end local v9    # "b":Ljava/math/BigDecimal;
    .restart local v38    # "b":Ljava/math/BigDecimal;
    :cond_7
    move-wide/from16 v41, v4

    .line 3155
    .end local v4    # "unAccounted_Percentage":D
    .restart local v41    # "unAccounted_Percentage":D
    const-string v4, "###### No-unaccounted sipper existed."

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3156
    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->UCP:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const-string v9, "-999"

    invoke-interface {v4, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3159
    move-wide/from16 v4, v41

    .line 3159
    .end local v41    # "unAccounted_Percentage":D
    .restart local v4    # "unAccounted_Percentage":D
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpCriteria()V

    .line 3162
    iget-object v9, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v12, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->EVDI:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const-string v13, "1"

    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3166
    invoke-direct/range {p0 .. p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->pkgConvertion()V

    .line 3175
    iget-boolean v9, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverQXDMRecordingByMyself:Z

    if-eqz v9, :cond_9

    .line 3181
    sget-object v9, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON:[I

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMTriggeringReason:Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    invoke-virtual {v12}, Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;->ordinal()I

    move-result v12

    aget v9, v9, v12

    packed-switch v9, :pswitch_data_0

    goto :goto_5

    .line 3218
    :pswitch_0
    sget-object v9, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->QXDM_MODEM_ANOMALY:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 3220
    .end local v29    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .local v9, "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    sget-object v12, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->QXDM_MODEM_ANOMALY:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v12}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3221
    .end local v25    # "mDMPackage":Ljava/lang/String;
    .local v12, "mDMPackage":Ljava/lang/String;
    move-object v13, v12

    .line 3221
    .end local v28    # "mDMDetail":Ljava/lang/String;
    .local v13, "mDMDetail":Ljava/lang/String;
    :goto_3
    goto :goto_6

    .line 3183
    .end local v9    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .end local v12    # "mDMPackage":Ljava/lang/String;
    .end local v13    # "mDMDetail":Ljava/lang/String;
    .restart local v25    # "mDMPackage":Ljava/lang/String;
    .restart local v28    # "mDMDetail":Ljava/lang/String;
    .restart local v29    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :pswitch_1
    if-eqz v3, :cond_8

    .line 3184
    sget-object v9, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$TELEPHONY_TYPE:[I

    iget-object v12, v3, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    invoke-virtual {v12}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->ordinal()I

    move-result v12

    aget v9, v9, v12

    packed-switch v9, :pswitch_data_1

    .line 3198
    move-object/from16 v9, v29

    goto :goto_4

    .line 3195
    :pswitch_2
    sget-object v9, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->QXDM_TELEPHONY_RAT_ANOMALY:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 3195
    .end local v29    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v9    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    goto :goto_4

    .line 3192
    .end local v9    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v29    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :pswitch_3
    sget-object v9, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->QXDM_TELEPHONY_IMS_ANOMALY:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 3193
    .end local v29    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v9    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    goto :goto_4

    .line 3189
    .end local v9    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v29    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :pswitch_4
    sget-object v9, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->QXDM_TELEPHONY_DATACALL_ANOMALY:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 3190
    .end local v29    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v9    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    goto :goto_4

    .line 3186
    .end local v9    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v29    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :pswitch_5
    sget-object v9, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->QXDM_TELEPHONY_NETWORK_ANOMALY:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 3187
    .end local v29    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v9    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    nop

    .line 3198
    :goto_4
    invoke-virtual {v9}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3199
    const-string v12, ";"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3200
    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->toStringForDump()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3203
    iget-object v12, v3, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    iget-boolean v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverQXDMRecordingByMyself:Z

    invoke-static {v12, v13}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->toReasonString(Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;Z)Ljava/lang/String;

    move-result-object v12

    .line 3214
    .end local v25    # "mDMPackage":Ljava/lang/String;
    .restart local v12    # "mDMPackage":Ljava/lang/String;
    move-object v13, v12

    goto :goto_3

    .line 3222
    .end local v9    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .end local v12    # "mDMPackage":Ljava/lang/String;
    .restart local v25    # "mDMPackage":Ljava/lang/String;
    .restart local v29    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :cond_8
    :goto_5
    move-object/from16 v12, v25

    move-object/from16 v13, v28

    move-object/from16 v9, v29

    .line 3566
    .end local v25    # "mDMPackage":Ljava/lang/String;
    .end local v28    # "mDMDetail":Ljava/lang/String;
    .end local v29    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v9    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v12    # "mDMPackage":Ljava/lang/String;
    .restart local v13    # "mDMDetail":Ljava/lang/String;
    :goto_6
    move-object/from16 v48, v1

    move/from16 v49, v2

    move-object/from16 v52, v3

    move-wide/from16 v53, v4

    move/from16 v45, v6

    move-object v2, v12

    move-object v12, v13

    .line 3566
    .end local v1    # "rpm_all":Ljava/lang/String;
    .end local v3    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .end local v4    # "unAccounted_Percentage":D
    .end local v13    # "mDMDetail":Ljava/lang/String;
    .end local v18    # "local_UNACCOUNTED_CRITERIA":F
    .local v2, "mDMPackage":Ljava/lang/String;
    .local v6, "local_UNACCOUNTED_CRITERIA":F
    .local v12, "mDMDetail":Ljava/lang/String;
    .local v45, "local_wrCountCriteria":F
    .local v48, "rpm_all":Ljava/lang/String;
    .local v49, "signalBad_Percentage":F
    .local v52, "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .local v53, "unAccounted_Percentage":D
    :goto_7
    move/from16 v6, v18

    goto/16 :goto_23

    .line 3225
    .end local v9    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .end local v12    # "mDMDetail":Ljava/lang/String;
    .end local v45    # "local_wrCountCriteria":F
    .end local v48    # "rpm_all":Ljava/lang/String;
    .end local v49    # "signalBad_Percentage":F
    .end local v52    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .end local v53    # "unAccounted_Percentage":D
    .restart local v1    # "rpm_all":Ljava/lang/String;
    .local v2, "signalBad_Percentage":F
    .restart local v3    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .restart local v4    # "unAccounted_Percentage":D
    .local v6, "local_wrCountCriteria":F
    .restart local v18    # "local_UNACCOUNTED_CRITERIA":F
    .restart local v25    # "mDMPackage":Ljava/lang/String;
    .restart local v28    # "mDMDetail":Ljava/lang/String;
    .restart local v29    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :cond_9
    iget-boolean v9, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsQuickSimulate:Z

    if-nez v9, :cond_a

    iget-boolean v9, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverEnterDeepDoze:Z

    if-nez v9, :cond_a

    .line 3226
    sget-object v9, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->NO_ENTER_DEEPIDLE:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 3227
    .end local v29    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v9    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    sget-object v12, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->NO_ENTER_DEEPIDLE:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v12}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3228
    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v13, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->EVDI:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    move-object/from16 v44, v9

    const-string v9, "0"

    .line 3228
    .end local v9    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .local v44, "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    invoke-interface {v12, v13, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3230
    sget-object v9, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NO_ENTER_DEEP_IDLE:Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v9}, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3231
    .end local v25    # "mDMPackage":Ljava/lang/String;
    .local v9, "mDMPackage":Ljava/lang/String;
    sget-object v12, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NO_ENTER_DEEP_IDLE:Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v12}, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3566
    .end local v28    # "mDMDetail":Ljava/lang/String;
    .restart local v12    # "mDMDetail":Ljava/lang/String;
    move-object/from16 v48, v1

    move/from16 v49, v2

    move-object/from16 v52, v3

    move-wide/from16 v53, v4

    move/from16 v45, v6

    move-object v2, v9

    move/from16 v6, v18

    move-object/from16 v9, v44

    goto/16 :goto_23

    .line 3234
    .end local v9    # "mDMPackage":Ljava/lang/String;
    .end local v12    # "mDMDetail":Ljava/lang/String;
    .end local v44    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v25    # "mDMPackage":Ljava/lang/String;
    .restart local v28    # "mDMDetail":Ljava/lang/String;
    .restart local v29    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :cond_a
    iget-wide v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WR_Count:J

    long-to-float v9, v12

    cmpl-float v9, v9, v6

    if-ltz v9, :cond_12

    .line 3235
    sget-object v9, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->KERNEL_WAKEUP:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 3236
    .end local v29    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .local v9, "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    sget-object v12, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->KERNEL_WAKEUP:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v12}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3238
    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    if-eqz v12, :cond_11

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_11

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_11

    .line 3239
    const-string v12, ";"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3240
    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;

    invoke-virtual {v12}, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3246
    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;

    iget-object v12, v12, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mName:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;->fromString(Ljava/lang/String;)Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    move-result-object v12

    sget-object v13, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;->modem:Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    if-ne v12, v13, :cond_b

    .line 3247
    sget-object v12, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;->modem:Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    invoke-virtual {v12}, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    .line 3247
    .end local v25    # "mDMPackage":Ljava/lang/String;
    .local v12, "mDMPackage":Ljava/lang/String;
    :goto_8
    goto :goto_9

    .line 3249
    .end local v12    # "mDMPackage":Ljava/lang/String;
    .restart local v25    # "mDMPackage":Ljava/lang/String;
    :cond_b
    sget-object v12, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NA_WR:Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v12}, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_8

    .line 3252
    .end local v25    # "mDMPackage":Ljava/lang/String;
    .restart local v12    # "mDMPackage":Ljava/lang/String;
    :goto_9
    iget-object v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    move/from16 v45, v6

    const/4 v6, 0x0

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 3252
    .end local v6    # "local_wrCountCriteria":F
    .restart local v45    # "local_wrCountCriteria":F
    check-cast v13, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;

    iget-object v6, v13, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mName:Ljava/lang/String;

    .line 3255
    .end local v28    # "mDMDetail":Ljava/lang/String;
    .local v6, "mDMDetail":Ljava/lang/String;
    const/4 v13, 0x3

    .line 3256
    .local v13, "max":I
    move-object/from16 v46, v6

    iget-object v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    .line 3256
    .end local v6    # "mDMDetail":Ljava/lang/String;
    .local v46, "mDMDetail":Ljava/lang/String;
    if-eqz v6, :cond_d

    iget-object v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_d

    .line 3257
    const/4 v6, 0x0

    .line 3257
    .local v6, "i":I
    :goto_a
    move-object/from16 v47, v9

    iget-object v9, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    .line 3257
    .end local v9    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .local v47, "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_e

    .line 3258
    if-ge v6, v13, :cond_c

    .line 3259
    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3260
    iget-object v9, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;

    invoke-virtual {v9}, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3257
    :cond_c
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v9, v47

    goto :goto_a

    .line 3266
    .end local v6    # "i":I
    .end local v47    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v9    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :cond_d
    move-object/from16 v47, v9

    .line 3266
    .end local v9    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v47    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :cond_e
    iget-object v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    if-eqz v6, :cond_f

    iget-object v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_f

    iget-object v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 3267
    const-string v6, ";"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3271
    iget-object v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;

    invoke-virtual {v6}, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->toRawString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 3273
    :cond_f
    const/4 v9, 0x0

    :cond_10
    :goto_b
    iget-object v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;

    invoke-virtual {v6}, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3274
    .end local v13    # "max":I
    nop

    .line 3566
    move-object/from16 v48, v1

    move/from16 v49, v2

    move-object/from16 v52, v3

    move-wide/from16 v53, v4

    move-object v2, v12

    move/from16 v6, v18

    move-object/from16 v12, v46

    goto :goto_c

    .line 3566
    .end local v12    # "mDMPackage":Ljava/lang/String;
    .end local v45    # "local_wrCountCriteria":F
    .end local v46    # "mDMDetail":Ljava/lang/String;
    .end local v47    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .local v6, "local_wrCountCriteria":F
    .restart local v9    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v25    # "mDMPackage":Ljava/lang/String;
    .restart local v28    # "mDMDetail":Ljava/lang/String;
    :cond_11
    move/from16 v45, v6

    move-object/from16 v47, v9

    .line 3566
    .end local v6    # "local_wrCountCriteria":F
    .end local v9    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v45    # "local_wrCountCriteria":F
    .restart local v47    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    move-object/from16 v48, v1

    move/from16 v49, v2

    move-object/from16 v52, v3

    move-wide/from16 v53, v4

    move/from16 v6, v18

    move-object/from16 v2, v25

    move-object/from16 v12, v28

    .line 3566
    .end local v1    # "rpm_all":Ljava/lang/String;
    .end local v3    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .end local v4    # "unAccounted_Percentage":D
    .end local v18    # "local_UNACCOUNTED_CRITERIA":F
    .end local v25    # "mDMPackage":Ljava/lang/String;
    .end local v28    # "mDMDetail":Ljava/lang/String;
    .end local v47    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .local v2, "mDMPackage":Ljava/lang/String;
    .local v6, "local_UNACCOUNTED_CRITERIA":F
    .restart local v9    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .local v12, "mDMDetail":Ljava/lang/String;
    .restart local v48    # "rpm_all":Ljava/lang/String;
    .restart local v49    # "signalBad_Percentage":F
    .restart local v52    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .restart local v53    # "unAccounted_Percentage":D
    :goto_c
    move-object/from16 v9, v47

    goto/16 :goto_23

    .line 3276
    .end local v9    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .end local v12    # "mDMDetail":Ljava/lang/String;
    .end local v45    # "local_wrCountCriteria":F
    .end local v48    # "rpm_all":Ljava/lang/String;
    .end local v49    # "signalBad_Percentage":F
    .end local v52    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .end local v53    # "unAccounted_Percentage":D
    .restart local v1    # "rpm_all":Ljava/lang/String;
    .local v2, "signalBad_Percentage":F
    .restart local v3    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .restart local v4    # "unAccounted_Percentage":D
    .local v6, "local_wrCountCriteria":F
    .restart local v18    # "local_UNACCOUNTED_CRITERIA":F
    .restart local v25    # "mDMPackage":Ljava/lang/String;
    .restart local v28    # "mDMDetail":Ljava/lang/String;
    .restart local v29    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :cond_12
    move/from16 v45, v6

    .line 3276
    .end local v6    # "local_wrCountCriteria":F
    .restart local v45    # "local_wrCountCriteria":F
    cmpl-float v6, v7, v14

    if-gez v6, :cond_1e

    cmpl-float v6, v11, v15

    if-ltz v6, :cond_13

    .line 3279
    move-object/from16 v48, v1

    move/from16 v49, v2

    move/from16 v6, v18

    goto/16 :goto_17

    .line 3413
    :cond_13
    cmpl-float v6, v2, v16

    if-ltz v6, :cond_14

    .line 3414
    sget-object v9, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->SINGAL_BAD:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 3415
    .end local v29    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v9    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    sget-object v6, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->SINGAL_BAD:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v6}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3416
    const-string v6, ";"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3417
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, " %"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3419
    sget-object v6, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NA_SBD:Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v6}, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3420
    .end local v25    # "mDMPackage":Ljava/lang/String;
    .local v6, "mDMPackage":Ljava/lang/String;
    sget-object v12, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NA_SBD:Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v12}, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3566
    .end local v1    # "rpm_all":Ljava/lang/String;
    .end local v3    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .end local v4    # "unAccounted_Percentage":D
    .end local v18    # "local_UNACCOUNTED_CRITERIA":F
    .end local v28    # "mDMDetail":Ljava/lang/String;
    .local v2, "mDMPackage":Ljava/lang/String;
    .local v6, "local_UNACCOUNTED_CRITERIA":F
    .restart local v12    # "mDMDetail":Ljava/lang/String;
    .restart local v48    # "rpm_all":Ljava/lang/String;
    .restart local v49    # "signalBad_Percentage":F
    .restart local v52    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .restart local v53    # "unAccounted_Percentage":D
    :goto_d
    move-object/from16 v48, v1

    move/from16 v49, v2

    move-object/from16 v52, v3

    move-wide/from16 v53, v4

    move-object v2, v6

    goto/16 :goto_7

    .line 3422
    .end local v6    # "local_UNACCOUNTED_CRITERIA":F
    .end local v9    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .end local v12    # "mDMDetail":Ljava/lang/String;
    .end local v48    # "rpm_all":Ljava/lang/String;
    .end local v49    # "signalBad_Percentage":F
    .end local v52    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .end local v53    # "unAccounted_Percentage":D
    .restart local v1    # "rpm_all":Ljava/lang/String;
    .local v2, "signalBad_Percentage":F
    .restart local v3    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .restart local v4    # "unAccounted_Percentage":D
    .restart local v18    # "local_UNACCOUNTED_CRITERIA":F
    .restart local v25    # "mDMPackage":Ljava/lang/String;
    .restart local v28    # "mDMDetail":Ljava/lang/String;
    .restart local v29    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :cond_14
    iget-object v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->checkifRPMAbnormal(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 3425
    sget-object v9, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->AOSD_VMIN_NO_INCREASE:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 3426
    .end local v29    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v9    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    sget-object v6, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->AOSD_VMIN_NO_INCREASE:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v6}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3429
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "###### [judgeRPM] :"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3431
    const-string v6, ";"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3433
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "# [judgeRPM]=["

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "] #"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3436
    const-string v6, ";"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3437
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3440
    iget-boolean v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z

    if-eqz v6, :cond_15

    .line 3441
    const-string v6, "aosd_no_increase"

    .line 3441
    .end local v25    # "mDMPackage":Ljava/lang/String;
    .local v6, "mDMPackage":Ljava/lang/String;
    :goto_e
    goto :goto_f

    .line 3443
    .end local v6    # "mDMPackage":Ljava/lang/String;
    .restart local v25    # "mDMPackage":Ljava/lang/String;
    :cond_15
    const-string/jumbo v6, "vmin_no_increase"

    goto :goto_e

    .line 3446
    .end local v25    # "mDMPackage":Ljava/lang/String;
    .restart local v6    # "mDMPackage":Ljava/lang/String;
    :goto_f
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "###### [RPM] :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3448
    sget-object v12, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->UNKNOWN:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v12}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 3451
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NA_RPM:Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v13}, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d

    .line 3454
    :cond_16
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d

    .line 3458
    .end local v6    # "mDMPackage":Ljava/lang/String;
    .end local v9    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v25    # "mDMPackage":Ljava/lang/String;
    .restart local v29    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :cond_17
    move/from16 v6, v18

    float-to-double v12, v6

    .line 3458
    .end local v18    # "local_UNACCOUNTED_CRITERIA":F
    .local v6, "local_UNACCOUNTED_CRITERIA":F
    cmpl-double v9, v4, v12

    if-lez v9, :cond_1c

    .line 3459
    sget-object v9, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->HIGH_UNACCOUNTED:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 3460
    .end local v29    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v9    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    sget-object v12, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->HIGH_UNACCOUNTED:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v12}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3461
    const-string v12, ";"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3462
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "unaccounted:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v13, " %"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3467
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "###### [judgeRPM] :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3469
    const-string v12, ";"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3471
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "# [judgeRPM]=["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "] #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3474
    const-string/jumbo v12, "high_unaccounted"

    .line 3478
    .end local v25    # "mDMPackage":Ljava/lang/String;
    .local v12, "mDMPackage":Ljava/lang/String;
    const/4 v13, 0x0

    .line 3479
    .local v13, "tele_abn_str_detail":Ljava/lang/String;
    const/16 v17, 0x0

    .line 3481
    .local v17, "tele_abn_str_mdm":Ljava/lang/String;
    if-eqz v3, :cond_1a

    move-object/from16 v48, v1

    iget v1, v3, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mOnAnomalyStatusChangeCount:I

    .line 3481
    .end local v1    # "rpm_all":Ljava/lang/String;
    .restart local v48    # "rpm_all":Ljava/lang/String;
    if-lez v1, :cond_19

    .line 3483
    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->toStringForDump()Ljava/lang/String;

    move-result-object v1

    .line 3484
    .end local v13    # "tele_abn_str_detail":Ljava/lang/String;
    .local v1, "tele_abn_str_detail":Ljava/lang/String;
    iget-object v13, v3, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    move/from16 v49, v2

    const/4 v2, 0x0

    invoke-static {v13, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->toReasonString(Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;Z)Ljava/lang/String;

    move-result-object v2

    .line 3487
    .end local v17    # "tele_abn_str_mdm":Ljava/lang/String;
    .local v2, "tele_abn_str_mdm":Ljava/lang/String;
    .restart local v49    # "signalBad_Percentage":F
    const-string v13, ";"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3488
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3491
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v50, v1

    const-string v1, "_"

    .line 3491
    .end local v1    # "tele_abn_str_detail":Ljava/lang/String;
    .local v50, "tele_abn_str_detail":Ljava/lang/String;
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3503
    .end local v12    # "mDMPackage":Ljava/lang/String;
    .local v1, "mDMPackage":Ljava/lang/String;
    sget-object v12, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->UNKNOWN:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v12}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 3506
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NA_RPM:Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3524
    .end local v28    # "mDMDetail":Ljava/lang/String;
    .end local v50    # "tele_abn_str_detail":Ljava/lang/String;
    .local v1, "mDMDetail":Ljava/lang/String;
    .local v2, "mDMPackage":Ljava/lang/String;
    .local v12, "mDMDetail":Ljava/lang/String;
    :goto_10
    move-object v2, v1

    move-object v1, v12

    goto :goto_13

    .line 3509
    .end local v12    # "mDMDetail":Ljava/lang/String;
    .local v1, "mDMPackage":Ljava/lang/String;
    .local v2, "tele_abn_str_mdm":Ljava/lang/String;
    .restart local v28    # "mDMDetail":Ljava/lang/String;
    .restart local v50    # "tele_abn_str_detail":Ljava/lang/String;
    :cond_18
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_10

    .line 3514
    .end local v1    # "mDMPackage":Ljava/lang/String;
    .end local v49    # "signalBad_Percentage":F
    .end local v50    # "tele_abn_str_detail":Ljava/lang/String;
    .local v2, "signalBad_Percentage":F
    .local v12, "mDMPackage":Ljava/lang/String;
    .restart local v13    # "tele_abn_str_detail":Ljava/lang/String;
    .restart local v17    # "tele_abn_str_mdm":Ljava/lang/String;
    :cond_19
    move/from16 v49, v2

    .line 3514
    .end local v2    # "signalBad_Percentage":F
    .restart local v49    # "signalBad_Percentage":F
    goto :goto_11

    .line 3514
    .end local v48    # "rpm_all":Ljava/lang/String;
    .end local v49    # "signalBad_Percentage":F
    .local v1, "rpm_all":Ljava/lang/String;
    .restart local v2    # "signalBad_Percentage":F
    :cond_1a
    move-object/from16 v48, v1

    move/from16 v49, v2

    .line 3514
    .end local v1    # "rpm_all":Ljava/lang/String;
    .end local v2    # "signalBad_Percentage":F
    .restart local v48    # "rpm_all":Ljava/lang/String;
    .restart local v49    # "signalBad_Percentage":F
    :goto_11
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->UNKNOWN:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 3517
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NA_RPM:Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3524
    .end local v12    # "mDMPackage":Ljava/lang/String;
    .end local v13    # "tele_abn_str_detail":Ljava/lang/String;
    .end local v17    # "tele_abn_str_mdm":Ljava/lang/String;
    .end local v28    # "mDMDetail":Ljava/lang/String;
    .local v1, "mDMDetail":Ljava/lang/String;
    .local v2, "mDMPackage":Ljava/lang/String;
    :goto_12
    move-object v2, v12

    goto :goto_13

    .line 3520
    .end local v1    # "mDMDetail":Ljava/lang/String;
    .end local v2    # "mDMPackage":Ljava/lang/String;
    .restart local v12    # "mDMPackage":Ljava/lang/String;
    .restart local v13    # "tele_abn_str_detail":Ljava/lang/String;
    .restart local v17    # "tele_abn_str_mdm":Ljava/lang/String;
    .restart local v28    # "mDMDetail":Ljava/lang/String;
    :cond_1b
    move-object v1, v10

    .line 3520
    .end local v13    # "tele_abn_str_detail":Ljava/lang/String;
    .end local v17    # "tele_abn_str_mdm":Ljava/lang/String;
    .end local v28    # "mDMDetail":Ljava/lang/String;
    .restart local v1    # "mDMDetail":Ljava/lang/String;
    goto :goto_12

    .line 3524
    .end local v12    # "mDMPackage":Ljava/lang/String;
    .restart local v2    # "mDMPackage":Ljava/lang/String;
    :goto_13
    goto :goto_16

    .line 3524
    .end local v9    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .end local v48    # "rpm_all":Ljava/lang/String;
    .end local v49    # "signalBad_Percentage":F
    .local v1, "rpm_all":Ljava/lang/String;
    .local v2, "signalBad_Percentage":F
    .restart local v25    # "mDMPackage":Ljava/lang/String;
    .restart local v28    # "mDMDetail":Ljava/lang/String;
    .restart local v29    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :cond_1c
    move-object/from16 v48, v1

    move/from16 v49, v2

    .line 3524
    .end local v1    # "rpm_all":Ljava/lang/String;
    .end local v2    # "signalBad_Percentage":F
    .restart local v48    # "rpm_all":Ljava/lang/String;
    .restart local v49    # "signalBad_Percentage":F
    if-eqz v3, :cond_1d

    iget v1, v3, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mOnAnomalyStatusChangeCount:I

    if-lez v1, :cond_1d

    .line 3526
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$TELEPHONY_TYPE:[I

    iget-object v2, v3, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2

    .line 3540
    move-object/from16 v9, v29

    goto :goto_15

    .line 3537
    :pswitch_6
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->TELEPHONY_RAT_ANOMALY:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 3537
    .end local v29    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .local v1, "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    goto :goto_14

    .line 3534
    .end local v1    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v29    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :pswitch_7
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->TELEPHONY_IMS_ANOMALY:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 3535
    .end local v29    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v1    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    goto :goto_14

    .line 3531
    .end local v1    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v29    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :pswitch_8
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->TELEPHONY_DATACALL_ANOMALY:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 3532
    .end local v29    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v1    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    goto :goto_14

    .line 3528
    .end local v1    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v29    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :pswitch_9
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->TELEPHONY_NETWORK_ANOMALY:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 3529
    .end local v29    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v1    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    nop

    .line 3540
    .end local v1    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v9    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :goto_14
    move-object v9, v1

    :goto_15
    invoke-virtual {v9}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3541
    const-string v1, ";"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3542
    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->toStringForDump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3545
    iget-object v1, v3, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->toReasonString(Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;Z)Ljava/lang/String;

    move-result-object v2

    .line 3555
    .end local v25    # "mDMPackage":Ljava/lang/String;
    .local v2, "mDMPackage":Ljava/lang/String;
    move-object v1, v2

    goto :goto_16

    .line 3558
    .end local v2    # "mDMPackage":Ljava/lang/String;
    .end local v9    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v25    # "mDMPackage":Ljava/lang/String;
    .restart local v29    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :cond_1d
    sget-object v9, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->UNKNOWN:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 3559
    .end local v29    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v9    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->UNKNOWN:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3562
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NA_NOCULPRIT:Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3563
    .end local v25    # "mDMPackage":Ljava/lang/String;
    .restart local v2    # "mDMPackage":Ljava/lang/String;
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NA_NOCULPRIT:Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3566
    .end local v3    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .end local v4    # "unAccounted_Percentage":D
    .end local v28    # "mDMDetail":Ljava/lang/String;
    .local v12, "mDMDetail":Ljava/lang/String;
    .restart local v52    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .restart local v53    # "unAccounted_Percentage":D
    :goto_16
    move-object v12, v1

    move-object/from16 v52, v3

    move-wide/from16 v53, v4

    goto/16 :goto_23

    .line 3279
    .end local v6    # "local_UNACCOUNTED_CRITERIA":F
    .end local v9    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .end local v12    # "mDMDetail":Ljava/lang/String;
    .end local v48    # "rpm_all":Ljava/lang/String;
    .end local v49    # "signalBad_Percentage":F
    .end local v52    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .end local v53    # "unAccounted_Percentage":D
    .local v1, "rpm_all":Ljava/lang/String;
    .local v2, "signalBad_Percentage":F
    .restart local v3    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .restart local v4    # "unAccounted_Percentage":D
    .restart local v18    # "local_UNACCOUNTED_CRITERIA":F
    .restart local v25    # "mDMPackage":Ljava/lang/String;
    .restart local v28    # "mDMDetail":Ljava/lang/String;
    .restart local v29    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :cond_1e
    move-object/from16 v48, v1

    move/from16 v49, v2

    move/from16 v6, v18

    .line 3279
    .end local v1    # "rpm_all":Ljava/lang/String;
    .end local v2    # "signalBad_Percentage":F
    .end local v18    # "local_UNACCOUNTED_CRITERIA":F
    .restart local v6    # "local_UNACCOUNTED_CRITERIA":F
    .restart local v48    # "rpm_all":Ljava/lang/String;
    .restart local v49    # "signalBad_Percentage":F
    :goto_17
    cmpl-float v1, v7, v11

    if-lez v1, :cond_27

    .line 3281
    sget-object v9, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->USERSPEACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 3282
    .end local v29    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v9    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->USERSPEACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3285
    const-string v1, ""

    .line 3286
    .local v1, "sipperInfo":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3287
    .local v2, "target":Lcom/android/internal/os/BatterySipper;
    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    if-eqz v12, :cond_26

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_26

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_26

    .line 3288
    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    iget v12, v12, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mUid:I

    .line 3290
    .local v12, "uidWL":I
    iget-object v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    if-eqz v13, :cond_23

    .line 3291
    move-object v13, v2

    const/4 v2, 0x0

    .line 3291
    .local v2, "i":I
    .local v13, "target":Lcom/android/internal/os/BatterySipper;
    :goto_18
    move-object/from16 v51, v1

    iget-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    .line 3291
    .end local v1    # "sipperInfo":Ljava/lang/String;
    .local v51, "sipperInfo":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_22

    .line 3293
    if-nez v2, :cond_1f

    iget-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatterySipper;

    .line 3294
    .end local v13    # "target":Lcom/android/internal/os/BatterySipper;
    .local v1, "target":Lcom/android/internal/os/BatterySipper;
    move-object v13, v1

    .line 3294
    .end local v1    # "target":Lcom/android/internal/os/BatterySipper;
    .restart local v13    # "target":Lcom/android/internal/os/BatterySipper;
    :cond_1f
    iget-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatterySipper;

    iget-object v1, v1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v1, :cond_20

    iget-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatterySipper;

    iget-object v1, v1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    goto :goto_19

    :cond_20
    const/4 v1, -0x1

    .line 3295
    .local v1, "uidSipper":I
    :goto_19
    move-object/from16 v52, v3

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    .line 3295
    .end local v3    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .restart local v52    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatterySipper;

    iget-object v3, v3, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-wide/from16 v53, v4

    sget-object v4, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 3295
    .end local v4    # "unAccounted_Percentage":D
    .restart local v53    # "unAccounted_Percentage":D
    if-ne v3, v4, :cond_21

    if-ne v1, v12, :cond_21

    .line 3296
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatterySipper;

    .line 3297
    .end local v13    # "target":Lcom/android/internal/os/BatterySipper;
    .local v3, "target":Lcom/android/internal/os/BatterySipper;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "###### Matched Sipper at ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-direct {v0, v5, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->genBatterySipperInfo(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3298
    nop

    .line 3301
    move-object v2, v3

    goto :goto_1a

    .line 3291
    .end local v1    # "uidSipper":I
    .end local v3    # "target":Lcom/android/internal/os/BatterySipper;
    .restart local v13    # "target":Lcom/android/internal/os/BatterySipper;
    :cond_21
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, v51

    move-object/from16 v3, v52

    move-wide/from16 v4, v53

    goto :goto_18

    .line 3301
    .end local v2    # "i":I
    .end local v52    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .end local v53    # "unAccounted_Percentage":D
    .local v3, "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .restart local v4    # "unAccounted_Percentage":D
    :cond_22
    move-object/from16 v52, v3

    move-wide/from16 v53, v4

    move-object v2, v13

    .line 3301
    .end local v3    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .end local v4    # "unAccounted_Percentage":D
    .end local v13    # "target":Lcom/android/internal/os/BatterySipper;
    .local v2, "target":Lcom/android/internal/os/BatterySipper;
    .restart local v52    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .restart local v53    # "unAccounted_Percentage":D
    :goto_1a
    if-eqz v2, :cond_24

    .line 3302
    const-string v1, ""

    invoke-direct {v0, v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->genBatterySipperInfo(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    move-result-object v1

    .line 3315
    .end local v51    # "sipperInfo":Ljava/lang/String;
    .local v1, "sipperInfo":Ljava/lang/String;
    move-object/from16 v51, v1

    goto :goto_1b

    .line 3315
    .end local v52    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .end local v53    # "unAccounted_Percentage":D
    .restart local v3    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .restart local v4    # "unAccounted_Percentage":D
    :cond_23
    move-object/from16 v51, v1

    move-object/from16 v52, v3

    move-wide/from16 v53, v4

    .line 3315
    .end local v1    # "sipperInfo":Ljava/lang/String;
    .end local v3    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .end local v4    # "unAccounted_Percentage":D
    .restart local v51    # "sipperInfo":Ljava/lang/String;
    .restart local v52    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .restart local v53    # "unAccounted_Percentage":D
    :cond_24
    :goto_1b
    invoke-direct {v0, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->getSipperPkgInfo(Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    move-result-object v1

    .line 3318
    .end local v25    # "mDMPackage":Ljava/lang/String;
    .local v1, "mDMPackage":Ljava/lang/String;
    const-string v3, ";"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3319
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->toRawString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1st-WL:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    invoke-virtual {v5}, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->toFullString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3325
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    iget-object v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mWLName:Ljava/lang/String;

    .line 3337
    .end local v28    # "mDMDetail":Ljava/lang/String;
    .local v3, "mDMDetail":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3338
    .local v5, "output_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->toRawString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3340
    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOnePlusDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

    move-object/from16 v56, v1

    move-object/from16 v55, v2

    iget-wide v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    .line 3340
    .end local v1    # "mDMPackage":Ljava/lang/String;
    .end local v2    # "target":Lcom/android/internal/os/BatterySipper;
    .local v55, "target":Lcom/android/internal/os/BatterySipper;
    .local v56, "mDMPackage":Ljava/lang/String;
    iget v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Battery_Drop:I

    invoke-virtual {v4, v1, v2, v13, v5}, Lcom/android/server/OnePlusDiagnosisUtil;->genRaw(JILjava/util/List;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosis_ASSIST_Info:Ljava/lang/String;

    .line 3346
    invoke-direct/range {p0 .. p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->judgeWLAsNormal()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 3347
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisAsNormal:Z

    .line 3349
    const/4 v1, 0x0

    .line 3349
    .end local v5    # "output_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "uidWL":I
    .end local v24    # "daignosisAsAbn":Z
    .end local v51    # "sipperInfo":Ljava/lang/String;
    .end local v55    # "target":Lcom/android/internal/os/BatterySipper;
    .local v1, "daignosisAsAbn":Z
    goto :goto_1c

    .line 3353
    .end local v1    # "daignosisAsAbn":Z
    .restart local v24    # "daignosisAsAbn":Z
    :cond_25
    move/from16 v1, v24

    .line 3353
    .end local v24    # "daignosisAsAbn":Z
    .end local v56    # "mDMPackage":Ljava/lang/String;
    .restart local v1    # "daignosisAsAbn":Z
    .local v2, "mDMPackage":Ljava/lang/String;
    :goto_1c
    move-object/from16 v2, v56

    goto :goto_1d

    .line 3353
    .end local v1    # "daignosisAsAbn":Z
    .end local v2    # "mDMPackage":Ljava/lang/String;
    .end local v52    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .end local v53    # "unAccounted_Percentage":D
    .local v3, "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .restart local v4    # "unAccounted_Percentage":D
    .restart local v24    # "daignosisAsAbn":Z
    .restart local v25    # "mDMPackage":Ljava/lang/String;
    .restart local v28    # "mDMDetail":Ljava/lang/String;
    :cond_26
    move-object/from16 v52, v3

    move-wide/from16 v53, v4

    .line 3353
    .end local v3    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .end local v4    # "unAccounted_Percentage":D
    .restart local v52    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .restart local v53    # "unAccounted_Percentage":D
    move/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v28

    .line 3566
    .end local v24    # "daignosisAsAbn":Z
    .end local v25    # "mDMPackage":Ljava/lang/String;
    .end local v28    # "mDMDetail":Ljava/lang/String;
    .restart local v1    # "daignosisAsAbn":Z
    .restart local v2    # "mDMPackage":Ljava/lang/String;
    .local v3, "mDMDetail":Ljava/lang/String;
    :goto_1d
    move/from16 v24, v1

    move-object v12, v3

    goto/16 :goto_23

    .line 3355
    .end local v1    # "daignosisAsAbn":Z
    .end local v2    # "mDMPackage":Ljava/lang/String;
    .end local v9    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .end local v52    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .end local v53    # "unAccounted_Percentage":D
    .local v3, "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .restart local v4    # "unAccounted_Percentage":D
    .restart local v24    # "daignosisAsAbn":Z
    .restart local v25    # "mDMPackage":Ljava/lang/String;
    .restart local v28    # "mDMDetail":Ljava/lang/String;
    .restart local v29    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    :cond_27
    move-object/from16 v52, v3

    move-wide/from16 v53, v4

    .line 3355
    .end local v3    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .end local v4    # "unAccounted_Percentage":D
    .restart local v52    # "teleAbnItem":Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .restart local v53    # "unAccounted_Percentage":D
    sget-object v9, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->KERNELSPACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 3356
    .end local v29    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .restart local v9    # "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->KERNELSPACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3359
    iget-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    if-eqz v1, :cond_2d

    .line 3360
    iget-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->get1stKWL(Ljava/util/List;)Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;

    move-result-object v1

    .line 3361
    .local v1, "firstKWL":Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;
    if-eqz v1, :cond_2c

    .line 3363
    const-string v2, ";"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3364
    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3370
    const/4 v2, 0x0

    .line 3371
    .local v2, "firstPacketInfo":Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;
    const-string v3, "alarmtimer"

    iget-object v4, v1, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    const-string/jumbo v3, "timerfd"

    iget-object v4, v1, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    goto :goto_1f

    .line 3390
    :cond_28
    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NA_KWL:Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3390
    .end local v25    # "mDMPackage":Ljava/lang/String;
    .local v3, "mDMPackage":Ljava/lang/String;
    :goto_1e
    goto :goto_20

    .line 3375
    .end local v3    # "mDMPackage":Ljava/lang/String;
    .restart local v25    # "mDMPackage":Ljava/lang/String;
    :cond_29
    :goto_1f
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    if-eqz v3, :cond_2a

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2a

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 3377
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;

    .line 3381
    const-string v3, ";"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3382
    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3384
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1st-pkt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3387
    iget-object v3, v2, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mPkg:Ljava/lang/String;

    goto :goto_1e

    .line 3394
    :cond_2a
    move-object/from16 v3, v25

    .line 3394
    .end local v25    # "mDMPackage":Ljava/lang/String;
    .restart local v3    # "mDMPackage":Ljava/lang/String;
    :goto_20
    iget-object v4, v1, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    .line 3399
    .end local v28    # "mDMDetail":Ljava/lang/String;
    .local v4, "mDMDetail":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3401
    .restart local v5    # "output_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_2b

    .line 3402
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->toRawString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 3404
    :cond_2b
    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3407
    :goto_21
    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOnePlusDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

    move-object/from16 v57, v1

    move-object/from16 v58, v2

    iget-wide v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    .line 3407
    .end local v1    # "firstKWL":Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;
    .end local v2    # "firstPacketInfo":Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;
    .local v57, "firstKWL":Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;
    .local v58, "firstPacketInfo":Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;
    iget v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Battery_Drop:I

    invoke-virtual {v12, v1, v2, v13, v5}, Lcom/android/server/OnePlusDiagnosisUtil;->genRaw(JILjava/util/List;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosis_ASSIST_Info:Ljava/lang/String;

    .line 3409
    .end local v5    # "output_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v57    # "firstKWL":Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;
    .end local v58    # "firstPacketInfo":Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;
    move-object v2, v3

    goto :goto_22

    .line 3409
    .end local v3    # "mDMPackage":Ljava/lang/String;
    .end local v4    # "mDMDetail":Ljava/lang/String;
    .restart local v25    # "mDMPackage":Ljava/lang/String;
    .restart local v28    # "mDMDetail":Ljava/lang/String;
    :cond_2c
    move-object/from16 v2, v25

    move-object/from16 v4, v28

    .line 3566
    .end local v25    # "mDMPackage":Ljava/lang/String;
    .end local v28    # "mDMDetail":Ljava/lang/String;
    .local v2, "mDMPackage":Ljava/lang/String;
    .restart local v4    # "mDMDetail":Ljava/lang/String;
    :goto_22
    move-object v12, v4

    goto :goto_23

    .line 3566
    .end local v2    # "mDMPackage":Ljava/lang/String;
    .end local v4    # "mDMDetail":Ljava/lang/String;
    .restart local v25    # "mDMPackage":Ljava/lang/String;
    .restart local v28    # "mDMDetail":Ljava/lang/String;
    :cond_2d
    move-object/from16 v2, v25

    move-object/from16 v12, v28

    .line 3566
    .end local v25    # "mDMPackage":Ljava/lang/String;
    .end local v28    # "mDMDetail":Ljava/lang/String;
    .restart local v2    # "mDMPackage":Ljava/lang/String;
    .local v12, "mDMDetail":Ljava/lang/String;
    :goto_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "###### [RootCause] :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3569
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    const-string v4, ";"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 3570
    .local v1, "reason":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOnePlusDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

    sget v18, Lcom/android/server/OnePlusStandbyAnalyzer;->DIAGNOSIS_ISSUE_POWER_OTHER:I

    iget-wide v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    iget v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Battery_Drop:I

    move/from16 v59, v6

    iget v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA:F

    .line 3570
    .end local v6    # "local_UNACCOUNTED_CRITERIA":F
    .local v59, "local_UNACCOUNTED_CRITERIA":F
    move-object/from16 v17, v3

    move-wide/from16 v19, v4

    move/from16 v21, v13

    move/from16 v22, v6

    move-object/from16 v23, v1

    invoke-virtual/range {v17 .. v23}, Lcom/android/server/OnePlusDiagnosisUtil;->log(IJIFLjava/lang/String;)V

    .line 3571
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOnePlusDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

    invoke-virtual {v3}, Lcom/android/server/OnePlusDiagnosisUtil;->flushToFile()V

    .line 3573
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "###### [MDM_PACKAGE] :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3574
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "###### [MDM_DETAIL] :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3576
    iget-boolean v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMDMEnabled:Z

    if-eqz v3, :cond_2f

    .line 3578
    iget-boolean v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisAsNormal:Z

    if-eqz v3, :cond_2e

    .line 3579
    const-string v3, "This round of abnormal diagnoses as normal, skip MDM reporting"

    invoke-static {v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto :goto_24

    .line 3581
    :cond_2e
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 3582
    .local v3, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "tp"

    invoke-virtual {v9}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3583
    const-string/jumbo v4, "pn"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3584
    const-string v4, "dl"

    invoke-virtual {v3, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3586
    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    const-string/jumbo v5, "standby"

    invoke-virtual {v4, v5, v3}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 3589
    .end local v3    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2f
    :goto_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@@@[Judge] in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v39

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 3590
    return v24

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private judgeWLAsNormal()Z
    .locals 7

    .line 2862
    const/4 v0, 0x0

    .line 2864
    .local v0, "isNormal":Z
    const/4 v1, 0x0

    .line 2865
    .local v1, "isAudioInvolved":Z
    const/4 v2, 0x0

    .line 2866
    .local v2, "isSameUid":Z
    const/4 v3, -0x1

    .line 2867
    .local v3, "wLUid":I
    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    if-eqz v4, :cond_5

    .line 2868
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 2869
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " nd-WL:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    invoke-virtual {v6}, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->toFullString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2871
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mAudio_WL_List:Ljava/util/List;

    iget-object v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    iget-object v6, v6, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mWLName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2872
    const/4 v1, 0x1

    .line 2874
    :cond_0
    if-nez v4, :cond_1

    .line 2875
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    iget v3, v5, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mUid:I

    .line 2876
    goto :goto_1

    .line 2877
    :cond_1
    const/4 v5, 0x2

    if-le v4, v5, :cond_2

    .line 2879
    goto :goto_2

    .line 2881
    :cond_2
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    iget v5, v5, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mUid:I

    if-ne v5, v3, :cond_3

    .line 2883
    const/4 v2, 0x1

    .line 2868
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2887
    .end local v4    # "i":I
    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    .line 2888
    const-string v4, "Match audio-normal pattern, diagnosis as normal"

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2889
    const/4 v0, 0x1

    .line 2893
    :cond_5
    return v0
.end method

.method static synthetic lambda$dumpUidWakeLockMap$0(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 2
    .param p0, "e1"    # Ljava/util/Map$Entry;
    .param p1, "e2"    # Ljava/util/Map$Entry;

    .line 1948
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public static myLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 940
    sget-boolean v0, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 941
    const-string v0, "OPSA"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :cond_0
    return-void
.end method

.method private pkgConvertion()V
    .locals 5

    .line 3597
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 3598
    move v0, v2

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 3599
    if-lt v0, v1, :cond_0

    .end local v0    # "i":I
    goto :goto_1

    .line 3600
    .restart local v0    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    iget v4, v4, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mUid:I

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 3602
    .local v3, "pkgName":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 3603
    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    iget v4, v4, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mUid:I

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;->convertIntToKnownUIDs(I)Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;

    move-result-object v4

    .line 3604
    .local v4, "knownUid":Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;
    if-eqz v4, :cond_1

    .line 3605
    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3608
    .end local v4    # "knownUid":Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;
    :cond_1
    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    invoke-virtual {v4, v3}, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->toRawString(Ljava/lang/String;)Ljava/lang/String;

    .line 3598
    .end local v3    # "pkgName":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3612
    .end local v0    # "i":I
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 3613
    move v0, v2

    .restart local v0    # "i":I
    :goto_2
    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 3614
    if-lt v0, v1, :cond_3

    .end local v0    # "i":I
    goto :goto_3

    .line 3615
    .restart local v0    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;

    iget v4, v4, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mUid:I

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 3617
    .restart local v3    # "pkgName":Ljava/lang/String;
    if-nez v3, :cond_4

    .line 3618
    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;

    iget v4, v4, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mUid:I

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;->convertIntToKnownUIDs(I)Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;

    move-result-object v4

    .line 3619
    .restart local v4    # "knownUid":Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;
    if-eqz v4, :cond_4

    .line 3620
    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3623
    .end local v4    # "knownUid":Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;
    :cond_4
    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;

    invoke-virtual {v4, v3}, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->toRawString(Ljava/lang/String;)Ljava/lang/String;

    .line 3613
    .end local v3    # "pkgName":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3627
    .end local v0    # "i":I
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 3628
    nop

    .local v2, "i":I
    :goto_4
    move v0, v2

    .end local v2    # "i":I
    .restart local v0    # "i":I
    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_8

    .line 3629
    if-lt v0, v1, :cond_6

    .end local v0    # "i":I
    goto :goto_5

    .line 3630
    .restart local v0    # "i":I
    :cond_6
    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v2}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;

    iget v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mUid:I

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 3632
    .local v2, "pkgName":Ljava/lang/String;
    if-nez v2, :cond_7

    .line 3633
    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;

    iget v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mUid:I

    invoke-static {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;->convertIntToKnownUIDs(I)Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;

    move-result-object v3

    .line 3634
    .local v3, "knownUid":Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;
    if-eqz v3, :cond_7

    .line 3635
    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3638
    .end local v3    # "knownUid":Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;
    :cond_7
    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;

    invoke-virtual {v3, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->toRawString(Ljava/lang/String;)Ljava/lang/String;

    .line 3628
    .end local v2    # "pkgName":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    goto :goto_4

    .line 3641
    .end local v2    # "i":I
    :cond_8
    :goto_5
    return-void
.end method

.method private startTelephonyMonitor()V
    .locals 6

    .line 993
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTeleChgInfo_Diff_List:Ljava/util/List;

    .line 995
    invoke-static {}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->values()[Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 996
    .local v3, "type":Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;
    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTeleChgInfo_Diff_List:Ljava/util/List;

    new-instance v5, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;

    invoke-direct {v5, v3}, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 995
    .end local v3    # "type":Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 999
    :cond_0
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 1000
    const-string v0, "Start listen Telephony Anomaly..."

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1001
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/high16 v2, 0x200000

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1004
    :cond_1
    return-void
.end method

.method private substractIdlePower(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)V
    .locals 5
    .param p1, "bs_start"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "bs_end"    # Lcom/android/internal/os/BatterySipper;

    .line 4549
    const/4 v0, 0x0

    .line 4551
    .local v0, "isAbn":Z
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 4552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##[Abn][wakeLockTimeMs] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4553
    const/4 v0, 0x1

    .line 4555
    :cond_0
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    sub-long/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    .line 4557
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    .line 4558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##[Abn][usagePowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4559
    const/4 v0, 0x1

    .line 4561
    :cond_1
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    sub-double/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    .line 4563
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_2

    .line 4564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##[Abn][cpuPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4565
    const/4 v0, 0x1

    .line 4567
    :cond_2
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    sub-double/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    .line 4569
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_3

    .line 4570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##[Abn][wakeLockPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4571
    const/4 v0, 0x1

    .line 4573
    :cond_3
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    sub-double/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    .line 4575
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_4

    .line 4576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##[Abn][mobileRadioPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4577
    const/4 v0, 0x1

    .line 4579
    :cond_4
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    sub-double/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    .line 4581
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_5

    .line 4582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##[Abn][wifiPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4583
    const/4 v0, 0x1

    .line 4585
    :cond_5
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    sub-double/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    .line 4587
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_6

    .line 4588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##[Abn][bluetoothPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4589
    const/4 v0, 0x1

    .line 4591
    :cond_6
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    sub-double/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    .line 4593
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_7

    .line 4594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##[Abn][gpsPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4595
    const/4 v0, 0x1

    .line 4597
    :cond_7
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    sub-double/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    .line 4599
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_8

    .line 4600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##[Abn][sensorPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4601
    const/4 v0, 0x1

    .line 4603
    :cond_8
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    sub-double/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    .line 4605
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_9

    .line 4606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##[Abn][cameraPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4607
    const/4 v0, 0x1

    .line 4609
    :cond_9
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    sub-double/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    .line 4611
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_a

    .line 4612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##[Abn][flashlightPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4613
    const/4 v0, 0x1

    .line 4615
    :cond_a
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    sub-double/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    .line 4617
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_b

    .line 4618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##[Abn][totalPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 4619
    const/4 v0, 0x1

    .line 4621
    :cond_b
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    sub-double/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 4623
    if-eqz v0, :cond_c

    .line 4624
    const-string v1, "Abn-Start"

    invoke-direct {p0, v1, p1}, Lcom/android/server/OnePlusStandbyAnalyzer;->genBatterySipperInfo(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    .line 4625
    const-string v1, "Abn-End"

    invoke-direct {p0, v1, p2}, Lcom/android/server/OnePlusStandbyAnalyzer;->genBatterySipperInfo(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    .line 4627
    :cond_c
    return-void
.end method

.method private triggerQXDMSelfCleanUp()V
    .locals 3

    .line 1317
    const-string v0, "Trigger QXDM cleanUp task..."

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1318
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "net.oneplus.powercontroller.intent.CLEAN_QXDM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1319
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.oem.oemlogkit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1320
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1321
    return-void
.end method

.method private updateQXDM_Property(Z)V
    .locals 2
    .param p1, "pack"    # Z

    .line 1335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update QXDM packing-flag to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1336
    const-string/jumbo v0, "persist.sys.standby_qxdm"

    if-eqz p1, :cond_1

    const-string v1, "1"

    goto :goto_1

    :cond_1
    const-string v1, "0"

    :goto_1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    return-void
.end method

.method private updateQXDM_Recording_Property(Z)V
    .locals 2
    .param p1, "recording"    # Z

    .line 1340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update QXDM recording-flag to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1341
    const-string/jumbo v0, "persist.sys.standby_qxdm_recording"

    if-eqz p1, :cond_1

    const-string v1, "1"

    goto :goto_1

    :cond_1
    const-string v1, "0"

    :goto_1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    return-void
.end method


# virtual methods
.method public checkBugReportLiteEnable()Z
    .locals 3

    .line 1068
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "oem_join_stability_plan_settings"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2
.end method

.method public checkIfQXDMReadyOnSdCard()V
    .locals 5

    .line 1883
    invoke-direct {p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->iSQXDMLogReady()Z

    move-result v0

    .line 1884
    .local v0, "iSReady":Z
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1887
    invoke-direct {p0, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateQXDM_Property(Z)V

    goto :goto_0

    .line 1889
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mQXDM_Ready_Check_Count ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDM_Ready_Check_Count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1890
    iget v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDM_Ready_Check_Count:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 1891
    iget v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDM_Ready_Check_Count:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDM_Ready_Check_Count:I

    .line 1893
    const-string/jumbo v1, "re-schedule 5 sec later to check again."

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1894
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    const/16 v2, 0x3f0

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController;->sendEmptyMessageDelayed(IJ)V

    goto :goto_0

    .line 1896
    :cond_1
    const-string/jumbo v1, "reach maximum checking, abort re-schedule"

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1899
    :goto_0
    return-void
.end method

.method public convertMapToListWithOrder(Ljava/util/Map;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;",
            ">;"
        }
    .end annotation

    .line 2715
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2717
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;>;"
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor6:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2718
    return-object v0
.end method

.method public dumpSnapShotData(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;)V
    .locals 3
    .param p1, "type"    # Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    .line 2079
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$SNAPSHOT_TYPE:[I

    invoke-virtual {p1}, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2101
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfEndDeepidle:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2102
    const-string v0, "End"

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfEndDeepidle:Ljava/util/List;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpBatterySipperListInfo(Ljava/lang/String;Ljava/util/List;Z)V

    .line 2104
    :cond_0
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_End_Map:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 2105
    const-string v0, "End-WL"

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_End_Map:Ljava/util/Map;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpUidWakeLockMap(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 2107
    :cond_1
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_End_Map:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 2108
    const-string v0, "End"

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_End_Map:Ljava/util/Map;

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpUidWakeupAlarmsMap(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 2110
    :cond_2
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_End_List:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 2111
    const-string v0, "End-Signal"

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_End_List:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpSignal(Ljava/lang/String;Ljava/util/List;)V

    .line 2116
    :cond_3
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_End_Map:Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 2117
    const-string v0, "End-WiFi"

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_End_Map:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpWiFiStatsMap(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 2081
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfStartDeepIdle:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 2082
    const-string v0, "Start"

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfStartDeepIdle:Ljava/util/List;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpBatterySipperListInfo(Ljava/lang/String;Ljava/util/List;Z)V

    .line 2084
    :cond_4
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_Start_Map:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 2085
    const-string v0, "Start-WL"

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_Start_Map:Ljava/util/Map;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpUidWakeLockMap(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 2087
    :cond_5
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_Start_Map:Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 2088
    const-string v0, "Start"

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_Start_Map:Ljava/util/Map;

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpUidWakeupAlarmsMap(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 2090
    :cond_6
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Start_List:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 2091
    const-string v0, "Start-Signal"

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Start_List:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpSignal(Ljava/lang/String;Ljava/util/List;)V

    .line 2096
    :cond_7
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Start_Map:Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 2097
    const-string v0, "Start-WiFi"

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Start_Map:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpWiFiStatsMap(Ljava/lang/String;Ljava/util/Map;)V

    .line 2121
    :cond_8
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dumpUidWakeupAlarmsMap(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p3, "bfilter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 2062
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    if-eqz p2, :cond_0

    .line 2064
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2065
    .local v0, "UidWakeupAlarmsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2067
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor2:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2069
    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpUidWakeupAlarmInfo(Ljava/lang/String;Ljava/util/List;Z)V

    .line 2071
    .end local v0    # "UidWakeupAlarmsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    :cond_0
    return-void
.end method

.method public declared-synchronized enableQXDM(ZLcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;Z)V
    .locals 10
    .param p1, "enable"    # Z
    .param p2, "abn_type"    # Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;
    .param p3, "reason"    # Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;
    .param p4, "forShortTest"    # Z

    monitor-enter p0

    .line 1116
    const/16 v0, 0x3ec

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 1119
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUnderStandbyPeriod:Z

    if-eqz v2, :cond_9

    .line 1122
    const-string/jumbo v2, "persist.sys.qxdm"

    const-string/jumbo v3, "no"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1123
    .local v2, "outSideQXDM":Ljava/lang/String;
    const-string/jumbo v3, "yes"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1125
    const-string v0, "OPSA"

    const-string/jumbo v1, "oops, QXDM is under recoding by oemlogkit, so do nothing"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1126
    monitor-exit p0

    return-void

    .line 1136
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->checkBugReportLiteEnable()Z

    move-result v3

    .line 1138
    .local v3, "isBugReportLiteEnable":Z
    if-eqz v3, :cond_8

    iget-boolean v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandbyAbnReportingEnabled:Z

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMGrabMechanism:Z

    if-eqz v4, :cond_8

    .line 1141
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfStart:J

    sub-long/2addr v4, v6

    .line 1142
    .local v4, "timeGap":J
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-ltz v8, :cond_7

    iget-wide v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMGrabGapAfterStandbyStart:J

    cmp-long v8, v4, v8

    if-gez v8, :cond_1

    goto/16 :goto_5

    .line 1148
    :cond_1
    iget-wide v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mLastQXDMGrabTimeStamp:J

    cmp-long v6, v8, v6

    if-eqz v6, :cond_2

    .line 1149
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mLastQXDMGrabTimeStamp:J

    sub-long/2addr v6, v8

    iget-wide v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMinimumQXDMGrabPeriod:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    .line 1150
    const-string v0, "OPSA"

    const-string/jumbo v1, "oops, away from the latest QXDM grabbing is too short, so skip this round QXDM recording"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1151
    monitor-exit p0

    return-void

    .line 1154
    :cond_2
    :try_start_2
    iget-boolean v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverQXDMRecordingByMyself:Z

    if-nez v6, :cond_6

    .line 1156
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverQXDMRecordingByMyself:Z

    .line 1157
    const-string/jumbo v7, "it\'s time to enable 1st-QXDM-recording now under this round of standby period"

    invoke-static {v7}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1160
    sget-object v7, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$QXDM_REASON:[I

    invoke-virtual {p3}, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 1165
    :pswitch_0
    sget-object v7, Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;->MODEM_ABN_TRIGGER:Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    iput-object v7, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMTriggeringReason:Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    goto :goto_0

    .line 1162
    :pswitch_1
    sget-object v7, Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;->TELE_ABN_TRIGGER:Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    iput-object v7, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMTriggeringReason:Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    .line 1163
    nop

    .line 1168
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Triggering Reason : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMTriggeringReason:Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1170
    iget-boolean v7, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDM_Recoding:Z

    if-eqz v7, :cond_3

    .line 1172
    const-string v0, "OPSA"

    const-string v1, "QXDM is still under recording, do nothing."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1183
    :cond_3
    iput-boolean p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDM_Recoding:Z

    .line 1184
    const-string v7, "OPSA"

    const-string v8, "Start QXDM recording..."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    iput-boolean v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIfEverGenQXDMToCleanUp:Z

    .line 1190
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mLastQXDMGrabTimeStamp:J

    .line 1193
    iput v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDM_Ready_Check_Count:I

    .line 1199
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$TELEPHONY_TYPE:[I

    invoke-virtual {p2}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->ordinal()I

    move-result v7

    aget v1, v1, v7

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    .line 1214
    :pswitch_2
    const-string/jumbo v1, "persist.sys.power_mask"

    const-string/jumbo v7, "service"

    invoke-static {v1, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    const-string v1, "OPSA"

    const-string v7, "Copy service-mask"

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1209
    :pswitch_3
    const-string/jumbo v1, "persist.sys.power_mask"

    const-string/jumbo v7, "ims"

    invoke-static {v1, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    const-string v1, "OPSA"

    const-string v7, "Copy ims-mask"

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    goto :goto_1

    .line 1205
    :pswitch_4
    const-string/jumbo v1, "persist.sys.power_mask"

    const-string v7, "data"

    invoke-static {v1, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    const-string v1, "OPSA"

    const-string v7, "Copy data-mask"

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    goto :goto_1

    .line 1201
    :pswitch_5
    const-string/jumbo v1, "persist.sys.power_mask"

    const-string/jumbo v7, "service"

    invoke-static {v1, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    const-string v1, "OPSA"

    const-string v7, "Copy service-mask"

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    nop

    .line 1220
    :goto_1
    const-string/jumbo v1, "persist.vendor.diag.max.num"

    const-string v7, "2"

    invoke-static {v1, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    const-string/jumbo v1, "persist.vendor.diag.max.size"

    const-string v7, "25"

    invoke-static {v1, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    invoke-direct {p0, v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateQXDM_Recording_Property(Z)V

    .line 1227
    const-string/jumbo v1, "persist.sys.qxdm"

    const-string/jumbo v6, "yes"

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    const-string/jumbo v1, "persist.vendor.qxdm.copymask"

    const-string v6, "1"

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    const-string v1, "diag_mdlog_start"

    invoke-static {v1}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 1240
    const-string v1, "OPSA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "And schedule "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_4

    const-string v7, "20 sec"

    goto :goto_2

    :cond_4
    const-string v7, "2 min"

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " later to stop"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    if-eqz p4, :cond_5

    const-wide/16 v6, 0x4e20

    goto :goto_3

    :cond_5
    const-wide/32 v6, 0x1d4c0

    :goto_3
    invoke-virtual {v1, v0, v6, v7}, Lcom/android/server/DeviceIdleController;->sendEmptyMessageDelayed(IJ)V

    goto :goto_4

    .line 1249
    :cond_6
    const-string v0, "already have telephony-abn action, do nothing."

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1251
    .end local v4    # "timeGap":J
    :goto_4
    goto :goto_6

    .line 1143
    .restart local v4    # "timeGap":J
    :cond_7
    :goto_5
    const-string v0, "OPSA"

    const-string/jumbo v1, "oops, not satisfy standby-gap, so skip this round QXDM recording"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1144
    monitor-exit p0

    return-void

    .line 1252
    .end local v4    # "timeGap":J
    :cond_8
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BugReportLite:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " | abn-reporting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandbyAbnReportingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " | qxdm-grab: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMGrabMechanism:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", do nothing when telephony-abn in standby period"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1257
    .end local v2    # "outSideQXDM":Ljava/lang/String;
    .end local v3    # "isBugReportLiteEnable":Z
    :goto_6
    goto/16 :goto_8

    .line 1259
    :cond_9
    const-string v0, "Not under standby period, do nothing when telephony abnormal"

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1115
    .end local p1    # "enable":Z
    .end local p2    # "abn_type":Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;
    .end local p3    # "reason":Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;
    .end local p4    # "forShortTest":Z
    :catchall_0
    move-exception p1

    goto/16 :goto_9

    .line 1264
    .restart local p1    # "enable":Z
    .restart local p2    # "abn_type":Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;
    .restart local p3    # "reason":Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;
    .restart local p4    # "forShortTest":Z
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop QXDM recording by reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1266
    iget-boolean v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDM_Recoding:Z

    if-eqz v2, :cond_b

    .line 1267
    iput-boolean p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDM_Recoding:Z

    .line 1269
    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v2, v0}, Lcom/android/server/DeviceIdleController;->removeMessages(I)V

    .line 1271
    const-string/jumbo v0, "persist.sys.qxdm"

    const-string/jumbo v2, "no"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    invoke-direct {p0, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateQXDM_Recording_Property(Z)V

    .line 1276
    const-string v0, "diag_mdlog_stop"

    invoke-static {v0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 1278
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$QXDM_REASON:[I

    invoke-virtual {p3}, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x3ef

    const-wide/16 v2, 0xbb8

    packed-switch v0, :pswitch_data_2

    goto :goto_7

    .line 1290
    :pswitch_6
    const-string v0, "OPSA"

    const-string v1, "Schedule 3 sec later to execute vendor clean-up task directly"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController;->sendEmptyMessageDelayed(IJ)V

    goto :goto_7

    .line 1284
    :pswitch_7
    const-string v0, "OPSA"

    const-string v4, "Schedule 3 sec later to execute copy-qxdm-to-sdcard task."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController;->sendEmptyMessageDelayed(IJ)V

    .line 1286
    goto :goto_7

    .line 1280
    :pswitch_8
    const-string v0, "OPSA"

    const-string v4, "Schedule 3 sec later to execute copy-qxdm-to-sdcard task."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController;->sendEmptyMessageDelayed(IJ)V

    .line 1282
    nop

    .line 1292
    :goto_7
    goto :goto_8

    .line 1297
    :cond_b
    const-string v0, "QXDM is already disabled, do nothing."

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1300
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$QXDM_REASON:[I

    invoke-virtual {p3}, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3

    goto :goto_8

    .line 1307
    :pswitch_9
    iget-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIfEverGenQXDMToCleanUp:Z

    if-eqz v0, :cond_c

    .line 1308
    const-string v0, "[opbugreportlite] Ever gen-QXDM logs, so schedule 10 sec later to cleanUp Sdcard\'s QXDM logs."

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1309
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    const/16 v1, 0x3ee

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController;->sendEmptyMessageDelayed(IJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_8

    .line 1305
    :pswitch_a
    goto :goto_8

    .line 1302
    :pswitch_b
    nop

    .line 1315
    :cond_c
    :goto_8
    monitor-exit p0

    return-void

    .line 1115
    .end local p1    # "enable":Z
    .end local p2    # "abn_type":Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;
    .end local p3    # "reason":Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;
    .end local p4    # "forShortTest":Z
    :goto_9
    monitor-exit p0

    .line 1115
    .end local p0    # "this":Lcom/android/server/OnePlusStandbyAnalyzer;
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public genAssistInfoForDump()Ljava/lang/String;
    .locals 1

    .line 1446
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosis_ASSIST_Info:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosis_ASSIST_Info:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public genBatteryOutlier()V
    .locals 6

    .line 1901
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1903
    .local v0, "timespend":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOemExSvc:Lcom/oem/os/IOemExService;

    const-string v3, "battery_outlier"

    invoke-interface {v2, v3}, Lcom/oem/os/IOemExService;->dumpLightBugreport(Ljava/lang/String;)V

    .line 1904
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 1905
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[opbugreportlite] generate log spends "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1909
    goto :goto_0

    .line 1906
    :catch_0
    move-exception v2

    .line 1907
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1908
    const-string v3, "OPSA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "got exception while reporting:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public genConfigForDump()Ljava/lang/String;
    .locals 4

    .line 1591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1593
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# Config ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->WL:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUSERSPACE_WL_CRITERIA:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUSERSPACE_WL_CRITERIA_FOR_MINOR:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# Config ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->KWL:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNELSPACE_WL_CRITERIA:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNELSPACE_WL_CRITERIA_FOR_MINOR:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# Config ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->WR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNEL_WAKEUP_COUNT_CRITERIA:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNEL_WAKEUP_COUNT_CRITERIA_FOR_MINOR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# Config ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->SB:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mSIGNAL_BAD_CRITERIA:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mSIGNAL_BAD_CRITERIA_FOR_MINOR:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1601
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# Config ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->HUC:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUNACCOUNTED_CRITERIA:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUNACCOUNTED_CRITERIA_FOR_MINOR:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# Config ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mAVERAGE_CURRENT_EXCEED_FOR_MINOR:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# Config ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->RPM_TSLM_SEC:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_TIME_SLM_SEC_CRITERIA:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# Config ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->RPM_SAD:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SLEEP_ACC_DURATION_DIFF_PERCENT:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1609
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# Config ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->RPM_SLPI_SC:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SLPI_SLEEPCOUNT_DIFF_CRITERIA:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1610
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public genDiagnosisInfoForDump()Ljava/lang/String;
    .locals 8

    .line 1347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1348
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 1349
    invoke-static {}, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->values()[Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1350
    .local v4, "data_type":Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1351
    .local v5, "info":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 1352
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "# Info ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "], ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1349
    .end local v4    # "data_type":Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;
    .end local v5    # "info":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1356
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public genKWLInfoForDump()Ljava/lang/String;
    .locals 5

    .line 1380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1381
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 1382
    const/4 v1, 0x0

    .line 1383
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1386
    const-string v3, "PowerManagerService.WakeLocks"

    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;

    iget-object v4, v4, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1388
    add-int/lit8 v1, v1, 0x1

    .line 1390
    :cond_0
    const/4 v3, 0x3

    if-lt v1, v3, :cond_1

    .end local v1    # "count":I
    .end local v2    # "i":I
    goto :goto_1

    .line 1383
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1393
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public genPktInfoForDump()Ljava/lang/String;
    .locals 4

    .line 1433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1434
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 1435
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1436
    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .end local v1    # "i":I
    goto :goto_1

    .line 1437
    .restart local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1435
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1440
    .end local v1    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public genRPMInfoForDump()Ljava/lang/String;
    .locals 1

    .line 1443
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosis_RPM_Info:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosis_RPM_Info:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public genTeleChgInfoForDump()Ljava/lang/String;
    .locals 3

    .line 1089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1090
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTeleChgInfo_Diff_List:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 1091
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTeleChgInfo_Diff_List:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1092
    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTeleChgInfo_Diff_List:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->toStringForDump()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTeleChgInfo_Diff_List:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1096
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public genUidWakeupAlarmMap(Lcom/android/internal/os/BatteryStatsImpl;JLcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;)Ljava/util/Map;
    .locals 38
    .param p1, "stats"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "rawRealtime"    # J
    .param p4, "type"    # Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl;",
            "J",
            "Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v12, p0

    .line 1968
    move-object/from16 v13, p4

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    const/4 v1, 0x0

    if-ne v13, v0, :cond_0

    .line 1969
    iput-object v1, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_Start_Map:Ljava/util/Map;

    .line 1972
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacket_Diff_Map:Ljava/util/Map;

    goto :goto_0

    .line 1974
    :cond_0
    iput-object v1, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_End_Map:Ljava/util/Map;

    .line 1978
    :goto_0
    const/4 v0, 0x0

    .line 1984
    .local v0, "wlMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .line 1986
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    if-eqz p1, :cond_7

    .line 1987
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v15, v2

    .line 1989
    .end local v0    # "wlMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .local v15, "wlMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v3, v0

    .line 1992
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v0

    .line 1993
    .local v0, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v2, v1

    .line 1995
    .local v2, "NU":I
    const/4 v1, 0x0

    move v4, v1

    .local v4, "iu":I
    :goto_1
    move v10, v4

    .end local v4    # "iu":I
    .local v10, "iu":I
    if-ge v10, v2, :cond_6

    .line 1997
    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Uid;

    move-object v11, v4

    .line 2008
    .local v11, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual {v11, v1, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v4

    .line 2009
    .local v4, "mobileRxBytes":J
    const/4 v8, 0x1

    invoke-virtual {v11, v8, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v6

    .line 2010
    .local v6, "mobileTxBytes":J
    const/4 v9, 0x2

    invoke-virtual {v11, v9, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v16

    move/from16 v18, v8

    move-wide/from16 v8, v16

    .line 2011
    .local v8, "wifiRxBytes":J
    move-object/from16 v19, v0

    const/4 v0, 0x3

    .end local v0    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v19, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual {v11, v0, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v16

    move v0, v10

    move-object v14, v11

    move-wide/from16 v10, v16

    .line 2012
    .end local v11    # "u":Landroid/os/BatteryStats$Uid;
    .local v0, "iu":I
    .local v10, "wifiTxBytes":J
    .local v14, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v20, v0

    move v0, v1

    move-object v1, v12

    .end local v0    # "iu":I
    .local v20, "iu":I
    move/from16 v17, v2

    move-object v2, v13

    .end local v2    # "NU":I
    .local v17, "NU":I
    move-object v12, v3

    move/from16 v3, v16

    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    .local v12, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    :try_start_1
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/OnePlusStandbyAnalyzer;->getPacketInfo(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;IJJJJ)V

    .line 2015
    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v1

    .line 2016
    .local v1, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "iw":I
    :goto_2
    if-ltz v2, :cond_3

    .line 2017
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 2018
    .local v3, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v16

    move-object/from16 v21, v16

    .line 2019
    .local v21, "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v21

    if-eqz v0, :cond_1

    .line 2020
    .end local v21    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    .local v0, "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v24, v3

    move-wide/from16 v22, v4

    const/4 v5, 0x0

    move-wide/from16 v3, p2

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v25

    .line 2021
    .end local v3    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v4    # "mobileRxBytes":J
    .local v22, "mobileRxBytes":J
    .local v24, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .local v25, "totalTimeMicros":J
    const-wide/16 v27, 0x0

    cmp-long v5, v25, v27

    if-lez v5, :cond_2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 2022
    const-wide/16 v27, 0x1f4

    add-long v27, v25, v27

    const-wide/16 v29, 0x3e8

    div-long v27, v27, v29

    move-wide/from16 v31, v27

    .line 2023
    .local v31, "totalTimeMillis":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v33, v0

    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    .end local v0    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    .local v33, "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-wide/from16 v3, v31

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .end local v31    # "totalTimeMillis":J
    .local v3, "totalTimeMillis":J
    invoke-interface {v15, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v3    # "totalTimeMillis":J
    .end local v24    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v25    # "totalTimeMicros":J
    .end local v33    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    goto :goto_3

    .line 2016
    .end local v22    # "mobileRxBytes":J
    .restart local v4    # "mobileRxBytes":J
    :cond_1
    move-wide/from16 v22, v4

    .end local v4    # "mobileRxBytes":J
    .restart local v22    # "mobileRxBytes":J
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, -0x1

    move-wide/from16 v4, v22

    const/4 v0, 0x0

    goto :goto_2

    .line 2033
    .end local v2    # "iw":I
    .end local v22    # "mobileRxBytes":J
    .restart local v4    # "mobileRxBytes":J
    :cond_3
    move-wide/from16 v22, v4

    .end local v4    # "mobileRxBytes":J
    .restart local v22    # "mobileRxBytes":J
    const/4 v0, 0x0

    .line 2034
    .local v0, "count":I
    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v2

    .line 2035
    .local v2, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "ipkg":I
    :goto_4
    if-ltz v3, :cond_5

    .line 2036
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Uid$Pkg;

    .line 2037
    .local v4, "ps":Landroid/os/BatteryStats$Uid$Pkg;
    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v5

    .line 2038
    .local v5, "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    .local v16, "iwa":I
    :goto_5
    move/from16 v34, v16

    .end local v16    # "iwa":I
    .local v34, "iwa":I
    move-object/from16 v35, v1

    move/from16 v1, v34

    if-ltz v1, :cond_4

    .line 2039
    .end local v34    # "iwa":I
    .local v1, "iwa":I
    .local v35, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v36, v2

    move-object/from16 v2, v16

    check-cast v2, Landroid/os/BatteryStats$Counter;

    .end local v2    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .local v36, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    move-object/from16 v37, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v2

    .end local v4    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .local v37, "ps":Landroid/os/BatteryStats$Uid$Pkg;
    add-int/2addr v0, v2

    .line 2038
    add-int/lit8 v16, v1, -0x1

    .end local v1    # "iwa":I
    .restart local v16    # "iwa":I
    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v4, v37

    goto :goto_5

    .line 2035
    .end local v5    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .end local v16    # "iwa":I
    .end local v36    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v37    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .restart local v2    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    :cond_4
    move-object/from16 v36, v2

    const/4 v4, 0x0

    .end local v2    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v36    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v1, v35

    goto :goto_4

    .line 2043
    .end local v3    # "ipkg":I
    .end local v35    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v36    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .local v1, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .restart local v2    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    :cond_5
    move-object/from16 v35, v1

    move-object/from16 v36, v2

    const/4 v4, 0x0

    .end local v1    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v2    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v35    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .restart local v36    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;

    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    invoke-direct {v2, v3, v0}, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;-><init>(II)V

    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1995
    .end local v0    # "count":I
    .end local v6    # "mobileTxBytes":J
    .end local v8    # "wifiRxBytes":J
    .end local v10    # "wifiTxBytes":J
    .end local v14    # "u":Landroid/os/BatteryStats$Uid;
    .end local v22    # "mobileRxBytes":J
    .end local v35    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v36    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    add-int/lit8 v0, v20, 0x1

    .end local v20    # "iu":I
    .local v0, "iu":I
    move v1, v4

    move-object v3, v12

    move/from16 v2, v17

    move-object/from16 v12, p0

    move v4, v0

    move-object/from16 v0, v19

    goto/16 :goto_1

    .line 2045
    .end local v0    # "iu":I
    .end local v17    # "NU":I
    .end local v19    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    :catch_0
    move-exception v0

    goto :goto_6

    .line 2047
    .end local v12    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    :cond_6
    move-object v12, v3

    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    .restart local v12    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    goto :goto_7

    .line 2045
    .end local v12    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    .restart local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    :catch_1
    move-exception v0

    move-object v12, v3

    .line 2046
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    .local v0, "e":Ljava/lang/Exception;
    .restart local v12    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_7

    .line 2051
    .end local v12    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    .end local v15    # "wlMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .local v0, "wlMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    :cond_7
    move-object v15, v0

    move-object v12, v1

    .end local v0    # "wlMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    .restart local v12    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    .restart local v15    # "wlMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :goto_7
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    if-ne v13, v0, :cond_8

    .line 2052
    move-object/from16 v1, p0

    iput-object v15, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_Start_Map:Ljava/util/Map;

    goto :goto_8

    .line 2055
    :cond_8
    move-object/from16 v1, p0

    iput-object v15, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_End_Map:Ljava/util/Map;

    .line 2058
    :goto_8
    return-object v12
.end method

.method public genWLInfoForDump()Ljava/lang/String;
    .locals 4

    .line 1361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1362
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 1363
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1364
    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .end local v1    # "i":I
    goto :goto_1

    .line 1365
    .restart local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->toRawString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1363
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1374
    .end local v1    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public genWRInfoForDump()Ljava/lang/String;
    .locals 4

    .line 1398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1399
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 1400
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1401
    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .end local v1    # "i":I
    goto :goto_1

    .line 1402
    .restart local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1400
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1405
    .end local v1    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public genWUAInfoForDump()Ljava/lang/String;
    .locals 4

    .line 1410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1411
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 1412
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1413
    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .end local v1    # "i":I
    goto :goto_1

    .line 1414
    .restart local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->toRawString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1412
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1417
    .end local v1    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public genWifiWakeupInfoForDump()Ljava/lang/String;
    .locals 4

    .line 1422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1423
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 1424
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1425
    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .end local v1    # "i":I
    goto :goto_1

    .line 1426
    .restart local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1424
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1429
    .end local v1    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLastQXDMGrabTimeStamp()J
    .locals 2

    .line 1478
    iget-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mLastQXDMGrabTimeStamp:J

    return-wide v0
.end method

.method public getMiddleCheckPeriod()J
    .locals 2

    .line 1490
    iget-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMiddleCheckPeriod:J

    return-wide v0
.end method

.method public getPacketInfo(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;IJJJJ)V
    .locals 17
    .param p1, "type"    # Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;
    .param p2, "uid"    # I
    .param p3, "rxMobile"    # J
    .param p5, "txMobile"    # J
    .param p7, "rxWifi"    # J
    .param p9, "txWifi"    # J

    move-object/from16 v0, p0

    .line 2702
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    move-object/from16 v13, p1

    if-ne v13, v1, :cond_0

    .line 2703
    iget-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacket_Diff_Map:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v15, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;

    move-object v2, v15

    move-object v3, v13

    move/from16 v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    invoke-direct/range {v2 .. v12}, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;IJJJJ)V

    invoke-interface {v1, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2705
    :cond_0
    iget-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacket_Diff_Map:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;

    .line 2706
    .local v1, "target":Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;
    if-eqz v1, :cond_1

    .line 2707
    move-object v2, v1

    move-object v3, v13

    move/from16 v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->updateEnd(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;IJJJJ)V

    goto :goto_0

    .line 2710
    :cond_1
    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacket_Diff_Map:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-instance v11, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;

    move-object v2, v11

    move-object v3, v13

    move/from16 v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-object v0, v11

    move-wide/from16 v11, p9

    invoke-direct/range {v2 .. v12}, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;IJJJJ)V

    invoke-interface {v14, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2713
    .end local v1    # "target":Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;
    :goto_0
    return-void
.end method

.method public getQXDMGrabGapAfterStandbyStart()J
    .locals 2

    .line 1484
    iget-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMGrabGapAfterStandbyStart:J

    return-wide v0
.end method

.method public getQXDMGrabMechanismStatus()Z
    .locals 1

    .line 1466
    iget-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMGrabMechanism:Z

    return v0
.end method

.method public getQXDMGrabMinimumPeriod()J
    .locals 2

    .line 1481
    iget-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMinimumQXDMGrabPeriod:J

    return-wide v0
.end method

.method public getQXDMRecordingStatus()Z
    .locals 1

    .line 1463
    iget-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDM_Recoding:Z

    return v0
.end method

.method public getRPMInfo(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Ljava/lang/String;)V
    .locals 18
    .param p1, "type"    # Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;
    .param p2, "sourcefile"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 2624
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    if-ne v2, v0, :cond_0

    .line 2625
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    .line 2627
    :cond_0
    const/4 v3, 0x0

    .line 2628
    .local v3, "fis":Ljava/io/FileInputStream;
    const/16 v4, 0x400

    .line 2629
    .local v4, "buf_size":I
    new-array v0, v4, [B

    move-object v5, v0

    .line 2631
    .local v5, "buffer":[B
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v6, p2

    :try_start_1
    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 2632
    const/4 v0, 0x0

    .line 2633
    .local v0, "length":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 2636
    .local v7, "nowELAPSED":J
    :goto_0
    invoke-virtual {v3, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    move v0, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_a

    .line 2637
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v5, v10, v0}, Ljava/lang/String;-><init>([BII)V

    .line 2639
    .local v9, "content":Ljava/lang/String;
    iget-boolean v11, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v11, :cond_1

    .line 2640
    :try_start_2
    iget-object v11, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMModeSDM845Pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .local v11, "ma":Ljava/util/regex/Matcher;
    goto :goto_1

    .line 2693
    .end local v0    # "length":I
    .end local v7    # "nowELAPSED":J
    .end local v9    # "content":Ljava/lang/String;
    .end local v11    # "ma":Ljava/util/regex/Matcher;
    :catchall_0
    move-exception v0

    move/from16 v17, v4

    goto/16 :goto_11

    .line 2690
    :catch_0
    move-exception v0

    move/from16 v17, v4

    goto/16 :goto_b

    .line 2688
    :catch_1
    move-exception v0

    move/from16 v17, v4

    goto/16 :goto_d

    .line 2686
    :catch_2
    move-exception v0

    move/from16 v17, v4

    goto/16 :goto_f

    .line 2642
    .restart local v0    # "length":I
    .restart local v7    # "nowELAPSED":J
    .restart local v9    # "content":Ljava/lang/String;
    :cond_1
    :try_start_3
    iget-object v11, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMModePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 2645
    .restart local v11    # "ma":Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 2646
    const-string v12, "RPM Matched...."

    invoke-static {v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2647
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 2648
    .local v13, "vlow_Count":Ljava/lang/String;
    const/4 v14, 0x2

    invoke-virtual {v11, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    .line 2650
    .local v15, "vlow_timeSLM":Ljava/lang/String;
    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 2651
    .local v12, "vmin_Count":Ljava/lang/String;
    const/4 v10, 0x4

    invoke-virtual {v11, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 2653
    .local v10, "vmin_timeSLM":Ljava/lang/String;
    sget-object v14, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    if-ne v2, v14, :cond_4

    .line 2655
    iget-object v14, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    move/from16 v16, v0

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v0    # "length":I
    .local v16, "length":I
    move/from16 v17, v4

    :try_start_4
    iget-boolean v4, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z

    .end local v4    # "buf_size":I
    .local v17, "buf_size":I
    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->aosd:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    goto :goto_2

    :cond_2
    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->vlow:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    :goto_2
    invoke-direct {v0, v4, v13, v15}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2656
    iget-object v0, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    new-instance v4, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;

    iget-boolean v14, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z

    if-eqz v14, :cond_3

    sget-object v14, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->cxsd:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    goto :goto_3

    :cond_3
    sget-object v14, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->vmin:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    :goto_3
    invoke-direct {v4, v14, v12, v10}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2657
    .end local v16    # "length":I
    .end local v17    # "buf_size":I
    .restart local v0    # "length":I
    .restart local v4    # "buf_size":I
    :cond_4
    move/from16 v16, v0

    move/from16 v17, v4

    .end local v0    # "length":I
    .end local v4    # "buf_size":I
    .restart local v16    # "length":I
    .restart local v17    # "buf_size":I
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->MIDDLE_CHECK:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    if-ne v2, v0, :cond_5

    .line 2660
    iget-object v0, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_6

    .line 2661
    iget-object v0, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;

    invoke-virtual {v0, v13, v15}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->setInEndRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 2662
    iget-object v0, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;

    invoke-virtual {v0, v12, v10}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->setInEndRaw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2664
    :cond_5
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->END:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    if-ne v2, v0, :cond_6

    .line 2666
    iget-object v0, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_6

    .line 2667
    iget-object v0, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;

    invoke-virtual {v0, v13, v15}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->setInEndRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 2668
    iget-object v0, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;

    invoke-virtual {v0, v12, v10}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->setInEndRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 2672
    :cond_6
    :goto_4
    iget-boolean v0, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z

    if-eqz v0, :cond_7

    .line 2673
    const-string v0, "OPSA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "#### ["

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "] rpm_stats [aosd, "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "], [cxsd, "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "]"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2675
    :cond_7
    const-string v0, "OPSA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "#### ["

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "] rpm_stats [vlow, "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "], [vmin, "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "]"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2677
    .end local v10    # "vmin_timeSLM":Ljava/lang/String;
    .end local v12    # "vmin_Count":Ljava/lang/String;
    .end local v13    # "vlow_Count":Ljava/lang/String;
    .end local v15    # "vlow_timeSLM":Ljava/lang/String;
    :goto_5
    goto :goto_6

    .line 2678
    .end local v16    # "length":I
    .end local v17    # "buf_size":I
    .restart local v0    # "length":I
    .restart local v4    # "buf_size":I
    :cond_8
    move/from16 v16, v0

    move/from16 v17, v4

    .end local v0    # "length":I
    .end local v4    # "buf_size":I
    .restart local v16    # "length":I
    .restart local v17    # "buf_size":I
    const-string v0, "RPM Can\'t matched...."

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2681
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v12, v7

    const-wide/16 v14, 0x1388

    cmp-long v0, v12, v14

    if-ltz v0, :cond_9

    .line 2682
    const-string v0, "**** Exceed read timeout, force exit ***"

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 2683
    goto :goto_7

    .line 2685
    .end local v9    # "content":Ljava/lang/String;
    .end local v11    # "ma":Ljava/util/regex/Matcher;
    :cond_9
    nop

    .line 2633
    move/from16 v0, v16

    move/from16 v4, v17

    goto/16 :goto_0

    .line 2690
    .end local v7    # "nowELAPSED":J
    .end local v16    # "length":I
    :catch_3
    move-exception v0

    goto :goto_b

    .line 2688
    :catch_4
    move-exception v0

    goto :goto_d

    .line 2686
    :catch_5
    move-exception v0

    goto/16 :goto_f

    .line 2694
    .end local v17    # "buf_size":I
    .restart local v4    # "buf_size":I
    :cond_a
    move/from16 v17, v4

    .line 2695
    .end local v4    # "buf_size":I
    .restart local v17    # "buf_size":I
    :goto_7
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_8

    .line 2696
    :catch_6
    move-exception v0

    .line 2698
    goto/16 :goto_10

    .line 2697
    :cond_b
    :goto_8
    goto/16 :goto_10

    .line 2693
    .end local v17    # "buf_size":I
    .restart local v4    # "buf_size":I
    :catchall_1
    move-exception v0

    goto :goto_9

    .line 2690
    :catch_7
    move-exception v0

    goto :goto_a

    .line 2688
    :catch_8
    move-exception v0

    goto :goto_c

    .line 2686
    :catch_9
    move-exception v0

    goto :goto_e

    .line 2693
    :catchall_2
    move-exception v0

    move-object/from16 v6, p2

    .end local v3    # "fis":Ljava/io/FileInputStream;
    :goto_9
    move/from16 v17, v4

    move-object v4, v3

    move-object v3, v0

    .end local v4    # "buf_size":I
    .restart local v17    # "buf_size":I
    goto :goto_12

    .line 2690
    .end local v17    # "buf_size":I
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "buf_size":I
    :catch_a
    move-exception v0

    move-object/from16 v6, p2

    :goto_a
    move/from16 v17, v4

    .line 2691
    .end local v4    # "buf_size":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "buf_size":I
    :goto_b
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "**** Failed, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 2694
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_b

    .line 2695
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_8

    .line 2688
    .end local v17    # "buf_size":I
    .restart local v4    # "buf_size":I
    :catch_b
    move-exception v0

    move-object/from16 v6, p2

    :goto_c
    move/from16 v17, v4

    .line 2689
    .end local v4    # "buf_size":I
    .local v0, "e":Ljava/io/IOException;
    .restart local v17    # "buf_size":I
    :goto_d
    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "**** Failed to read, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 2694
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_b

    .line 2695
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_8

    .line 2686
    .end local v17    # "buf_size":I
    .restart local v4    # "buf_size":I
    :catch_c
    move-exception v0

    move-object/from16 v6, p2

    :goto_e
    move/from16 v17, v4

    .line 2687
    .end local v4    # "buf_size":I
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v17    # "buf_size":I
    :goto_f
    :try_start_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "**** File not found, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 2694
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_b

    .line 2695
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_8

    .line 2699
    :goto_10
    return-void

    .line 2693
    :catchall_3
    move-exception v0

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :goto_11
    move-object v4, v3

    move-object v3, v0

    .line 2694
    :goto_12
    if-eqz v4, :cond_c

    .line 2695
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d

    goto :goto_13

    .line 2696
    :catch_d
    move-exception v0

    nop

    .line 2697
    :cond_c
    :goto_13
    throw v3
.end method

.method public getRPMMasterDurationMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 13
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "sourcefile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2577
    const/4 v0, 0x0

    .line 2578
    .local v0, "fis":Ljava/io/FileInputStream;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2579
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;Ljava/lang/String;>;"
    const/16 v2, 0x400

    .line 2580
    .local v2, "buf_size":I
    new-array v3, v2, [B

    .line 2582
    .local v3, "buffer":[B
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    .line 2583
    const/4 v4, 0x0

    .line 2584
    .local v4, "length":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2585
    .local v5, "nowELAPSED":J
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    move v4, v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    .line 2586
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v3, v8, v4}, Ljava/lang/String;-><init>([BII)V

    .line 2588
    .local v7, "content":Ljava/lang/String;
    iget-boolean v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z

    if-eqz v8, :cond_0

    .line 2589
    iget-object v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_SDM845_Pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .local v8, "ma":Ljava/util/regex/Matcher;
    goto :goto_1

    .line 2592
    .end local v8    # "ma":Ljava/util/regex/Matcher;
    :cond_0
    iget-object v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_SDM845_Pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 2594
    .restart local v8    # "ma":Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2595
    const-string v9, "Matched...."

    invoke-static {v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2596
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 2597
    .local v9, "duration":Ljava/lang/String;
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->MPSS:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-interface {v1, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2598
    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 2599
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->ADSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-interface {v1, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2600
    .end local v9    # "duration":Ljava/lang/String;
    goto :goto_2

    .line 2601
    :cond_1
    const-string v9, "Can\'t matched...."

    invoke-static {v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2603
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v5

    const-wide/16 v11, 0x1388

    cmp-long v9, v9, v11

    if-ltz v9, :cond_2

    .line 2604
    const-string v9, "**** Exceed read timeout, force exit ***"

    invoke-static {v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2605
    goto :goto_3

    .line 2607
    .end local v7    # "content":Ljava/lang/String;
    .end local v8    # "ma":Ljava/util/regex/Matcher;
    :cond_2
    goto :goto_0

    .line 2614
    .end local v4    # "length":I
    .end local v5    # "nowELAPSED":J
    :cond_3
    :goto_3
    nop

    .line 2615
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 2616
    :catch_0
    move-exception v4

    .line 2618
    goto :goto_5

    .line 2617
    :cond_4
    :goto_4
    goto :goto_5

    .line 2613
    :catchall_0
    move-exception v4

    goto :goto_6

    .line 2610
    :catch_1
    move-exception v4

    .line 2611
    .local v4, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "**** Failed to read, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2614
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_4

    .line 2615
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 2608
    :catch_2
    move-exception v4

    .line 2609
    .local v4, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "**** File not found, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2614
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_4

    .line 2615
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    .line 2619
    :goto_5
    return-object v1

    .line 2613
    :goto_6
    nop

    .line 2614
    if-eqz v0, :cond_5

    .line 2615
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_7

    .line 2616
    :catch_3
    move-exception v5

    nop

    .line 2617
    :cond_5
    :goto_7
    throw v4
.end method

.method public getRPMMasterInfo(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Ljava/lang/String;)V
    .locals 28
    .param p1, "type"    # Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;
    .param p2, "sourcefile"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 2493
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    if-ne v2, v0, :cond_0

    .line 2494
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    .line 2497
    :cond_0
    const/4 v3, 0x0

    .line 2498
    .local v3, "fis":Ljava/io/FileInputStream;
    const/16 v4, 0x400

    .line 2499
    .local v4, "buf_size":I
    new-array v0, v4, [B

    move-object v5, v0

    .line 2501
    .local v5, "buffer":[B
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    move-object/from16 v6, p2

    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 2502
    const/4 v0, 0x0

    .line 2503
    .local v0, "length":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 2506
    .local v7, "nowELAPSED":J
    :goto_0
    invoke-virtual {v3, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    move v0, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_b

    .line 2507
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v5, v10, v0}, Ljava/lang/String;-><init>([BII)V

    .line 2510
    .local v9, "content":Ljava/lang/String;
    iget-object v11, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_Pattern_Map:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 2511
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;Ljava/util/regex/Pattern;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/regex/Pattern;

    .line 2512
    .local v13, "pn":Ljava/util/regex/Pattern;
    invoke-virtual {v13, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 2513
    .local v14, "ma":Ljava/util/regex/Matcher;
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 2514
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " Matched...."

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2521
    iget-boolean v10, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v15, 0x2

    if-eqz v10, :cond_1

    .line 2522
    :try_start_1
    invoke-virtual {v14, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 2523
    .local v10, "sleepCount":Ljava/lang/String;
    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    .line 2524
    .local v15, "lastEntered":Ljava/lang/String;
    move/from16 v17, v0

    const/4 v0, 0x4

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 2525
    .local v0, "lastExited":Ljava/lang/String;
    .local v17, "length":I
    move-object/from16 v18, v0

    const/4 v0, 0x5

    .end local v0    # "lastExited":Ljava/lang/String;
    .local v18, "lastExited":Ljava/lang/String;
    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2530
    .local v0, "sleepAccDuration":Ljava/lang/String;
    move-object/from16 v24, v18

    goto :goto_2

    .line 2569
    .end local v0    # "sleepAccDuration":Ljava/lang/String;
    .end local v7    # "nowELAPSED":J
    .end local v9    # "content":Ljava/lang/String;
    .end local v10    # "sleepCount":Ljava/lang/String;
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;Ljava/util/regex/Pattern;>;"
    .end local v13    # "pn":Ljava/util/regex/Pattern;
    .end local v14    # "ma":Ljava/util/regex/Matcher;
    .end local v15    # "lastEntered":Ljava/lang/String;
    .end local v17    # "length":I
    .end local v18    # "lastExited":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v2, v0

    move/from16 v25, v4

    move-object/from16 v26, v5

    goto/16 :goto_e

    .line 2566
    :catch_0
    move-exception v0

    move/from16 v25, v4

    move-object/from16 v26, v5

    goto/16 :goto_a

    .line 2564
    :catch_1
    move-exception v0

    move/from16 v25, v4

    move-object/from16 v26, v5

    goto/16 :goto_b

    .line 2562
    :catch_2
    move-exception v0

    move/from16 v25, v4

    move-object/from16 v26, v5

    goto/16 :goto_c

    .line 2527
    .local v0, "length":I
    .restart local v7    # "nowELAPSED":J
    .restart local v9    # "content":Ljava/lang/String;
    .restart local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;Ljava/util/regex/Pattern;>;"
    .restart local v13    # "pn":Ljava/util/regex/Pattern;
    .restart local v14    # "ma":Ljava/util/regex/Matcher;
    :cond_1
    move/from16 v17, v0

    .end local v0    # "length":I
    .restart local v17    # "length":I
    const/4 v0, 0x4

    :try_start_2
    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 2528
    .restart local v10    # "sleepCount":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 2529
    .local v0, "lastEntered":Ljava/lang/String;
    invoke-virtual {v14, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    .line 2530
    .local v15, "lastExited":Ljava/lang/String;
    move-object/from16 v19, v0

    const/4 v0, 0x3

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v0    # "lastEntered":Ljava/lang/String;
    .local v19, "lastEntered":Ljava/lang/String;
    move-object/from16 v24, v15

    move-object/from16 v15, v19

    .line 2532
    .end local v19    # "lastEntered":Ljava/lang/String;
    .local v0, "sleepAccDuration":Ljava/lang/String;
    .local v15, "lastEntered":Ljava/lang/String;
    .local v24, "lastExited":Ljava/lang/String;
    :goto_2
    move/from16 v25, v4

    :try_start_3
    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    .end local v4    # "buf_size":I
    .local v25, "buf_size":I
    if-ne v2, v4, :cond_2

    .line 2534
    iget-object v4, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v26, v5

    :try_start_4
    new-instance v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    .end local v5    # "buffer":[B
    .local v26, "buffer":[B
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v19, v16

    check-cast v19, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    move-object/from16 v18, v5

    move-object/from16 v20, v10

    move-object/from16 v21, v15

    move-object/from16 v22, v24

    move-object/from16 v23, v0

    invoke-direct/range {v18 .. v23}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 2535
    .end local v26    # "buffer":[B
    .restart local v5    # "buffer":[B
    :cond_2
    move-object/from16 v26, v5

    .end local v5    # "buffer":[B
    .restart local v26    # "buffer":[B
    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->MIDDLE_CHECK:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    if-ne v2, v4, :cond_5

    .line 2538
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    iget-object v5, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 2539
    iget-object v5, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-object v5, v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_3

    .line 2541
    iget-object v5, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    move-object/from16 v6, v24

    invoke-virtual {v5, v10, v15, v6, v0}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->setInEndRaw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v24    # "lastExited":Ljava/lang/String;
    .local v6, "lastExited":Ljava/lang/String;
    goto :goto_4

    .line 2538
    .end local v6    # "lastExited":Ljava/lang/String;
    .restart local v24    # "lastExited":Ljava/lang/String;
    :cond_3
    move-object/from16 v6, v24

    .end local v24    # "lastExited":Ljava/lang/String;
    .restart local v6    # "lastExited":Ljava/lang/String;
    :goto_4
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v24, v6

    move-object/from16 v6, p2

    goto :goto_3

    .line 2553
    .end local v4    # "i":I
    .end local v6    # "lastExited":Ljava/lang/String;
    .restart local v24    # "lastExited":Ljava/lang/String;
    :cond_4
    move-object/from16 v6, v24

    .end local v24    # "lastExited":Ljava/lang/String;
    .restart local v6    # "lastExited":Ljava/lang/String;
    goto :goto_6

    .line 2544
    .end local v6    # "lastExited":Ljava/lang/String;
    .restart local v24    # "lastExited":Ljava/lang/String;
    :cond_5
    move-object/from16 v6, v24

    .end local v24    # "lastExited":Ljava/lang/String;
    .restart local v6    # "lastExited":Ljava/lang/String;
    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->END:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    if-ne v2, v4, :cond_7

    .line 2546
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_5
    iget-object v5, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 2547
    iget-object v5, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-object v5, v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-ne v5, v2, :cond_6

    .line 2549
    iget-object v2, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    invoke-virtual {v2, v10, v15, v6, v0}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->setInEndRaw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2546
    :cond_6
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, p1

    goto :goto_5

    .line 2553
    .end local v0    # "sleepAccDuration":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v6    # "lastExited":Ljava/lang/String;
    .end local v10    # "sleepCount":Ljava/lang/String;
    .end local v15    # "lastEntered":Ljava/lang/String;
    :cond_7
    :goto_6
    goto :goto_7

    .line 2569
    .end local v7    # "nowELAPSED":J
    .end local v9    # "content":Ljava/lang/String;
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;Ljava/util/regex/Pattern;>;"
    .end local v13    # "pn":Ljava/util/regex/Pattern;
    .end local v14    # "ma":Ljava/util/regex/Matcher;
    .end local v17    # "length":I
    .end local v26    # "buffer":[B
    .restart local v5    # "buffer":[B
    :catchall_1
    move-exception v0

    move-object/from16 v26, v5

    move-object v2, v0

    .end local v5    # "buffer":[B
    .restart local v26    # "buffer":[B
    goto/16 :goto_e

    .line 2566
    .end local v26    # "buffer":[B
    .restart local v5    # "buffer":[B
    :catch_3
    move-exception v0

    move-object/from16 v26, v5

    .end local v5    # "buffer":[B
    .restart local v26    # "buffer":[B
    goto/16 :goto_a

    .line 2564
    .end local v26    # "buffer":[B
    .restart local v5    # "buffer":[B
    :catch_4
    move-exception v0

    move-object/from16 v26, v5

    .end local v5    # "buffer":[B
    .restart local v26    # "buffer":[B
    goto/16 :goto_b

    .line 2562
    .end local v26    # "buffer":[B
    .restart local v5    # "buffer":[B
    :catch_5
    move-exception v0

    move-object/from16 v26, v5

    .end local v5    # "buffer":[B
    .restart local v26    # "buffer":[B
    goto/16 :goto_c

    .line 2554
    .end local v25    # "buf_size":I
    .end local v26    # "buffer":[B
    .local v0, "length":I
    .local v4, "buf_size":I
    .restart local v5    # "buffer":[B
    .restart local v7    # "nowELAPSED":J
    .restart local v9    # "content":Ljava/lang/String;
    .restart local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;Ljava/util/regex/Pattern;>;"
    .restart local v13    # "pn":Ljava/util/regex/Pattern;
    .restart local v14    # "ma":Ljava/util/regex/Matcher;
    :cond_8
    move/from16 v17, v0

    move/from16 v25, v4

    move-object/from16 v26, v5

    .end local v0    # "length":I
    .end local v4    # "buf_size":I
    .end local v5    # "buffer":[B
    .restart local v17    # "length":I
    .restart local v25    # "buf_size":I
    .restart local v26    # "buffer":[B
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " CAN NOT Matched...."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2556
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;Ljava/util/regex/Pattern;>;"
    .end local v13    # "pn":Ljava/util/regex/Pattern;
    :goto_7
    nop

    .line 2510
    move/from16 v0, v17

    move/from16 v4, v25

    move-object/from16 v5, v26

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    const/4 v10, 0x0

    goto/16 :goto_1

    .line 2557
    .end local v14    # "ma":Ljava/util/regex/Matcher;
    .end local v17    # "length":I
    .end local v25    # "buf_size":I
    .end local v26    # "buffer":[B
    .restart local v0    # "length":I
    .restart local v4    # "buf_size":I
    .restart local v5    # "buffer":[B
    :cond_9
    move/from16 v17, v0

    move/from16 v25, v4

    move-object/from16 v26, v5

    .end local v0    # "length":I
    .end local v4    # "buf_size":I
    .end local v5    # "buffer":[B
    .restart local v17    # "length":I
    .restart local v25    # "buf_size":I
    .restart local v26    # "buffer":[B
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v7

    const-wide/16 v10, 0x1388

    cmp-long v0, v4, v10

    if-ltz v0, :cond_a

    .line 2558
    const-string v0, "**** Exceed read timeout, force exit ***"

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 2559
    goto :goto_8

    .line 2561
    .end local v9    # "content":Ljava/lang/String;
    :cond_a
    nop

    .line 2503
    move/from16 v0, v17

    move/from16 v4, v25

    move-object/from16 v5, v26

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    goto/16 :goto_0

    .line 2566
    .end local v7    # "nowELAPSED":J
    .end local v17    # "length":I
    :catch_6
    move-exception v0

    goto :goto_a

    .line 2564
    :catch_7
    move-exception v0

    goto :goto_b

    .line 2562
    :catch_8
    move-exception v0

    goto :goto_c

    .line 2570
    .end local v25    # "buf_size":I
    .end local v26    # "buffer":[B
    .restart local v4    # "buf_size":I
    .restart local v5    # "buffer":[B
    :cond_b
    move/from16 v25, v4

    move-object/from16 v26, v5

    .line 2571
    .end local v4    # "buf_size":I
    .end local v5    # "buffer":[B
    .restart local v25    # "buf_size":I
    .restart local v26    # "buffer":[B
    :goto_8
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    goto :goto_9

    .line 2572
    :catch_9
    move-exception v0

    .line 2574
    goto :goto_d

    .line 2573
    :cond_c
    :goto_9
    goto :goto_d

    .line 2569
    .end local v25    # "buf_size":I
    .end local v26    # "buffer":[B
    .restart local v4    # "buf_size":I
    .restart local v5    # "buffer":[B
    :catchall_2
    move-exception v0

    move/from16 v25, v4

    move-object/from16 v26, v5

    move-object v2, v0

    .end local v4    # "buf_size":I
    .end local v5    # "buffer":[B
    .restart local v25    # "buf_size":I
    .restart local v26    # "buffer":[B
    goto :goto_e

    .line 2566
    .end local v25    # "buf_size":I
    .end local v26    # "buffer":[B
    .restart local v4    # "buf_size":I
    .restart local v5    # "buffer":[B
    :catch_a
    move-exception v0

    move/from16 v25, v4

    move-object/from16 v26, v5

    .line 2567
    .end local v4    # "buf_size":I
    .end local v5    # "buffer":[B
    .local v0, "e":Ljava/lang/Exception;
    .restart local v25    # "buf_size":I
    .restart local v26    # "buffer":[B
    :goto_a
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "**** Failed, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 2570
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_c

    .line 2571
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    goto :goto_9

    .line 2564
    .end local v25    # "buf_size":I
    .end local v26    # "buffer":[B
    .restart local v4    # "buf_size":I
    .restart local v5    # "buffer":[B
    :catch_b
    move-exception v0

    move/from16 v25, v4

    move-object/from16 v26, v5

    .line 2565
    .end local v4    # "buf_size":I
    .end local v5    # "buffer":[B
    .local v0, "e":Ljava/io/IOException;
    .restart local v25    # "buf_size":I
    .restart local v26    # "buffer":[B
    :goto_b
    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "**** Failed to read, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 2570
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_c

    .line 2571
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    .line 2562
    .end local v25    # "buf_size":I
    .end local v26    # "buffer":[B
    .restart local v4    # "buf_size":I
    .restart local v5    # "buffer":[B
    :catch_c
    move-exception v0

    move/from16 v25, v4

    move-object/from16 v26, v5

    .line 2563
    .end local v4    # "buf_size":I
    .end local v5    # "buffer":[B
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v25    # "buf_size":I
    .restart local v26    # "buffer":[B
    :goto_c
    :try_start_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "**** File not found, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 2570
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_c

    .line 2571
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_9

    .line 2575
    :goto_d
    return-void

    .line 2569
    :catchall_3
    move-exception v0

    move-object v2, v0

    .line 2570
    :goto_e
    if-eqz v3, :cond_d

    .line 2571
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d

    goto :goto_f

    .line 2572
    :catch_d
    move-exception v0

    nop

    .line 2573
    :cond_d
    :goto_f
    throw v2
.end method

.method public getStandbyStart()J
    .locals 2

    .line 1487
    iget-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfStart:J

    return-wide v0
.end method

.method public getWiFiWakeUpCountMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 13
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "sourcefile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2390
    const/4 v0, 0x0

    .line 2391
    .local v0, "fis":Ljava/io/FileInputStream;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2392
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;Ljava/lang/Integer;>;"
    const/16 v2, 0x400

    .line 2393
    .local v2, "buf_size":I
    new-array v3, v2, [B

    .line 2395
    .local v3, "buffer":[B
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    .line 2396
    const/4 v4, 0x0

    .line 2397
    .local v4, "length":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2398
    .local v5, "nowELAPSED":J
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    move v4, v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    .line 2399
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v3, v8, v4}, Ljava/lang/String;-><init>([BII)V

    .line 2400
    .local v7, "content":Ljava/lang/String;
    const-string v8, "OPSA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "] WiFi WakeUp content=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2401
    iget-object v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWifiWakeupPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 2402
    .local v8, "ma":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2403
    const-string v9, "Matched...."

    invoke-static {v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2404
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 2405
    .local v9, "count":Ljava/lang/String;
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->uc:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2406
    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 2407
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->bc:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2408
    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 2409
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->v4_mc:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2410
    const/4 v10, 0x4

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 2411
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->v6_mc:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2412
    const/4 v10, 0x5

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 2413
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->ra:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2414
    const/4 v10, 0x6

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 2415
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->ns:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2416
    const/4 v10, 0x7

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 2417
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->na:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2418
    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 2419
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->pno_match:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2420
    const/16 v10, 0x9

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 2421
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->pno_complete:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2422
    const/16 v10, 0xa

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 2423
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->gscan:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2424
    const/16 v10, 0xb

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 2425
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->low_rssi:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2426
    const/16 v10, 0xc

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 2427
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->rssi_breach:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2428
    const/16 v10, 0xd

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 2429
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->icmp:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2430
    const/16 v10, 0xe

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 2431
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->icmpv6:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2432
    const/16 v10, 0xf

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 2433
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->oem:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2434
    const/16 v10, 0x10

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 2435
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->unspecified:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2437
    .end local v9    # "count":Ljava/lang/String;
    goto :goto_1

    .line 2438
    :cond_0
    const-string v9, "Can\'t matched...."

    invoke-static {v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 2440
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v5

    const-wide/16 v11, 0x1388

    cmp-long v9, v9, v11

    if-ltz v9, :cond_1

    .line 2441
    const-string v9, "**** Exceed read timeout, force exit ***"

    invoke-static {v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2442
    goto :goto_2

    .line 2444
    .end local v7    # "content":Ljava/lang/String;
    .end local v8    # "ma":Ljava/util/regex/Matcher;
    :cond_1
    goto/16 :goto_0

    .line 2451
    .end local v4    # "length":I
    .end local v5    # "nowELAPSED":J
    :cond_2
    :goto_2
    nop

    .line 2452
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 2453
    :catch_0
    move-exception v4

    .line 2455
    goto :goto_4

    .line 2454
    :cond_3
    :goto_3
    goto :goto_4

    .line 2450
    :catchall_0
    move-exception v4

    goto :goto_5

    .line 2447
    :catch_1
    move-exception v4

    .line 2448
    .local v4, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "**** Failed to read, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2451
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_3

    .line 2452
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 2445
    :catch_2
    move-exception v4

    .line 2446
    .local v4, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "**** File not found, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2451
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_3

    .line 2452
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 2456
    :goto_4
    return-object v1

    .line 2450
    :goto_5
    nop

    .line 2451
    if-eqz v0, :cond_4

    .line 2452
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_6

    .line 2453
    :catch_3
    move-exception v5

    nop

    .line 2454
    :cond_4
    :goto_6
    throw v4
.end method

.method public ifDiagnosisAsNormal()Z
    .locals 1

    .line 986
    iget-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisAsNormal:Z

    return v0
.end method

.method public ifEverGenQXDMToCleanUp()Z
    .locals 1

    .line 1849
    iget-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIfEverGenQXDMToCleanUp:Z

    return v0
.end method

.method public ifUnderStandbyPeriod()Z
    .locals 1

    .line 1852
    iget-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUnderStandbyPeriod:Z

    return v0
.end method

.method public declared-synchronized immediateInformScreenON(Z)V
    .locals 3
    .param p1, "ifTriggerDaignosis"    # Z

    monitor-enter p0

    .line 1056
    :try_start_0
    const-string v0, "OPSA"

    const-string v1, "======BE_IMFORMED_SCREEN_ON======"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUnderStandbyPeriod:Z

    .line 1058
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    const/16 v2, 0x3f2

    invoke-virtual {v1, v2}, Lcom/android/server/DeviceIdleController;->removeMessages(I)V

    .line 1060
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->NETWORK_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    if-eqz p1, :cond_0

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->VALID_STANDBY_PERIOD:Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->INVALID_STANDBY_PERIOD:Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    :goto_0
    invoke-virtual {p0, v0, v1, v2, v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->enableQXDM(ZLcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1061
    monitor-exit p0

    return-void

    .line 1055
    .end local p1    # "ifTriggerDaignosis":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/OnePlusStandbyAnalyzer;
    throw p1
.end method

.method public middleSpecificCheck()V
    .locals 7

    .line 1914
    iget-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUnderStandbyPeriod:Z

    if-eqz v0, :cond_2

    .line 1916
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfStart:J

    sub-long/2addr v0, v2

    .line 1919
    .local v0, "timeGap":J
    iget-wide v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMiddleCheckPeriod:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMiddleCheckPeriod:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 1921
    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->MIDDLE_CHECK:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_FILE:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->getRPMInfo(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Ljava/lang/String;)V

    .line 1922
    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->MIDDLE_CHECK:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_MASTER_FILE:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->getRPMMasterInfo(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Ljava/lang/String;)V

    .line 1924
    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->checkifRPMAbnormal(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1925
    const-string v2, "Middle Check : Observe aosd / vmin no increase !"

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1930
    invoke-direct {p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->judgeRPM()Ljava/lang/String;

    move-result-object v2

    .line 1931
    .local v2, "rpmDetailJudge":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "###### [judgeRPM] :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1933
    if-eqz v2, :cond_0

    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->MPSS:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1935
    const/4 v3, 0x1

    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->NETWORK_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->MODEM_ABN_TRIGGER:Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->enableQXDM(ZLcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;Z)V

    .line 1937
    .end local v2    # "rpmDetailJudge":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1938
    :cond_1
    const-string v2, "Middle Check : Nothing special..."

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1942
    .end local v0    # "timeGap":J
    :cond_2
    :goto_0
    return-void
.end method

.method public notifyEnterDeepIdle()V
    .locals 1

    .line 1450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverEnterDeepDoze:Z

    .line 1451
    return-void
.end method

.method public sendCleanUpQXDMIfAppropriate()V
    .locals 1

    .line 1861
    iget-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIfEverGenQXDMToCleanUp:Z

    if-eqz v0, :cond_1

    .line 1862
    invoke-direct {p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->iSQXDMLogReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1863
    invoke-direct {p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->triggerQXDMSelfCleanUp()V

    .line 1865
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIfEverGenQXDMToCleanUp:Z

    goto :goto_0

    .line 1868
    :cond_0
    const-string/jumbo v0, "oops, although diagnose as normal, but QXDM log is not ready, no way to clean it :("

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1871
    :cond_1
    const-string v0, "No need to cleanup due to no qxdm generation at this round."

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1873
    :goto_0
    return-void
.end method

.method public setLastQXDMGrabTimeStamp(J)V
    .locals 2
    .param p1, "desiredTime"    # J

    .line 1474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reset mLastQXDMGrabTimeStamp to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1475
    iput-wide p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mLastQXDMGrabTimeStamp:J

    .line 1476
    return-void
.end method

.method public declared-synchronized simulateTelephonyAbnormal(Z)V
    .locals 3
    .param p1, "forShortTest"    # Z

    monitor-enter p0

    .line 1072
    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->NETWORK_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->TELE_ABN_TRIGGER:Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/OnePlusStandbyAnalyzer;->enableQXDM(ZLcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1073
    monitor-exit p0

    return-void

    .line 1071
    .end local p1    # "forShortTest":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/OnePlusStandbyAnalyzer;
    throw p1
.end method

.method public snapShot(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;)V
    .locals 2
    .param p1, "snapshot"    # Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;
    .param p2, "statitic"    # Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    .line 1453
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    new-instance v1, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;)V

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController;->postToOPBackgroundThread(Ljava/lang/Runnable;)V

    .line 1454
    return-void
.end method

.method public snapShot(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;IFFJZ)V
    .locals 13
    .param p1, "snapshot"    # Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;
    .param p2, "statitic"    # Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;
    .param p3, "batteryLevelDrop"    # I
    .param p4, "mA"    # F
    .param p5, "mACriteria"    # F
    .param p6, "mMinimumPeriod"    # J
    .param p8, "fortest"    # Z

    .line 1460
    move-object v10, p0

    iget-object v11, v10, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    new-instance v12, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;

    move-object v0, v12

    move-object v1, v10

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;IFFJZ)V

    invoke-virtual {v11, v12}, Lcom/android/server/DeviceIdleController;->postToOPBackgroundThread(Ljava/lang/Runnable;)V

    .line 1461
    return-void
.end method

.method public snapShot(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;J)V
    .locals 2
    .param p1, "snapshot"    # Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;
    .param p2, "statitic"    # Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;
    .param p3, "delay"    # J

    .line 1457
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    new-instance v1, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;)V

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/server/DeviceIdleController;->postToOPBackgroundThread(Ljava/lang/Runnable;J)V

    .line 1458
    return-void
.end method

.method public triggerCleanUpQXDMUnderVendor()V
    .locals 2

    .line 1855
    const-string/jumbo v0, "triggering clean-up QXDM trash under vendor partition directly"

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1857
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIfEverGenQXDMToCleanUp:Z

    .line 1858
    const-string/jumbo v0, "persist.sys.qxdm_clean_old"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    return-void
.end method

.method public triggerCopyQXDMToSdCard()V
    .locals 4

    .line 1875
    const-string v0, "OPSA"

    const-string v1, "Start to copy qxdm log to sdcard"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    const-string/jumbo v0, "persist.vendor.qxdm.copylog"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1880
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    const/16 v1, 0x3f0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController;->sendEmptyMessageDelayed(IJ)V

    .line 1881
    return-void
.end method

.method public updateQXDMGrabGapAfterStandbyStart(J)V
    .locals 2
    .param p1, "gap"    # J

    .line 1499
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 1500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mQXDMGrabGapAfterStandbyStart : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1501
    iput-wide p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMGrabGapAfterStandbyStart:J

    .line 1503
    :cond_0
    return-void
.end method

.method public updateQXDMGrabMechanism(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 1469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mQXDMGrabMechanism : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1470
    iput-boolean p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMGrabMechanism:Z

    .line 1471
    return-void
.end method

.method public updateQXDMGrabMinimumPeriod(J)V
    .locals 2
    .param p1, "period"    # J

    .line 1493
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 1494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update updateQXDMGrabMinimumPeriod : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1495
    iput-wide p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMinimumQXDMGrabPeriod:J

    .line 1497
    :cond_0
    return-void
.end method

.method public declared-synchronized updateReportingFlag(Z)V
    .locals 3
    .param p1, "report"    # Z

    monitor-enter p0

    .line 1063
    :try_start_0
    const-string v0, "OPSA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update reporting-flag to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    iput-boolean p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandbyAbnReportingEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1065
    monitor-exit p0

    return-void

    .line 1062
    .end local p1    # "report":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .line 1062
    .end local p0    # "this":Lcom/android/server/OnePlusStandbyAnalyzer;
    throw p1
.end method

.method public updateStandbyCriteria(Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V
    .locals 2
    .param p1, "type"    # Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;
    .param p2, "value"    # F

    .line 1517
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$CRITERIA_TYPE:[I

    invoke-virtual {p1}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1571
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mRPM_SLPI_SLEEPCOUNT_DIFF_CRITERIA : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1572
    float-to-int v0, p2

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SLPI_SLEEPCOUNT_DIFF_CRITERIA:J

    goto/16 :goto_0

    .line 1567
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mRPM_SLEEP_ACC_DURATION_DIFF_PERCENT : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1568
    sput p2, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SLEEP_ACC_DURATION_DIFF_PERCENT:F

    .line 1569
    goto/16 :goto_0

    .line 1563
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mRPM_TIME_SLM_SEC_CRITERIA : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1564
    float-to-int v0, p2

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_TIME_SLM_SEC_CRITERIA:J

    .line 1565
    goto/16 :goto_0

    .line 1559
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mAVERAGE_CURRENT_EXCEED_FOR_MINOR : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1560
    sput p2, Lcom/android/server/OnePlusStandbyAnalyzer;->mAVERAGE_CURRENT_EXCEED_FOR_MINOR:F

    .line 1561
    goto/16 :goto_0

    .line 1555
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mUNACCOUNTED_CRITERIA_FOR_MINOR : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1556
    sput p2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUNACCOUNTED_CRITERIA_FOR_MINOR:F

    .line 1557
    goto/16 :goto_0

    .line 1551
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mUNACCOUNTED_CRITERIA : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1552
    sput p2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUNACCOUNTED_CRITERIA:F

    .line 1553
    goto/16 :goto_0

    .line 1547
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mSIGNAL_BAD_CRITERIA_FOR_MINOR : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1548
    sput p2, Lcom/android/server/OnePlusStandbyAnalyzer;->mSIGNAL_BAD_CRITERIA_FOR_MINOR:F

    .line 1549
    goto/16 :goto_0

    .line 1543
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mSIGNAL_BAD_CRITERIA : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1544
    sput p2, Lcom/android/server/OnePlusStandbyAnalyzer;->mSIGNAL_BAD_CRITERIA:F

    .line 1545
    goto/16 :goto_0

    .line 1539
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mKERNEL_WAKEUP_COUNT_CRITERIA_FOR_MINOR : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1540
    float-to-int v0, p2

    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNEL_WAKEUP_COUNT_CRITERIA_FOR_MINOR:I

    .line 1541
    goto/16 :goto_0

    .line 1535
    :pswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mKERNEL_WAKEUP_COUNT_CRITERIA : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1536
    float-to-int v0, p2

    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNEL_WAKEUP_COUNT_CRITERIA:I

    .line 1537
    goto :goto_0

    .line 1531
    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mKERNELSPACE_WL_CRITERIA_FOR_MINOR : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1532
    sput p2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNELSPACE_WL_CRITERIA_FOR_MINOR:F

    .line 1533
    goto :goto_0

    .line 1527
    :pswitch_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mKERNELSPACE_WL_CRITERIA : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1528
    sput p2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNELSPACE_WL_CRITERIA:F

    .line 1529
    goto :goto_0

    .line 1523
    :pswitch_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mUSERSPACE_WL_CRITERIA_FOR_MINOR : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1524
    sput p2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUSERSPACE_WL_CRITERIA_FOR_MINOR:F

    .line 1525
    goto :goto_0

    .line 1519
    :pswitch_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mUSERSPACE_WL_CRITERIA : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1520
    sput p2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUSERSPACE_WL_CRITERIA:F

    .line 1521
    nop

    .line 1575
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateStandbyMiddleCheck(J)V
    .locals 2
    .param p1, "middileCheck"    # J

    .line 1505
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 1506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mMiddleCheckPeriod : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1507
    iput-wide p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMiddleCheckPeriod:J

    goto :goto_0

    .line 1509
    :cond_0
    const-string v0, "Opps, Update mMiddleCheckPeriod to negative value, disable middle_check mechanism"

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1511
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMiddleCheckPeriod:J

    .line 1513
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController;->removeMessages(I)V

    .line 1515
    :goto_0
    return-void
.end method
