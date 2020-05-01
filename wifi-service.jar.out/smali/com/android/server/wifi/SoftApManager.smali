.class public Lcom/android/server/wifi/SoftApManager;
.super Ljava/lang/Object;
.source "SoftApManager.java"

# interfaces
.implements Lcom/android/server/wifi/ActiveModeManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;,
        Lcom/android/server/wifi/SoftApManager$InterfaceEventHandler;
    }
.end annotation


# static fields
.field private static final IWPRIV_CMD:Ljava/lang/String; = "iwpriv "

.field private static final MIN_SOFT_AP_TIMEOUT_DELAY_MS:I = 0x927c0

.field public static final SOFT_AP_SEND_MESSAGE_TIMEOUT_TAG:Ljava/lang/String; = "SoftApManager Soft AP Send Message Timeout"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SoftApManager"


# instance fields
.field private final TIMEOUT_ONEPLUS_DEFAULT:I

.field private final TIMEOUT_ONEPLUS_TMO_ANOTHER:I

.field private final TIMEOUT_ONEPLUS_TMO_DEFAULT:I

.field private mApConfig:Landroid/net/wifi/WifiConfiguration;

.field private mApInterfaceName:Ljava/lang/String;

.field private final mCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

.field private final mContext:Landroid/content/Context;

.field private final mCountryCode:Ljava/lang/String;

.field private mDataInterfaceName:Ljava/lang/String;

.field private mDefaultTimeoutEnabledType:I

.field private final mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

.field private mIfaceIsUp:Z

.field private final mMode:I

.field private mNumAssociatedStations:I

.field private mQCNumAssociatedStations:I

.field private mReportedBandwidth:I

.field private mReportedFrequency:I

.field private mSoftApConnectedDeviceManager:Lcom/android/server/wifi/SoftApConnectedDeviceManager;

.field private final mSoftApListener:Lcom/android/server/wifi/WifiNative$SoftApListener;

.field private final mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

.field private mTimeoutEnabled:Z

.field private mTimeoutEnabledType:I

.field private final mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

.field private final mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private mdualApInterfaces:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/WifiNative;Ljava/lang/String;Landroid/net/wifi/WifiManager$SoftApCallback;Lcom/android/server/wifi/WifiApConfigStore;Lcom/android/server/wifi/SoftApModeConfiguration;Lcom/android/server/wifi/WifiMetrics;Lcom/android/server/wifi/WifiInjector;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "framework"    # Lcom/android/server/wifi/FrameworkFacade;
    .param p4, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p5, "countryCode"    # Ljava/lang/String;
    .param p6, "callback"    # Landroid/net/wifi/WifiManager$SoftApCallback;
    .param p7, "wifiApConfigStore"    # Lcom/android/server/wifi/WifiApConfigStore;
    .param p8, "apConfig"    # Lcom/android/server/wifi/SoftApModeConfiguration;
    .param p9, "wifiMetrics"    # Lcom/android/server/wifi/WifiMetrics;
    .param p10, "wifiInjector"    # Lcom/android/server/wifi/WifiInjector;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/SoftApManager;->mReportedFrequency:I

    .line 115
    iput v0, p0, Lcom/android/server/wifi/SoftApManager;->mReportedBandwidth:I

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/SoftApManager;->mNumAssociatedStations:I

    .line 118
    iput v0, p0, Lcom/android/server/wifi/SoftApManager;->mQCNumAssociatedStations:I

    .line 119
    iput-boolean v0, p0, Lcom/android/server/wifi/SoftApManager;->mTimeoutEnabled:Z

    .line 121
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/SoftApManager;->TIMEOUT_ONEPLUS_DEFAULT:I

    .line 122
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/wifi/SoftApManager;->TIMEOUT_ONEPLUS_TMO_DEFAULT:I

    .line 123
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/server/wifi/SoftApManager;->TIMEOUT_ONEPLUS_TMO_ANOTHER:I

    .line 124
    iput v0, p0, Lcom/android/server/wifi/SoftApManager;->mDefaultTimeoutEnabledType:I

    .line 125
    iget v0, p0, Lcom/android/server/wifi/SoftApManager;->mDefaultTimeoutEnabledType:I

    iput v0, p0, Lcom/android/server/wifi/SoftApManager;->mTimeoutEnabledType:I

    .line 132
    new-instance v0, Lcom/android/server/wifi/SoftApManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SoftApManager$1;-><init>(Lcom/android/server/wifi/SoftApManager;)V

    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApListener:Lcom/android/server/wifi/WifiNative$SoftApListener;

    .line 174
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/content/Context;

    .line 175
    iput-object p3, p0, Lcom/android/server/wifi/SoftApManager;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    .line 176
    iput-object p4, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 177
    iput-object p5, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    .line 178
    iput-object p6, p0, Lcom/android/server/wifi/SoftApManager;->mCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    .line 179
    iput-object p7, p0, Lcom/android/server/wifi/SoftApManager;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    .line 180
    invoke-virtual {p8}, Lcom/android/server/wifi/SoftApModeConfiguration;->getTargetMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/SoftApManager;->mMode:I

    .line 181
    invoke-virtual {p8}, Lcom/android/server/wifi/SoftApModeConfiguration;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 182
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 183
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiApConfigStore;->getApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mApConfig:Landroid/net/wifi/WifiConfiguration;

    goto :goto_0

    .line 185
    :cond_0
    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 187
    :goto_0
    iput-object p9, p0, Lcom/android/server/wifi/SoftApManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 188
    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mdualApInterfaces:[Ljava/lang/String;

    .line 191
    new-instance v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-direct {v1, p0, p2, p10}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;-><init>(Lcom/android/server/wifi/SoftApManager;Landroid/os/Looper;Lcom/android/server/wifi/WifiInjector;)V

    iput-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    .line 192
    invoke-virtual {p10}, Lcom/android/server/wifi/WifiInjector;->getWifiStateMachine()Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 194
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 76
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/SoftApManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 76
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->stopSoftAp()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/SoftApManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 76
    iget-boolean v0, p0, Lcom/android/server/wifi/SoftApManager;->mIfaceIsUp:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/wifi/SoftApManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;
    .param p1, "x1"    # Z

    .line 76
    iput-boolean p1, p0, Lcom/android/server/wifi/SoftApManager;->mIfaceIsUp:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/wifi/SoftApManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 76
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/FrameworkFacade;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 76
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/wifi/SoftApManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 76
    iget-boolean v0, p0, Lcom/android/server/wifi/SoftApManager;->mTimeoutEnabled:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/wifi/SoftApManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;
    .param p1, "x1"    # Z

    .line 76
    iput-boolean p1, p0, Lcom/android/server/wifi/SoftApManager;->mTimeoutEnabled:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/wifi/SoftApManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 76
    iget v0, p0, Lcom/android/server/wifi/SoftApManager;->mTimeoutEnabledType:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/wifi/SoftApManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;
    .param p1, "x1"    # I

    .line 76
    iput p1, p0, Lcom/android/server/wifi/SoftApManager;->mTimeoutEnabledType:I

    return p1
.end method

.method static synthetic access$2000(Lcom/android/server/wifi/SoftApManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 76
    iget v0, p0, Lcom/android/server/wifi/SoftApManager;->mDefaultTimeoutEnabledType:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/wifi/SoftApManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;
    .param p1, "x1"    # I

    .line 76
    iput p1, p0, Lcom/android/server/wifi/SoftApManager;->mDefaultTimeoutEnabledType:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/wifi/SoftApManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 76
    iget v0, p0, Lcom/android/server/wifi/SoftApManager;->mNumAssociatedStations:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/wifi/SoftApManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;
    .param p1, "x1"    # I

    .line 76
    iput p1, p0, Lcom/android/server/wifi/SoftApManager;->mNumAssociatedStations:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiManager$SoftApCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 76
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/wifi/SoftApManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 76
    iget v0, p0, Lcom/android/server/wifi/SoftApManager;->mMode:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/wifi/SoftApManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 76
    iget v0, p0, Lcom/android/server/wifi/SoftApManager;->mQCNumAssociatedStations:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/server/wifi/SoftApManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;
    .param p1, "x1"    # I

    .line 76
    iput p1, p0, Lcom/android/server/wifi/SoftApManager;->mQCNumAssociatedStations:I

    return p1
.end method

.method static synthetic access$2408(Lcom/android/server/wifi/SoftApManager;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 76
    iget v0, p0, Lcom/android/server/wifi/SoftApManager;->mQCNumAssociatedStations:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wifi/SoftApManager;->mQCNumAssociatedStations:I

    return v0
.end method

.method static synthetic access$2410(Lcom/android/server/wifi/SoftApManager;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 76
    iget v0, p0, Lcom/android/server/wifi/SoftApManager;->mQCNumAssociatedStations:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/wifi/SoftApManager;->mQCNumAssociatedStations:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 76
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mApConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/SoftApManager;->runOemCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 76
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mDataInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 76
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mDataInterfaceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApConnectedDeviceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 76
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getSoftApConnectedDeviceManager()Lcom/android/server/wifi/SoftApConnectedDeviceManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/wifi/SoftApManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 76
    iget v0, p0, Lcom/android/server/wifi/SoftApManager;->mReportedFrequency:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/server/wifi/SoftApManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;
    .param p1, "x1"    # I

    .line 76
    iput p1, p0, Lcom/android/server/wifi/SoftApManager;->mReportedFrequency:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/wifi/SoftApManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 76
    iget v0, p0, Lcom/android/server/wifi/SoftApManager;->mReportedBandwidth:I

    return v0
.end method

.method static synthetic access$3302(Lcom/android/server/wifi/SoftApManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;
    .param p1, "x1"    # I

    .line 76
    iput p1, p0, Lcom/android/server/wifi/SoftApManager;->mReportedBandwidth:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/wifi/SoftApManager;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 76
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mdualApInterfaces:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 76
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 76
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/wifi/SoftApManager;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/SoftApManager;->updateApState(III)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;

    .line 76
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager;->startSoftAp(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method private getCurrentStateName()Ljava/lang/String;
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    .line 256
    .local v0, "currentState":Lcom/android/internal/util/IState;
    if-eqz v0, :cond_0

    .line 257
    invoke-interface {v0}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 260
    :cond_0
    const-string v1, "StateMachine not active"

    return-object v1
.end method

.method private getSoftApConnectedDeviceManager()Lcom/android/server/wifi/SoftApConnectedDeviceManager;
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApConnectedDeviceManager:Lcom/android/server/wifi/SoftApConnectedDeviceManager;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/android/server/wifi/SoftApConnectedDeviceManager;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/wifi/SoftApConnectedDeviceManager;-><init>(Landroid/content/Context;Lcom/android/server/wifi/SoftApManager;)V

    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApConnectedDeviceManager:Lcom/android/server/wifi/SoftApConnectedDeviceManager;

    return-object v0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApConnectedDeviceManager:Lcom/android/server/wifi/SoftApConnectedDeviceManager;

    return-object v0
.end method

.method private runOemCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;

    .line 1050
    const/4 v0, 0x0

    .line 1052
    .local v0, "ret":Z
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wifi/WifiNative;->runOemCmd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1055
    goto :goto_0

    .line 1053
    :catch_0
    move-exception v1

    .line 1054
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SoftApManager"

    const-string v3, "Fail run Oem command"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private startSoftAp(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 294
    const/4 v0, 0x2

    if-eqz p1, :cond_5

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, p1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 304
    .local v1, "localConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 307
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 308
    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 307
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wifi/WifiNative;->setCountryCodeHal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 310
    const-string v2, "SoftApManager"

    const-string v3, "Failed to set country code, required for setting up soft ap in 5GHz"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return v0

    .line 317
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    .line 319
    invoke-virtual {v4}, Lcom/android/server/wifi/WifiApConfigStore;->getAllowed2GChannel()Ljava/util/ArrayList;

    move-result-object v4

    .line 317
    invoke-static {v2, v3, v4, v1}, Lcom/android/server/wifi/util/ApConfigUtil;->updateApChannelConfig(Lcom/android/server/wifi/WifiNative;Ljava/lang/String;Ljava/util/ArrayList;Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    .line 321
    .local v2, "result":I
    if-eqz v2, :cond_2

    .line 322
    const-string v0, "SoftApManager"

    const-string v3, "Failed to update AP band and channel"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return v2

    .line 343
    :cond_2
    iget-boolean v3, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v3, :cond_3

    .line 344
    const-string v3, "SoftApManager"

    const-string v4, "SoftAP is a hidden network"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApListener:Lcom/android/server/wifi/WifiNative$SoftApListener;

    invoke-virtual {v3, v4, v1, v5}, Lcom/android/server/wifi/WifiNative;->startSoftAp(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/WifiNative$SoftApListener;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 347
    const-string v3, "SoftApManager"

    const-string v4, "Soft AP start failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return v0

    .line 350
    :cond_4
    const-string v0, "SoftApManager"

    const-string v3, "Soft AP is started"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/4 v0, 0x0

    return v0

    .line 295
    .end local v1    # "localConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "result":I
    :cond_5
    :goto_0
    const-string v1, "SoftApManager"

    const-string v2, "Unable to start soft AP without valid configuration"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return v0
.end method

.method private stopSoftAp()V
    .locals 4

    .line 359
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiApConfigStore;->getDualSapStatus()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mdualApInterfaces:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiNative;->teardownInterface(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mdualApInterfaces:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiNative;->teardownInterface(Ljava/lang/String;)V

    .line 364
    :cond_0
    new-array v0, v1, [I

    const/16 v1, 0x53

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    .line 365
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mApConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mApConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    if-nez v0, :cond_1

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " set_txchainmask 2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "arg":Ljava/lang/String;
    const-string v1, "iwpriv "

    invoke-direct {p0, v1, v0}, Lcom/android/server/wifi/SoftApManager;->runOemCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 371
    .end local v0    # "arg":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->teardownInterface(Ljava/lang/String;)V

    .line 372
    const-string v0, "SoftApManager"

    const-string v1, "Soft AP is stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-void
.end method

.method private updateApState(III)V
    .locals 3
    .param p1, "newState"    # I
    .param p2, "currentState"    # I
    .param p3, "reason"    # I

    .line 270
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-interface {v0, p1, p3}, Landroid/net/wifi/WifiManager$SoftApCallback;->onStateChanged(II)V

    .line 273
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 275
    const-string v1, "wifi_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 276
    const-string v1, "previous_wifi_state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 277
    const/16 v1, 0xe

    if-ne p1, v1, :cond_0

    .line 279
    const-string v1, "wifi_ap_error_code"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    :cond_0
    const-string v1, "wifi_ap_interface_name"

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mDataInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    const-string v1, "wifi_ap_mode"

    iget v2, p0, Lcom/android/server/wifi/SoftApManager;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 284
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 285
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->setWifiApState(I)V

    .line 286
    return-void
.end method


# virtual methods
.method public blackListWifiDevice(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 378
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 379
    const-string v0, "SoftApManager"

    const-string v2, "ApInterfaceName is null "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return v1

    .line 383
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "softap blacklist "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string v2, "1 "

    goto :goto_0

    :cond_1
    const-string v2, "0 "

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "setCmd":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/WifiNative;->setHostapdParams(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 385
    const-string v2, "SoftApManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set blacklist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return v1

    .line 389
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getSoftApConnectedDeviceManager()Lcom/android/server/wifi/SoftApConnectedDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->blackListWifiDevice(Ljava/lang/String;Z)V

    .line 390
    const/4 v1, 0x1

    return v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 233
    const-string v0, "--Dump of SoftApManager--"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current StateMachine mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getCurrentStateName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mApInterfaceName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIfaceIsUp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/SoftApManager;->mIfaceIsUp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/SoftApManager;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCountryCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mApConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mApConfig.SSID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mApConfig.apBand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mApConfig.hiddenSSID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v1, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_0
    const-string v0, "mApConfig: null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNumAssociatedStations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/SoftApManager;->mNumAssociatedStations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTimeoutEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/SoftApManager;->mTimeoutEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mReportedFrequency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/SoftApManager;->mReportedFrequency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mReportedBandwidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/SoftApManager;->mReportedBandwidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public getTetherSoftApSta(I)Ljava/util/List;
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiDevice;",
            ">;"
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 395
    const-string v0, "SoftApManager"

    const-string v1, "ApInterfaceName is null "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 399
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getSoftApConnectedDeviceManager()Lcom/android/server/wifi/SoftApConnectedDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->getTetherSoftApSta(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public sendNumAssociatedStationsChanged(I)V
    .locals 2
    .param p1, "numStations"    # I

    .line 1062
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->sendMessage(II)V

    .line 1064
    return-void
.end method

.method public start()V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 210
    return-void
.end method

.method public stop()V
    .locals 3

    .line 216
    const-string v0, "SoftApManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " currentstate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getCurrentStateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mApInterfaceName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 218
    iget-boolean v0, p0, Lcom/android/server/wifi/SoftApManager;->mIfaceIsUp:Z

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-eqz v0, :cond_0

    .line 219
    const/16 v0, 0xd

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/wifi/SoftApManager;->updateApState(III)V

    goto :goto_0

    .line 222
    :cond_0
    const/16 v0, 0xc

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/wifi/SoftApManager;->updateApState(III)V

    .line 226
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->quitNow()V

    .line 227
    return-void
.end method
