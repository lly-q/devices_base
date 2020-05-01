.class public Lcom/android/server/wifi/SarManager;
.super Ljava/lang/Object;
.source "SarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/SarManager$WifiPhoneStateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiSarManager"


# instance fields
.field private mCellOn:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentSarScenario:I

.field private mEnableSarTxPowerLimit:Z

.field private final mLooper:Landroid/os/Looper;

.field private final mPhoneStateListener:Lcom/android/server/wifi/SarManager$WifiPhoneStateListener;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVerboseLoggingEnabled:Z

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private mWifiStaEnabled:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/os/Looper;Lcom/android/server/wifi/WifiNative;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "wifiNative"    # Lcom/android/server/wifi/WifiNative;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mVerboseLoggingEnabled:Z

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/SarManager;->mCurrentSarScenario:I

    .line 59
    iput-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mCellOn:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mWifiStaEnabled:Z

    .line 77
    iput-object p1, p0, Lcom/android/server/wifi/SarManager;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/android/server/wifi/SarManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 79
    iput-object p4, p0, Lcom/android/server/wifi/SarManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 80
    iput-object p3, p0, Lcom/android/server/wifi/SarManager;->mLooper:Landroid/os/Looper;

    .line 81
    new-instance v0, Lcom/android/server/wifi/SarManager$WifiPhoneStateListener;

    invoke-direct {v0, p0, p3}, Lcom/android/server/wifi/SarManager$WifiPhoneStateListener;-><init>(Lcom/android/server/wifi/SarManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wifi/SarManager;->mPhoneStateListener:Lcom/android/server/wifi/SarManager$WifiPhoneStateListener;

    .line 83
    invoke-direct {p0}, Lcom/android/server/wifi/SarManager;->registerListeners()V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/SarManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SarManager;

    .line 46
    iget-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mEnableSarTxPowerLimit:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/SarManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SarManager;
    .param p1, "x1"    # I

    .line 46
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SarManager;->onCellStateChangeEvent(I)V

    return-void
.end method

.method private onCellStateChangeEvent(I)V
    .locals 4
    .param p1, "state"    # I

    .line 107
    iget-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mCellOn:Z

    .line 109
    .local v0, "currentCellOn":Z
    packed-switch p1, :pswitch_data_0

    .line 120
    const-string v1, "WifiSarManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Cell State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :pswitch_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wifi/SarManager;->mCellOn:Z

    .line 113
    goto :goto_0

    .line 116
    :pswitch_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wifi/SarManager;->mCellOn:Z

    .line 117
    nop

    .line 123
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/wifi/SarManager;->mCellOn:Z

    if-eq v1, v0, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/android/server/wifi/SarManager;->updateSarScenario()V

    .line 126
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private registerListeners()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/android/server/wifi/SarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mEnableSarTxPowerLimit:Z

    .line 95
    iget-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mEnableSarTxPowerLimit:Z

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "WifiSarManager"

    const-string v1, "Registering Listeners for the SAR Manager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-direct {p0}, Lcom/android/server/wifi/SarManager;->registerPhoneListener()V

    .line 101
    :cond_0
    return-void
.end method

.method private registerPhoneListener()V
    .locals 3

    .line 167
    const-string v0, "WifiSarManager"

    const-string v1, "Registering for telephony call state changes"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/android/server/wifi/SarManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/wifi/SarManager;->mPhoneStateListener:Lcom/android/server/wifi/SarManager$WifiPhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 170
    return-void
.end method

.method private scenarioToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "scenario"    # I

    .line 231
    packed-switch p1, :pswitch_data_0

    .line 239
    const-string v0, "Invalid Scenario"

    goto :goto_0

    .line 236
    :pswitch_0
    const-string v0, "TX_POWER_SCENARIO_VOICE_CALL"

    .line 237
    .local v0, "str":Ljava/lang/String;
    goto :goto_0

    .line 233
    .end local v0    # "str":Ljava/lang/String;
    :pswitch_1
    const-string v0, "TX_POWER_SCENARIO_NORMAL"

    .line 234
    .restart local v0    # "str":Ljava/lang/String;
    nop

    .line 239
    :goto_0
    nop

    .line 243
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendTxPowerScenario(I)V
    .locals 2
    .param p1, "newSarScenario"    # I

    .line 221
    iget-object v0, p0, Lcom/android/server/wifi/SarManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiNative;->selectTxPowerScenario(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    const-string v0, "WifiSarManager"

    const-string v1, "Failed to set TX power scenario"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    return-void
.end method

.method private updateSarScenario()V
    .locals 4

    .line 198
    iget-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mCellOn:Z

    if-eqz v0, :cond_0

    .line 199
    const/4 v0, 0x1

    .local v0, "newSarScenario":I
    goto :goto_0

    .line 201
    .end local v0    # "newSarScenario":I
    :cond_0
    const/4 v0, 0x0

    .line 204
    .restart local v0    # "newSarScenario":I
    :goto_0
    iget v1, p0, Lcom/android/server/wifi/SarManager;->mCurrentSarScenario:I

    if-eq v0, v1, :cond_2

    .line 207
    iget-boolean v1, p0, Lcom/android/server/wifi/SarManager;->mWifiStaEnabled:Z

    if-eqz v1, :cond_1

    .line 208
    const-string v1, "WifiSarManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending SAR Scenario #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SarManager;->scenarioToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SarManager;->sendTxPowerScenario(I)V

    .line 212
    :cond_1
    iput v0, p0, Lcom/android/server/wifi/SarManager;->mCurrentSarScenario:I

    .line 214
    :cond_2
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 159
    const-string v0, "*** WiFi SAR Manager Dump ***"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current SAR Scenario is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/SarManager;->mCurrentSarScenario:I

    invoke-direct {p0, v1}, Lcom/android/server/wifi/SarManager;->scenarioToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public enableVerboseLogging(I)V
    .locals 3
    .param p1, "verbose"    # I

    .line 150
    const-string v0, "WifiSarManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inside enableVerboseLogging: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    if-lez p1, :cond_0

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mVerboseLoggingEnabled:Z

    goto :goto_0

    .line 154
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mVerboseLoggingEnabled:Z

    .line 156
    :goto_0
    return-void
.end method

.method public setClientWifiState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 133
    iget-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mEnableSarTxPowerLimit:Z

    if-nez v0, :cond_0

    return-void

    .line 135
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wifi/SarManager;->mWifiStaEnabled:Z

    if-eqz v1, :cond_1

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mWifiStaEnabled:Z

    goto :goto_0

    .line 137
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wifi/SarManager;->mWifiStaEnabled:Z

    if-nez v1, :cond_2

    .line 138
    iput-boolean v0, p0, Lcom/android/server/wifi/SarManager;->mWifiStaEnabled:Z

    .line 142
    iget v0, p0, Lcom/android/server/wifi/SarManager;->mCurrentSarScenario:I

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SarManager;->sendTxPowerScenario(I)V

    .line 144
    :cond_2
    :goto_0
    return-void
.end method
