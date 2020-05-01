.class public Lcom/android/internal/telephony/PhoneFactory;
.super Ljava/lang/Object;
.source "PhoneFactory.java"


# static fields
.field static final DBG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "PhoneFactory"

.field public static final MAX_ACTIVE_PHONES:I = 0x1

.field static final SOCKET_OPEN_MAX_RETRY:I = 0x3

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0x7d0

.field static mOPOLCONFTELEPHONY:Lcom/android/internal/telephony/OPOnlineConfigTelephony;

.field private static sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

.field private static sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

.field private static sContext:Landroid/content/Context;

.field private static sEuiccCardController:Lcom/android/internal/telephony/euicc/EuiccCardController;

.field private static sEuiccController:Lcom/android/internal/telephony/euicc/EuiccController;

.field private static sImsResolver:Lcom/android/internal/telephony/ims/ImsResolver;

.field private static sIntentBroadcaster:Lcom/android/internal/telephony/IntentBroadcaster;

.field private static final sLocalLogs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/LocalLog;",
            ">;"
        }
    .end annotation
.end field

.field static final sLockProxyPhones:Ljava/lang/Object;

.field private static sMadeDefaults:Z

.field private static sNotificationChannelController:Lcom/android/internal/telephony/util/NotificationChannelController;

.field private static sPhone:Lcom/android/internal/telephony/Phone;

.field private static sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field private static sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

.field private static sPhones:[Lcom/android/internal/telephony/Phone;

.field private static sProxyController:Lcom/android/internal/telephony/ProxyController;

.field private static sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

.field private static sSubscriptionMonitor:Lcom/android/internal/telephony/SubscriptionMonitor;

.field private static sTelephonyNetworkFactories:[Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

.field private static sUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    .line 73
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sPhone:Lcom/android/internal/telephony/Phone;

    .line 75
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 83
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 84
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .line 86
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 95
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    .line 102
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->mOPOLCONFTELEPHONY:Lcom/android/internal/telephony/OPOnlineConfigTelephony;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLocalLog(Ljava/lang/String;I)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "size"    # I

    .line 427
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    monitor-enter v0

    .line 428
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 431
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    new-instance v2, Landroid/util/LocalLog;

    invoke-direct {v2, p1}, Landroid/util/LocalLog;-><init>(I)V

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    monitor-exit v0

    .line 433
    return-void

    .line 429
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " already present"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 432
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static calculatePreferredNetworkType(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneSubId"    # I

    .line 356
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preferred_network_mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 359
    .local v0, "networkType":I
    const-string v1, "PhoneFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculatePreferredNetworkType: phoneSubId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " networkType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    if-ne v0, v2, :cond_0

    .line 363
    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    .line 365
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    .line 367
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v3

    .line 365
    invoke-static {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 371
    goto :goto_0

    .line 368
    :catch_0
    move-exception v1

    .line 369
    .local v1, "retrySnfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "PhoneFactory"

    const-string v3, "Settings Exception Reading Value At Index for Settings.Global.PREFERRED_NETWORK_MODE"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    .end local v1    # "retrySnfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    :goto_0
    return v0
.end method

.method public static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "printwriter"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 454
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 455
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string v1, "PhoneFactory:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sMadeDefaults="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 458
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    invoke-virtual {v1, p0, v0, p2}, Lcom/android/internal/telephony/PhoneSwitcher;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 459
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 461
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 462
    .local v1, "phones":[Lcom/android/internal/telephony/Phone;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 463
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 464
    aget-object v3, v1, v2

    .line 467
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    :try_start_0
    invoke-virtual {v3, p0, v0, p2}, Lcom/android/internal/telephony/Phone;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 471
    nop

    .line 473
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    .line 474
    const-string v4, "++++++++++++++++++++++++++++++++"

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 476
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sTelephonyNetworkFactories:[Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    aget-object v4, v4, v2

    invoke-virtual {v4, p0, v0, p2}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 478
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    .line 479
    const-string v4, "++++++++++++++++++++++++++++++++"

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 482
    :try_start_1
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 483
    .local v4, "uiccProfile":Lcom/android/internal/telephony/uicc/UiccProfile;
    if-eqz v4, :cond_0

    .line 484
    invoke-virtual {v4, p0, v0, p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 488
    .end local v4    # "uiccProfile":Lcom/android/internal/telephony/uicc/UiccProfile;
    :cond_0
    goto :goto_1

    .line 486
    :catch_0
    move-exception v4

    .line 487
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 489
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    .line 490
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 491
    const-string v4, "++++++++++++++++++++++++++++++++"

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    goto :goto_2

    .line 468
    .restart local v3    # "phone":Lcom/android/internal/telephony/Phone;
    :catch_1
    move-exception v4

    .line 469
    .restart local v4    # "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Telephony DebugService: Could not get Phone["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 470
    nop

    .line 462
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 494
    .end local v2    # "i":I
    :cond_1
    const-string v2, "SubscriptionMonitor:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 497
    :try_start_2
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sSubscriptionMonitor:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-virtual {v2, p0, v0, p2}, Lcom/android/internal/telephony/SubscriptionMonitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 500
    goto :goto_3

    .line 498
    :catch_2
    move-exception v2

    .line 499
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 501
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 502
    const-string v2, "++++++++++++++++++++++++++++++++"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 504
    const-string v2, "UiccController:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 505
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 507
    :try_start_3
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v2, p0, v0, p2}, Lcom/android/internal/telephony/uicc/UiccController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 510
    goto :goto_4

    .line 508
    :catch_3
    move-exception v2

    .line 509
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 511
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    .line 512
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 513
    const-string v2, "++++++++++++++++++++++++++++++++"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 515
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sEuiccController:Lcom/android/internal/telephony/euicc/EuiccController;

    if-eqz v2, :cond_2

    .line 516
    const-string v2, "EuiccController:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 517
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 519
    :try_start_4
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sEuiccController:Lcom/android/internal/telephony/euicc/EuiccController;

    invoke-virtual {v2, p0, v0, p2}, Lcom/android/internal/telephony/euicc/EuiccController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 520
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sEuiccCardController:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-virtual {v2, p0, v0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 523
    goto :goto_5

    .line 521
    :catch_4
    move-exception v2

    .line 522
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 524
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_5
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    .line 525
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 526
    const-string v2, "++++++++++++++++++++++++++++++++"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 529
    :cond_2
    const-string v2, "SubscriptionController:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 530
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 532
    :try_start_5
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p0, v0, p2}, Lcom/android/internal/telephony/SubscriptionController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 535
    goto :goto_6

    .line 533
    :catch_5
    move-exception v2

    .line 534
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 536
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_6
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    .line 537
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 538
    const-string v2, "++++++++++++++++++++++++++++++++"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 540
    const-string v2, "SubInfoRecordUpdater:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 541
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 543
    :try_start_6
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-virtual {v2, p0, v0, p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 546
    goto :goto_7

    .line 544
    :catch_6
    move-exception v2

    .line 545
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 547
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_7
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    .line 548
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 549
    const-string v2, "++++++++++++++++++++++++++++++++"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 551
    const-string v2, "LocalLogs:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 553
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    monitor-enter v2

    .line 554
    :try_start_7
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 555
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 556
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 557
    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/LocalLog;

    invoke-virtual {v5, p0, v0, p2}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 558
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 559
    .end local v4    # "key":Ljava/lang/String;
    goto :goto_8

    .line 560
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    .line 561
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 562
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 563
    const-string v2, "++++++++++++++++++++++++++++++++"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 565
    const-string v2, "SharedPreferences:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 566
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 568
    :try_start_8
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    if-eqz v2, :cond_4

    .line 569
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 570
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 571
    .local v3, "spValues":Ljava/util/Map;
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 572
    .local v5, "key":Ljava/lang/Object;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 573
    .end local v5    # "key":Ljava/lang/Object;
    goto :goto_9

    .line 577
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    .end local v3    # "spValues":Ljava/util/Map;
    :cond_4
    goto :goto_a

    .line 575
    :catch_7
    move-exception v2

    .line 576
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 578
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_a
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    .line 579
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 580
    return-void

    .line 561
    :catchall_0
    move-exception v3

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v3
.end method

.method public static getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 3

    .line 289
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_0
    sget-boolean v1, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-eqz v1, :cond_0

    .line 293
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhone:Lcom/android/internal/telephony/Phone;

    monitor-exit v0

    return-object v1

    .line 291
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Default phones haven\'t been made yet!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 294
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getDefaultSubscription()I
    .locals 1

    .line 379
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v0

    return v0
.end method

.method public static getImsResolver()Lcom/android/internal/telephony/ims/ImsResolver;
    .locals 1

    .line 336
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sImsResolver:Lcom/android/internal/telephony/ims/ImsResolver;

    return-object v0
.end method

.method public static getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 4
    .param p0, "phoneId"    # I

    .line 299
    const-string v0, ""

    .line 301
    .local v0, "dbgInfo":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v1

    .line 302
    :try_start_0
    sget-boolean v2, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-eqz v2, :cond_2

    .line 305
    const v2, 0x7fffffff

    if-ne p0, v2, :cond_0

    .line 307
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sPhone:Lcom/android/internal/telephony/Phone;

    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    goto :goto_0

    .line 310
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    if-ltz p0, :cond_1

    .line 311
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge p0, v2, :cond_1

    .line 312
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, p0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 318
    .restart local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :goto_0
    monitor-exit v1

    return-object v2

    .line 303
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Default phones haven\'t been made yet!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 319
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getPhones()[Lcom/android/internal/telephony/Phone;
    .locals 3

    .line 323
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v0

    .line 324
    :try_start_0
    sget-boolean v1, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-eqz v1, :cond_0

    .line 327
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    monitor-exit v0

    return-object v1

    .line 325
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Default phones haven\'t been made yet!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 328
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getSubscriptionInfoUpdater()Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .locals 1

    .line 332
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    return-object v0
.end method

.method public static isSMSPromptEnabled()Z
    .locals 6

    .line 384
    const/4 v0, 0x0

    .line 385
    .local v0, "prompt":Z
    const/4 v1, 0x0

    move v2, v1

    .line 387
    .local v2, "value":I
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "multi_sim_sms_prompt"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 391
    goto :goto_0

    .line 389
    :catch_0
    move-exception v3

    .line 390
    .local v3, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "PhoneFactory"

    const-string v5, "Settings Exception Reading Dual Sim SMS Prompt Values"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .end local v3    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :goto_0
    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    :goto_1
    move v0, v1

    .line 393
    const-string v1, "PhoneFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMS Prompt option:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return v0
.end method

.method public static localLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .line 445
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    monitor-enter v0

    .line 446
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LocalLog;

    invoke-virtual {v1, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 450
    monitor-exit v0

    .line 451
    return-void

    .line 447
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 450
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static makeDefaultPhone(Landroid/content/Context;)V
    .locals 32
    .param p0, "context"    # Landroid/content/Context;

    .line 119
    move-object/from16 v8, p0

    const-string v0, "PhoneFactory"

    const-string v1, "new OPOnlineConfigTelephony"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v0, Lcom/android/internal/telephony/OPOnlineConfigTelephony;

    invoke-direct {v0, v8}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->mOPOLCONFTELEPHONY:Lcom/android/internal/telephony/OPOnlineConfigTelephony;

    .line 123
    sget-object v9, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v9

    .line 124
    :try_start_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_a

    .line 125
    sput-object v8, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    .line 127
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->create()Lcom/android/internal/telephony/TelephonyDevController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    const/4 v0, 0x0

    .line 131
    .local v0, "retryCount":I
    :goto_0
    const/4 v1, 0x0

    .line 132
    .local v1, "hasException":Z
    const/4 v11, 0x1

    add-int/lit8 v12, v0, 0x1

    .line 137
    .end local v0    # "retryCount":I
    .local v12, "retryCount":I
    :try_start_1
    new-instance v0, Landroid/net/LocalServerSocket;

    const-string v2, "com.android.internal.telephony"

    invoke-direct {v0, v2}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    goto :goto_1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "ex":Ljava/io/IOException;
    const/4 v1, 0x1

    .line 142
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_1
    if-nez v1, :cond_8

    .line 143
    nop

    .line 154
    .end local v1    # "hasException":Z
    :try_start_2
    new-instance v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-direct {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 156
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v0

    .line 158
    .local v0, "telephonyComponentFactory":Lcom/android/internal/telephony/TelephonyComponentFactory;
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getDefault(Landroid/content/Context;)I

    move-result v1

    move v15, v1

    .line 159
    .local v15, "cdmaSubscription":I
    const-string v1, "PhoneFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cdma Subscription set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    move v14, v1

    .line 167
    .local v14, "numPhones":I
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    move v13, v1

    .line 170
    .local v13, "isDynamicBinding":Z
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040162

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    .line 173
    .local v7, "defaultImsPackage":Ljava/lang/String;
    const-string v1, "PhoneFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsResolver: defaultImsPackage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v1, Lcom/android/internal/telephony/ims/ImsResolver;

    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-direct {v1, v2, v7, v14, v13}, Lcom/android/internal/telephony/ims/ImsResolver;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sImsResolver:Lcom/android/internal/telephony/ims/ImsResolver;

    .line 176
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sImsResolver:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/ImsResolver;->initPopulateCacheAndStartBind()V

    .line 178
    new-array v1, v14, [I

    move-object/from16 v22, v1

    .line 179
    .local v22, "networkModes":[I
    new-array v1, v14, [Lcom/android/internal/telephony/Phone;

    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    .line 180
    new-array v1, v14, [Lcom/android/internal/telephony/RIL;

    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 181
    new-array v1, v14, [Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sTelephonyNetworkFactories:[Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    .line 183
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v14, :cond_0

    .line 186
    sget v2, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    aput v2, v22, v1

    .line 188
    const-string v2, "PhoneFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network Mode set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v22, v1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget v3, v22, v1

    .line 190
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 189
    invoke-virtual {v0, v8, v3, v15, v4}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeRIL(Landroid/content/Context;IILjava/lang/Integer;)Lcom/android/internal/telephony/RIL;

    move-result-object v3

    aput-object v3, v2, v1

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 192
    .end local v1    # "i":I
    :cond_0
    const-string v1, "PhoneFactory"

    const-string v2, "Creating SubscriptionController"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, v8, v1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->initSubscriptionController(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionController;

    .line 197
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v8, v1}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 199
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.telephony.euicc"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/euicc/EuiccController;->init(Landroid/content/Context;)Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sEuiccController:Lcom/android/internal/telephony/euicc/EuiccController;

    .line 202
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->init(Landroid/content/Context;)Lcom/android/internal/telephony/euicc/EuiccCardController;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sEuiccCardController:Lcom/android/internal/telephony/euicc/EuiccCardController;

    .line 205
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    move v6, v1

    .end local v1    # "i":I
    .local v6, "i":I
    if-ge v6, v14, :cond_4

    .line 206
    const/16 v16, 0x0

    .line 207
    .local v16, "phone":Lcom/android/internal/telephony/Phone;
    aget v1, v22, v6

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v1

    move v5, v1

    .line 208
    .local v5, "phoneType":I
    if-ne v5, v11, :cond_2

    .line 209
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v1, v6

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    const/16 v17, 0x1

    move-object v1, v0

    move-object v2, v8

    move v11, v5

    move v5, v6

    .end local v5    # "phoneType":I
    .local v11, "phoneType":I
    move v10, v6

    move/from16 v6, v17

    .end local v6    # "i":I
    .local v10, "i":I
    move-object/from16 v23, v7

    move-object v7, v0

    .end local v7    # "defaultImsPackage":Ljava/lang/String;
    .local v23, "defaultImsPackage":Ljava/lang/String;
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makePhone(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_4

    .line 213
    .end local v10    # "i":I
    .end local v11    # "phoneType":I
    .end local v23    # "defaultImsPackage":Ljava/lang/String;
    .restart local v5    # "phoneType":I
    .restart local v6    # "i":I
    .restart local v7    # "defaultImsPackage":Ljava/lang/String;
    :cond_2
    move v11, v5

    move v10, v6

    move-object/from16 v23, v7

    .end local v5    # "phoneType":I
    .end local v6    # "i":I
    .end local v7    # "defaultImsPackage":Ljava/lang/String;
    .restart local v10    # "i":I
    .restart local v11    # "phoneType":I
    .restart local v23    # "defaultImsPackage":Ljava/lang/String;
    const/4 v1, 0x2

    if-ne v11, v1, :cond_3

    .line 214
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v1, v10

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    const/4 v6, 0x6

    move-object v1, v0

    move-object v2, v8

    move v5, v10

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makePhone(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    move-object/from16 v16, v1

    .line 219
    :cond_3
    :goto_4
    const-string v1, "PhoneFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating Phone with type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sub = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    aput-object v16, v1, v10

    .line 205
    .end local v11    # "phoneType":I
    .end local v16    # "phone":Lcom/android/internal/telephony/Phone;
    add-int/lit8 v1, v10, 0x1

    .end local v10    # "i":I
    .restart local v1    # "i":I
    move-object/from16 v7, v23

    const/4 v11, 0x1

    goto :goto_3

    .line 227
    .end local v1    # "i":I
    .end local v23    # "defaultImsPackage":Ljava/lang/String;
    .restart local v7    # "defaultImsPackage":Ljava/lang/String;
    :cond_4
    move-object/from16 v23, v7

    .end local v7    # "defaultImsPackage":Ljava/lang/String;
    .restart local v23    # "defaultImsPackage":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhone:Lcom/android/internal/telephony/Phone;

    .line 228
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v2

    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 232
    nop

    .line 233
    const/4 v1, 0x1

    invoke-static {v8, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v3

    move-object v1, v3

    .line 234
    .local v1, "componentName":Landroid/content/ComponentName;
    const-string v3, "NONE"

    .line 235
    .local v3, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 236
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 238
    :cond_5
    const-string v4, "PhoneFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "defaultSmsApplication: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/SmsApplication;->initSmsPackageMonitor(Landroid/content/Context;)V

    .line 243
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 245
    const-string v4, "PhoneFactory"

    const-string v5, "Creating SubInfoRecordUpdater "

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    nop

    .line 247
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    sget-object v6, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 246
    invoke-virtual {v0, v4, v8, v5, v6}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeSubscriptionInfoUpdater(Landroid/os/Looper;Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/PhoneFactory;->sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .line 248
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SubscriptionController;->updatePhonesAvailability([Lcom/android/internal/telephony/Phone;)V

    .line 254
    move v4, v2

    .local v4, "i":I
    :goto_5
    if-ge v4, v14, :cond_6

    .line 255
    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->startMonitoringImsService()V

    .line 254
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 258
    .end local v4    # "i":I
    :cond_6
    const-string v4, "telephony.registry"

    .line 259
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 258
    invoke-static {v4}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v4

    .line 260
    .local v4, "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v5

    .line 262
    .local v5, "sc":Lcom/android/internal/telephony/SubscriptionController;
    new-instance v6, Lcom/android/internal/telephony/SubscriptionMonitor;

    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-direct {v6, v4, v7, v5, v14}, Lcom/android/internal/telephony/SubscriptionMonitor;-><init>(Lcom/android/internal/telephony/ITelephonyRegistry;Landroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;I)V

    sput-object v6, Lcom/android/internal/telephony/PhoneFactory;->sSubscriptionMonitor:Lcom/android/internal/telephony/SubscriptionMonitor;

    .line 264
    const/4 v6, 0x1

    sget-object v16, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    .line 266
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v18

    sget-object v20, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    sget-object v21, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    .line 265
    move v7, v13

    move-object v13, v0

    .end local v13    # "isDynamicBinding":Z
    .local v7, "isDynamicBinding":Z
    move v10, v14

    move v14, v6

    .end local v14    # "numPhones":I
    .local v10, "numPhones":I
    move v6, v15

    move v15, v10

    .end local v15    # "cdmaSubscription":I
    .local v6, "cdmaSubscription":I
    move-object/from16 v17, v5

    move-object/from16 v19, v4

    invoke-virtual/range {v13 .. v21}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makePhoneSwitcher(IILandroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Looper;Lcom/android/internal/telephony/ITelephonyRegistry;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneSwitcher;

    move-result-object v11

    sput-object v11, Lcom/android/internal/telephony/PhoneFactory;->sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    .line 269
    sget-object v11, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    sget-object v13, Lcom/android/internal/telephony/PhoneFactory;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    sget-object v14, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    sget-object v15, Lcom/android/internal/telephony/PhoneFactory;->sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    invoke-static {v8, v11, v13, v14, v15}, Lcom/android/internal/telephony/ProxyController;->getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneSwitcher;)Lcom/android/internal/telephony/ProxyController;

    move-result-object v11

    sput-object v11, Lcom/android/internal/telephony/PhoneFactory;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    .line 272
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/IntentBroadcaster;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/IntentBroadcaster;

    move-result-object v11

    sput-object v11, Lcom/android/internal/telephony/PhoneFactory;->sIntentBroadcaster:Lcom/android/internal/telephony/IntentBroadcaster;

    .line 274
    new-instance v11, Lcom/android/internal/telephony/util/NotificationChannelController;

    invoke-direct {v11, v8}, Lcom/android/internal/telephony/util/NotificationChannelController;-><init>(Landroid/content/Context;)V

    sput-object v11, Lcom/android/internal/telephony/PhoneFactory;->sNotificationChannelController:Lcom/android/internal/telephony/util/NotificationChannelController;

    .line 276
    new-array v11, v10, [Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    sput-object v11, Lcom/android/internal/telephony/PhoneFactory;->sTelephonyNetworkFactories:[Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    .line 277
    nop

    .local v2, "i":I
    :goto_6
    if-ge v2, v10, :cond_7

    .line 278
    sget-object v11, Lcom/android/internal/telephony/PhoneFactory;->sTelephonyNetworkFactories:[Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    new-instance v13, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    sget-object v25, Lcom/android/internal/telephony/PhoneFactory;->sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    sget-object v27, Lcom/android/internal/telephony/PhoneFactory;->sSubscriptionMonitor:Lcom/android/internal/telephony/SubscriptionMonitor;

    .line 279
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v28

    sget-object v29, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v14, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v14, v14, v2

    iget-object v14, v14, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-object/from16 v24, v13

    move-object/from16 v26, v5

    move/from16 v30, v2

    move-object/from16 v31, v14

    invoke-direct/range {v24 .. v31}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;-><init>(Lcom/android/internal/telephony/PhoneSwitcher;Lcom/android/internal/telephony/SubscriptionController;Lcom/android/internal/telephony/SubscriptionMonitor;Landroid/os/Looper;Landroid/content/Context;ILcom/android/internal/telephony/dataconnection/DcTracker;)V

    aput-object v13, v11, v2

    .line 277
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 282
    .end local v2    # "i":I
    :cond_7
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    sget-object v11, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, v8, v2, v11}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeExtTelephonyClasses(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "telephonyComponentFactory":Lcom/android/internal/telephony/TelephonyComponentFactory;
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    .end local v5    # "sc":Lcom/android/internal/telephony/SubscriptionController;
    .end local v6    # "cdmaSubscription":I
    .end local v7    # "isDynamicBinding":Z
    .end local v10    # "numPhones":I
    .end local v12    # "retryCount":I
    .end local v22    # "networkModes":[I
    .end local v23    # "defaultImsPackage":Ljava/lang/String;
    goto :goto_8

    .line 144
    .local v1, "hasException":Z
    .restart local v12    # "retryCount":I
    :cond_8
    const/4 v2, 0x0

    const/4 v0, 0x3

    if-gt v12, v0, :cond_9

    .line 148
    const-wide/16 v3, 0x7d0

    :try_start_3
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 150
    goto :goto_7

    .line 149
    :catch_1
    move-exception v0

    .line 152
    .end local v1    # "hasException":Z
    :goto_7
    nop

    .line 129
    move v0, v12

    goto/16 :goto_0

    .line 145
    .restart local v1    # "hasException":Z
    :cond_9
    :try_start_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "PhoneFactory probably already running"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    .end local v1    # "hasException":Z
    .end local v12    # "retryCount":I
    :cond_a
    :goto_8
    monitor-exit v9

    .line 286
    return-void

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public static makeDefaultPhones(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .line 108
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhone(Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method public static makeImsPhone(Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "phoneNotifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p1, "defaultPhone"    # Lcom/android/internal/telephony/Phone;

    .line 403
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneFactory;->makePhone(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    return-object v0
.end method

.method public static makeSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;
    .locals 2
    .param p0, "sipUri"    # Ljava/lang/String;

    .line 345
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/sip/SipPhoneFactory;->makePhone(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    return-object v0
.end method

.method public static oemGetPhoneSwitcher()Lcom/android/internal/telephony/PhoneSwitcher;
    .locals 1

    .line 585
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    return-object v0
.end method

.method public static requestEmbeddedSubscriptionInfoListRefresh(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "callback"    # Ljava/lang/Runnable;

    .line 413
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->requestEmbeddedSubscriptionInfoListRefresh(Ljava/lang/Runnable;)V

    .line 414
    return-void
.end method
