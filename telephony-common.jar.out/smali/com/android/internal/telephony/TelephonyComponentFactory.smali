.class public Lcom/android/internal/telephony/TelephonyComponentFactory;
.super Ljava/lang/Object;
.source "TelephonyComponentFactory.java"


# static fields
.field protected static LOG_TAG:Ljava/lang/String;

.field private static sInstance:Lcom/android/internal/telephony/TelephonyComponentFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-string v0, "TelephonyComponentFactory"

    sput-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;
    .locals 9

    .line 55
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->sInstance:Lcom/android/internal/telephony/TelephonyComponentFactory;

    if-nez v0, :cond_1

    .line 56
    const-string v0, "com.qualcomm.qti.internal.telephony.QtiTelephonyComponentFactory"

    .line 57
    .local v0, "fullClsName":Ljava/lang/String;
    const-string v1, "/system/framework/qti-telephony-common.jar"

    .line 59
    .local v1, "libPath":Ljava/lang/String;
    new-instance v2, Ldalvik/system/PathClassLoader;

    .line 60
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 61
    .local v2, "classLoader":Ldalvik/system/PathClassLoader;
    sget-object v3, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "classLoader = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 64
    sget-object v3, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v4, "no customized TelephonyPlugin available, fallback to default"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v0, "com.android.internal.telephony.TelephonyComponentFactory"

    .line 68
    :cond_0
    const/4 v3, 0x0

    .line 70
    .local v3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    :try_start_0
    invoke-static {v0, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    move-object v3, v5

    .line 71
    sget-object v5, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cls = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 73
    .local v5, "custMethod":Ljava/lang/reflect/Constructor;
    sget-object v6, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "constructor method = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/TelephonyComponentFactory;

    sput-object v4, Lcom/android/internal/telephony/TelephonyComponentFactory;->sInstance:Lcom/android/internal/telephony/TelephonyComponentFactory;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "custMethod":Ljava/lang/reflect/Constructor;
    goto :goto_0

    .line 79
    :catch_0
    move-exception v4

    .line 80
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    sget-object v5, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Error loading TelephonyComponentFactory"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v5, Lcom/android/internal/telephony/TelephonyComponentFactory;

    invoke-direct {v5}, Lcom/android/internal/telephony/TelephonyComponentFactory;-><init>()V

    sput-object v5, Lcom/android/internal/telephony/TelephonyComponentFactory;->sInstance:Lcom/android/internal/telephony/TelephonyComponentFactory;

    .end local v0    # "fullClsName":Ljava/lang/String;
    .end local v1    # "libPath":Ljava/lang/String;
    .end local v2    # "classLoader":Ldalvik/system/PathClassLoader;
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 75
    .restart local v0    # "fullClsName":Ljava/lang/String;
    .restart local v1    # "libPath":Ljava/lang/String;
    .restart local v2    # "classLoader":Ldalvik/system/PathClassLoader;
    .restart local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v4

    .line 76
    .local v4, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v4}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 77
    sget-object v5, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v6, "error loading TelephonyComponentFactory"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v5, Lcom/android/internal/telephony/TelephonyComponentFactory;

    invoke-direct {v5}, Lcom/android/internal/telephony/TelephonyComponentFactory;-><init>()V

    sput-object v5, Lcom/android/internal/telephony/TelephonyComponentFactory;->sInstance:Lcom/android/internal/telephony/TelephonyComponentFactory;

    .line 83
    .end local v0    # "fullClsName":Ljava/lang/String;
    .end local v1    # "libPath":Ljava/lang/String;
    .end local v2    # "classLoader":Ldalvik/system/PathClassLoader;
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "e":Ljava/lang/NoClassDefFoundError;
    :goto_0
    nop

    .line 85
    :cond_1
    :goto_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->sInstance:Lcom/android/internal/telephony/TelephonyComponentFactory;

    return-object v0
.end method


# virtual methods
.method public getCdmaSubscriptionSourceManagerInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "h"    # Landroid/os/Handler;
    .param p4, "what"    # I
    .param p5, "obj"    # Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getCdmaSubscriptionSourceManagerInstance"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v0

    return-object v0
.end method

.method public getIDeviceIdleController()Landroid/os/IDeviceIdleController;
    .locals 2

    .line 223
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getIDeviceIdleController"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v0, "deviceidle"

    .line 225
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 224
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    return-object v0
.end method

.method public initSubscriptionController(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionController;
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 237
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "initSubscriptionController"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-static {p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    return-object v0
.end method

.method public makeAppSmsManager(Landroid/content/Context;)Lcom/android/internal/telephony/AppSmsManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 208
    new-instance v0, Lcom/android/internal/telephony/AppSmsManager;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/AppSmsManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeCarrierActionAgent(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CarrierActionAgent;
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 129
    new-instance v0, Lcom/android/internal/telephony/CarrierActionAgent;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method public makeCarrierIdentifier(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CarrierIdentifier;
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 133
    new-instance v0, Lcom/android/internal/telephony/CarrierIdentifier;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/CarrierIdentifier;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method public makeCarrierSignalAgent(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CarrierSignalAgent;
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 125
    new-instance v0, Lcom/android/internal/telephony/CarrierSignalAgent;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/CarrierSignalAgent;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method public makeDcTracker(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/dataconnection/DcTracker;
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 120
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeDcTracker"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;-><init>(Lcom/android/internal/telephony/Phone;I)V

    return-object v0
.end method

.method public makeDeviceStateMonitor(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/DeviceStateMonitor;
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 212
    new-instance v0, Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/DeviceStateMonitor;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method public makeEriManager(Lcom/android/internal/telephony/Phone;Landroid/content/Context;I)Lcom/android/internal/telephony/cdma/EriManager;
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "eriFileSource"    # I

    .line 155
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeEriManager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/EriManager;-><init>(Lcom/android/internal/telephony/Phone;Landroid/content/Context;I)V

    return-object v0
.end method

.method public makeExtTelephonyClasses(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phones"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "commandsInterfaces"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 249
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeExtTelephonyClasses"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-void
.end method

.method public makeGsmCdmaCallTracker(Lcom/android/internal/telephony/GsmCdmaPhone;)Lcom/android/internal/telephony/GsmCdmaCallTracker;
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 89
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeGsmCdmaCallTracker"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    return-object v0
.end method

.method public makeIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 137
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeIccPhoneBookInterfaceManager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method public makeIccSmsInterfaceManager(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 142
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeIccSmsInterfaceManager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method public makeImsExternalCallTracker(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;
    .locals 1
    .param p1, "imsPhone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 201
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    return-object v0
.end method

.method public makeImsPhoneCallTracker(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .locals 2
    .param p1, "imsPhone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 195
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeImsPhoneCallTracker"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    return-object v0
.end method

.method public makeInboundSmsTracker(Landroid/database/Cursor;Z)Lcom/android/internal/telephony/InboundSmsTracker;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "isCurrentFormat3gpp2"    # Z

    .line 190
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeInboundSmsTracker"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v0, Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>(Landroid/database/Cursor;Z)V

    return-object v0
.end method

.method public makeInboundSmsTracker([BJIZLjava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)Lcom/android/internal/telephony/InboundSmsTracker;
    .locals 15
    .param p1, "pdu"    # [B
    .param p2, "timestamp"    # J
    .param p4, "destPort"    # I
    .param p5, "is3gpp2"    # Z
    .param p6, "address"    # Ljava/lang/String;
    .param p7, "displayAddr"    # Ljava/lang/String;
    .param p8, "referenceNumber"    # I
    .param p9, "sequenceNumber"    # I
    .param p10, "messageCount"    # I
    .param p11, "is3gpp2WapPdu"    # Z
    .param p12, "messageBody"    # Ljava/lang/String;

    .line 181
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeInboundSmsTracker"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v0, Lcom/android/internal/telephony/InboundSmsTracker;

    move-object v2, v0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v14, p12

    invoke-direct/range {v2 .. v14}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZLjava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)V

    return-object v0
.end method

.method public makeInboundSmsTracker([BJIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/InboundSmsTracker;
    .locals 12
    .param p1, "pdu"    # [B
    .param p2, "timestamp"    # J
    .param p4, "destPort"    # I
    .param p5, "is3gpp2"    # Z
    .param p6, "is3gpp2WapPdu"    # Z
    .param p7, "address"    # Ljava/lang/String;
    .param p8, "displayAddr"    # Ljava/lang/String;
    .param p9, "messageBody"    # Ljava/lang/String;

    .line 170
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeInboundSmsTracker"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v0, Lcom/android/internal/telephony/InboundSmsTracker;

    move-object v2, v0

    move-object v3, p1

    move-wide v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v2 .. v11}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public makeLocaleTracker(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;)Lcom/android/internal/telephony/LocaleTracker;
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 268
    new-instance v0, Lcom/android/internal/telephony/LocaleTracker;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/LocaleTracker;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;)V

    return-object v0
.end method

.method public makeNitzStateMachine(Lcom/android/internal/telephony/GsmCdmaPhone;)Lcom/android/internal/telephony/NitzStateMachine;
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 112
    new-instance v0, Lcom/android/internal/telephony/NitzStateMachine;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/NitzStateMachine;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    return-object v0
.end method

.method public makePhone(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)Lcom/android/internal/telephony/Phone;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "phoneId"    # I
    .param p5, "precisePhoneType"    # I
    .param p6, "telephonyComponentFactory"    # Lcom/android/internal/telephony/TelephonyComponentFactory;

    .line 231
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makePhone"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaPhone;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/GsmCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)V

    return-object v0
.end method

.method public makePhoneSwitcher(IILandroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Looper;Lcom/android/internal/telephony/ITelephonyRegistry;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneSwitcher;
    .locals 11
    .param p1, "maxActivePhones"    # I
    .param p2, "numPhones"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "subscriptionController"    # Lcom/android/internal/telephony/SubscriptionController;
    .param p5, "looper"    # Landroid/os/Looper;
    .param p6, "tr"    # Lcom/android/internal/telephony/ITelephonyRegistry;
    .param p7, "cis"    # [Lcom/android/internal/telephony/CommandsInterface;
    .param p8, "phones"    # [Lcom/android/internal/telephony/Phone;

    .line 255
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makePhoneSwitcher"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance v0, Lcom/android/internal/telephony/PhoneSwitcher;

    move-object v2, v0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/telephony/PhoneSwitcher;-><init>(IILandroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Looper;Lcom/android/internal/telephony/ITelephonyRegistry;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method public makeRIL(Landroid/content/Context;IILjava/lang/Integer;)Lcom/android/internal/telephony/RIL;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "instanceId"    # Ljava/lang/Integer;

    .line 263
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeRIL"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance v0, Lcom/android/internal/telephony/RIL;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    return-object v0
.end method

.method public makeServiceStateTracker(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/ServiceStateTracker;
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 104
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeServiceStateTracker"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v0, Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v0
.end method

.method public makeSimActivationTracker(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/SimActivationTracker;
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 116
    new-instance v0, Lcom/android/internal/telephony/SimActivationTracker;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/SimActivationTracker;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method public makeSmsStorageMonitor(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/SmsStorageMonitor;
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 94
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeSmsStorageMonitor"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v0, Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/SmsStorageMonitor;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method public makeSmsUsageMonitor(Landroid/content/Context;)Lcom/android/internal/telephony/SmsUsageMonitor;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 99
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeSmsUsageMonitor"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v0, Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/SmsUsageMonitor;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeSubscriptionInfoUpdater(Landroid/os/Looper;Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "phones"    # [Lcom/android/internal/telephony/Phone;
    .param p4, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 243
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeSubscriptionInfoUpdater"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;-><init>(Landroid/os/Looper;Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v0
.end method

.method public makeUiccProfile(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/Object;)Lcom/android/internal/telephony/uicc/UiccProfile;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "ics"    # Lcom/android/internal/telephony/uicc/IccCardStatus;
    .param p4, "phoneId"    # I
    .param p5, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p6, "lock"    # Ljava/lang/Object;

    .line 151
    new-instance v7, Lcom/android/internal/telephony/uicc/UiccProfile;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/UiccProfile;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/Object;)V

    return-object v7
.end method

.method public makeWspTypeDecoder([B)Lcom/android/internal/telephony/WspTypeDecoder;
    .locals 2
    .param p1, "pdu"    # [B

    .line 160
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeWspTypeDecoder"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v0, Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    return-object v0
.end method
