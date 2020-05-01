.class public Lcom/android/internal/telephony/uicc/UiccProfile;
.super Lcom/android/internal/telephony/IccCard;
.source "UiccProfile.java"


# static fields
.field private static final BUILD_DATE_PROP:Ljava/lang/String; = "ro.build.date.Ymd"

.field private static final BUILD_PRODUCT_PROP:Ljava/lang/String; = "ro.build.product"

.field private static final BUILD_VERSION_OTA_PROP:Ljava/lang/String; = "ro.build.version.ota"

.field private static final BUILD_VERSION_RELEASE_PROP:Ljava/lang/String; = "ro.build.version.release"

.field protected static final DBG:Z = true

.field private static final EE_EONS:Ljava/lang/String; = "EE"

.field public static final EVENT_APP_READY:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field private static final EVENT_CARRIER_CONFIG_CHANGED:I = 0xe

.field private static final EVENT_CARRIER_PRIVILEGES_LOADED:I = 0xd

.field private static final EVENT_CLOSE_LOGICAL_CHANNEL_DONE:I = 0x9

.field private static final EVENT_EID_READY:I = 0x6

.field private static final EVENT_ICC_LOCKED:I = 0x2

.field private static final EVENT_ICC_RECORD_EVENTS:I = 0x7

.field private static final EVENT_NETWORK_LOCKED:I = 0x5

.field private static final EVENT_OPEN_LOGICAL_CHANNEL_DONE:I = 0x8

.field private static final EVENT_RADIO_OFF_OR_UNAVAILABLE:I = 0x1

.field private static final EVENT_RECORDS_LOADED:I = 0x4

.field private static final EVENT_SIM_IO_DONE:I = 0xc

.field private static final EVENT_TRANSMIT_APDU_BASIC_CHANNEL_DONE:I = 0xb

.field private static final EVENT_TRANSMIT_APDU_LOGICAL_CHANNEL_DONE:I = 0xa

.field protected static final LOG_TAG:Ljava/lang/String; = "UiccProfile"

.field private static final OPERATOR_BRAND_OVERRIDE_PREFIX:Ljava/lang/String; = "operator_branding_"

.field private static final PRODUCT_BRAND_PROP:Ljava/lang/String; = "ro.product.brand"

.field private static final PRODUCT_MODEL_PROP:Ljava/lang/String; = "ro.product.model"

.field private static final RJIO_EONS:Ljava/lang/String; = "RJIO"

.field private static final SUPPORT_TECHNOLOGY:Ljava/lang/String; = "VoLTE-ePDG-RTT-ussd"

.field private static final TELIA_EONS:Ljava/lang/String; = "TELIA"

.field private static final TMO_EONS:Ljava/lang/String; = "TMO"

.field private static final VDBG:Z = false

.field private static final VZW_EONS:Ljava/lang/String; = "Verizon"


# instance fields
.field private mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

.field private mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

.field private mCatService:Lcom/android/internal/telephony/cat/CatService;

.field private mCdmaSubscriptionAppIndex:I

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentAppType:I

.field private mDisposed:Z

.field private mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mGsmUmtsSubscriptionAppIndex:I

.field public final mHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mImsSubscriptionAppIndex:I

.field private final mLock:Ljava/lang/Object;

.field private mNetworkLockedRegistrants:Landroid/os/RegistrantList;

.field private mOperatorBrandOverrideRegistrants:Landroid/os/RegistrantList;

.field private final mPhoneId:I

.field private final mProvisionCompleteContentObserver:Landroid/database/ContentObserver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private final mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

.field private mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/Object;)V
    .locals 6
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "ics"    # Lcom/android/internal/telephony/uicc/IccCardStatus;
    .param p4, "phoneId"    # I
    .param p5, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p6, "lock"    # Ljava/lang/Object;

    .line 253
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCard;-><init>()V

    .line 101
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mDisposed:Z

    .line 110
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    .line 111
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOperatorBrandOverrideRegistrants:Landroid/os/RegistrantList;

    .line 133
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    .line 135
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCurrentAppType:I

    .line 136
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 137
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 138
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 159
    new-instance v3, Lcom/android/internal/telephony/uicc/UiccProfile$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/uicc/UiccProfile$1;-><init>(Lcom/android/internal/telephony/uicc/UiccProfile;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mProvisionCompleteContentObserver:Landroid/database/ContentObserver;

    .line 171
    new-instance v3, Lcom/android/internal/telephony/uicc/UiccProfile$2;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/uicc/UiccProfile$2;-><init>(Lcom/android/internal/telephony/uicc/UiccProfile;)V

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 180
    new-instance v3, Lcom/android/internal/telephony/uicc/UiccProfile$3;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/uicc/UiccProfile$3;-><init>(Lcom/android/internal/telephony/uicc/UiccProfile;)V

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    .line 254
    const-string v3, "Creating profile"

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 255
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    .line 256
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 257
    iput p4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    .line 260
    invoke-static {p4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 261
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v3, :cond_1

    .line 262
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, v1, :cond_0

    move v0, v1

    nop

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setCurrentAppType(Z)V

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    instance-of v0, v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    check-cast v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x6

    invoke-virtual {v0, v4, v5, v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->registerForEidReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 269
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccProfile;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V

    .line 270
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-interface {p2, v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 271
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->resetProperties()V

    .line 273
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 274
    .local v0, "intentfilter":Landroid/content/IntentFilter;
    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 276
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/uicc/UiccProfile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/uicc/UiccProfile;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 87
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getUninstalledCarrierPackages()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/uicc/UiccProfile;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/uicc/UiccProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 87
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->onCarrierPrivilegesLoadedMessage()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/uicc/UiccProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 87
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->handleCarrierNameOverride()V

    return-void
.end method

.method static synthetic access$1300(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 87
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/uicc/UiccProfile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 87
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mDisposed:Z

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 87
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/uicc/UiccProfile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 87
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccProfile;
    .param p1, "x1"    # Ljava/lang/String;

    .line 87
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->loglocal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/uicc/UiccProfile;)Landroid/os/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/uicc/UiccProfile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 87
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCurrentAppType:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    return-object v0
.end method

.method private areReadyAppsRecordsLoaded()Z
    .locals 7

    .line 1078
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 1079
    .local v4, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v4, :cond_1

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->isSupportedApplication(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->isReady()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->isAppIgnored()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1080
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v5

    .line 1081
    .local v5, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccRecords;->isLoaded()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1083
    :cond_0
    return v2

    .line 1078
    .end local v4    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v5    # "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1090
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    nop

    :cond_3
    return v2
.end method

.method private checkAndUpdateIfAnyAppToBeIgnored()V
    .locals 8

    .line 1059
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Z

    .line 1060
    .local v0, "appReadyStateTracker":[Z
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 1061
    .local v6, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v6, :cond_0

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/UiccProfile;->isSupportedApplication(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->isReady()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1062
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v7

    aput-boolean v1, v0, v7

    .line 1060
    .end local v6    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1066
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v3, v2

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 1067
    .local v5, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v5, :cond_2

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccProfile;->isSupportedApplication(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->isReady()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1070
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v6

    aget-boolean v6, v0, v6

    if-eqz v6, :cond_2

    .line 1071
    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->setAppIgnoreState(Z)V

    .line 1066
    .end local v5    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1075
    :cond_3
    return-void
.end method

.method private checkIndexLocked(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "expectedAppType"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .param p3, "altExpectedAppType"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 1094
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1099
    :cond_0
    if-gez p1, :cond_1

    .line 1101
    return v1

    .line 1104
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    if-eq v0, p2, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v0, v0, p1

    .line 1105
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    if-eq v0, p3, :cond_2

    .line 1106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App index "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is invalid since it\'s not "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and not "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 1108
    return v1

    .line 1112
    :cond_2
    return p1

    .line 1095
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App index "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is invalid since there are no applications"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 1096
    return v1
.end method

.method private createAndUpdateCatServiceLocked()V
    .locals 3

    .line 1006
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 1008
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-nez v0, :cond_0

    .line 1009
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-static {v0, v1, p0, v2}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccProfile;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    goto :goto_0

    .line 1011
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/internal/telephony/cat/CatService;->update(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccProfile;)V

    goto :goto_0

    .line 1014
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v0, :cond_2

    .line 1015
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    .line 1017
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    .line 1019
    :goto_0
    return-void
.end method

.method private getCarrierPrivilegeRules()Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;
    .locals 2

    .line 1545
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1546
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    monitor-exit v0

    return-object v1

    .line 1547
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .line 710
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 721
    const-string v0, "UNKNOWN"

    return-object v0

    .line 720
    :pswitch_0
    const-string v0, "LOADED"

    return-object v0

    .line 719
    :pswitch_1
    const-string v0, "CARD_RESTRICTED"

    return-object v0

    .line 718
    :pswitch_2
    const-string v0, "CARD_IO_ERROR"

    return-object v0

    .line 717
    :pswitch_3
    const-string v0, "LOCKED"

    return-object v0

    .line 716
    :pswitch_4
    const-string v0, "NOT_READY"

    return-object v0

    .line 715
    :pswitch_5
    const-string v0, "READY"

    return-object v0

    .line 714
    :pswitch_6
    const-string v0, "LOCKED"

    return-object v0

    .line 713
    :pswitch_7
    const-string v0, "LOCKED"

    return-object v0

    .line 712
    :pswitch_8
    const-string v0, "LOCKED"

    return-object v0

    .line 711
    :pswitch_9
    const-string v0, "ABSENT"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

.method private getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .line 730
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 737
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 736
    :pswitch_1
    const-string v0, "CARD_RESTRICTED"

    return-object v0

    .line 735
    :pswitch_2
    const-string v0, "CARD_IO_ERROR"

    return-object v0

    .line 734
    :pswitch_3
    const-string v0, "PERM_DISABLED"

    return-object v0

    .line 733
    :pswitch_4
    const-string v0, "NETWORK"

    return-object v0

    .line 732
    :pswitch_5
    const-string v0, "PUK"

    return-object v0

    .line 731
    :pswitch_6
    const-string v0, "PIN"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getUninstalledCarrierPackages()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1219
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    .line 1220
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "carrier_app_whitelist"

    .line 1219
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1222
    .local v0, "whitelistSetting":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1223
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 1225
    :cond_0
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->parseToCertificateToPackageMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 1226
    .local v1, "certPackageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1227
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    return-object v2

    .line 1230
    :cond_1
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 1231
    .local v2, "uninstalledCarrierPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getAccessRules()Ljava/util/List;

    move-result-object v3

    .line 1232
    .local v3, "accessRules":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccAccessRule;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/UiccAccessRule;

    .line 1233
    .local v5, "accessRule":Landroid/telephony/UiccAccessRule;
    invoke-virtual {v5}, Landroid/telephony/UiccAccessRule;->getCertificateHexString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 1234
    .local v6, "certHexString":Ljava/lang/String;
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1235
    .local v7, "pkgName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-static {v8, v7}, Lcom/android/internal/telephony/uicc/UiccProfile;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1236
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1238
    .end local v5    # "accessRule":Landroid/telephony/UiccAccessRule;
    .end local v6    # "certHexString":Ljava/lang/String;
    .end local v7    # "pkgName":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 1239
    :cond_3
    return-object v2
.end method

.method private getUserAgentString(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "eons"    # Ljava/lang/String;

    .line 1699
    const-string v0, ""

    .line 1701
    .local v0, "uploadString":Ljava/lang/String;
    const-string v1, "ro.build.date.Ymd"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1702
    .local v1, "buildDate":Ljava/lang/String;
    const-string v2, "ro.build.product"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1703
    .local v2, "productName":Ljava/lang/String;
    const-string v3, "ro.build.version.ota"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1704
    .local v3, "buildVersionOta":Ljava/lang/String;
    const-string v4, "ro.build.version.release"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1705
    .local v4, "buildVersionRelease":Ljava/lang/String;
    const-string v5, "ro.product.brand"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1706
    .local v5, "deviceOemName":Ljava/lang/String;
    const-string v6, "ro.product.model"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1708
    .local v6, "modelNameFull":Ljava/lang/String;
    const-string v7, "VoLTE-ePDG-RTT-ussd"

    .line 1710
    .local v7, "supportedTechnology":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v9, 0x8a0

    if-eq v8, v9, :cond_4

    const v9, 0x144f6

    if-eq v8, v9, :cond_3

    const v9, 0x26655e

    if-eq v8, v9, :cond_2

    const v9, 0x4c03a53

    if-eq v8, v9, :cond_1

    const v9, 0x782968d3

    if-eq v8, v9, :cond_0

    goto :goto_0

    :cond_0
    const-string v8, "Verizon"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x4

    goto :goto_1

    :cond_1
    const-string v8, "TELIA"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x2

    goto :goto_1

    :cond_2
    const-string v8, "RJIO"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    const-string v8, "TMO"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x3

    goto :goto_1

    :cond_4
    const-string v8, "EE"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v8, -0x1

    :goto_1
    packed-switch v8, :pswitch_data_0

    .line 1738
    const-string v8, "getUserAgentString: Not need to set user agent."

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1733
    :pswitch_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "---"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "---"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1736
    goto/16 :goto_2

    .line 1727
    :pswitch_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "T-Mobile "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x20

    const/16 v10, 0x2f

    .line 1729
    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1731
    goto :goto_2

    .line 1722
    :pswitch_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ONEPLUS"

    const-string v10, "OnePlus"

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1725
    goto :goto_2

    .line 1717
    :pswitch_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x5f

    const/16 v10, 0x2d

    .line 1719
    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1720
    goto :goto_2

    .line 1712
    :pswitch_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " Android"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1715
    nop

    .line 1742
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getUserAgentString: User agent update string with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 1743
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleCarrierNameOverride()V
    .locals 10

    .line 342
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 343
    .local v0, "subCon":Lcom/android/internal/telephony/SubscriptionController;
    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 344
    .local v1, "subId":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subId not valid for Phone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 346
    return-void

    .line 349
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    const-string v3, "carrier_config"

    .line 350
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    .line 351
    .local v2, "configLoader":Landroid/telephony/CarrierConfigManager;
    if-nez v2, :cond_1

    .line 352
    const-string v3, "Failed to load a Carrier Config"

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 353
    return-void

    .line 358
    :cond_1
    const-string v3, "handleCarrierNameOverride() load KEY_CARRIER_NAME_OVERRIDE_BOOL & KEY_CARRIER_NAME_STRING"

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v2, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 362
    .local v3, "config":Landroid/os/PersistableBundle;
    const-string v4, "carrier_name_override_bool"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 364
    .local v4, "preferCcName":Z
    const-string v5, "carrier_name_string"

    invoke-virtual {v3, v5}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 368
    .local v5, "ccName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleCarrierNameOverride() preferCcName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", ccName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", getServiceProviderName() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getServiceProviderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 372
    const-string v6, "vendor_carrier_eons_short"

    invoke-virtual {v3, v6}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 373
    .local v6, "operatorAlphaShort":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleCarrierNameOverride() operatorAlphaShort = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 375
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 376
    const-string v7, "handleCarrierNameOverride() operatorAlphaShort is not null, try to find user agent string"

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 377
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/UiccProfile;->getUserAgentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 378
    .local v7, "userAgentString":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 379
    const-string v8, "handleCarrierNameOverride() has userAgentString, try to set user agent "

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 380
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    iget v9, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-static {v8, v9}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v8

    .line 381
    .local v8, "imsManager":Lcom/android/ims/ImsManager;
    invoke-virtual {v8, v7}, Lcom/android/ims/ImsManager;->setImsUserAgent(Ljava/lang/String;)V

    .line 392
    .end local v7    # "userAgentString":Ljava/lang/String;
    .end local v8    # "imsManager":Lcom/android/ims/ImsManager;
    :cond_2
    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getServiceProviderName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 396
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 397
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v7, :cond_3

    .line 398
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v7, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 400
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v8, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v7, v8, v5}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 401
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOperatorBrandOverrideRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v7}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 404
    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateCarrierNameForSubscription(Lcom/android/internal/telephony/SubscriptionController;I)V

    .line 405
    return-void
.end method

.method static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1171
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1173
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 1174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is installed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1175
    return v1

    .line 1176
    :catch_0
    move-exception v1

    .line 1177
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not installed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 1178
    const/4 v2, 0x0

    return v2
.end method

.method private isSupportedApplication(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z
    .locals 2
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1051
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v0, v1, :cond_0

    .line 1052
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v0, v1, :cond_0

    .line 1053
    const/4 v0, 0x0

    return v0

    .line 1055
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 1603
    const-string v0, "UiccProfile"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 1607
    const-string v0, "UiccProfile"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    return-void
.end method

.method private loglocal(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 1611
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->sLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UiccProfile["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1612
    return-void
.end method

.method private onCarrierPrivilegesLoadedMessage()V
    .locals 7

    .line 1188
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    const-string v1, "usagestats"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    .line 1190
    .local v0, "usm":Landroid/app/usage/UsageStatsManager;
    if-eqz v0, :cond_0

    .line 1191
    invoke-virtual {v0}, Landroid/app/usage/UsageStatsManager;->onCarrierPrivilegedAppsChanged()V

    .line 1194
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->hideAllNotifications(Landroid/content/Context;)V

    .line 1195
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->unregisterPackageInstallReceiver(Landroid/content/Context;)V

    .line 1197
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1198
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1199
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    .line 1200
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    .line 1199
    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    move v2, v4

    .line 1204
    .local v2, "isProvisioned":Z
    if-eqz v2, :cond_2

    .line 1205
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getUninstalledCarrierPackages()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1206
    .local v4, "pkgName":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->promptInstallCarrierApp(Ljava/lang/String;)V

    .line 1207
    .end local v4    # "pkgName":Ljava/lang/String;
    goto :goto_1

    .line 1209
    :cond_2
    const-string v4, "device_provisioned"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1210
    .local v4, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mProvisionCompleteContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v4, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1215
    .end local v2    # "isProvisioned":Z
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_3
    monitor-exit v1

    .line 1216
    return-void

    .line 1215
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static parseToCertificateToPackageMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .param p0, "whitelistSetting"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1249
    const-string v0, "\\s*;\\s*"

    .line 1250
    .local v0, "pairDelim":Ljava/lang/String;
    const-string v1, "\\s*:\\s*"

    .line 1252
    .local v1, "keyValueDelim":Ljava/lang/String;
    const-string v2, "\\s*;\\s*"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1254
    .local v2, "keyValuePairList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1255
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    return-object v3

    .line 1258
    :cond_0
    new-instance v3, Landroid/util/ArrayMap;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1259
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1260
    .local v5, "keyValueString":Ljava/lang/String;
    const-string v6, "\\s*:\\s*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1262
    .local v6, "keyValue":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 1263
    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1265
    :cond_1
    const-string v7, "Incorrect length of key-value pair in carrier app whitelist map.  Length should be exactly 2"

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 1268
    .end local v5    # "keyValueString":Ljava/lang/String;
    .end local v6    # "keyValue":[Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 1270
    :cond_2
    return-object v3
.end method

.method private promptInstallCarrierApp(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1183
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/InstallCarrierAppTrampolineActivity;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1184
    .local v0, "showDialogIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1185
    return-void
.end method

.method private registerAllAppEvents()V
    .locals 8

    .line 583
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 584
    .local v3, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v3, :cond_0

    .line 586
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 587
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    .line 588
    .local v4, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v4, :cond_0

    .line 590
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x4

    invoke-virtual {v4, v5, v7, v6}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 591
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x7

    invoke-virtual {v4, v5, v7, v6}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 583
    .end local v3    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v4    # "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 595
    :cond_1
    return-void
.end method

.method private registerCurrAppEvents()V
    .locals 4

    .line 612
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForLockedRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 614
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForNetworkLockedRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 616
    :cond_0
    return-void
.end method

.method private sanitizeApplicationIndexesLocked()V
    .locals 3

    .line 1032
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mGsmUmtsSubscriptionAppIndex:I

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 1033
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->checkIndexLocked(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mGsmUmtsSubscriptionAppIndex:I

    .line 1035
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCdmaSubscriptionAppIndex:I

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 1036
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->checkIndexLocked(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCdmaSubscriptionAppIndex:I

    .line 1038
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mImsSubscriptionAppIndex:I

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 1039
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->checkIndexLocked(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mImsSubscriptionAppIndex:I

    .line 1040
    return-void
.end method

.method private setCurrentAppType(Z)V
    .locals 2
    .param p1, "isGsm"    # Z

    .line 328
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 329
    if-eqz p1, :cond_0

    .line 330
    const/4 v1, 0x1

    :try_start_0
    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCurrentAppType:I

    goto :goto_0

    .line 334
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 332
    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCurrentAppType:I

    .line 334
    :goto_0
    monitor-exit v0

    .line 335
    return-void

    .line 334
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1
    .param p1, "newState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .line 693
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V

    .line 694
    return-void
.end method

.method private setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V
    .locals 6
    .param p1, "newState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "override"    # Z

    .line 626
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 627
    :try_start_0
    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExternalState: mPhoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is invalid; Return!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 629
    monitor-exit v0

    return-void

    .line 633
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v1, :cond_3

    .line 635
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_3

    .line 636
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 637
    .local v1, "operator":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setExternalState: operator="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mPhoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 639
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 640
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v2, v3, v1}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 641
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 642
    .local v2, "countryCode":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 643
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    .line 644
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v5

    .line 643
    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    goto :goto_0

    .line 646
    :cond_1
    const-string v3, "setExternalState: state LOADED; Country code is null"

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 648
    .end local v2    # "countryCode":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 649
    :cond_2
    const-string v2, "setExternalState: state LOADED; Operator name is null"

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 655
    .end local v1    # "operator":Ljava/lang/String;
    :cond_3
    :goto_1
    if-nez p2, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v1, :cond_4

    .line 656
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExternalState: !override and newstate unchanged from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 657
    monitor-exit v0

    return-void

    .line 659
    :cond_4
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 684
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExternalState: set mPhoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mExternalState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 685
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->setSimStateForPhone(ILjava/lang/String;)V

    .line 687
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 688
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    .line 687
    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->updateInternalIccState(Ljava/lang/String;Ljava/lang/String;I)V

    .line 689
    monitor-exit v0

    .line 690
    return-void

    .line 689
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private unregisterAllAppEvents()V
    .locals 6

    .line 598
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 599
    .local v3, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v3, :cond_0

    .line 600
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 601
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    .line 602
    .local v4, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v4, :cond_0

    .line 603
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 604
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsEvents(Landroid/os/Handler;)V

    .line 598
    .end local v3    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v4    # "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 608
    :cond_1
    return-void
.end method

.method private unregisterCurrAppEvents()V
    .locals 2

    .line 619
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForLockedRecordsLoaded(Landroid/os/Handler;)V

    .line 621
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForNetworkLockedRecordsLoaded(Landroid/os/Handler;)V

    .line 623
    :cond_0
    return-void
.end method

.method private updateCarrierNameForSubscription(Lcom/android/internal/telephony/SubscriptionController;I)V
    .locals 5
    .param p1, "subCon"    # Lcom/android/internal/telephony/SubscriptionController;
    .param p2, "subId"    # I

    .line 409
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    .line 410
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfo(ILjava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 412
    .local v0, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 418
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 419
    .local v1, "oldSubName":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, p2}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v2

    .line 421
    .local v2, "newCarrierName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 422
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sim name["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p1, v2, p2}, Lcom/android/internal/telephony/SubscriptionController;->setDisplayName(Ljava/lang/String;I)I

    .line 425
    :cond_1
    return-void

    .line 415
    .end local v1    # "oldSubName":Ljava/lang/CharSequence;
    .end local v2    # "newCarrierName":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void
.end method

.method private updateIccAvailability(Z)V
    .locals 4
    .param p1, "allAppsChanged"    # Z

    .line 428
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 430
    const/4 v1, 0x0

    .line 431
    .local v1, "newRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :try_start_0
    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCurrentAppType:I

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    .line 432
    .local v2, "newApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v2, :cond_0

    .line 433
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    move-object v1, v3

    .line 436
    :cond_0
    if-eqz p1, :cond_1

    .line 437
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->unregisterAllAppEvents()V

    .line 438
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->registerAllAppEvents()V

    .line 441
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-ne v3, v1, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v3, v2, :cond_3

    .line 442
    :cond_2
    const-string v3, "Icc changed. Reregistering."

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 443
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->unregisterCurrAppEvents()V

    .line 444
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 445
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 446
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->registerCurrAppEvents()V

    .line 448
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateExternalState()V

    .line 449
    .end local v1    # "newRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v2    # "newApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    monitor-exit v0

    .line 450
    return-void

    .line 449
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public areCarrierPriviligeRulesLoaded()Z
    .locals 2

    .line 1468
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeRules()Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    move-result-object v0

    .line 1469
    .local v0, "carrierPrivilegeRules":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;
    if-eqz v0, :cond_1

    .line 1470
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->areCarrierPriviligeRulesLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 1469
    :goto_1
    return v1
.end method

.method public changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 921
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 922
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    .line 923
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 924
    :cond_0
    if-eqz p3, :cond_1

    .line 925
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ICC card is absent."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 926
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v1, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 927
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 928
    monitor-exit v0

    return-void

    .line 930
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 931
    return-void

    .line 930
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 907
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 908
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    .line 909
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 910
    :cond_0
    if-eqz p3, :cond_1

    .line 911
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ICC card is absent."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 912
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v1, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 913
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 914
    monitor-exit v0

    return-void

    .line 916
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 917
    return-void

    .line 916
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dispose()V
    .locals 5

    .line 282
    const-string v0, "Disposing profile"

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    instance-of v0, v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    check-cast v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->unregisterForEidReady(Landroid/os/Handler;)V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->unregisterAllAppEvents()V

    .line 291
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->unregisterCurrAppEvents()V

    .line 293
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->hideAllNotifications(Landroid/content/Context;)V

    .line 294
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->unregisterPackageInstallReceiver(Landroid/content/Context;)V

    .line 296
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 297
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 299
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    .line 300
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 301
    .local v4, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v4, :cond_2

    .line 302
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dispose()V

    .line 300
    .end local v4    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 305
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    .line 306
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 307
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    .line 308
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mDisposed:Z

    .line 309
    monitor-exit v0

    .line 310
    return-void

    .line 309
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1627
    const-string v0, "UiccProfile:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCatService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1630
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1631
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mCarrierPrivilegeRegistrants["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    .line 1632
    invoke-virtual {v3, v1}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Registrant;

    invoke-virtual {v3}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1631
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1630
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1634
    .end local v1    # "i":I
    :cond_0
    move v1, v0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOperatorBrandOverrideRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1635
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mOperatorBrandOverrideRegistrants["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOperatorBrandOverrideRegistrants:Landroid/os/RegistrantList;

    .line 1636
    invoke-virtual {v3, v1}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Registrant;

    invoke-virtual {v3}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1635
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1634
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1638
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mUniversalPinState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1639
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mGsmUmtsSubscriptionAppIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mGsmUmtsSubscriptionAppIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1640
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCdmaSubscriptionAppIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCdmaSubscriptionAppIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1641
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mImsSubscriptionAppIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mImsSubscriptionAppIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mUiccApplications: length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1643
    move v1, v0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 1644
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    .line 1645
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mUiccApplications["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 1647
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mUiccApplications["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v3, v3, v1

    .line 1648
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1647
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1643
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1651
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1653
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v2, v1

    move v3, v0

    :goto_4
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    .line 1654
    .local v4, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v4, :cond_4

    .line 1655
    invoke-virtual {v4, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1656
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1653
    .end local v4    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1660
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v2, v1

    move v3, v0

    :goto_5
    if-ge v3, v2, :cond_7

    aget-object v4, v1, v3

    .line 1661
    .restart local v4    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v4, :cond_6

    .line 1662
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v5

    .line 1663
    .local v5, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v5, :cond_6

    .line 1664
    invoke-virtual {v5, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1665
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1660
    .end local v4    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v5    # "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1670
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-nez v1, :cond_8

    .line 1671
    const-string v1, " mCarrierPrivilegeRules: null"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 1673
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCarrierPrivilegeRules: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1674
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1676
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCarrierPrivilegeRegistrants: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1677
    move v1, v0

    .restart local v1    # "i":I
    :goto_7
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 1678
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mCarrierPrivilegeRegistrants["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    .line 1679
    invoke-virtual {v3, v1}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Registrant;

    invoke-virtual {v3}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1678
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1677
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1681
    .end local v1    # "i":I
    :cond_9
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1683
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mNetworkLockedRegistrants: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1684
    nop

    .local v0, "i":I
    :goto_8
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 1685
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNetworkLockedRegistrants["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    .line 1686
    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Registrant;

    invoke-virtual {v2}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1685
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1684
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1688
    .end local v0    # "i":I
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurrentAppType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCurrentAppType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUiccCard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUiccApplication="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIccRecords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mExternalState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1693
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1694
    return-void
.end method

.method protected finalize()V
    .locals 1

    .line 1023
    const-string v0, "UiccProfile finalized"

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 1024
    return-void
.end method

.method public getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3
    .param p1, "family"    # I

    .line 1305
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1306
    const/16 v1, 0x8

    .line 1307
    .local v1, "index":I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1315
    :pswitch_0
    :try_start_0
    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mImsSubscriptionAppIndex:I

    move v1, v2

    goto :goto_0

    .line 1312
    :pswitch_1
    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCdmaSubscriptionAppIndex:I

    move v1, v2

    .line 1313
    goto :goto_0

    .line 1309
    :pswitch_2
    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mGsmUmtsSubscriptionAppIndex:I

    move v1, v2

    .line 1310
    goto :goto_0

    .line 1322
    .end local v1    # "index":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1318
    .restart local v1    # "index":I
    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1319
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v2, v2, v1

    monitor-exit v0

    return-object v2

    .line 1321
    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 1322
    .end local v1    # "index":I
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getApplicationByType(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3
    .param p1, "type"    # I

    .line 1348
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1349
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1350
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v2, v2, v1

    .line 1351
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1352
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v2, v2, v1

    monitor-exit v0

    return-object v2

    .line 1349
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1355
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 1356
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 2
    .param p1, "index"    # I

    .line 1332
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1333
    if-ltz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 1334
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, p1

    monitor-exit v0

    return-object v1

    .line 1337
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1336
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 1337
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;
    .locals 2
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1537
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeRules()Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    move-result-object v0

    .line 1538
    .local v0, "carrierPrivilegeRules":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1539
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    .line 1538
    :goto_0
    return-object v1
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I
    .locals 2
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 1505
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeRules()Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    move-result-object v0

    .line 1506
    .local v0, "carrierPrivilegeRules":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;
    if-nez v0, :cond_0

    .line 1507
    const/4 v1, -0x1

    goto :goto_0

    .line 1508
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I

    move-result v1

    .line 1506
    :goto_0
    return v1
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .locals 2
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1495
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeRules()Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    move-result-object v0

    .line 1496
    .local v0, "carrierPrivilegeRules":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;
    if-nez v0, :cond_0

    .line 1497
    const/4 v1, -0x1

    goto :goto_0

    .line 1498
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v1

    .line 1496
    :goto_0
    return v1
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I
    .locals 2
    .param p1, "signature"    # Landroid/content/pm/Signature;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1485
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeRules()Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    move-result-object v0

    .line 1486
    .local v0, "carrierPrivilegeRules":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;
    if-nez v0, :cond_0

    .line 1487
    const/4 v1, -0x1

    goto :goto_0

    .line 1488
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I

    move-result v1

    .line 1486
    :goto_0
    return v1
.end method

.method public getCarrierPrivilegeStatusForCurrentTransaction(Landroid/content/pm/PackageManager;)I
    .locals 2
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 1515
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeRules()Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    move-result-object v0

    .line 1516
    .local v0, "carrierPrivilegeRules":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;
    if-nez v0, :cond_0

    .line 1517
    const/4 v1, -0x1

    goto :goto_0

    .line 1518
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatusForCurrentTransaction(Landroid/content/pm/PackageManager;)I

    move-result v1

    .line 1516
    :goto_0
    return v1
.end method

.method public getCarrierPrivilegeStatusForUid(Landroid/content/pm/PackageManager;I)I
    .locals 2
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "uid"    # I

    .line 1526
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeRules()Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    move-result-object v0

    .line 1527
    .local v0, "carrierPrivilegeRules":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;
    if-nez v0, :cond_0

    .line 1528
    const/4 v1, -0x1

    goto :goto_0

    .line 1529
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatusForUid(Landroid/content/pm/PackageManager;I)I

    move-result v1

    .line 1527
    :goto_0
    return v1
.end method

.method public getIccFdnEnabled()Z
    .locals 2

    .line 860
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 861
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFdnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 862
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIccId()Ljava/lang/String;
    .locals 6

    .line 1591
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1592
    .local v3, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v3, :cond_0

    .line 1593
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    .line 1594
    .local v4, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1595
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1591
    .end local v3    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v4    # "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1599
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccLockEnabled()Z
    .locals 2

    .line 852
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 854
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccLockEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 855
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIccPin2Blocked()Z
    .locals 1

    .line 868
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccPin2Blocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIccPuk2Blocked()Z
    .locals 1

    .line 874
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccPuk2Blocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 2

    .line 751
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 752
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    monitor-exit v0

    return-object v1

    .line 753
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIccRecordsLoaded()Z
    .locals 2

    .line 701
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 702
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_0

    .line 703
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 705
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 706
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNumApplications()I
    .locals 5

    .line 1448
    const/4 v0, 0x0

    .line 1449
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1450
    .local v4, "a":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v4, :cond_0

    .line 1451
    add-int/lit8 v0, v0, 0x1

    .line 1449
    .end local v4    # "a":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1454
    :cond_1
    return v0
.end method

.method public getOperatorBrandOverride()Ljava/lang/String;
    .locals 5

    .line 1578
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccId()Ljava/lang/String;

    move-result-object v0

    .line 1579
    .local v0, "iccId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1580
    return-object v2

    .line 1582
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1583
    .local v1, "sp":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operator_branding_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getPhoneId()I
    .locals 1

    .line 1461
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    return v0
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 2

    .line 935
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 936
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_0

    .line 937
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 939
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 940
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getState()Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 2

    .line 744
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 745
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    monitor-exit v0

    return-object v1

    .line 746
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUniversalPinState()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    .locals 2

    .line 1293
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1294
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    monitor-exit v0

    return-object v1

    .line 1295
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasCarrierPrivilegeRules()Z
    .locals 2

    .line 1477
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeRules()Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    move-result-object v0

    .line 1478
    .local v0, "carrierPrivilegeRules":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->hasCarrierPrivilegeRules()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasIccCard()Z
    .locals 2

    .line 946
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v0, v1, :cond_0

    .line 948
    const/4 v0, 0x1

    return v0

    .line 950
    :cond_0
    const-string v0, "hasIccCard: UiccProfile is not null but UiccCard is null or card state is ABSENT"

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 952
    const/4 v0, 0x0

    return v0
.end method

.method public iccCloseLogicalChannel(ILandroid/os/Message;)V
    .locals 3
    .param p1, "channel"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iccCloseLogicalChannel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loglocal(Ljava/lang/String;)V

    .line 1406
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    .line 1407
    const/16 v2, 0x9

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1406
    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->iccCloseLogicalChannel(ILandroid/os/Message;)V

    .line 1408
    return-void
.end method

.method public iccExchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 12
    .param p1, "fileID"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "pathID"    # Ljava/lang/String;
    .param p7, "response"    # Landroid/os/Message;

    move-object v0, p0

    .line 1433
    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    .line 1434
    const/16 v3, 0xc

    move-object/from16 v11, p7

    invoke-virtual {v2, v3, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 1433
    const/4 v8, 0x0

    const/4 v9, 0x0

    move v2, p2

    move v3, p1

    move-object/from16 v4, p6

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1435
    return-void
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "p2"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 1395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iccOpenLogicalChannel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " by pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1396
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1395
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loglocal(Ljava/lang/String;)V

    .line 1397
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    .line 1398
    const/16 v2, 0x8

    invoke-virtual {v1, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1397
    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V

    .line 1399
    return-void
.end method

.method public iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;
    .param p7, "response"    # Landroid/os/Message;

    .line 1424
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    .line 1425
    const/16 v2, 0xb

    invoke-virtual {v1, v2, p7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 1424
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V

    .line 1426
    return-void
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "channel"    # I
    .param p2, "cla"    # I
    .param p3, "command"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "response"    # Landroid/os/Message;

    move-object v0, p0

    .line 1415
    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    .line 1416
    const/16 v3, 0xa

    move-object/from16 v10, p8

    invoke-virtual {v2, v3, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 1415
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V

    .line 1417
    return-void
.end method

.method public isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z
    .locals 4
    .param p1, "type"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 1279
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1280
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 1281
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 1282
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 1280
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1285
    .end local v2    # "i":I
    :cond_1
    monitor-exit v0

    return v1

    .line 1286
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public refresh()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1620
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1621
    return-void
.end method

.method public registerForCarrierPrivilegeRulesLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1137
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1138
    :try_start_0
    new-instance v1, Landroid/os/Registrant;

    invoke-direct {v1, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1140
    .local v1, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v1}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1142
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->areCarrierPriviligeRulesLoaded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1143
    invoke-virtual {v1}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1145
    .end local v1    # "r":Landroid/os/Registrant;
    :cond_0
    monitor-exit v0

    .line 1146
    return-void

    .line 1145
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 761
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 762
    :try_start_0
    new-instance v1, Landroid/os/Registrant;

    invoke-direct {v1, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 764
    .local v1, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v1}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 766
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_0

    .line 767
    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v3

    .line 768
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v3

    .line 767
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 770
    .end local v1    # "r":Landroid/os/Registrant;
    :cond_0
    monitor-exit v0

    .line 771
    return-void

    .line 770
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForOpertorBrandOverride(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1123
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1124
    :try_start_0
    new-instance v1, Landroid/os/Registrant;

    invoke-direct {v1, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1125
    .local v1, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOperatorBrandOverrideRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v1}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1126
    .end local v1    # "r":Landroid/os/Registrant;
    monitor-exit v0

    .line 1127
    return-void

    .line 1126
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetAppWithAid(Ljava/lang/String;)Z
    .locals 5
    .param p1, "aid"    # Ljava/lang/String;

    .line 1365
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1366
    const/4 v1, 0x0

    .line 1367
    .local v1, "changed":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v3, v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_2

    .line 1368
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    .line 1369
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1371
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dispose()V

    .line 1372
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aput-object v4, v3, v2

    .line 1373
    const/4 v1, 0x1

    .line 1367
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1376
    .end local v2    # "i":I
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1377
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-eqz v2, :cond_3

    .line 1378
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    .line 1379
    const/4 v1, 0x1

    .line 1381
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v2, :cond_4

    .line 1382
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    .line 1383
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    .line 1384
    const/4 v1, 0x1

    .line 1387
    :cond_4
    monitor-exit v0

    return v1

    .line 1388
    .end local v1    # "changed":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resetProperties()V
    .locals 3

    .line 453
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCurrentAppType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 454
    const-string v0, "update icc_operator_numeric="

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 459
    :cond_0
    return-void
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 1441
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V

    .line 1442
    return-void
.end method

.method public setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 893
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 894
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    .line 895
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 896
    :cond_0
    if-eqz p3, :cond_1

    .line 897
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ICC card is absent."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 898
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v1, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 899
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 900
    monitor-exit v0

    return-void

    .line 902
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 903
    return-void

    .line 902
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 879
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 880
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    .line 881
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 882
    :cond_0
    if-eqz p3, :cond_1

    .line 883
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ICC card is absent."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 884
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v1, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 885
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 886
    monitor-exit v0

    return-void

    .line 888
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 889
    return-void

    .line 888
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setOperatorBrandOverride(Ljava/lang/String;)Z
    .locals 4
    .param p1, "brand"    # Ljava/lang/String;

    .line 1554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOperatorBrandOverride: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 1555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current iccId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 1557
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccId()Ljava/lang/String;

    move-result-object v0

    .line 1558
    .local v0, "iccId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1559
    const/4 v1, 0x0

    return v1

    .line 1562
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    .line 1563
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1564
    .local v1, "spEditor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator_branding_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1565
    .local v2, "key":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 1566
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 1568
    :cond_1
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1570
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOperatorBrandOverrideRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1571
    const/4 v3, 0x1

    return v3
.end method

.method public setVoiceRadioTech(I)V
    .locals 3
    .param p1, "radioTech"    # I

    .line 317
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 319
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting radio tech "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 321
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->setCurrentAppType(Z)V

    .line 322
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateIccAvailability(Z)V

    .line 323
    monitor-exit v0

    .line 324
    return-void

    .line 323
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 838
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 839
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    .line 840
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 841
    :cond_0
    if-eqz p2, :cond_1

    .line 842
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CommandsInterface is not set."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 843
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v1, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 844
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 845
    monitor-exit v0

    return-void

    .line 847
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 848
    return-void

    .line 847
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 782
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 783
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    .line 784
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPin(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 785
    :cond_0
    if-eqz p2, :cond_1

    .line 786
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ICC card is absent."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 787
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v1, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 788
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 789
    monitor-exit v0

    return-void

    .line 791
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 792
    return-void

    .line 791
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "pin2"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 810
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 811
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    .line 812
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPin2(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 813
    :cond_0
    if-eqz p2, :cond_1

    .line 814
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ICC card is absent."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 815
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v1, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 816
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 817
    monitor-exit v0

    return-void

    .line 819
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 820
    return-void

    .line 819
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 796
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 797
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    .line 798
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 799
    :cond_0
    if-eqz p3, :cond_1

    .line 800
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ICC card is absent."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 801
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v1, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 802
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 803
    monitor-exit v0

    return-void

    .line 805
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 806
    return-void

    .line 805
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 824
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 825
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    .line 826
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 827
    :cond_0
    if-eqz p3, :cond_1

    .line 828
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ICC card is absent."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 829
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v1, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 830
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 831
    monitor-exit v0

    return-void

    .line 833
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 834
    return-void

    .line 833
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterForCarrierPrivilegeRulesLoaded(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 1154
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1155
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1156
    monitor-exit v0

    .line 1157
    return-void

    .line 1156
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterForNetworkLocked(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 775
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 776
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 777
    monitor-exit v0

    .line 778
    return-void

    .line 777
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterForOperatorBrandOverride(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 1165
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1166
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOperatorBrandOverrideRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1167
    monitor-exit v0

    .line 1168
    return-void

    .line 1167
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V
    .locals 7
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "ics"    # Lcom/android/internal/telephony/uicc/IccCardStatus;

    .line 959
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 960
    :try_start_0
    iget-object v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 961
    iget v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mGsmUmtsSubscriptionAppIndex:I

    .line 962
    iget v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCdmaSubscriptionAppIndex:I

    .line 963
    iget v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mImsSubscriptionAppIndex:I

    .line 964
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    .line 965
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 966
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 970
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " applications"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 971
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v2, v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_3

    .line 972
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    .line 974
    iget-object v2, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 975
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    new-instance v3, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget-object v4, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;-><init>(Lcom/android/internal/telephony/uicc/UiccProfile;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    aput-object v3, v2, v1

    goto :goto_1

    .line 978
    :cond_0
    iget-object v2, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 980
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dispose()V

    .line 981
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aput-object v3, v2, v1

    goto :goto_1

    .line 984
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v2, v2, v1

    iget-object v3, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->update(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 971
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 988
    .end local v1    # "i":I
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->createAndUpdateCatServiceLocked()V

    .line 991
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Before privilege rules: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 992
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-nez v1, :cond_4

    iget-object v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v1, v2, :cond_4

    .line 993
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    .line 994
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;-><init>(Lcom/android/internal/telephony/uicc/UiccProfile;Landroid/os/Message;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    goto :goto_2

    .line 995
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-eqz v1, :cond_5

    iget-object v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v1, v2, :cond_5

    .line 997
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    .line 1000
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->sanitizeApplicationIndexesLocked()V

    .line 1001
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateIccAvailability(Z)V

    .line 1002
    monitor-exit v0

    .line 1003
    return-void

    .line 1002
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateExternalState()V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 467
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v0, v1, :cond_0

    .line 468
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 469
    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_RESTRICTED:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v0, v1, :cond_1

    .line 473
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_RESTRICTED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 474
    return-void

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    instance-of v0, v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    check-cast v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getEid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 478
    const-string v0, "EID is not ready yet."

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 479
    return-void

    .line 484
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-nez v0, :cond_3

    .line 485
    const-string v0, "updateExternalState: setting state to NOT_READY because mUiccApplication is null"

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 487
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 488
    return-void

    .line 492
    :cond_3
    const/4 v0, 0x0

    .line 493
    .local v0, "cardLocked":Z
    const/4 v1, 0x0

    .line 494
    .local v1, "lockedState":Lcom/android/internal/telephony/IccCardConstants$State;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v2

    .line 496
    .local v2, "appState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPin1State()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v3

    .line 497
    .local v3, "pin1State":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-ne v3, v4, :cond_4

    .line 499
    const/4 v0, 0x1

    .line 500
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 502
    :cond_4
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v2, v4, :cond_5

    .line 504
    const/4 v0, 0x1

    .line 505
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 506
    :cond_5
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v2, v4, :cond_6

    .line 508
    const/4 v0, 0x1

    .line 509
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 510
    :cond_6
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v2, v4, :cond_8

    .line 511
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->isPersoLocked()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 513
    const/4 v0, 0x1

    .line 514
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 519
    :cond_7
    const-string v4, "setExternalState to UNKNOWN due to receive APPSTATE_SUBSCRIPTION_PERSO and isPersoLocked is false"

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 520
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 528
    :cond_8
    :goto_0
    if-eqz v0, :cond_b

    .line 529
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->getLockedRecordsLoaded()Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 530
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->getNetworkLockedRecordsLoaded()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 535
    :cond_9
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_1

    .line 541
    :cond_a
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 543
    :goto_1
    return-void

    .line 547
    :cond_b
    sget-object v4, Lcom/android/internal/telephony/uicc/UiccProfile$4;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppState:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_2

    .line 565
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->checkAndUpdateIfAnyAppToBeIgnored()V

    .line 566
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->areReadyAppsRecordsLoaded()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->areCarrierPriviligeRulesLoaded()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 568
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_2

    .line 575
    :cond_c
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_2

    .line 562
    :pswitch_1
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 563
    nop

    .line 579
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
