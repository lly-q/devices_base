.class public Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;
.super Landroid/net/NetworkFactory;
.source "TelephonyNetworkFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;
    }
.end annotation


# static fields
.field protected static final DBG:Z = true

.field private static final EVENT_ACTIVE_PHONE_SWITCH:I = 0x1

.field private static final EVENT_DEFAULT_SUBSCRIPTION_CHANGED:I = 0x3

.field private static final EVENT_NETWORK_RELEASE:I = 0x5

.field private static final EVENT_NETWORK_REQUEST:I = 0x4

.field private static final EVENT_SUBSCRIPTION_CHANGED:I = 0x2

.field private static final PRIMARY_SLOT:I = 0x0

.field private static final RELEASE:Z = false

.field private static final REQUEST:Z = true

.field private static final REQUEST_LOG_SIZE:I = 0x28

.field private static final SECONDARY_SLOT:I = 0x1

.field private static final TELEPHONY_NETWORK_SCORE:I = 0x32


# instance fields
.field public final LOG_TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

.field private final mDefaultRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/NetworkRequest;",
            "Landroid/util/LocalLog;",
            ">;"
        }
    .end annotation
.end field

.field private final mInternalHandler:Landroid/os/Handler;

.field private mIsActive:Z

.field private mIsDefault:Z

.field private mPhoneId:I

.field private final mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

.field private final mSpecificRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/NetworkRequest;",
            "Landroid/util/LocalLog;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

.field private mSubscriptionId:I

.field private final mSubscriptionMonitor:Lcom/android/internal/telephony/SubscriptionMonitor;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneSwitcher;Lcom/android/internal/telephony/SubscriptionController;Lcom/android/internal/telephony/SubscriptionMonitor;Landroid/os/Looper;Landroid/content/Context;ILcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 6
    .param p1, "phoneSwitcher"    # Lcom/android/internal/telephony/PhoneSwitcher;
    .param p2, "subscriptionController"    # Lcom/android/internal/telephony/SubscriptionController;
    .param p3, "subscriptionMonitor"    # Lcom/android/internal/telephony/SubscriptionMonitor;
    .param p4, "looper"    # Landroid/os/Looper;
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "phoneId"    # I
    .param p7, "dcTracker"    # Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TelephonyNetworkFactory["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p4, p5, v0, v1}, Landroid/net/NetworkFactory;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDefaultRequests:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSpecificRequests:Ljava/util/HashMap;

    .line 79
    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mContext:Landroid/content/Context;

    .line 80
    new-instance v0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;

    invoke-direct {v0, p0, p4}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;-><init>(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mInternalHandler:Landroid/os/Handler;

    .line 82
    invoke-direct {p0, p2, p6}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->makeNetworkFilter(Lcom/android/internal/telephony/SubscriptionController;I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->setCapabilityFilter(Landroid/net/NetworkCapabilities;)V

    .line 83
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->setScoreFilter(I)V

    .line 85
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    .line 86
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    .line 87
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionMonitor:Lcom/android/internal/telephony/SubscriptionMonitor;

    .line 88
    iput p6, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneId:I

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TelephonyNetworkFactory["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->LOG_TAG:Ljava/lang/String;

    .line 90
    iput-object p7, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    .line 93
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneId:I

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mInternalHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->registerForActivePhoneSwitch(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 96
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionId:I

    .line 97
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionMonitor:Lcom/android/internal/telephony/SubscriptionMonitor;

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneId:I

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mInternalHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/android/internal/telephony/SubscriptionMonitor;->registerForSubscriptionChanged(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 100
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionMonitor:Lcom/android/internal/telephony/SubscriptionMonitor;

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneId:I

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mInternalHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/internal/telephony/SubscriptionMonitor;->registerForDefaultDataSubscriptionChanged(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->register()V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    .line 43
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->onActivePhoneSwitch()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    .line 43
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->onSubIdChange()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    .line 43
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->onDefaultChange()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;
    .param p1, "x1"    # Landroid/os/Message;

    .line 43
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->onNeedNetworkFor(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;
    .param p1, "x1"    # Landroid/os/Message;

    .line 43
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->onReleaseNetworkFor(Landroid/os/Message;)V

    return-void
.end method

.method private applyRequests(Ljava/util/HashMap;ZLjava/lang/String;)V
    .locals 5
    .param p2, "action"    # Z
    .param p3, "logStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Landroid/net/NetworkRequest;",
            "Landroid/util/LocalLog;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 170
    .local p1, "requestMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/NetworkRequest;Landroid/util/LocalLog;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkRequest;

    .line 171
    .local v1, "networkRequest":Landroid/net/NetworkRequest;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LocalLog;

    .line 172
    .local v2, "localLog":Landroid/util/LocalLog;
    invoke-virtual {v2, p3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyRequests "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 176
    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    .line 177
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v3, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->requestNetwork(Landroid/net/NetworkRequest;Landroid/util/LocalLog;)V

    goto :goto_1

    .line 179
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v3, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->releaseNetwork(Landroid/net/NetworkRequest;Landroid/util/LocalLog;)V

    .line 181
    .end local v1    # "networkRequest":Landroid/net/NetworkRequest;
    .end local v2    # "localLog":Landroid/util/LocalLog;
    :goto_1
    goto :goto_0

    .line 182
    :cond_1
    return-void
.end method

.method private isNetworkCapabilityEims(Landroid/net/NetworkRequest;)Z
    .locals 2
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .line 236
    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    return v0
.end method

.method private isSimPresentInSecondarySlot()Z
    .locals 2

    .line 241
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method private makeNetworkFilter(I)Landroid/net/NetworkCapabilities;
    .locals 3
    .param p1, "subscriptionId"    # I

    .line 114
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 115
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 116
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 117
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 118
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 119
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 120
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 121
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 122
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 123
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 124
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 125
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 126
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 127
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 128
    new-instance v1, Landroid/net/StringNetworkSpecifier;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/StringNetworkSpecifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    .line 129
    return-object v0
.end method

.method private makeNetworkFilter(Lcom/android/internal/telephony/SubscriptionController;I)Landroid/net/NetworkCapabilities;
    .locals 2
    .param p1, "subscriptionController"    # Lcom/android/internal/telephony/SubscriptionController;
    .param p2, "phoneId"    # I

    .line 109
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 110
    .local v0, "subscriptionId":I
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->makeNetworkFilter(I)Landroid/net/NetworkCapabilities;

    move-result-object v1

    return-object v1
.end method

.method private onActivePhoneSwitch()V
    .locals 4

    .line 186
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->isPhoneActive(I)Z

    move-result v0

    .line 187
    .local v0, "newIsActive":Z
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivePhoneSwitch("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "logString":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 190
    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    if-eqz v2, :cond_0

    .line 191
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDefaultRequests:Ljava/util/HashMap;

    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    invoke-direct {p0, v2, v3, v1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->applyRequests(Ljava/util/HashMap;ZLjava/lang/String;)V

    .line 193
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSpecificRequests:Ljava/util/HashMap;

    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    invoke-direct {p0, v2, v3, v1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->applyRequests(Ljava/util/HashMap;ZLjava/lang/String;)V

    .line 194
    return-void
.end method

.method private onDefaultChange()V
    .locals 7

    .line 211
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    .line 212
    .local v0, "newDefaultSubscriptionId":I
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionId:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 213
    .local v1, "newIsDefault":Z
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDefaultChange entry("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newDefaultSubscriptionId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mSubscriptionId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 215
    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    if-eq v1, v4, :cond_3

    .line 216
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    .line 217
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDefaultChange("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, "logString":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 219
    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    if-nez v5, :cond_1

    return-void

    .line 220
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubInfoCount(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 221
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDefaultRequests:Ljava/util/HashMap;

    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->applyRequests(Ljava/util/HashMap;ZLjava/lang/String;)V

    goto :goto_1

    .line 222
    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    if-nez v3, :cond_3

    .line 223
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDefaultRequests:Ljava/util/HashMap;

    invoke-direct {p0, v3, v2, v4}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->applyRequests(Ljava/util/HashMap;ZLjava/lang/String;)V

    .line 226
    .end local v4    # "logString":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void
.end method

.method private onNeedNetworkFor(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 245
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkRequest;

    .line 246
    .local v0, "networkRequest":Landroid/net/NetworkRequest;
    const/4 v1, 0x0

    .line 247
    .local v1, "isApplicable":Z
    const/4 v2, 0x0

    .line 248
    .local v2, "localLog":Landroid/util/LocalLog;
    iget-object v3, v0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v3

    const/16 v4, 0x28

    if-nez v3, :cond_0

    .line 250
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDefaultRequests:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/util/LocalLog;

    .line 251
    if-nez v2, :cond_1

    .line 252
    new-instance v3, Landroid/util/LocalLog;

    invoke-direct {v3, v4}, Landroid/util/LocalLog;-><init>(I)V

    move-object v2, v3

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "created for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 254
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDefaultRequests:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    goto :goto_0

    .line 258
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSpecificRequests:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/util/LocalLog;

    .line 259
    if-nez v2, :cond_1

    .line 260
    new-instance v3, Landroid/util/LocalLog;

    invoke-direct {v3, v4}, Landroid/util/LocalLog;-><init>(I)V

    move-object v2, v3

    .line 261
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSpecificRequests:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const/4 v1, 0x1

    .line 267
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    if-eqz v3, :cond_2

    if-nez v1, :cond_3

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->isNetworkCapabilityEims(Landroid/net/NetworkRequest;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 268
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneId:I

    if-ne v3, v4, :cond_4

    .line 269
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->isSimPresentInSecondarySlot()Z

    move-result v3

    if-nez v3, :cond_4

    .line 270
    :cond_3
    const-string v3, "onNeedNetworkFor"

    .line 271
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 272
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 273
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v4, v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->requestNetwork(Landroid/net/NetworkRequest;Landroid/util/LocalLog;)V

    .line 274
    .end local v3    # "s":Ljava/lang/String;
    goto :goto_1

    .line 275
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not acting - isApp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isAct="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 276
    .restart local v3    # "s":Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 277
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 279
    .end local v3    # "s":Ljava/lang/String;
    :goto_1
    return-void
.end method

.method private onReleaseNetworkFor(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 289
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkRequest;

    .line 290
    .local v0, "networkRequest":Landroid/net/NetworkRequest;
    const/4 v1, 0x0

    .line 291
    .local v1, "localLog":Landroid/util/LocalLog;
    const/4 v2, 0x0

    .line 292
    .local v2, "isApplicable":Z
    iget-object v3, v0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    .line 294
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDefaultRequests:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/util/LocalLog;

    .line 295
    if-eqz v1, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    if-eqz v3, :cond_0

    move v4, v5

    nop

    :cond_0
    move v2, v4

    goto :goto_0

    .line 297
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSpecificRequests:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/util/LocalLog;

    .line 298
    if-eqz v1, :cond_2

    move v4, v5

    nop

    :cond_2
    move v2, v4

    .line 300
    :goto_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 301
    const-string v3, "onReleaseNetworkFor"

    .line 302
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 303
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 304
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->releaseNetwork(Landroid/net/NetworkRequest;Landroid/util/LocalLog;)V

    .line 305
    .end local v3    # "s":Ljava/lang/String;
    goto :goto_1

    .line 306
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not releasing - isApp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isAct="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 307
    .restart local v3    # "s":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 308
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 310
    .end local v3    # "s":Ljava/lang/String;
    :goto_1
    return-void
.end method

.method private onSubIdChange()V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 200
    .local v0, "newSubscriptionId":I
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionId:I

    if-eq v1, v0, :cond_0

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubIdChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 202
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionId:I

    .line 203
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionId:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->makeNetworkFilter(I)Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->setCapabilityFilter(Landroid/net/NetworkCapabilities;)V

    .line 205
    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 317
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 318
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mSubId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIsActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsDefault="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mIsDefault:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 320
    const-string v1, "Default Requests:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 322
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDefaultRequests:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkRequest;

    .line 323
    .local v2, "nr":Landroid/net/NetworkRequest;
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 324
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 325
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mDefaultRequests:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/LocalLog;

    invoke-virtual {v3, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 326
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 327
    .end local v2    # "nr":Landroid/net/NetworkRequest;
    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 329
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 313
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void
.end method

.method public needNetworkFor(Landroid/net/NetworkRequest;I)V
    .locals 2
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 231
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 232
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 233
    return-void
.end method

.method public releaseNetworkFor(Landroid/net/NetworkRequest;)V
    .locals 2
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .line 283
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 284
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 285
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 286
    return-void
.end method
