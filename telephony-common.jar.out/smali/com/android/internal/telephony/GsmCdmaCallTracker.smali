.class public Lcom/android/internal/telephony/GsmCdmaCallTracker;
.super Lcom/android/internal/telephony/CallTracker;
.source "GsmCdmaCallTracker.java"


# static fields
.field private static final DBG_POLL:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "GsmCdmaCallTracker"

.field private static final MAX_CONNECTIONS_CDMA:I = 0x8

.field public static final MAX_CONNECTIONS_GSM:I = 0x13

.field private static final MAX_CONNECTIONS_PER_CALL_CDMA:I = 0x1

.field private static final MAX_CONNECTIONS_PER_CALL_GSM:I = 0x5

.field private static final REPEAT_POLLING:Z = false

.field private static final VDBG:Z = true


# instance fields
.field private m3WayCallFlashDelay:I

.field public mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

.field private mCallWaitingRegistrants:Landroid/os/RegistrantList;

.field public mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mDesiredMute:Z

.field private mDroppedDuringPoll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/GsmCdmaConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mEcmExitReceiver:Landroid/content/BroadcastReceiver;

.field public mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

.field private mHangupPendingMO:Z

.field private mIsEcmTimerCanceled:Z

.field private mIsInEmergencyCall:Z

.field private mIsInEmergencyCallGsm:Z

.field private mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field private mPendingCallClirMode:I

.field private mPendingCallInEcm:Z

.field private mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

.field private mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

.field public mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

.field public mState:Lcom/android/internal/telephony/PhoneConstants$State;

.field private mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

.field private mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 150
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    .line 73
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    .line 74
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/GsmCdmaCall;-><init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 82
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/GsmCdmaCall;-><init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 83
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/GsmCdmaCall;-><init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDesiredMute:Z

    .line 92
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 94
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 97
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    .line 106
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCallGsm:Z

    .line 112
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;-><init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mEcmExitReceiver:Landroid/content/BroadcastReceiver;

    .line 151
    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 152
    iget-object v0, p1, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 153
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {v0, p0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x9

    invoke-interface {v0, p0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xa

    invoke-interface {v0, p0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 158
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 159
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mEcmExitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneType(Z)V

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/GsmCdmaCallTracker;)Lcom/android/internal/telephony/GsmCdmaConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/GsmCdmaCallTracker;

    .line 55
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    return-object v0
.end method

.method private canDial()Z
    .locals 9

    .line 644
    const-string v0, "ro.telephony.disable-call"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, "disableCall":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 649
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->isRinging()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "true"

    .line 650
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 651
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 652
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 653
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 654
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v4, :cond_1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 656
    .local v1, "ret":Z
    :goto_0
    if-nez v1, :cond_4

    .line 657
    const-string v4, "canDial is false\n(radio isOn ::=%s\n&& pendingMO == null::=%s\n&& !ringingCall.isRinging()::=%s\n&& !disableCall.equals(\"true\")::=%s\n&& (!foregroundCall.getState().isAlive()::=%s\n   || foregroundCall.getState() == GsmCdmaCall.State.ACTIVE::=%s\n   ||!backgroundCall.getState().isAlive())::=%s)"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 665
    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-nez v6, :cond_2

    .line 666
    move v6, v3

    goto :goto_1

    .line 665
    :cond_2
    nop

    .line 666
    move v6, v2

    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 667
    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaCall;->isRinging()Z

    move-result v7

    xor-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "true"

    .line 668
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 669
    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v7

    xor-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 670
    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_3

    move v2, v3

    nop

    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x6

    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 671
    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v6

    xor-int/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v5, v2

    .line 657
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 674
    :cond_4
    return v1
.end method

.method private checkAndEnableDataCallAfterEmergencyCallDropped()V
    .locals 4

    .line 1623
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    if-eqz v0, :cond_1

    .line 1624
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    .line 1625
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInEcm()Z

    move-result v1

    .line 1627
    .local v1, "inEcm":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndEnableDataCallAfterEmergencyCallDropped,inEcm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1629
    if-nez v1, :cond_0

    .line 1631
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInternalDataEnabled(Z)Z

    .line 1632
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyEmergencyCallRegistrants(Z)V

    .line 1634
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendEmergencyCallStateChange(Z)V

    .line 1636
    .end local v1    # "inEcm":Z
    :cond_1
    return-void
.end method

.method private checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;
    .locals 4
    .param p1, "dc"    # Lcom/android/internal/telephony/DriverCall;
    .param p2, "i"    # I

    .line 1644
    const/4 v0, 0x0

    .line 1647
    .local v0, "newRinging":Lcom/android/internal/telephony/Connection;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne v1, v2, :cond_0

    .line 1648
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v0, v1, p2

    .line 1649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notify new ring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1654
    :cond_0
    const-string v1, "GsmCdmaCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phantom call appeared "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v1, v2, :cond_1

    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v1, v2, :cond_1

    .line 1660
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->onConnectedInOrOut()V

    .line 1661
    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v1, v2, :cond_1

    .line 1663
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->onStartedHolding()V

    .line 1667
    :cond_1
    :goto_0
    return-object v0
.end method

.method private dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 19
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    move-object/from16 v6, p0

    .line 412
    move/from16 v7, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->clearDisconnected()V

    .line 414
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->canDial()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 418
    iget-object v0, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 419
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 420
    .local v8, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v9, p1

    .line 421
    .local v9, "origNumber":Ljava/lang/String;
    iget-object v0, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v10

    .line 422
    .local v10, "operatorIsoContry":Ljava/lang/String;
    iget-object v0, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v11

    .line 423
    .local v11, "simIsoContry":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez v0, :cond_0

    .line 424
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    move v0, v13

    .line 426
    .local v0, "internationalRoaming":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 427
    const-string v1, "us"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 428
    if-eqz v0, :cond_1

    const-string v1, "vi"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v12

    goto :goto_1

    :cond_1
    move v1, v13

    :goto_1
    move v0, v1

    goto :goto_3

    .line 429
    :cond_2
    const-string v1, "vi"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 430
    if-eqz v0, :cond_3

    const-string v1, "us"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v12

    goto :goto_2

    :cond_3
    move v1, v13

    :goto_2
    move v0, v1

    .line 433
    .end local v0    # "internationalRoaming":Z
    .local v14, "internationalRoaming":Z
    :cond_4
    :goto_3
    move v14, v0

    if-eqz v14, :cond_5

    .line 434
    iget-object v0, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    move-object/from16 v1, p1

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->convertNumberIfNecessary(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    .end local p1    # "dialString":Ljava/lang/String;
    .local v0, "dialString":Ljava/lang/String;
    move-object v15, v0

    goto :goto_4

    .end local v0    # "dialString":Ljava/lang/String;
    .restart local p1    # "dialString":Ljava/lang/String;
    :cond_5
    move-object/from16 v1, p1

    move-object v15, v1

    .end local p1    # "dialString":Ljava/lang/String;
    .local v15, "dialString":Ljava/lang/String;
    :goto_4
    iget-object v0, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInEcm()Z

    move-result v16

    .line 438
    .local v16, "isPhoneInEcmMode":Z
    iget-object v0, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 439
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v15}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    .line 442
    .local v17, "isEmergencyCall":Z
    if-eqz v16, :cond_6

    if-eqz v17, :cond_6

    .line 443
    invoke-direct {v6, v12}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleEcmTimer(I)V

    .line 449
    :cond_6
    iget-object v0, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_7

    .line 450
    invoke-direct {v6, v15}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dialThreeWay(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0

    .line 453
    :cond_7
    new-instance v5, Lcom/android/internal/telephony/GsmCdmaConnection;

    iget-object v1, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v6, v15}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    move-object v0, v5

    move-object v3, v6

    move-object v12, v5

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;Z)V

    iput-object v12, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 455
    iput-boolean v13, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHangupPendingMO:Z

    .line 457
    iget-object v0, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 458
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x4e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_8

    goto :goto_6

    .line 467
    :cond_8
    invoke-virtual {v6, v13}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setMute(Z)V

    .line 470
    invoke-direct {v6, v15}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    .line 473
    if-eqz v16, :cond_a

    if-eqz v16, :cond_9

    if-eqz v17, :cond_9

    goto :goto_5

    .line 476
    :cond_9
    iget-object v0, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->exitEmergencyCallbackMode()V

    .line 477
    iget-object v0, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 478
    iput v7, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallClirMode:I

    .line 479
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    goto :goto_7

    .line 474
    :cond_a
    :goto_5
    iget-object v0, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v7, v2}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_7

    .line 460
    :cond_b
    :goto_6
    iget-object v0, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    const/4 v1, 0x7

    iput v1, v0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    .line 464
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->pollCallsWhenSafe()V

    .line 483
    :goto_7
    iget-boolean v0, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mNumberConverted:Z

    if-eqz v0, :cond_c

    .line 484
    iget-object v0, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/GsmCdmaConnection;->setConverted(Ljava/lang/String;)V

    .line 485
    iput-boolean v13, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mNumberConverted:Z

    .line 488
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    .line 489
    iget-object v0, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    .line 491
    iget-object v0, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    return-object v0

    .line 415
    .end local v8    # "tm":Landroid/telephony/TelephonyManager;
    .end local v9    # "origNumber":Ljava/lang/String;
    .end local v10    # "operatorIsoContry":Ljava/lang/String;
    .end local v11    # "simIsoContry":Ljava/lang/String;
    .end local v14    # "internationalRoaming":Z
    .end local v15    # "dialString":Ljava/lang/String;
    .end local v16    # "isPhoneInEcmMode":Z
    .end local v17    # "isEmergencyCall":Z
    .restart local p1    # "dialString":Ljava/lang/String;
    :cond_d
    move-object/from16 v1, p1

    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "cannot dial in current state"

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private dial(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 543
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method private dialThreeWay(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 7
    .param p1, "dialString"    # Ljava/lang/String;

    .line 496
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    move-result v0

    if-nez v0, :cond_2

    .line 498
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    .line 501
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 502
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-boolean v6, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    move-object v1, v0

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 505
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 506
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 507
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    .line 508
    .local v1, "bundle":Landroid/os/PersistableBundle;
    if-eqz v1, :cond_0

    .line 509
    const-string v2, "cdma_3waycall_flash_delay_int"

    .line 510
    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->m3WayCallFlashDelay:I

    goto :goto_0

    .line 513
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->m3WayCallFlashDelay:I

    .line 515
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->m3WayCallFlashDelay:I

    if-lez v2, :cond_1

    .line 516
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v3, ""

    const/16 v4, 0x14

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 518
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    .line 519
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 518
    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    .line 521
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    return-object v2

    .line 523
    .end local v0    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v1    # "bundle":Landroid/os/PersistableBundle;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private disableDataCallInEmergencyCall(Ljava/lang/String;)V
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;

    .line 382
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    const-string v0, "disableDataCallInEmergencyCall"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setIsInEmergencyCall()V

    .line 386
    :cond_0
    return-void
.end method

.method private disableIsInEmergencyCallGsm()V
    .locals 1

    .line 402
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCallGsm:Z

    .line 403
    return-void
.end method

.method private dumpState()V
    .locals 5

    .line 1177
    const-string v0, "GsmCdmaCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Phone State:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    const-string v0, "GsmCdmaCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ringing call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCall;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 1182
    .local v0, "l":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1183
    const-string v3, "GsmCdmaCallTracker"

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1186
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_0
    const-string v1, "GsmCdmaCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Foreground call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCall;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 1189
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .restart local v2    # "s":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 1190
    const-string v3, "GsmCdmaCallTracker"

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1193
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_1
    const-string v1, "GsmCdmaCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Background call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCall;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 1196
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .restart local v2    # "s":I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 1197
    const-string v3, "GsmCdmaCallTracker"

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1200
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_2
    return-void
.end method

.method private fakeHoldForegroundBeforeDial()V
    .locals 4

    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 263
    .local v0, "connCopy":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 264
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 266
    .local v3, "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->fakeHoldBeforeDial()V

    .line 263
    .end local v3    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_0
    return-void
.end method

.method private flashAndSetGenericTrue()V
    .locals 3

    .line 588
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, ""

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    .line 590
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    .line 591
    return-void
.end method

.method private getFailedService(I)Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;
    .locals 1
    .param p1, "what"    # I

    .line 1411
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 1421
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->UNKNOWN:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    return-object v0

    .line 1419
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->TRANSFER:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    return-object v0

    .line 1417
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SEPARATE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    return-object v0

    .line 1415
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->CONFERENCE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    return-object v0

    .line 1413
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SWITCH:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    return-object v0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V
    .locals 3
    .param p1, "cw"    # Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    .line 1403
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;)V

    .line 1404
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    .line 1407
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->notifyCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V

    .line 1408
    return-void
.end method

.method private handleEcmTimer(I)V
    .locals 3
    .param p1, "action"    # I

    .line 368
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleTimerInEmergencyCallbackMode(I)V

    .line 369
    packed-switch p1, :pswitch_data_0

    .line 373
    const-string v0, "GsmCdmaCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEcmTimer, unsupported action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 370
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsEcmTimerCanceled:Z

    goto :goto_0

    .line 371
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsEcmTimerCanceled:Z

    .line 375
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleRadioNotAvailable()V
    .locals 0

    .line 1171
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->pollCallsWhenSafe()V

    .line 1172
    return-void
.end method

.method private internalClearDisconnected()V
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->clearDisconnected()V

    .line 693
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->clearDisconnected()V

    .line 694
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->clearDisconnected()V

    .line 695
    return-void
.end method

.method private isPhoneTypeGsm()Z
    .locals 2

    .line 1689
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private logHangupEvent(Lcom/android/internal/telephony/GsmCdmaCall;)V
    .locals 6
    .param p1, "call"    # Lcom/android/internal/telephony/GsmCdmaCall;

    .line 1325
    iget-object v0, p1, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1326
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1327
    iget-object v2, p1, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1330
    .local v2, "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    :try_start_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v3
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1333
    .local v3, "call_index":I
    goto :goto_1

    .line 1331
    .end local v3    # "call_index":I
    :catch_0
    move-exception v3

    .line 1332
    .local v3, "ex":Lcom/android/internal/telephony/CallStateException;
    const/4 v3, -0x1

    .line 1334
    .local v3, "call_index":I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v5

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilHangup(ILcom/android/internal/telephony/GsmCdmaConnection;I)V

    .line 1326
    .end local v2    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    .end local v3    # "call_index":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1336
    .end local v1    # "i":I
    :cond_0
    const-string v1, "GsmCdmaCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logHangupEvent logged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Connections "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    return-void
.end method

.method private notifyCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V
    .locals 3
    .param p1, "obj"    # Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    .line 1395
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 1396
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1398
    :cond_0
    return-void
.end method

.method private obtainCompleteMessage()Landroid/os/Message;
    .locals 1

    .line 702
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private obtainCompleteMessage(I)Landroid/os/Message;
    .locals 2
    .param p1, "what"    # I

    .line 710
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingOperations:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingOperations:I

    .line 711
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 712
    iput-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mNeedsPoll:Z

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "obtainCompleteMessage: pendingOperations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingOperations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", needsPoll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mNeedsPoll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 717
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private operationComplete()V
    .locals 3

    .line 721
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingOperations:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingOperations:I

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "operationComplete: pendingOperations="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingOperations:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", needsPoll="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mNeedsPoll:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 726
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingOperations:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mNeedsPoll:Z

    if-eqz v0, :cond_0

    .line 727
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 728
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCalls(Landroid/os/Message;)V

    goto :goto_0

    .line 729
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingOperations:I

    if-gez v0, :cond_1

    .line 731
    const-string v0, "GsmCdmaCallTracker"

    const-string v1, "GsmCdmaCallTracker.pendingOperations < 0"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingOperations:I

    .line 734
    :cond_1
    :goto_0
    return-void
.end method

.method private reset()V
    .locals 5

    .line 194
    const-string v0, "GsmCdmaCallTracker"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x24

    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 197
    .local v4, "gsmCdmaConnection":Lcom/android/internal/telephony/GsmCdmaConnection;
    if-eqz v4, :cond_0

    .line 198
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->onDisconnect(I)Z

    .line 199
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->dispose()V

    .line 196
    .end local v4    # "gsmCdmaConnection":Lcom/android/internal/telephony/GsmCdmaConnection;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->onDisconnect(I)Z

    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->dispose()V

    .line 208
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 209
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 210
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->clearDisconnected()V

    .line 211
    return-void
.end method

.method private setIsInEmergencyCallGsm()V
    .locals 1

    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCallGsm:Z

    .line 400
    return-void
.end method

.method private updateMetrics([Lcom/android/internal/telephony/GsmCdmaConnection;)V
    .locals 4
    .param p1, "connections"    # [Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1161
    .local v0, "activeConnections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/GsmCdmaConnection;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 1162
    .local v3, "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1161
    .end local v3    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1164
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilCallList(ILjava/util/ArrayList;)V

    .line 1165
    return-void
.end method

.method private updatePhoneState()V
    .locals 4

    .line 737
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 738
    .local v0, "oldState":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 739
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_1

    .line 740
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 741
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 744
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 745
    .local v1, "imsPhone":Lcom/android/internal/telephony/Phone;
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_2

    if-eqz v1, :cond_2

    .line 746
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->callEndCleanupHandOverCallIfAny()V

    .line 748
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .end local v1    # "imsPhone":Lcom/android/internal/telephony/Phone;
    goto :goto_1

    .line 742
    :cond_3
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 751
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_4

    .line 752
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_2

    .line 754
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_5

    .line 755
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 759
    :cond_5
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update phone state, old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 761
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v0, :cond_6

    .line 762
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPhoneStateChanged()V

    .line 763
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writePhoneState(ILcom/android/internal/telephony/PhoneConstants$State;)V

    .line 765
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyToOtherPhoneObject()V

    .line 768
    :cond_6
    return-void
.end method

.method private updatePhoneType(Z)V
    .locals 3
    .param p1, "duringInit"    # Z

    .line 170
    if-nez p1, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->reset()V

    .line 172
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->pollCallsWhenSafe()V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/android/internal/telephony/GsmCdmaConnection;

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCallWaitingInfo(Landroid/os/Handler;)V

    .line 179
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInternalDataEnabled(Z)Z

    goto :goto_0

    .line 183
    :cond_1
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/telephony/GsmCdmaConnection;

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    .line 185
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    .line 186
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallClirMode:I

    .line 187
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsEcmTimerCanceled:Z

    .line 188
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->m3WayCallFlashDelay:I

    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallWaitingInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 191
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public acceptCall()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 552
    const-string v0, "phone"

    const-string v1, "acceptCall: incoming..."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setMute(Z)V

    .line 555
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->acceptCall(Landroid/os/Message;)V

    goto :goto_1

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_2

    .line 557
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setMute(Z)V

    goto :goto_0

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 566
    .local v0, "cwConn":Lcom/android/internal/telephony/GsmCdmaConnection;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->updateParent(Lcom/android/internal/telephony/GsmCdmaCall;Lcom/android/internal/telephony/GsmCdmaCall;)V

    .line 567
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->onConnectedInOrOut()V

    .line 568
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    .line 570
    .end local v0    # "cwConn":Lcom/android/internal/telephony/GsmCdmaConnection;
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 574
    :goto_1
    return-void

    .line 572
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "phone not ringing"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canConference()Z
    .locals 2

    .line 636
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 637
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 638
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 639
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 636
    :goto_0
    return v0
.end method

.method public canTransfer()Z
    .locals 3

    .line 678
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 679
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 680
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 681
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 682
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    nop

    .line 679
    :cond_1
    return v1

    .line 684
    :cond_2
    const-string v0, "GsmCdmaCallTracker"

    const-string v2, "canTransfer: not possible in CDMA"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    return v1
.end method

.method public cleanupCalls()V
    .locals 0

    .line 1752
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->pollCallsWhenSafe()V

    .line 1753
    return-void
.end method

.method public clearDisconnected()V
    .locals 1

    .line 629
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->internalClearDisconnected()V

    .line 631
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    .line 632
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    .line 633
    return-void
.end method

.method public conference()V
    .locals 2

    .line 616
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->conference(Landroid/os/Message;)V

    goto :goto_0

    .line 620
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->flashAndSetGenericTrue()V

    .line 622
    :goto_0
    return-void
.end method

.method public dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 527
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 528
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dial(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0

    .line 530
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 9
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    monitor-enter p0

    .line 278
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->clearDisconnected()V

    .line 280
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->canDial()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 284
    move-object v0, p1

    .line 285
    .local v0, "origNumber":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->convertNumberIfNecessary(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 290
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    const-wide/16 v1, 0x1f4

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    goto :goto_0

    .line 301
    :catch_0
    move-exception v1

    .line 309
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->fakeHoldForegroundBeforeDial()V

    .line 312
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_5

    .line 316
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 321
    .local v1, "isEmergencyCall":Z
    if-eqz v1, :cond_1

    .line 323
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setIsInEmergencyCallGsm()V

    goto :goto_1

    .line 327
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->disableIsInEmergencyCallGsm()V

    .line 331
    :goto_1
    new-instance v8, Lcom/android/internal/telephony/GsmCdmaConnection;

    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    move-object v2, v8

    move-object v5, p0

    move v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;Z)V

    iput-object v8, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 333
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHangupPendingMO:Z

    .line 334
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v3, v4, v5, p2, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilDial(ILcom/android/internal/telephony/GsmCdmaConnection;ILcom/android/internal/telephony/UUSInfo;)V

    .line 337
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 338
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x4e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_2

    goto :goto_2

    .line 347
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setMute(Z)V

    .line 349
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, p2, p3, v5}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_3

    .line 340
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    const/4 v4, 0x7

    iput v4, v3, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    .line 344
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->pollCallsWhenSafe()V

    .line 352
    :goto_3
    iget-boolean v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mNumberConverted:Z

    if-eqz v3, :cond_4

    .line 353
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->setConverted(Ljava/lang/String;)V

    .line 354
    iput-boolean v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mNumberConverted:Z

    .line 357
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    .line 358
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    .line 360
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    .line 314
    .end local v1    # "isEmergencyCall":Z
    :cond_5
    :try_start_3
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "cannot dial in current state"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 281
    .end local v0    # "origNumber":Ljava/lang/String;
    :cond_6
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "cannot dial in current state"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 277
    .end local p1    # "dialString":Ljava/lang/String;
    .end local p2    # "clirMode":I
    .end local p3    # "uusInfo":Lcom/android/internal/telephony/UUSInfo;
    .end local p4    # "intentExtras":Landroid/os/Bundle;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/GsmCdmaCallTracker;
    throw p1
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p3, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 537
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1703
    const-string v0, "GsmCdmaCallTracker extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1704
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/CallTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mConnections: length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1706
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    array-length v2, v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge v1, v2, :cond_0

    .line 1707
    const-string v2, "  mConnections[%d]=%s\n"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v0

    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v5, v5, v1

    aput-object v5, v3, v4

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1706
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1709
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mVoiceCallEndedRegistrants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mVoiceCallStartedRegistrants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1711
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCallWaitingRegistrants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1714
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mDroppedDuringPoll: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1715
    move v1, v0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1716
    const-string v2, "  mDroppedDuringPoll[%d]=%s\n"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {p2, v2, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1715
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1718
    .end local v1    # "i":I
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRingingCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mForegroundCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mBackgroundCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingMO="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mHangupPendingMO="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHangupPendingMO:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDesiredMute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDesiredMute:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1726
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingCallInEcm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsInEmergencyCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingCallClirMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallClirMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsEcmTimerCanceled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsEcmTimerCanceled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1733
    :cond_3
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 2

    .line 625
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->explicitCallTransfer(Landroid/os/Message;)V

    .line 626
    return-void
.end method

.method protected finalize()V
    .locals 2

    .line 215
    const-string v0, "GsmCdmaCallTracker"

    const-string v1, "GsmCdmaCallTracker finalized"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void
.end method

.method public getConnectionByIndex(Lcom/android/internal/telephony/GsmCdmaCall;I)Lcom/android/internal/telephony/GsmCdmaConnection;
    .locals 4
    .param p1, "call"    # Lcom/android/internal/telephony/GsmCdmaCall;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1382
    iget-object v0, p1, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1383
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1384
    iget-object v2, p1, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1385
    .local v2, "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    iget-boolean v3, v2, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnected:Z

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 1386
    return-object v2

    .line 1383
    .end local v2    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1390
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMaxConnectionsPerCall()I
    .locals 1

    .line 1741
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1742
    const/4 v0, 0x5

    goto :goto_0

    .line 1743
    :cond_0
    const/4 v0, 0x1

    .line 1741
    :goto_0
    return v0
.end method

.method public getMute()Z
    .locals 1

    .line 1276
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDesiredMute:Z

    return v0
.end method

.method public getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;
    .locals 1

    .line 1693
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .line 1737
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 1430
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x14

    const/4 v2, 0x0

    if-eq v0, v1, :cond_e

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 1611
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not handled by phone type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1612
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1574
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1575
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1576
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_10

    .line 1578
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->onConnectedInOrOut()V

    .line 1579
    iput-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    goto/16 :goto_4

    .line 1582
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not handled by phone type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1583
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1561
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1562
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1563
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_10

    .line 1564
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V

    .line 1565
    const-string v1, "GsmCdmaCallTracker"

    const-string v2, "Event EVENT_CALL_WAITING_INFO_CDMA Received"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1568
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not handled by phone type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1569
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1547
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1549
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    if-eqz v0, :cond_2

    .line 1550
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallClirMode:I

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILandroid/os/Message;)V

    .line 1551
    iput-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    .line 1553
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    goto/16 :goto_4

    .line 1555
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not handled by phone type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1556
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1448
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1449
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1450
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    .line 1453
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 1454
    .local v1, "connection":Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_4

    .line 1455
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->onConferenceMergeFailed()V

    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "connection":Lcom/android/internal/telephony/Connection;
    goto :goto_0

    .line 1543
    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleRadioNotAvailable()V

    .line 1544
    goto/16 :goto_4

    .line 1539
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleRadioAvailable()V

    .line 1540
    goto/16 :goto_4

    .line 1463
    :cond_4
    :goto_0
    :pswitch_6
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1464
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1465
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_5

    .line 1466
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getFailedService(I)Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    .line 1468
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->operationComplete()V

    goto/16 :goto_4

    .line 1470
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    goto/16 :goto_4

    .line 1474
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not handled by phone type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1475
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1482
    :pswitch_7
    const/4 v0, 0x0

    .line 1483
    .local v0, "vendorCause":Ljava/lang/String;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1485
    .local v2, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->operationComplete()V

    .line 1487
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_8

    .line 1490
    const/16 v3, 0x10

    .line 1491
    .local v3, "causeCode":I
    const-string v4, "GsmCdmaCallTracker"

    const-string v5, "Exception during getLastCallFailCause, assuming normal disconnect"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1494
    .end local v3    # "causeCode":I
    :cond_8
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/LastCallFailCause;

    .line 1495
    .local v3, "failCause":Lcom/android/internal/telephony/LastCallFailCause;
    iget v4, v3, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    .line 1496
    .local v4, "causeCode":I
    iget-object v0, v3, Lcom/android/internal/telephony/LastCallFailCause;->vendorCause:Ljava/lang/String;

    .line 1499
    .end local v3    # "failCause":Lcom/android/internal/telephony/LastCallFailCause;
    move v3, v4

    .end local v4    # "causeCode":I
    .local v3, "causeCode":I
    :goto_1
    const/16 v4, 0x22

    if-eq v3, v4, :cond_9

    const/16 v4, 0x29

    if-eq v3, v4, :cond_9

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_9

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_9

    const/16 v4, 0x31

    if-eq v3, v4, :cond_9

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_9

    const v4, 0xffff

    if-ne v3, v4, :cond_c

    .line 1507
    :cond_9
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v4

    .line 1508
    .local v4, "loc":Landroid/telephony/CellLocation;
    const/4 v5, -0x1

    .line 1509
    .local v5, "cid":I
    if-eqz v4, :cond_b

    .line 1510
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1511
    move-object v6, v4

    check-cast v6, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    goto :goto_2

    .line 1513
    :cond_a
    move-object v6, v4

    check-cast v6, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v6}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v5

    .line 1516
    :cond_b
    :goto_2
    const v6, 0xc3ba

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v8, 0x1

    aput-object v1, v7, v8

    const/4 v1, 0x2

    .line 1517
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    .line 1516
    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1520
    .end local v4    # "loc":Landroid/telephony/CellLocation;
    .end local v5    # "cid":I
    :cond_c
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "s":I
    :goto_3
    if-ge v1, v4, :cond_d

    .line 1521
    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1523
    .local v5, "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    invoke-virtual {v5, v3, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->onRemoteDisconnect(ILjava/lang/String;)V

    .line 1520
    .end local v5    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1526
    .end local v1    # "i":I
    .end local v4    # "s":I
    :cond_d
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    .line 1528
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    .line 1529
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilCallList(ILjava/util/ArrayList;)V

    .line 1530
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1531
    goto :goto_4

    .line 1444
    .end local v0    # "vendorCause":Ljava/lang/String;
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "causeCode":I
    :pswitch_8
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->operationComplete()V

    .line 1445
    goto :goto_4

    .line 1535
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->pollCallsWhenSafe()V

    .line 1536
    goto :goto_4

    .line 1432
    :pswitch_a
    const-string v0, "GsmCdmaCallTracker"

    const-string v3, "Event EVENT_POLL_CALLS_RESULT Received"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    if-ne p1, v0, :cond_10

    .line 1435
    const-string v0, "handle EVENT_POLL_CALL_RESULT: set needsPoll=F"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1437
    iput-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mNeedsPoll:Z

    .line 1438
    iput-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 1439
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    goto :goto_4

    .line 1588
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1589
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1590
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_f

    .line 1591
    new-instance v1, Lcom/android/internal/telephony/GsmCdmaCallTracker$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker$2;-><init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V

    iget v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->m3WayCallFlashDelay:I

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 1601
    :cond_f
    iput-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1602
    const-string v1, "GsmCdmaCallTracker"

    const-string v2, "exception happened on Blank Flash for 3-way call"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_10
    :goto_4
    return-void

    .line 1605
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not handled by phone type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1606
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected declared-synchronized handlePollCalls(Landroid/os/AsyncResult;)V
    .locals 30
    .param p1, "ar"    # Landroid/os/AsyncResult;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    monitor-enter p0

    .line 776
    :try_start_0
    const-string v0, "handlePollCalls"

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 777
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 778
    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .local v0, "polledCalls":Ljava/util/List;
    :goto_0
    goto :goto_1

    .line 779
    .end local v0    # "polledCalls":Ljava/util/List;
    :cond_0
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 782
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 787
    .restart local v0    # "polledCalls":Ljava/util/List;
    :goto_1
    move-object v3, v0

    .line 790
    .end local v0    # "polledCalls":Ljava/util/List;
    .local v3, "polledCalls":Ljava/util/List;
    const/4 v0, 0x0

    .line 791
    .local v0, "newRinging":Lcom/android/internal/telephony/Connection;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 792
    .local v4, "newUnknownConnectionsGsm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    const/4 v5, 0x0

    .line 793
    .local v5, "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    const/4 v6, 0x0

    .line 795
    .local v6, "hasNonHangupStateChanged":Z
    const/4 v7, 0x0

    .line 796
    .local v7, "hasAnyCallDisconnected":Z
    const/4 v8, 0x0

    .line 797
    .local v8, "needsPollDelay":Z
    const/4 v9, 0x0

    .line 798
    .local v9, "unknownConnectionAppeared":Z
    iget-object v10, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 801
    .local v10, "handoverConnectionsSize":I
    const/4 v11, 0x1

    .line 803
    .local v11, "noConnectionExists":Z
    const/4 v12, 0x0

    .local v12, "i":I
    const/4 v13, 0x0

    .local v13, "curDC":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    move-object/from16 v29, v5

    move-object v5, v0

    move v0, v13

    move v13, v11

    move v11, v9

    move v9, v6

    move-object/from16 v6, v29

    .line 804
    .local v0, "curDC":I
    .local v5, "newRinging":Lcom/android/internal/telephony/Connection;
    .local v6, "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .local v9, "hasNonHangupStateChanged":Z
    .local v11, "unknownConnectionAppeared":Z
    .local v13, "noConnectionExists":Z
    .local v14, "dcSize":I
    :goto_2
    iget-object v15, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    array-length v15, v15

    if-ge v12, v15, :cond_1d

    .line 805
    iget-object v15, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v15, v15, v12

    .line 806
    .local v15, "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    const/16 v18, 0x0

    .line 809
    .local v18, "dc":Lcom/android/internal/telephony/DriverCall;
    if-ge v0, v14, :cond_2

    .line 810
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/telephony/DriverCall;

    move-object/from16 v20, v19

    .line 812
    .end local v18    # "dc":Lcom/android/internal/telephony/DriverCall;
    .local v20, "dc":Lcom/android/internal/telephony/DriverCall;
    move-object/from16 v21, v3

    move-object/from16 v2, v20

    iget v3, v2, Lcom/android/internal/telephony/DriverCall;->index:I

    .end local v3    # "polledCalls":Ljava/util/List;
    .end local v20    # "dc":Lcom/android/internal/telephony/DriverCall;
    .local v2, "dc":Lcom/android/internal/telephony/DriverCall;
    .local v21, "polledCalls":Ljava/util/List;
    move-object/from16 v22, v2

    add-int/lit8 v2, v12, 0x1

    .end local v2    # "dc":Lcom/android/internal/telephony/DriverCall;
    .local v22, "dc":Lcom/android/internal/telephony/DriverCall;
    if-ne v3, v2, :cond_1

    .line 813
    add-int/lit8 v0, v0, 0x1

    .line 820
    move v3, v0

    move-object/from16 v2, v22

    goto :goto_3

    .line 815
    :cond_1
    const/16 v18, 0x0

    .line 820
    .end local v22    # "dc":Lcom/android/internal/telephony/DriverCall;
    .restart local v18    # "dc":Lcom/android/internal/telephony/DriverCall;
    move v3, v0

    move-object/from16 v2, v18

    goto :goto_3

    .end local v21    # "polledCalls":Ljava/util/List;
    .restart local v3    # "polledCalls":Ljava/util/List;
    :cond_2
    move-object/from16 v21, v3

    move v3, v0

    move-object/from16 v2, v18

    .end local v0    # "curDC":I
    .end local v18    # "dc":Lcom/android/internal/telephony/DriverCall;
    .restart local v2    # "dc":Lcom/android/internal/telephony/DriverCall;
    .local v3, "curDC":I
    .restart local v21    # "polledCalls":Ljava/util/List;
    :goto_3
    if-nez v15, :cond_3

    if-eqz v2, :cond_4

    .line 821
    :cond_3
    const/4 v0, 0x0

    .line 824
    .end local v13    # "noConnectionExists":Z
    .local v0, "noConnectionExists":Z
    move v13, v0

    .end local v0    # "noConnectionExists":Z
    .restart local v13    # "noConnectionExists":Z
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v3

    const-string v3, "poll: conn[i="

    .end local v3    # "curDC":I
    .local v23, "curDC":I
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", dc="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 827
    if-nez v15, :cond_f

    if-eqz v2, :cond_f

    .line 829
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "poll: pendingMO="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 834
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    iget-object v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    aput-object v3, v0, v12

    .line 835
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    iput v12, v0, Lcom/android/internal/telephony/GsmCdmaConnection;->mIndex:I

    .line 836
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    .line 837
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 840
    iget-boolean v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHangupPendingMO:Z

    if-eqz v0, :cond_6

    .line 841
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHangupPendingMO:Z

    .line 844
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsEcmTimerCanceled:Z

    if-eqz v0, :cond_5

    .line 845
    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleEcmTimer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 849
    :cond_5
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "poll: hangupPendingMO, hangup conn "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 851
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v0, v0, v12

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangup(Lcom/android/internal/telephony/GsmCdmaConnection;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 854
    goto :goto_4

    .line 852
    :catch_0
    move-exception v0

    .line 853
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    :try_start_2
    const-string v3, "GsmCdmaCallTracker"

    move-object/from16 v24, v0

    const-string v0, "unexpected error on hangup"

    .end local v0    # "ex":Lcom/android/internal/telephony/CallStateException;
    .local v24, "ex":Lcom/android/internal/telephony/CallStateException;
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 858
    .end local v24    # "ex":Lcom/android/internal/telephony/CallStateException;
    :goto_4
    monitor-exit p0

    return-void

    .line 912
    :cond_6
    move-object/from16 v25, v6

    move/from16 v26, v7

    move/from16 v27, v11

    move/from16 v28, v13

    goto/16 :goto_8

    .line 862
    :cond_7
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pendingMo="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", dc="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 865
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    new-instance v3, Lcom/android/internal/telephony/GsmCdmaConnection;

    move-object/from16 v25, v6

    iget-object v6, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .end local v6    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .local v25, "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    invoke-direct {v3, v6, v2, v1, v12}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/GsmCdmaCallTracker;I)V

    aput-object v3, v0, v12

    .line 867
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getHoConnection(Lcom/android/internal/telephony/DriverCall;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 868
    .local v0, "hoConnection":Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_c

    .line 870
    iget-object v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v3, v3, v12

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->migrateFrom(Lcom/android/internal/telephony/Connection;)V

    .line 873
    iget-object v3, v0, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v6, :cond_8

    iget-object v3, v0, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v6, :cond_8

    iget-object v3, v2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v6, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v3, v6, :cond_8

    .line 876
    iget-object v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v3, v3, v12

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->onConnectedInOrOut()V

    .line 879
    :cond_8
    iget-object v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 881
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 882
    iget-object v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 883
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 884
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Connection;

    .line 885
    .local v6, "c":Lcom/android/internal/telephony/Connection;
    move/from16 v26, v7

    const-string v7, "GsmCdmaCallTracker"

    .end local v7    # "hasAnyCallDisconnected":Z
    .local v26, "hasAnyCallDisconnected":Z
    move/from16 v27, v11

    new-instance v11, Ljava/lang/StringBuilder;

    .end local v11    # "unknownConnectionAppeared":Z
    .local v27, "unknownConnectionAppeared":Z
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v28, v13

    const-string v13, "HO Conn state is "

    .end local v13    # "noConnectionExists":Z
    .local v28, "noConnectionExists":Z
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v6, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    iget-object v7, v6, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    iget-object v11, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/android/internal/telephony/GsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    if-ne v7, v11, :cond_9

    .line 887
    const-string v7, "GsmCdmaCallTracker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Removing HO conn "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v13, v6, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 891
    .end local v6    # "c":Lcom/android/internal/telephony/Connection;
    :cond_9
    nop

    .line 882
    move/from16 v7, v26

    move/from16 v11, v27

    move/from16 v13, v28

    goto :goto_5

    .line 894
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    .end local v26    # "hasAnyCallDisconnected":Z
    .end local v27    # "unknownConnectionAppeared":Z
    .end local v28    # "noConnectionExists":Z
    .restart local v7    # "hasAnyCallDisconnected":Z
    .restart local v11    # "unknownConnectionAppeared":Z
    .restart local v13    # "noConnectionExists":Z
    :cond_a
    move/from16 v26, v7

    move/from16 v27, v11

    move/from16 v28, v13

    .end local v7    # "hasAnyCallDisconnected":Z
    .end local v11    # "unknownConnectionAppeared":Z
    .end local v13    # "noConnectionExists":Z
    .restart local v26    # "hasAnyCallDisconnected":Z
    .restart local v27    # "unknownConnectionAppeared":Z
    .restart local v28    # "noConnectionExists":Z
    iget-object v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->oemMigrateFrom()V

    goto :goto_6

    .line 898
    .end local v26    # "hasAnyCallDisconnected":Z
    .end local v27    # "unknownConnectionAppeared":Z
    .end local v28    # "noConnectionExists":Z
    .restart local v7    # "hasAnyCallDisconnected":Z
    .restart local v11    # "unknownConnectionAppeared":Z
    .restart local v13    # "noConnectionExists":Z
    :cond_b
    move/from16 v26, v7

    move/from16 v27, v11

    move/from16 v28, v13

    .end local v7    # "hasAnyCallDisconnected":Z
    .end local v11    # "unknownConnectionAppeared":Z
    .end local v13    # "noConnectionExists":Z
    .restart local v26    # "hasAnyCallDisconnected":Z
    .restart local v27    # "unknownConnectionAppeared":Z
    .restart local v28    # "noConnectionExists":Z
    :goto_6
    iget-object v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v6, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v6, v6, v12

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyHandoverStateChanged(Lcom/android/internal/telephony/Connection;)V

    goto :goto_8

    .line 901
    .end local v26    # "hasAnyCallDisconnected":Z
    .end local v27    # "unknownConnectionAppeared":Z
    .end local v28    # "noConnectionExists":Z
    .restart local v7    # "hasAnyCallDisconnected":Z
    .restart local v11    # "unknownConnectionAppeared":Z
    .restart local v13    # "noConnectionExists":Z
    :cond_c
    move/from16 v26, v7

    move/from16 v27, v11

    move/from16 v28, v13

    .end local v7    # "hasAnyCallDisconnected":Z
    .end local v11    # "unknownConnectionAppeared":Z
    .end local v13    # "noConnectionExists":Z
    .restart local v26    # "hasAnyCallDisconnected":Z
    .restart local v27    # "unknownConnectionAppeared":Z
    .restart local v28    # "noConnectionExists":Z
    invoke-direct {v1, v2, v12}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    move-object v5, v3

    .line 902
    if-nez v5, :cond_e

    .line 903
    const/4 v11, 0x1

    .line 904
    .end local v27    # "unknownConnectionAppeared":Z
    .restart local v11    # "unknownConnectionAppeared":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 905
    iget-object v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v3, v3, v12

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 907
    :cond_d
    iget-object v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v3, v3, v12

    move-object v6, v3

    .line 912
    .end local v0    # "hoConnection":Lcom/android/internal/telephony/Connection;
    .end local v25    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .local v6, "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    move-object/from16 v25, v6

    .end local v6    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .end local v11    # "unknownConnectionAppeared":Z
    .restart local v25    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .restart local v27    # "unknownConnectionAppeared":Z
    :goto_7
    move/from16 v27, v11

    :cond_e
    :goto_8
    const/4 v0, 0x1

    goto/16 :goto_c

    .line 913
    .end local v25    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .end local v26    # "hasAnyCallDisconnected":Z
    .end local v27    # "unknownConnectionAppeared":Z
    .end local v28    # "noConnectionExists":Z
    .restart local v6    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .restart local v7    # "hasAnyCallDisconnected":Z
    .restart local v11    # "unknownConnectionAppeared":Z
    .restart local v13    # "noConnectionExists":Z
    :cond_f
    move-object/from16 v25, v6

    move/from16 v26, v7

    move/from16 v27, v11

    move/from16 v28, v13

    .end local v6    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .end local v7    # "hasAnyCallDisconnected":Z
    .end local v11    # "unknownConnectionAppeared":Z
    .end local v13    # "noConnectionExists":Z
    .restart local v25    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .restart local v26    # "hasAnyCallDisconnected":Z
    .restart local v27    # "unknownConnectionAppeared":Z
    .restart local v28    # "noConnectionExists":Z
    if-eqz v15, :cond_14

    if-nez v2, :cond_14

    .line 914
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 917
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 923
    :cond_10
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 924
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_9
    if-ge v3, v0, :cond_11

    .line 925
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adding fgCall cn "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " to droppedDuringPoll"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 926
    iget-object v6, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v6, v6, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 927
    .local v6, "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    iget-object v7, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 924
    .end local v6    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 929
    .end local v3    # "n":I
    :cond_11
    iget-object v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v3, v3, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v0, v3

    .line 932
    const/4 v3, 0x0

    .restart local v3    # "n":I
    :goto_a
    if-ge v3, v0, :cond_12

    .line 933
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adding rgCall cn "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " to droppedDuringPoll"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 934
    iget-object v6, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v6, v6, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 935
    .restart local v6    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    iget-object v7, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    .end local v6    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 939
    .end local v3    # "n":I
    :cond_12
    iget-boolean v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsEcmTimerCanceled:Z

    if-eqz v3, :cond_13

    .line 940
    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleEcmTimer(I)V

    .line 943
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    .line 947
    .end local v0    # "count":I
    :goto_b
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    const/4 v3, 0x0

    aput-object v3, v0, v12

    goto/16 :goto_11

    .line 948
    :cond_14
    if-eqz v15, :cond_16

    if-eqz v2, :cond_16

    invoke-virtual {v15, v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 952
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    new-instance v3, Lcom/android/internal/telephony/GsmCdmaConnection;

    iget-object v6, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-direct {v3, v6, v2, v1, v12}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/GsmCdmaCallTracker;I)V

    aput-object v3, v0, v12

    .line 955
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v0, v0, v12

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v0

    iget-object v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne v0, v3, :cond_15

    .line 956
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v0, v0, v12

    move-object v5, v0

    .line 958
    :cond_15
    const/4 v0, 0x1

    .end local v2    # "dc":Lcom/android/internal/telephony/DriverCall;
    .end local v9    # "hasNonHangupStateChanged":Z
    .end local v15    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    .end local v25    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .end local v27    # "unknownConnectionAppeared":Z
    .local v0, "hasNonHangupStateChanged":Z
    .local v6, "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .restart local v11    # "unknownConnectionAppeared":Z
    :goto_c
    goto :goto_10

    .line 959
    .end local v0    # "hasNonHangupStateChanged":Z
    .end local v6    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .end local v11    # "unknownConnectionAppeared":Z
    .restart local v2    # "dc":Lcom/android/internal/telephony/DriverCall;
    .restart local v9    # "hasNonHangupStateChanged":Z
    .restart local v15    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    .restart local v25    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .restart local v27    # "unknownConnectionAppeared":Z
    :cond_16
    if-eqz v15, :cond_1c

    if-eqz v2, :cond_1c

    .line 961
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {v15}, Lcom/android/internal/telephony/GsmCdmaConnection;->isIncoming()Z

    move-result v0

    iget-boolean v3, v2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-eq v0, v3, :cond_19

    .line 962
    iget-boolean v0, v2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    const/4 v3, 0x1

    if-ne v0, v3, :cond_18

    .line 964
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    invoke-direct {v1, v2, v12}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 967
    .end local v5    # "newRinging":Lcom/android/internal/telephony/Connection;
    .local v0, "newRinging":Lcom/android/internal/telephony/Connection;
    if-nez v0, :cond_17

    .line 968
    const/4 v11, 0x1

    .line 969
    .end local v27    # "unknownConnectionAppeared":Z
    .restart local v11    # "unknownConnectionAppeared":Z
    move-object v6, v15

    .line 971
    .end local v25    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .restart local v6    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    move/from16 v27, v11

    goto :goto_d

    .end local v6    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .end local v11    # "unknownConnectionAppeared":Z
    .restart local v25    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .restart local v27    # "unknownConnectionAppeared":Z
    :cond_17
    move-object/from16 v6, v25

    .end local v25    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .restart local v6    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    :goto_d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    .line 804
    move-object v5, v0

    goto :goto_12

    .line 977
    .end local v0    # "newRinging":Lcom/android/internal/telephony/Connection;
    .end local v6    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .restart local v5    # "newRinging":Lcom/android/internal/telephony/Connection;
    .restart local v25    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    :cond_18
    const-string v0, "GsmCdmaCallTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in RIL, Phantom call appeared "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 981
    :cond_19
    invoke-virtual {v15, v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v0

    .line 982
    .local v0, "changed":Z
    if-nez v9, :cond_1b

    if-eqz v0, :cond_1a

    goto :goto_e

    :cond_1a
    const/16 v17, 0x0

    goto :goto_f

    :cond_1b
    :goto_e
    const/16 v17, 0x1

    :goto_f
    move/from16 v0, v17

    .line 804
    .end local v0    # "changed":Z
    .end local v2    # "dc":Lcom/android/internal/telephony/DriverCall;
    .end local v15    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    .end local v25    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .end local v27    # "unknownConnectionAppeared":Z
    .restart local v6    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .restart local v11    # "unknownConnectionAppeared":Z
    :goto_10
    move v9, v0

    :cond_1c
    :goto_11
    move-object/from16 v6, v25

    :goto_12
    move/from16 v11, v27

    add-int/lit8 v12, v12, 0x1

    .line 803
    move-object/from16 v3, v21

    move/from16 v0, v23

    move/from16 v7, v26

    move/from16 v13, v28

    move-object/from16 v2, p1

    goto/16 :goto_2

    .line 1007
    .end local v12    # "i":I
    .end local v14    # "dcSize":I
    .end local v21    # "polledCalls":Ljava/util/List;
    .end local v23    # "curDC":I
    .end local v26    # "hasAnyCallDisconnected":Z
    .end local v28    # "noConnectionExists":Z
    .local v3, "polledCalls":Ljava/util/List;
    .restart local v7    # "hasAnyCallDisconnected":Z
    .restart local v13    # "noConnectionExists":Z
    :cond_1d
    move-object/from16 v21, v3

    move-object/from16 v25, v6

    move/from16 v26, v7

    move/from16 v27, v11

    .end local v3    # "polledCalls":Ljava/util/List;
    .end local v6    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .end local v7    # "hasAnyCallDisconnected":Z
    .end local v11    # "unknownConnectionAppeared":Z
    .restart local v21    # "polledCalls":Ljava/util/List;
    .restart local v25    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .restart local v26    # "hasAnyCallDisconnected":Z
    .restart local v27    # "unknownConnectionAppeared":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1e

    if-eqz v13, :cond_1e

    .line 1008
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    .line 1014
    :cond_1e
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v0, :cond_20

    .line 1015
    const-string v0, "GsmCdmaCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pending MO dropped before poll fg state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 1016
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1015
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1019
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1020
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHangupPendingMO:Z

    .line 1022
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1023
    iget-boolean v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    if-eqz v0, :cond_1f

    .line 1024
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    goto :goto_13

    .line 1026
    :cond_1f
    const/4 v0, 0x0

    :goto_13
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    goto :goto_14

    .line 1030
    :cond_20
    const/4 v0, 0x0

    :goto_14
    if-eqz v5, :cond_24

    .line 1031
    iget-object v2, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V

    .line 1034
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 1035
    .local v2, "mPhoneNumber":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->is_test_card()Z

    move-result v3

    if-eqz v3, :cond_24

    const-string v3, "true"

    const-string v6, "persist.radio.ptcrb.enable"

    const-string v7, "false"

    .line 1036
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 1038
    if-eqz v2, :cond_22

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v6, 0x6

    if-ge v3, v6, :cond_21

    goto :goto_15

    :cond_21
    goto :goto_16

    :cond_22
    :goto_15
    const/4 v0, 0x1

    :goto_16
    move v3, v0

    .line 1040
    .local v3, "needAccept":Z
    if-eqz v3, :cond_23

    .line 1042
    :try_start_4
    const-string v0, "GsmCdmaCallTracker"

    const-string v6, "acceptCall: for test card..."

    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->acceptCall()V
    :try_end_4
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_17

    .line 1045
    :catch_1
    move-exception v0

    .line 1046
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    :try_start_5
    const-string v6, "GsmCdmaCallTracker"

    const-string v7, "acceptCall failed:"

    invoke-static {v6, v7, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    .end local v2    # "mPhoneNumber":Ljava/lang/String;
    .end local v3    # "needAccept":Z
    goto :goto_18

    .line 1047
    .restart local v2    # "mPhoneNumber":Ljava/lang/String;
    .restart local v3    # "needAccept":Z
    :cond_23
    :goto_17
    nop

    .line 1055
    .end local v2    # "mPhoneNumber":Ljava/lang/String;
    .end local v3    # "needAccept":Z
    :cond_24
    :goto_18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1056
    .local v0, "locallyDisconnectedConnections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/GsmCdmaConnection;>;"
    iget-object v2, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move-object/from16 v3, v25

    .end local v25    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .local v2, "i":I
    .local v3, "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    :goto_19
    if-ltz v2, :cond_2a

    .line 1057
    iget-object v6, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1059
    .local v6, "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    const/4 v7, 0x0

    .line 1061
    .local v7, "wasDisconnected":Z
    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaConnection;->isIncoming()Z

    move-result v11

    const/4 v12, 0x3

    if-eqz v11, :cond_26

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaConnection;->getConnectTime()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_26

    .line 1064
    iget v11, v6, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    if-ne v11, v12, :cond_25

    .line 1065
    const/16 v11, 0x10

    .local v11, "cause":I
    goto :goto_1a

    .line 1067
    .end local v11    # "cause":I
    :cond_25
    const/4 v11, 0x1

    .line 1071
    .restart local v11    # "cause":I
    :goto_1a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "missed/rejected call, conn.cause="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v6, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1072
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setting cause to "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1074
    iget-object v12, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1075
    invoke-virtual {v6, v11}, Lcom/android/internal/telephony/GsmCdmaConnection;->onDisconnect(I)Z

    move-result v12

    or-int v12, v26, v12

    .line 1076
    .end local v26    # "hasAnyCallDisconnected":Z
    .local v12, "hasAnyCallDisconnected":Z
    const/4 v7, 0x1

    .line 1077
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1078
    .end local v11    # "cause":I
    nop

    .line 1086
    move/from16 v26, v12

    goto :goto_1b

    .line 1078
    .end local v12    # "hasAnyCallDisconnected":Z
    .restart local v26    # "hasAnyCallDisconnected":Z
    :cond_26
    iget v11, v6, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    if-eq v11, v12, :cond_27

    iget v11, v6, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    const/4 v12, 0x7

    if-ne v11, v12, :cond_28

    .line 1080
    :cond_27
    iget-object v11, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1081
    iget v11, v6, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    invoke-virtual {v6, v11}, Lcom/android/internal/telephony/GsmCdmaConnection;->onDisconnect(I)Z

    move-result v11

    or-int v11, v26, v11

    .line 1082
    .end local v26    # "hasAnyCallDisconnected":Z
    .local v11, "hasAnyCallDisconnected":Z
    const/4 v7, 0x1

    .line 1083
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1086
    move/from16 v26, v11

    .end local v11    # "hasAnyCallDisconnected":Z
    .restart local v26    # "hasAnyCallDisconnected":Z
    :cond_28
    :goto_1b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v11

    if-nez v11, :cond_29

    if-eqz v7, :cond_29

    if-eqz v27, :cond_29

    if-ne v6, v3, :cond_29

    .line 1088
    const/4 v11, 0x0

    .line 1089
    .end local v27    # "unknownConnectionAppeared":Z
    .local v11, "unknownConnectionAppeared":Z
    const/4 v3, 0x0

    .line 1056
    .end local v6    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    .end local v7    # "wasDisconnected":Z
    move/from16 v27, v11

    .end local v11    # "unknownConnectionAppeared":Z
    .restart local v27    # "unknownConnectionAppeared":Z
    :cond_29
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_19

    .line 1092
    .end local v2    # "i":I
    :cond_2a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2b

    .line 1093
    iget-object v2, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v6, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v6

    invoke-virtual {v2, v6, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilCallList(ILjava/util/ArrayList;)V

    .line 1097
    :cond_2b
    iget-object v2, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1098
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 1099
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Connection;

    .line 1100
    .local v6, "hoConnection":Lcom/android/internal/telephony/Connection;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handlePollCalls - disconnect hoConn= "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " hoConn.State= "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1100
    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1102
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 1103
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/Connection;->onDisconnect(I)Z

    goto :goto_1d

    .line 1105
    :cond_2c
    const/4 v7, 0x1

    const/4 v11, -0x1

    invoke-virtual {v6, v11}, Lcom/android/internal/telephony/Connection;->onDisconnect(I)Z

    .line 1108
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 1109
    .end local v6    # "hoConnection":Lcom/android/internal/telephony/Connection;
    goto :goto_1c

    .line 1112
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    :cond_2d
    iget-object v2, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2e

    .line 1113
    iget-object v2, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x5

    .line 1114
    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainNoPollCompleteMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 1113
    invoke-interface {v2, v6}, Lcom/android/internal/telephony/CommandsInterface;->getLastCallFailCause(Landroid/os/Message;)V

    .line 1117
    :cond_2e
    if-eqz v8, :cond_2f

    .line 1118
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->pollCallsAfterDelay()V

    .line 1126
    :cond_2f
    if-nez v5, :cond_30

    if-nez v9, :cond_30

    if-eqz v26, :cond_31

    .line 1127
    :cond_30
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->internalClearDisconnected()V

    .line 1130
    :cond_31
    const-string v2, "handlePollCalls calling updatePhoneState()"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1131
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    .line 1133
    if-eqz v27, :cond_33

    .line 1134
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1135
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Connection;

    .line 1136
    .local v6, "c":Lcom/android/internal/telephony/Connection;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Notify unknown for "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1137
    iget-object v7, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V

    .line 1138
    .end local v6    # "c":Lcom/android/internal/telephony/Connection;
    goto :goto_1e

    .line 1140
    :cond_32
    iget-object v2, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V

    .line 1144
    :cond_33
    if-nez v9, :cond_34

    if-nez v5, :cond_34

    if-eqz v26, :cond_35

    .line 1145
    :cond_34
    iget-object v2, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    .line 1146
    iget-object v2, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updateMetrics([Lcom/android/internal/telephony/GsmCdmaConnection;)V

    .line 1150
    :cond_35
    if-lez v10, :cond_36

    iget-object v2, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_36

    .line 1151
    iget-object v2, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 1152
    .local v2, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v2, :cond_36

    .line 1153
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->callEndCleanupHandOverCallIfAny()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1157
    .end local v2    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :cond_36
    monitor-exit p0

    return-void

    .line 786
    .end local v0    # "locallyDisconnectedConnections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/GsmCdmaConnection;>;"
    .end local v3    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .end local v4    # "newUnknownConnectionsGsm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    .end local v5    # "newRinging":Lcom/android/internal/telephony/Connection;
    .end local v8    # "needsPollDelay":Z
    .end local v9    # "hasNonHangupStateChanged":Z
    .end local v10    # "handoverConnectionsSize":I
    .end local v13    # "noConnectionExists":Z
    .end local v21    # "polledCalls":Ljava/util/List;
    .end local v26    # "hasAnyCallDisconnected":Z
    .end local v27    # "unknownConnectionAppeared":Z
    :cond_37
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->pollCallsAfterDelay()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 787
    monitor-exit p0

    return-void

    .line 775
    .end local p1    # "ar":Landroid/os/AsyncResult;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/GsmCdmaCallTracker;
    throw v0
.end method

.method public hangup(Lcom/android/internal/telephony/GsmCdmaCall;)V
    .locals 3
    .param p1, "call"    # Lcom/android/internal/telephony/GsmCdmaCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1283
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_6

    .line 1287
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne p1, v0, :cond_0

    .line 1288
    const-string v0, "(ringing) hangup waiting or background"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1289
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->logHangupEvent(Lcom/android/internal/telephony/GsmCdmaCall;)V

    .line 1290
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    goto :goto_0

    .line 1291
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne p1, v0, :cond_3

    .line 1292
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCall;->isDialingOrAlerting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1294
    const-string v0, "(foregnd) hangup dialing or alerting..."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1296
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangup(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    goto :goto_0

    .line 1297
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 1298
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1300
    const-string v0, "hangup all conns in active/background call, without affecting ringing call"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1301
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/GsmCdmaCall;)V

    goto :goto_0

    .line 1303
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->logHangupEvent(Lcom/android/internal/telephony/GsmCdmaCall;)V

    .line 1304
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupForegroundResumeBackground()V

    goto :goto_0

    .line 1306
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne p1, v0, :cond_5

    .line 1307
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1309
    const-string v0, "hangup all conns in background call"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1311
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/GsmCdmaCall;)V

    goto :goto_0

    .line 1313
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupWaitingOrBackground()V

    .line 1320
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCall;->onHangupLocal()V

    .line 1321
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    .line 1322
    return-void

    .line 1316
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GsmCdmaCall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "does not belong to GsmCdmaCallTracker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1284
    :cond_6
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "no connections in call"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hangup(Lcom/android/internal/telephony/GsmCdmaConnection;)V
    .locals 4
    .param p1, "conn"    # Lcom/android/internal/telephony/GsmCdmaConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1205
    iget-object v0, p1, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    if-ne v0, p0, :cond_3

    .line 1210
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-ne p1, v0, :cond_1

    .line 1212
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsEcmTimerCanceled:Z

    if-eqz v0, :cond_0

    .line 1213
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleEcmTimer(I)V

    .line 1217
    :cond_0
    const-string v0, "hangup conn with callId \'-1\' as there is no DIAL response yet "

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1218
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    goto :goto_0

    .line 1219
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1220
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 1221
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_2

    .line 1233
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->onLocalDisconnect()V

    .line 1235
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    .line 1236
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    .line 1237
    return-void

    .line 1240
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilHangup(ILcom/android/internal/telephony/GsmCdmaConnection;I)V

    .line 1241
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v1

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1247
    goto :goto_0

    .line 1242
    :catch_0
    move-exception v0

    .line 1245
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v1, "GsmCdmaCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsmCdmaCallTracker WARN: hangup() on absent connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    .end local v0    # "ex":Lcom/android/internal/telephony/CallStateException;
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->onHangupLocal()V

    .line 1251
    return-void

    .line 1206
    :cond_3
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GsmCdmaConnection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "does not belong to GsmCdmaCallTracker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hangupAllConnections(Lcom/android/internal/telephony/GsmCdmaCall;)V
    .locals 6
    .param p1, "call"    # Lcom/android/internal/telephony/GsmCdmaCall;

    .line 1367
    :try_start_0
    iget-object v0, p1, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1368
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1369
    iget-object v2, p1, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1370
    .local v2, "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    iget-boolean v3, v2, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnected:Z

    if-nez v3, :cond_0

    .line 1371
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v5

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilHangup(ILcom/android/internal/telephony/GsmCdmaConnection;I)V

    .line 1372
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v4

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1368
    .end local v2    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1377
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    goto :goto_1

    .line 1375
    :catch_0
    move-exception v0

    .line 1376
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v1, "GsmCdmaCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hangupConnectionByIndex caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    .end local v0    # "ex":Lcom/android/internal/telephony/CallStateException;
    :goto_1
    return-void
.end method

.method public hangupConnectionByIndex(Lcom/android/internal/telephony/GsmCdmaCall;I)V
    .locals 6
    .param p1, "call"    # Lcom/android/internal/telephony/GsmCdmaCall;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1352
    iget-object v0, p1, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1353
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1354
    iget-object v2, p1, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1355
    .local v2, "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    iget-boolean v3, v2, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnected:Z

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 1356
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v5

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilHangup(ILcom/android/internal/telephony/GsmCdmaConnection;I)V

    .line 1357
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, p2, v4}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    .line 1358
    return-void

    .line 1353
    .end local v2    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1362
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "no GsmCdma index found"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hangupForegroundResumeBackground()V
    .locals 2

    .line 1346
    const-string v0, "hangupForegroundResumeBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1347
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupForegroundResumeBackground(Landroid/os/Message;)V

    .line 1348
    return-void
.end method

.method public hangupWaitingOrBackground()V
    .locals 2

    .line 1340
    const-string v0, "hangupWaitingOrBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1341
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->logHangupEvent(Lcom/android/internal/telephony/GsmCdmaCall;)V

    .line 1342
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 1343
    return-void
.end method

.method public isInEmergencyCall()Z
    .locals 1

    .line 1678
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    return v0
.end method

.method public isInEmergencyCallGsm()Z
    .locals 1

    .line 1684
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCallGsm:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 1698
    const-string v0, "GsmCdmaCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 248
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 249
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 250
    return-void
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 238
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 239
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 240
    return-void
.end method

.method public registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 223
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 224
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 226
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_0

    .line 227
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 229
    :cond_0
    return-void
.end method

.method public rejectCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 579
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->rejectCall(Landroid/os/Message;)V

    .line 584
    return-void

    .line 582
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "phone not ringing"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public separate(Lcom/android/internal/telephony/GsmCdmaConnection;)V
    .locals 4
    .param p1, "conn"    # Lcom/android/internal/telephony/GsmCdmaConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1254
    iget-object v0, p1, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    if-ne v0, p0, :cond_0

    .line 1259
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v1

    const/16 v2, 0xc

    .line 1260
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1259
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->separateConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1265
    goto :goto_0

    .line 1261
    :catch_0
    move-exception v0

    .line 1264
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v1, "GsmCdmaCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsmCdmaCallTracker WARN: separate() on absent connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    .end local v0    # "ex":Lcom/android/internal/telephony/CallStateException;
    :goto_0
    return-void

    .line 1255
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GsmCdmaConnection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "does not belong to GsmCdmaCallTracker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIsInEmergencyCall()V
    .locals 3

    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    .line 391
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInternalDataEnabled(Z)Z

    .line 392
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyEmergencyCallRegistrants(Z)V

    .line 393
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendEmergencyCallStateChange(Z)V

    .line 394
    return-void
.end method

.method public setMute(Z)V
    .locals 3
    .param p1, "mute"    # Z

    .line 1271
    iput-boolean p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDesiredMute:Z

    .line 1272
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDesiredMute:Z

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setMute(ZLandroid/os/Message;)V

    .line 1273
    return-void
.end method

.method public switchWaitingOrHoldingAndActive()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 595
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_2

    .line 598
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 600
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 599
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->switchWaitingOrHoldingAndActive(Landroid/os/Message;)V

    goto :goto_0

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 603
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->flashAndSetGenericTrue()V

    goto :goto_0

    .line 609
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v2, ""

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    .line 613
    :goto_0
    return-void

    .line 596
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "cannot be in the incoming state"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 253
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 254
    return-void
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 244
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 245
    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 234
    return-void
.end method

.method public updatePhoneType()V
    .locals 1

    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneType(Z)V

    .line 167
    return-void
.end method
