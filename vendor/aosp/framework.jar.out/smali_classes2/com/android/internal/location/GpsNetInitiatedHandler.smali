.class public Lcom/android/internal/location/GpsNetInitiatedHandler;
.super Ljava/lang/Object;
.source "GpsNetInitiatedHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiResponse;,
        Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    }
.end annotation


# static fields
.field public static final ACTION_NI_VERIFY:Ljava/lang/String; = "android.intent.action.NETWORK_INITIATED_VERIFY"

.field private static final DEBUG:Z

.field public static final GPS_ENC_NONE:I = 0x0

.field public static final GPS_ENC_SUPL_GSM_DEFAULT:I = 0x1

.field public static final GPS_ENC_SUPL_UCS2:I = 0x3

.field public static final GPS_ENC_SUPL_UTF8:I = 0x2

.field public static final GPS_ENC_UNKNOWN:I = -0x1

.field public static final GPS_NI_NEED_NOTIFY:I = 0x1

.field public static final GPS_NI_NEED_VERIFY:I = 0x2

.field public static final GPS_NI_PRIVACY_OVERRIDE:I = 0x4

.field public static final GPS_NI_RESPONSE_ACCEPT:I = 0x1

.field public static final GPS_NI_RESPONSE_DENY:I = 0x2

.field public static final GPS_NI_RESPONSE_IGNORE:I = 0x4

.field public static final GPS_NI_RESPONSE_NORESP:I = 0x3

.field public static final GPS_NI_TYPE_EMERGENCY_SUPL:I = 0x4

.field public static final GPS_NI_TYPE_UMTS_CTRL_PLANE:I = 0x3

.field public static final GPS_NI_TYPE_UMTS_SUPL:I = 0x2

.field public static final GPS_NI_TYPE_VOICE:I = 0x1

.field private static final MAX_EMERGENCY_MODE_EXTENSION_SECONDS:I = 0x12c

.field public static final NI_EXTRA_CMD_NOTIF_ID:Ljava/lang/String; = "notif_id"

.field public static final NI_EXTRA_CMD_RESPONSE:Ljava/lang/String; = "response"

.field public static final NI_INTENT_KEY_DEFAULT_RESPONSE:Ljava/lang/String; = "default_resp"

.field public static final NI_INTENT_KEY_MESSAGE:Ljava/lang/String; = "message"

.field public static final NI_INTENT_KEY_NOTIF_ID:Ljava/lang/String; = "notif_id"

.field public static final NI_INTENT_KEY_TIMEOUT:Ljava/lang/String; = "timeout"

.field public static final NI_INTENT_KEY_TITLE:Ljava/lang/String; = "title"

.field public static final NI_RESPONSE_EXTRA_CMD:Ljava/lang/String; = "send_ni_response"

.field private static final TAG:Ljava/lang/String; = "GpsNetInitiatedHandler"

.field private static mIsHexInput:Z


# instance fields
.field private final mBroadcastReciever:Landroid/content/BroadcastReceiver;

.field private mCallEndElapsedRealtimeMillis:J

.field private final mContext:Landroid/content/Context;

.field private mEmergencyExtensionMillis:J

.field private volatile mIsInEmergencyCall:Z

.field private volatile mIsLocationEnabled:Z

.field private volatile mIsSuplEsEnabled:Z

.field private final mLocationManager:Landroid/location/LocationManager;

.field private final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private mNiNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPlaySounds:Z

.field private mPopupImmediately:Z

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    const-string v0, "GpsNetInitiatedHandler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/location/GpsNetInitiatedHandler;->DEBUG:Z

    .line 127
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsHexInput:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/INetInitiatedListener;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netInitiatedListener"    # Landroid/location/INetInitiatedListener;
    .param p3, "isSuplEsEnabled"    # Z

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mPlaySounds:Z

    .line 113
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mPopupImmediately:Z

    .line 122
    iput-boolean v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsLocationEnabled:Z

    .line 130
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mCallEndElapsedRealtimeMillis:J

    .line 131
    iput-wide v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencyExtensionMillis:J

    .line 153
    new-instance v0, Lcom/android/internal/location/GpsNetInitiatedHandler$1;

    invoke-direct {v0, p0}, Lcom/android/internal/location/GpsNetInitiatedHandler$1;-><init>(Lcom/android/internal/location/GpsNetInitiatedHandler;)V

    iput-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    .line 185
    iput-object p1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    .line 187
    if-eqz p2, :cond_0

    .line 190
    iput-object p2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 193
    invoke-virtual {p0, p3}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setSuplEsEnabled(Z)V

    .line 194
    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mLocationManager:Landroid/location/LocationManager;

    .line 195
    invoke-virtual {p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->updateLocationMode()V

    .line 196
    const-string/jumbo v0, "phone"

    .line 197
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 199
    new-instance v0, Lcom/android/internal/location/GpsNetInitiatedHandler$2;

    invoke-direct {v0, p0}, Lcom/android/internal/location/GpsNetInitiatedHandler$2;-><init>(Lcom/android/internal/location/GpsNetInitiatedHandler;)V

    iput-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 212
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 214
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 215
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    const-string v1, "android.location.MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 218
    return-void

    .line 188
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "netInitiatedListener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/android/internal/location/GpsNetInitiatedHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 54
    iget-boolean v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsInEmergencyCall:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/location/GpsNetInitiatedHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/location/GpsNetInitiatedHandler;
    .param p1, "x1"    # Z

    .line 54
    iput-boolean p1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsInEmergencyCall:Z

    return p1
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 54
    sget-boolean v0, Lcom/android/internal/location/GpsNetInitiatedHandler;->DEBUG:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/location/GpsNetInitiatedHandler;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/location/GpsNetInitiatedHandler;
    .param p1, "x1"    # J

    .line 54
    iput-wide p1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mCallEndElapsedRealtimeMillis:J

    return-wide p1
.end method

.method static decodeGSMPackedString([B)Ljava/lang/String;
    .locals 6
    .param p0, "input"    # [B

    .line 488
    const/4 v0, 0x0

    .line 489
    .local v0, "PADDING_CHAR":C
    array-length v1, p0

    .line 490
    .local v1, "lengthBytes":I
    mul-int/lit8 v2, v1, 0x8

    div-int/lit8 v2, v2, 0x7

    .line 497
    .local v2, "lengthSeptets":I
    rem-int/lit8 v3, v1, 0x7

    if-nez v3, :cond_0

    .line 498
    if-lez v1, :cond_0

    .line 499
    add-int/lit8 v3, v1, -0x1

    aget-byte v3, p0, v3

    shr-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    .line 500
    add-int/lit8 v2, v2, -0x1

    .line 505
    :cond_0
    const/4 v3, 0x0

    invoke-static {p0, v3, v2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v3

    .line 508
    .local v3, "decoded":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 509
    const-string v4, "GpsNetInitiatedHandler"

    const-string v5, "Decoding of GSM packed string failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const-string v3, ""

    .line 513
    :cond_1
    return-object v3
.end method

.method private static decodeString(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 5
    .param p0, "original"    # Ljava/lang/String;
    .param p1, "isHex"    # Z
    .param p2, "coding"    # I

    .line 556
    move-object v0, p0

    .line 557
    .local v0, "decoded":Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->stringToByteArray(Ljava/lang/String;Z)[B

    move-result-object v1

    .line 559
    .local v1, "input":[B
    packed-switch p2, :pswitch_data_0

    .line 581
    const-string v2, "GpsNetInitiatedHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown encoding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for NI text "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 573
    :pswitch_0
    invoke-static {v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->decodeUCS2String([B)Ljava/lang/String;

    move-result-object v0

    .line 574
    goto :goto_0

    .line 569
    :pswitch_1
    invoke-static {v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->decodeUTF8String([B)Ljava/lang/String;

    move-result-object v0

    .line 570
    goto :goto_0

    .line 565
    :pswitch_2
    invoke-static {v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->decodeGSMPackedString([B)Ljava/lang/String;

    move-result-object v0

    .line 566
    goto :goto_0

    .line 561
    :pswitch_3
    move-object v0, p0

    .line 562
    goto :goto_0

    .line 577
    :pswitch_4
    move-object v0, p0

    .line 578
    nop

    .line 584
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static decodeUCS2String([B)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # [B

    .line 531
    const-string v0, ""

    .line 533
    .local v0, "decoded":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-16"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 538
    nop

    .line 539
    return-object v0

    .line 535
    :catch_0
    move-exception v1

    .line 537
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method static decodeUTF8String([B)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # [B

    .line 518
    const-string v0, ""

    .line 520
    .local v0, "decoded":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 525
    nop

    .line 526
    return-object v0

    .line 522
    :catch_0
    move-exception v1

    .line 524
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method private static getDialogMessage(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    .param p1, "context"    # Landroid/content/Context;

    .line 621
    invoke-static {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getNotifMessage(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDialogTitle(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    .param p1, "context"    # Landroid/content/Context;

    .line 615
    invoke-static {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getNotifTitle(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDlgIntent(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Landroid/content/Intent;
    .locals 6
    .param p1, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    .line 435
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 436
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getDialogTitle(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getDialogMessage(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 440
    .local v2, "message":Ljava/lang/String;
    const v3, 0x10008000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 441
    iget-object v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/internal/app/NetInitiatedActivity;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 444
    const-string/jumbo v3, "notif_id"

    iget v4, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 445
    const-string/jumbo v3, "title"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    const-string/jumbo v3, "message"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    const-string/jumbo v3, "timeout"

    iget v4, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 448
    const-string v3, "default_resp"

    iget v4, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 450
    sget-boolean v3, Lcom/android/internal/location/GpsNetInitiatedHandler;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "GpsNetInitiatedHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateIntent, title: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", timeout: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_0
    return-object v0
.end method

.method private static getNotifMessage(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    .param p1, "context"    # Landroid/content/Context;

    .line 606
    const v0, 0x1040274

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    sget-boolean v3, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsHexInput:Z

    iget v4, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    .line 607
    invoke-static {v2, v3, v4}, Lcom/android/internal/location/GpsNetInitiatedHandler;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    sget-boolean v3, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsHexInput:Z

    iget v4, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    .line 608
    invoke-static {v2, v3, v4}, Lcom/android/internal/location/GpsNetInitiatedHandler;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 606
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 609
    .local v0, "message":Ljava/lang/String;
    return-object v0
.end method

.method private static getNotifTicker(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    .param p1, "context"    # Landroid/content/Context;

    .line 590
    const v0, 0x1040275

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    sget-boolean v3, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsHexInput:Z

    iget v4, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    .line 591
    invoke-static {v2, v3, v4}, Lcom/android/internal/location/GpsNetInitiatedHandler;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    sget-boolean v3, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsHexInput:Z

    iget v4, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    .line 592
    invoke-static {v2, v3, v4}, Lcom/android/internal/location/GpsNetInitiatedHandler;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 590
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 593
    .local v0, "ticker":Ljava/lang/String;
    return-object v0
.end method

.method private static getNotifTitle(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    .param p1, "context"    # Landroid/content/Context;

    .line 599
    const v0, 0x1040276

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 600
    .local v0, "title":Ljava/lang/String;
    return-object v0
.end method

.method private handleNi(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V
    .locals 3
    .param p1, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    .line 304
    sget-boolean v0, Lcom/android/internal/location/GpsNetInitiatedHandler;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GpsNetInitiatedHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in handleNi () : needNotify: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " needVerify: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " privacyOverride: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mPopupImmediately: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mPopupImmediately:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mInEmergency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 304
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getLocationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v0

    if-nez v0, :cond_1

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    iget v1, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Landroid/location/INetInitiatedListener;->sendNiResponse(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GpsNetInitiatedHandler"

    const-string v2, "RemoteException in sendNiResponse"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    iget-boolean v0, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    if-eqz v0, :cond_3

    .line 323
    iget-boolean v0, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mPopupImmediately:Z

    if-eqz v0, :cond_2

    .line 325
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->openNiDialog(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    goto :goto_1

    .line 328
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 333
    :cond_3
    :goto_1
    iget-boolean v0, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    if-eqz v0, :cond_5

    .line 335
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    iget v1, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/location/INetInitiatedListener;->sendNiResponse(II)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 339
    goto :goto_2

    .line 337
    :catch_1
    move-exception v0

    .line 338
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "GpsNetInitiatedHandler"

    const-string v2, "RemoteException in sendNiResponse"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5
    :goto_2
    return-void
.end method

.method private handleNiInEs(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V
    .locals 4
    .param p1, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    .line 346
    sget-boolean v0, Lcom/android/internal/location/GpsNetInitiatedHandler;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GpsNetInitiatedHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in handleNiInEs () : niType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " notificationId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    iget v0, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 362
    .local v0, "isNiTypeES":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v2

    if-eq v0, v2, :cond_2

    .line 364
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    iget v3, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-interface {v2, v3, v1}, Landroid/location/INetInitiatedListener;->sendNiResponse(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 366
    :catch_0
    move-exception v1

    .line 367
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "GpsNetInitiatedHandler"

    const-string v3, "RemoteException in sendNiResponse"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_2

    .line 370
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNi(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 372
    :goto_2
    return-void
.end method

.method private openNiDialog(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V
    .locals 4
    .param p1, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    .line 422
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getDlgIntent(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Landroid/content/Intent;

    move-result-object v0

    .line 424
    .local v0, "intent":Landroid/content/Intent;
    sget-boolean v1, Lcom/android/internal/location/GpsNetInitiatedHandler;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "GpsNetInitiatedHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "openNiDialog, notifyId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", requestorId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", text: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_0
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 429
    return-void
.end method

.method private declared-synchronized setNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V
    .locals 9
    .param p1, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    monitor-enter p0

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    .line 377
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-nez v0, :cond_0

    .line 379
    monitor-exit p0

    return-void

    .line 382
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getNotifTitle(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getNotifMessage(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 385
    .local v2, "message":Ljava/lang/String;
    sget-boolean v3, Lcom/android/internal/location/GpsNetInitiatedHandler;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "GpsNetInitiatedHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setNiNotification, notifyId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", title: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_1
    iget-object v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNiNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 391
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v5, 0x10807c4

    .line 393
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v5, 0x0

    .line 394
    invoke-virtual {v3, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 395
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 396
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    const v6, 0x1060157

    .line 397
    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNiNotificationBuilder:Landroid/app/Notification$Builder;

    .line 401
    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mPlaySounds:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 402
    iget-object v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNiNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 404
    :cond_3
    iget-object v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNiNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 408
    :goto_0
    iget-boolean v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mPopupImmediately:Z

    if-nez v3, :cond_4

    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getDlgIntent(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Landroid/content/Intent;

    move-result-object v3

    goto :goto_1

    :cond_4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 409
    .local v3, "intent":Landroid/content/Intent;
    :goto_1
    iget-object v4, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-static {v4, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 410
    .local v4, "pi":Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNiNotificationBuilder:Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, v6}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getNotifTicker(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 411
    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 412
    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 413
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 415
    const/4 v5, 0x0

    iget v6, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    iget-object v7, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNiNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    monitor-exit p0

    return-void

    .line 375
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    .end local v1    # "title":Ljava/lang/String;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "pi":Landroid/app/PendingIntent;
    .end local p1    # "notif":Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .line 375
    .end local p0    # "this":Lcom/android/internal/location/GpsNetInitiatedHandler;
    throw p1
.end method

.method static stringToByteArray(Ljava/lang/String;Z)[B
    .locals 5
    .param p0, "original"    # Ljava/lang/String;
    .param p1, "isHex"    # Z

    .line 459
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 460
    .local v0, "length":I
    :goto_0
    new-array v1, v0, [B

    .line 463
    .local v1, "output":[B
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 465
    nop

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 467
    mul-int/lit8 v3, v2, 0x2

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 465
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 471
    .end local v2    # "i":I
    :cond_1
    nop

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 473
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 471
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 477
    :cond_2
    return-object v1
.end method


# virtual methods
.method public getInEmergency()Z
    .locals 5

    .line 254
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mCallEndElapsedRealtimeMillis:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencyExtensionMillis:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 256
    .local v0, "isInEmergencyExtension":Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getEmergencyCallbackMode()Z

    move-result v3

    .line 257
    .local v3, "isInEmergencyCallback":Z
    iget-boolean v4, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsInEmergencyCall:Z

    if-nez v4, :cond_2

    if-nez v3, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    :goto_1
    move v1, v2

    :goto_2
    return v1
.end method

.method public getLocationEnabled()Z
    .locals 1

    .line 239
    iget-boolean v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsLocationEnabled:Z

    return v0
.end method

.method public getSuplEsEnabled()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsSuplEsEnabled:Z

    return v0
.end method

.method public handleNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V
    .locals 3
    .param p1, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    .line 276
    sget-boolean v0, Lcom/android/internal/location/GpsNetInitiatedHandler;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GpsNetInitiatedHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in handleNiNotification () : notificationId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requestorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mIsSuplEsEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getSuplEsEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsLocationEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getLocationEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getSuplEsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNiInEs(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    goto :goto_0

    .line 286
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNi(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 300
    :goto_0
    return-void
.end method

.method public setEmergencyExtensionSeconds(I)V
    .locals 4
    .param p1, "emergencyExtensionSeconds"    # I

    .line 261
    const/16 v0, 0x12c

    if-le p1, v0, :cond_0

    .line 262
    const-string v1, "GpsNetInitiatedHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "emergencyExtensionSeconds "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " too high, reset to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/16 p1, 0x12c

    goto :goto_0

    .line 265
    :cond_0
    if-gez p1, :cond_1

    .line 266
    const-string v0, "GpsNetInitiatedHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emergencyExtensionSeconds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is negative, reset to zero."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 p1, 0x0

    .line 270
    :cond_1
    :goto_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencyExtensionMillis:J

    .line 271
    return-void
.end method

.method public setSuplEsEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .line 221
    iput-boolean p1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsSuplEsEnabled:Z

    .line 222
    return-void
.end method

.method public updateLocationMode()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsLocationEnabled:Z

    .line 233
    return-void
.end method
