.class public Lcom/android/server/wifi/WifiController;
.super Lcom/android/internal/util/StateMachine;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiController$QcStaDisablingState;,
        Lcom/android/server/wifi/WifiController$FtmModeState;,
        Lcom/android/server/wifi/WifiController$DeviceActiveState;,
        Lcom/android/server/wifi/WifiController$EcmState;,
        Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;,
        Lcom/android/server/wifi/WifiController$StaEnabledState;,
        Lcom/android/server/wifi/WifiController$StaDisabledState;,
        Lcom/android/server/wifi/WifiController$DefaultState;,
        Lcom/android/server/wifi/WifiController$ClientModeCallback;,
        Lcom/android/server/wifi/WifiController$ScanOnlyCallback;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x26000

.field static final CMD_AIRPLANE_TOGGLED:I = 0x26009

.field static final CMD_AP_START_FAILURE:I = 0x2600d

.field static final CMD_AP_STOPPED:I = 0x2600f

.field static final CMD_DEFERRED_TOGGLE:I = 0x2600b

.field static final CMD_DELAY_DISCONNECT:I = 0x2601e

.field static final CMD_EMERGENCY_CALL_STATE_CHANGED:I = 0x2600e

.field static final CMD_EMERGENCY_MODE_CHANGED:I = 0x26001

.field static final CMD_FTM_MODE_OFF:I = 0x26065

.field static final CMD_FTM_MODE_ON:I = 0x26064

.field static final CMD_RECOVERY_DISABLE_WIFI:I = 0x26013

.field static final CMD_RECOVERY_RESTART_WIFI:I = 0x26011

.field private static final CMD_RECOVERY_RESTART_WIFI_CONTINUE:I = 0x26012

.field static final CMD_SCANNING_STOPPED:I = 0x26015

.field static final CMD_SCAN_ALWAYS_MODE_CHANGED:I = 0x26007

.field static final CMD_SET_AP:I = 0x2600a

.field static final CMD_SET_DUAL_AP:I = 0x2601f

.field static final CMD_STA_START_FAILURE:I = 0x26010

.field static final CMD_STA_STOPPED:I = 0x26014

.field static final CMD_TETHERING_USB_TOGGLED:I = 0x26066

.field static final CMD_TETHERING_WIFI_TOGGLED:I = 0x26067

.field static final CMD_USER_PRESENT:I = 0x2600c

.field static final CMD_WIFI_TOGGLED:I = 0x26008

.field private static DBG:Z = false

.field private static final DEFAULT_REENABLE_DELAY_MS:J = 0x1f4L

.field private static final DEFER_MARGIN_MS:J = 0x5L

.field private static final DEFER_MESSAGE_DELAY_MS:J = 0x12cL

.field private static final DRIVER_STATUS_PROP:Ljava/lang/String; = "wlan.driver.status"

.field private static final TAG:Ljava/lang/String; = "WifiController"


# instance fields
.field private mClientModeCallback:Lcom/android/server/wifi/ClientModeManager$Listener;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

.field private mDeferCount:I

.field private mDeviceActiveState:Lcom/android/server/wifi/WifiController$DeviceActiveState;

.field private mEcmState:Lcom/android/server/wifi/WifiController$EcmState;

.field private mFacade:Lcom/android/server/wifi/FrameworkFacade;

.field private mFirstUserSignOnSeen:Z

.field private mFtmModeState:Lcom/android/server/wifi/WifiController$FtmModeState;

.field mNetworkInfo:Landroid/net/NetworkInfo;

.field private mQcStaDisablingState:Lcom/android/server/wifi/WifiController$QcStaDisablingState;

.field private mReEnableDelayMillis:J

.field private mScanOnlyModeCallback:Lcom/android/server/wifi/ScanOnlyModeManager$Listener;

.field private final mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

.field private mStaDisabledState:Lcom/android/server/wifi/WifiController$StaDisabledState;

.field private mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

.field private mStaEnabledState:Lcom/android/server/wifi/WifiController$StaEnabledState;

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private mUsbTetherEnabled:Z

.field private final mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

.field private mWifiControllerReady:Z

.field private final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private final mWifiStateMachineLooper:Landroid/os/Looper;

.field private final mWifiStateMachinePrime:Lcom/android/server/wifi/WifiStateMachinePrime;

.field private mWifiTetherEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wifi/WifiController;->DBG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Looper;Lcom/android/server/wifi/WifiSettingsStore;Landroid/os/Looper;Lcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/WifiStateMachinePrime;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wsm"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "wifiStateMachineLooper"    # Landroid/os/Looper;
    .param p4, "wss"    # Lcom/android/server/wifi/WifiSettingsStore;
    .param p5, "wifiServiceLooper"    # Landroid/os/Looper;
    .param p6, "f"    # Lcom/android/server/wifi/FrameworkFacade;
    .param p7, "wsmp"    # Lcom/android/server/wifi/WifiStateMachinePrime;

    .line 150
    const-string v0, "WifiController"

    invoke-direct {p0, v0, p5}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mFirstUserSignOnSeen:Z

    .line 57
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mWifiControllerReady:Z

    .line 78
    iput v0, p0, Lcom/android/server/wifi/WifiController;->mDeferCount:I

    .line 79
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mUsbTetherEnabled:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mWifiTetherEnabled:Z

    .line 84
    new-instance v1, Landroid/net/NetworkInfo;

    const-string v2, "WIFI"

    const-string v3, ""

    const/4 v4, 0x1

    invoke-direct {v1, v4, v0, v2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiController;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 96
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiController;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 135
    new-instance v1, Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiController$DefaultState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    .line 136
    new-instance v1, Lcom/android/server/wifi/WifiController$StaEnabledState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiController$StaEnabledState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiController;->mStaEnabledState:Lcom/android/server/wifi/WifiController$StaEnabledState;

    .line 137
    new-instance v1, Lcom/android/server/wifi/WifiController$StaDisabledState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiController$StaDisabledState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledState:Lcom/android/server/wifi/WifiController$StaDisabledState;

    .line 138
    new-instance v1, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    .line 139
    new-instance v1, Lcom/android/server/wifi/WifiController$DeviceActiveState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiController$DeviceActiveState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiController;->mDeviceActiveState:Lcom/android/server/wifi/WifiController$DeviceActiveState;

    .line 140
    new-instance v1, Lcom/android/server/wifi/WifiController$EcmState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiController$EcmState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiController;->mEcmState:Lcom/android/server/wifi/WifiController$EcmState;

    .line 141
    new-instance v1, Lcom/android/server/wifi/WifiController$FtmModeState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiController$FtmModeState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiController;->mFtmModeState:Lcom/android/server/wifi/WifiController$FtmModeState;

    .line 142
    new-instance v1, Lcom/android/server/wifi/WifiController$QcStaDisablingState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiController$QcStaDisablingState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiController;->mQcStaDisablingState:Lcom/android/server/wifi/WifiController$QcStaDisablingState;

    .line 144
    new-instance v1, Lcom/android/server/wifi/WifiController$ScanOnlyCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiController$ScanOnlyCallback;-><init>(Lcom/android/server/wifi/WifiController;Lcom/android/server/wifi/WifiController$1;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiController;->mScanOnlyModeCallback:Lcom/android/server/wifi/ScanOnlyModeManager$Listener;

    .line 145
    new-instance v1, Lcom/android/server/wifi/WifiController$ClientModeCallback;

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiController$ClientModeCallback;-><init>(Lcom/android/server/wifi/WifiController;Lcom/android/server/wifi/WifiController$1;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiController;->mClientModeCallback:Lcom/android/server/wifi/ClientModeManager$Listener;

    .line 151
    iput-object p6, p0, Lcom/android/server/wifi/WifiController;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    .line 152
    iput-object p1, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    .line 153
    iput-object p2, p0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 154
    iput-object p3, p0, Lcom/android/server/wifi/WifiController;->mWifiStateMachineLooper:Landroid/os/Looper;

    .line 155
    iput-object p7, p0, Lcom/android/server/wifi/WifiController;->mWifiStateMachinePrime:Lcom/android/server/wifi/WifiStateMachinePrime;

    .line 156
    iput-object p4, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    .line 157
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mWifiControllerReady:Z

    .line 158
    invoke-static {}, Lcom/android/server/wifi/WifiInjector;->getInstance()Lcom/android/server/wifi/WifiInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiInjector;->getWifiApConfigStore()Lcom/android/server/wifi/WifiApConfigStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiController;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    .line 161
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;)V

    .line 162
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledState:Lcom/android/server/wifi/WifiController$StaDisabledState;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 163
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mFtmModeState:Lcom/android/server/wifi/WifiController$FtmModeState;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledState:Lcom/android/server/wifi/WifiController$StaDisabledState;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 164
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mStaEnabledState:Lcom/android/server/wifi/WifiController$StaEnabledState;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 165
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mDeviceActiveState:Lcom/android/server/wifi/WifiController$DeviceActiveState;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mStaEnabledState:Lcom/android/server/wifi/WifiController$StaEnabledState;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 166
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 167
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mEcmState:Lcom/android/server/wifi/WifiController$EcmState;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 168
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mQcStaDisablingState:Lcom/android/server/wifi/WifiController$QcStaDisablingState;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 171
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    move-result v1

    .line 172
    .local v1, "isAirplaneModeOn":Z
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v2

    .line 173
    .local v2, "isWifiEnabled":Z
    iget-object v3, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v3

    .line 174
    .local v3, "isScanningAlwaysAvailable":Z
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    .line 175
    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiSettingsStore;->getLocationModeSetting(Landroid/content/Context;)I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    move v4, v0

    .line 178
    .local v4, "isLocationModeActive":Z
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAirplaneModeOn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isWifiEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isScanningAvailable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isLocationModeActive = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    .line 183
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->checkScanOnlyModeAvailable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 184
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiController;->setInitialState(Lcom/android/internal/util/State;)V

    goto :goto_1

    .line 186
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledState:Lcom/android/server/wifi/WifiController$StaDisabledState;

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiController;->setInitialState(Lcom/android/internal/util/State;)V

    .line 189
    :goto_1
    const/16 v5, 0x64

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiController;->setLogRecSize(I)V

    .line 190
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiController;->setLogOnlyTransitions(Z)V

    .line 193
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mWifiStateMachinePrime:Lcom/android/server/wifi/WifiStateMachinePrime;

    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mScanOnlyModeCallback:Lcom/android/server/wifi/ScanOnlyModeManager$Listener;

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiStateMachinePrime;->registerScanOnlyCallback(Lcom/android/server/wifi/ScanOnlyModeManager$Listener;)V

    .line 194
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mWifiStateMachinePrime:Lcom/android/server/wifi/WifiStateMachinePrime;

    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mClientModeCallback:Lcom/android/server/wifi/ClientModeManager$Listener;

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiStateMachinePrime;->registerClientModeCallback(Lcom/android/server/wifi/ClientModeManager$Listener;)V

    .line 196
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 197
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    const-string v5, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    const-string v5, "android.location.MODE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/wifi/WifiController$1;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiController$1;-><init>(Lcom/android/server/wifi/WifiController;)V

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 228
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->readWifiReEnableDelay()V

    .line 229
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachinePrime;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mWifiStateMachinePrime:Lcom/android/server/wifi/WifiStateMachinePrime;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledState:Lcom/android/server/wifi/WifiController$StaDisabledState;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/WifiController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .line 52
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mFirstUserSignOnSeen:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/wifi/WifiController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Z

    .line 52
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiController;->mFirstUserSignOnSeen:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mDeviceActiveState:Lcom/android/server/wifi/WifiController$DeviceActiveState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .line 52
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mWifiControllerReady:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/wifi/WifiController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .line 52
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->checkScanOnlyModeAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/wifi/WifiController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Z

    .line 52
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiController;->mWifiControllerReady:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/wifi/WifiController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .line 52
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mUsbTetherEnabled:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/wifi/WifiController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Z

    .line 52
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiController;->mUsbTetherEnabled:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/wifi/WifiController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .line 52
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mWifiTetherEnabled:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/server/wifi/WifiController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Z

    .line 52
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiController;->mWifiTetherEnabled:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/wifi/WifiController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/FrameworkFacade;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$EcmState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mEcmState:Lcom/android/server/wifi/WifiController$EcmState;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiApConfigStore;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/wifi/WifiController;Landroid/os/Message;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiController;->doOnePlusDeferEnable(Landroid/os/Message;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$FtmModeState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mFtmModeState:Lcom/android/server/wifi/WifiController$FtmModeState;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/wifi/WifiController;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # I

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/wifi/WifiController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # I

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$QcStaDisablingState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mQcStaDisablingState:Lcom/android/server/wifi/WifiController$QcStaDisablingState;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .line 52
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->setHostName()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/wifi/WifiController;)Landroid/os/Looper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mWifiStateMachineLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700()Z
    .locals 1

    .line 52
    sget-boolean v0, Lcom/android/server/wifi/WifiController;->DBG:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Landroid/os/Message;

    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiController;->smToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private checkScanOnlyModeAvailable()Z
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiSettingsStore;->getLocationModeSetting(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 235
    const/4 v0, 0x0

    return v0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v0

    return v0
.end method

.method private declared-synchronized doOnePlusDeferEnable(Landroid/os/Message;I)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "checkWifiStatus"    # I

    monitor-enter p0

    .line 1022
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p2, :cond_1

    .line 1024
    iget v0, p0, Lcom/android/server/wifi/WifiController;->mDeferCount:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 1025
    iget v0, p0, Lcom/android/server/wifi/WifiController;->mDeferCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wifi/WifiController;->mDeferCount:I

    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiController: doOnePlusDeferEnable count: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/WifiController;->mDeferCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    .line 1028
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiController;->removeMessages(I)V

    .line 1029
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1030
    .local v0, "deferredMsg":Landroid/os/Message;
    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/wifi/WifiController;->sendMessageDelayed(Landroid/os/Message;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1031
    monitor-exit p0

    return v1

    .line 1033
    .end local v0    # "deferredMsg":Landroid/os/Message;
    :cond_0
    :try_start_1
    iput v1, p0, Lcom/android/server/wifi/WifiController;->mDeferCount:I

    .line 1034
    const-string v0, "WifiController: already doOnePlusDeferEnable 10 times, skip"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1035
    monitor-exit p0

    return v1

    .line 1038
    :cond_1
    :try_start_2
    iput v1, p0, Lcom/android/server/wifi/WifiController;->mDeferCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1039
    monitor-exit p0

    return v1

    .line 1021
    .end local p1    # "msg":Landroid/os/Message;
    .end local p2    # "checkWifiStatus":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiController;
    throw p1
.end method

.method private getNextWifiState()Lcom/android/internal/util/State;
    .locals 2

    .line 799
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->getWifiSavedState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 800
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mDeviceActiveState:Lcom/android/server/wifi/WifiController$DeviceActiveState;

    return-object v0

    .line 803
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->checkScanOnlyModeAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 804
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    return-object v0

    .line 807
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledState:Lcom/android/server/wifi/WifiController$StaDisabledState;

    return-object v0
.end method

.method private readWifiReEnableDelay()V
    .locals 5

    .line 283
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    const-string v2, "wifi_reenable_delay"

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/FrameworkFacade;->getLongSetting(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiController;->mReEnableDelayMillis:J

    .line 285
    return-void
.end method

.method private setHostName()V
    .locals 4

    .line 997
    const/4 v0, 0x0

    .line 998
    .local v0, "isValid":Z
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    .line 999
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_oneplus_devicename"

    .line 998
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1000
    .local v1, "hostname":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1001
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1002
    const-string v2, ".*[^_a-zA-Z0-9-.].*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1003
    const/4 v0, 0x1

    .line 1004
    const-string v2, "net.hostname"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    :cond_0
    if-nez v0, :cond_1

    .line 1010
    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1011
    if-eqz v1, :cond_1

    .line 1012
    const-string v2, "net.hostname"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    :cond_1
    return-void
.end method

.method private smToString(Landroid/os/Message;)Ljava/lang/String;
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .line 1048
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x26001

    if-eq v0, v1, :cond_1

    const v1, 0x26015

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 1090
    const-string v0, "UNKNOWN"

    goto :goto_0

    .line 1085
    :pswitch_0
    const-string v0, "CMD_TETHERING_WIFI_TOGGLED"

    goto :goto_0

    .line 1083
    :pswitch_1
    const-string v0, "CMD_TETHERING_USB_TOGGLED"

    goto :goto_0

    .line 1081
    :pswitch_2
    const-string v0, "CMD_FTM_MODE_OFF"

    goto :goto_0

    .line 1079
    :pswitch_3
    const-string v0, "CMD_FTM_MODE_ON"

    goto :goto_0

    .line 1076
    :pswitch_4
    const-string v0, "CMD_RECOVERY_DISABLE_WIFI"

    goto :goto_0

    .line 1074
    :pswitch_5
    const-string v0, "CMD_RECOVERY_RESTART_WIFI_CONTINUE"

    goto :goto_0

    .line 1072
    :pswitch_6
    const-string v0, "CMD_RECOVERY_RESTART_WIFI"

    goto :goto_0

    .line 1070
    :pswitch_7
    const-string v0, "CMD_STA_START_FAILURE"

    goto :goto_0

    .line 1068
    :pswitch_8
    const-string v0, "CMD_AP_STOPPED"

    goto :goto_0

    .line 1066
    :pswitch_9
    const-string v0, "CMD_EMERGENCY_CALL_STATE_CHANGED"

    goto :goto_0

    .line 1064
    :pswitch_a
    const-string v0, "CMD_AP_START_FAILURE"

    goto :goto_0

    .line 1062
    :pswitch_b
    const-string v0, "CMD_USER_PRESENT"

    goto :goto_0

    .line 1060
    :pswitch_c
    const-string v0, "CMD_DEFERRED_TOGGLE"

    goto :goto_0

    .line 1058
    :pswitch_d
    const-string v0, "CMD_SET_AP"

    goto :goto_0

    .line 1056
    :pswitch_e
    const-string v0, "CMD_AIRPLANE_TOGGLED"

    goto :goto_0

    .line 1054
    :pswitch_f
    const-string v0, "CMD_WIFI_TOGGLED"

    goto :goto_0

    .line 1052
    :pswitch_10
    const-string v0, "CMD_SCAN_ALWAYS_MODE_CHANGED"

    goto :goto_0

    .line 1087
    :cond_0
    const-string v0, "CMD_SCANNING_STOPPED"

    goto :goto_0

    .line 1050
    :cond_1
    const-string v0, "CMD_EMERGENCY_MODE_CHANGED"

    .line 1090
    .local v0, "s":Ljava/lang/String;
    :goto_0
    nop

    .line 1092
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x26007
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x26064
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateBatteryWorkSource()V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->clear()V

    .line 289
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V

    .line 290
    return-void
.end method


# virtual methods
.method public enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .line 979
    if-lez p1, :cond_0

    .line 980
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/WifiController;->DBG:Z

    goto :goto_0

    .line 982
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wifi/WifiController;->DBG:Z

    .line 984
    :goto_0
    return-void
.end method

.method public getUsbTetherEnabled()Z
    .locals 1

    .line 993
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mUsbTetherEnabled:Z

    return v0
.end method

.method public setTetherEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 988
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiController;->mUsbTetherEnabled:Z

    .line 989
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiController;->mWifiTetherEnabled:Z

    .line 990
    return-void
.end method
