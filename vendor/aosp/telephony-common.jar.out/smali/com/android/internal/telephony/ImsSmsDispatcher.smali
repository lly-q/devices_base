.class public Lcom/android/internal/telephony/ImsSmsDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "ImsSmsDispatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsSmsDispacher"


# instance fields
.field private mCapabilityCallback:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallback;

.field private final mImsManagerConnector:Lcom/android/ims/ImsManager$Connector;

.field private final mImsSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

.field private volatile mIsImsServiceUp:Z

.field private volatile mIsRegistered:Z

.field private volatile mIsSmsCapable:Z

.field private final mLock:Ljava/lang/Object;

.field public mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mRegistrationCallback:Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;

.field public mTrackers:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "smsDispatchersController"    # Lcom/android/internal/telephony/SmsDispatchersController;

    .line 214
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;)V

    .line 58
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Lcom/android/internal/telephony/ImsSmsDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ImsSmsDispatcher$1;-><init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mRegistrationCallback:Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;

    .line 100
    new-instance v0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ImsSmsDispatcher$2;-><init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCapabilityCallback:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallback;

    .line 111
    new-instance v0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ImsSmsDispatcher$3;-><init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mImsSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 216
    new-instance v0, Lcom/android/ims/ImsManager$Connector;

    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    new-instance v3, Lcom/android/internal/telephony/ImsSmsDispatcher$4;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/ImsSmsDispatcher$4;-><init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/ims/ImsManager$Connector;-><init>(Landroid/content/Context;ILcom/android/ims/ImsManager$Connector$Listener;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mImsManagerConnector:Lcom/android/ims/ImsManager$Connector;

    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mImsManagerConnector:Lcom/android/ims/ImsManager$Connector;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager$Connector;->connect()V

    .line 236
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ImsSmsDispatcher;

    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/ImsSmsDispatcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ImsSmsDispatcher;
    .param p1, "x1"    # Z

    .line 54
    iput-boolean p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsRegistered:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/ImsSmsDispatcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ImsSmsDispatcher;
    .param p1, "x1"    # Z

    .line 54
    iput-boolean p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsSmsCapable:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/ImsSmsDispatcher;)Lcom/android/ims/ImsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ImsSmsDispatcher;

    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/ImsSmsDispatcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ImsSmsDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->setListeners()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/ImsSmsDispatcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ImsSmsDispatcher;
    .param p1, "x1"    # Z

    .line 54
    iput-boolean p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsImsServiceUp:Z

    return p1
.end method

.method private getImsManager()Lcom/android/ims/ImsManager;
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    return-object v0
.end method

.method private isEmergencySmsPossible()Z
    .locals 1

    .line 257
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isLteService()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isLimitedLteService()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isLimitedLteService()Z
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 253
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 252
    :goto_0
    return v0
.end method

.method private isLteService()Z
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 247
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 246
    :goto_0
    return v0
.end method

.method private setListeners()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 239
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mRegistrationCallback:Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsManager;->addRegistrationCallback(Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;)V

    .line 240
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCapabilityCallback:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallback;

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsManager;->addCapabilitiesCallback(Landroid/telephony/ims/feature/ImsFeature$CapabilityCallback;)V

    .line 241
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mImsSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsManager;->setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V

    .line 242
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->onSmsReady()V

    .line 243
    return-void
.end method


# virtual methods
.method protected calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .param p1, "messageBody"    # Ljava/lang/CharSequence;
    .param p2, "use7bitOnly"    # Z

    .line 334
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isCdmaMo()Z

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->calculateLength(ZLjava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public fallbackToPstn(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/SmsDispatchersController;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    return-void
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 4

    .line 303
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->getSmsFormat()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string v1, "ImsSmsDispacher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get sms format. Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v1, "unknown"

    return-object v1
.end method

.method protected getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .locals 6
    .param p1, "scAddr"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "message"    # [B
    .param p5, "statusReportRequested"    # Z

    .line 328
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isCdmaMo()Z

    move-result v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPdu(ZLjava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v0

    return-object v0
.end method

.method protected getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;II)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .locals 8
    .param p1, "scAddr"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "statusReportRequested"    # Z
    .param p5, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p6, "priority"    # I
    .param p7, "validityPeriod"    # I

    .line 321
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isCdmaMo()Z

    move-result v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPdu(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;II)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 4

    .line 290
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_0
    const-string v1, "ImsSmsDispacher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailable: up="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsImsServiceUp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", reg= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", cap= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsSmsCapable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-boolean v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsImsServiceUp:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsRegistered:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsSmsCapable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsDispatchersController;->forceSendSmsByCs()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 297
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected isCdmaMo()Z
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEmergencySmsSupport(Ljava/lang/String;)Z
    .locals 8
    .param p1, "destAddr"    # Ljava/lang/String;

    .line 262
    const/4 v0, 0x0

    .line 263
    .local v0, "eSmsCarrierSupport":Z
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 264
    const-string v1, "ImsSmsDispacher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Emergency Sms is not supported for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return v2

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "carrier_config"

    .line 268
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 269
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    if-nez v1, :cond_1

    .line 270
    const-string v3, "ImsSmsDispacher"

    const-string v4, "configManager is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return v2

    .line 273
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getSubId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 274
    .local v3, "b":Landroid/os/PersistableBundle;
    if-nez v3, :cond_2

    .line 275
    const-string v4, "ImsSmsDispacher"

    const-string v5, "PersistableBundle is null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return v2

    .line 278
    :cond_2
    const-string v4, "emergency_sms_support_bool"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 280
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isEmergencySmsPossible()Z

    move-result v4

    .line 281
    .local v4, "lteOrLimitedLte":Z
    const-string v5, "ImsSmsDispacher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isEmergencySmsSupport emergencySmsCarrierSupport: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " destAddr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " mIsImsServiceUp: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsImsServiceUp:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " lteOrLimitedLte: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    if-eqz v0, :cond_3

    iget-boolean v5, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsImsServiceUp:Z

    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    nop

    :cond_3
    return v2
.end method

.method public sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 11
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 339
    const-string v0, "ImsSmsDispacher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSms:  mRetryCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mMessageRef="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " SS="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 342
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 339
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUsesImsServiceForIms:Z

    .line 348
    invoke-virtual {p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getData()Ljava/util/HashMap;

    move-result-object v1

    .line 350
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "pdu"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 351
    .local v2, "pdu":[B
    const-string v3, "smsc"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, [B

    .line 352
    .local v10, "smsc":[B
    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    const/4 v4, 0x0

    if-lez v3, :cond_0

    move v8, v0

    goto :goto_0

    :cond_0
    move v8, v4

    .line 354
    .local v8, "isRetry":Z
    :goto_0
    const-string v3, "3gpp"

    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-lez v3, :cond_1

    .line 358
    aget-byte v3, v2, v4

    and-int/2addr v3, v0

    if-ne v3, v0, :cond_1

    .line 359
    aget-byte v3, v2, v4

    or-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 360
    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 365
    .local v0, "token":I
    iget-object v3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object v3

    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 370
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v6

    .line 371
    if-eqz v10, :cond_2

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v10}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 367
    :goto_1
    move-object v7, v4

    move v4, v0

    move-object v9, v2

    invoke-virtual/range {v3 .. v9}, Lcom/android/ims/ImsManager;->sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    goto :goto_2

    .line 374
    :catch_0
    move-exception v3

    .line 375
    .local v3, "e":Lcom/android/ims/ImsException;
    const-string v4, "ImsSmsDispacher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendSms failed. Falling back to PSTN. Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->fallbackToPstn(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 378
    .end local v3    # "e":Lcom/android/ims/ImsException;
    :goto_2
    return-void
.end method

.method protected shouldBlockSmsForEcbm()Z
    .locals 1

    .line 314
    const/4 v0, 0x0

    return v0
.end method
