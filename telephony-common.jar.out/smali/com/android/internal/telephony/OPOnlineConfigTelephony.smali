.class public Lcom/android/internal/telephony/OPOnlineConfigTelephony;
.super Ljava/lang/Object;
.source "OPOnlineConfigTelephony.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/OPOnlineConfigTelephony$MyHandler;,
        Lcom/android/internal/telephony/OPOnlineConfigTelephony$OPOnlineConfigTelephonyUpdater;
    }
.end annotation


# static fields
.field private static final ACTION_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final ACTION_RESTORE_DEFAULT_APN:Ljava/lang/String; = "android.intent.action.restoreDefaultAPN"

.field private static final APNS_VERSION:Ljava/lang/String; = "apns version"

.field private static final CARRIERS_UNIQUE_FIELDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final MSG_GET_ONLINECONFIG:I = 0x1

.field private static final NORMAL_CONFLICT_RULE:I = 0x0

.field private static final PERSISTENT:Ljava/lang/String; = "persistent"

.field private static final PROP_APNS_VERSION_UPDATED:Ljava/lang/String; = "persist.radio.apns_ver_updated"

.field private static final PROP_APNS_VERSION_XML:Ljava/lang/String; = "persist.radio.apns_ver_xml"

.field private static final PROP_CARRIER_CONFIG:Ljava/lang/String; = "persist.radio.carrierconfig"

.field private static final READ_ONLY:Ljava/lang/String; = "read_only"

.field private static final TAG:Ljava/lang/String; = "OPOnlineConfigTelephony"

.field static final TELEPHONY:Landroid/net/Uri;

.field private static final VERIZON_CONFLICT_RULE:I = 0x1

.field private static final VERIZON_UNIQUE_FIELDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static jsonApnsVersionInt:I

.field private static propApnsVersionInXML:I

.field private static propApnsVersionUpdated:I

.field private static updateFindFlag:Z

.field private static whereArgsUpdateFind:[Ljava/lang/String;


# instance fields
.field private jsonCarrierConfigArr:Lorg/json/JSONArray;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mOPOnlineConfigTelephonyHandler:Landroid/os/Handler;

.field private mOPOnlineConfigTelephonyHandlerThread:Landroid/os/HandlerThread;

.field private mOPOnlineConfigTelephonyObserver:Lcom/oneplus/config/ConfigObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 88
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->jsonApnsVersionInt:I

    .line 89
    sput v0, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->propApnsVersionInXML:I

    .line 90
    sput v0, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->propApnsVersionUpdated:I

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->CARRIERS_UNIQUE_FIELDS:Ljava/util/List;

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->VERIZON_UNIQUE_FIELDS:Ljava/util/List;

    .line 115
    sget-object v1, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->CARRIERS_UNIQUE_FIELDS:Ljava/util/List;

    const-string v2, "numeric"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v1, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->CARRIERS_UNIQUE_FIELDS:Ljava/util/List;

    const-string v2, "mcc"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v1, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->CARRIERS_UNIQUE_FIELDS:Ljava/util/List;

    const-string v2, "mnc"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v1, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->CARRIERS_UNIQUE_FIELDS:Ljava/util/List;

    const-string v2, "apn"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v1, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->CARRIERS_UNIQUE_FIELDS:Ljava/util/List;

    const-string v2, "proxy"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v1, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->CARRIERS_UNIQUE_FIELDS:Ljava/util/List;

    const-string v2, "port"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v1, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->CARRIERS_UNIQUE_FIELDS:Ljava/util/List;

    const-string v2, "mmsproxy"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v1, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->CARRIERS_UNIQUE_FIELDS:Ljava/util/List;

    const-string v2, "mmsport"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v1, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->CARRIERS_UNIQUE_FIELDS:Ljava/util/List;

    const-string v2, "mmsc"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v1, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->CARRIERS_UNIQUE_FIELDS:Ljava/util/List;

    const-string v2, "carrier_enabled"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v1, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->CARRIERS_UNIQUE_FIELDS:Ljava/util/List;

    const-string v2, "bearer"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v1, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->CARRIERS_UNIQUE_FIELDS:Ljava/util/List;

    const-string v2, "mvno_type"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v1, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->CARRIERS_UNIQUE_FIELDS:Ljava/util/List;

    const-string v2, "mvno_match_data"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v1, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->CARRIERS_UNIQUE_FIELDS:Ljava/util/List;

    const-string v2, "profile_id"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v1, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->CARRIERS_UNIQUE_FIELDS:Ljava/util/List;

    const-string v2, "type"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v1, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->VERIZON_UNIQUE_FIELDS:Ljava/util/List;

    const-string v2, "numeric"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v1, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->VERIZON_UNIQUE_FIELDS:Ljava/util/List;

    const-string v2, "mcc"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v1, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->VERIZON_UNIQUE_FIELDS:Ljava/util/List;

    const-string v2, "mnc"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v1, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->VERIZON_UNIQUE_FIELDS:Ljava/util/List;

    const-string v2, "profile_id"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v1, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->VERIZON_UNIQUE_FIELDS:Ljava/util/List;

    const-string v2, "type"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    const-string v1, "content://telephony/carriers"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->TELEPHONY:Landroid/net/Uri;

    .line 144
    sput-boolean v0, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->updateFindFlag:Z

    .line 145
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->whereArgsUpdateFind:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 1078
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    new-instance v0, Lcom/android/internal/telephony/OPOnlineConfigTelephony$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/OPOnlineConfigTelephony$1;-><init>(Lcom/android/internal/telephony/OPOnlineConfigTelephony;)V

    iput-object v0, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1079
    iput-object p1, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->mContext:Landroid/content/Context;

    .line 1080
    iget-object v0, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1082
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->mContentResolver:Landroid/content/ContentResolver;

    .line 1085
    :cond_0
    const-string v0, "start mOPOnlineConfigTelephonyHandlerThread"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 1086
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OPOnlineConfigTelephony"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->mOPOnlineConfigTelephonyHandlerThread:Landroid/os/HandlerThread;

    .line 1087
    iget-object v0, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->mOPOnlineConfigTelephonyHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1088
    new-instance v0, Lcom/android/internal/telephony/OPOnlineConfigTelephony$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->mOPOnlineConfigTelephonyHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony$MyHandler;-><init>(Lcom/android/internal/telephony/OPOnlineConfigTelephony;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->mOPOnlineConfigTelephonyHandler:Landroid/os/Handler;

    .line 1090
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->mOPOnlineConfigTelephonyHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/internal/telephony/OPOnlineConfigTelephony$OPOnlineConfigTelephonyUpdater;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/OPOnlineConfigTelephony$OPOnlineConfigTelephonyUpdater;-><init>(Lcom/android/internal/telephony/OPOnlineConfigTelephony;)V

    const-string v4, "OPOnlineConfigApn"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->mOPOnlineConfigTelephonyObserver:Lcom/oneplus/config/ConfigObserver;

    .line 1091
    iget-object v0, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->mOPOnlineConfigTelephonyObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 1093
    iget-object v0, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1094
    iget-object v0, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.restoreDefaultAPN"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1096
    iget-object v0, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1098
    return-void
.end method

.method private OPaddBoolAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3
    .param p1, "jsonObj"    # Lorg/json/JSONObject;
    .param p2, "att"    # Ljava/lang/String;
    .param p3, "map"    # Landroid/content/ContentValues;
    .param p4, "key"    # Ljava/lang/String;

    .line 329
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OPaddBoolAttribute() key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", val = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 334
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p3, p4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    .end local v0    # "val":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OPaddBoolAttribute exception message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 339
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method private OPaddIntAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3
    .param p1, "jsonObj"    # Lorg/json/JSONObject;
    .param p2, "att"    # Ljava/lang/String;
    .param p3, "map"    # Landroid/content/ContentValues;
    .param p4, "key"    # Ljava/lang/String;

    .line 312
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OPaddIntAttribute() key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", val = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 317
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, p4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    .end local v0    # "val":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OPaddIntAttribute exception message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 322
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method private OPaddStringAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3
    .param p1, "jsonObj"    # Lorg/json/JSONObject;
    .param p2, "att"    # Ljava/lang/String;
    .param p3, "map"    # Landroid/content/ContentValues;
    .param p4, "key"    # Ljava/lang/String;

    .line 295
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OPaddStringAttribute() key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", val = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p3, p4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .end local v0    # "val":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OPaddStringAttribute exception message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 305
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method private OPcheckTarget(Lorg/json/JSONObject;)Z
    .locals 5
    .param p1, "jsonObj"    # Lorg/json/JSONObject;

    .line 714
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v0

    .line 715
    .local v0, "deviceImei1":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 717
    const-string v2, "OPcheckTarget() deviceImei1 = null"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 718
    return v1

    .line 726
    :cond_0
    :try_start_0
    const-string v2, "imei"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 728
    .local v2, "jsonImei":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 731
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 733
    const-string v3, "OPcheckTarget() jsonImei = deviceImei1 return true"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 734
    const/4 v1, 0x1

    return v1

    .line 738
    :cond_1
    const-string v3, "OPcheckTarget() jsonImei != deviceImei1 return false"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 739
    return v1

    .line 744
    :cond_2
    const-string v3, "OPcheckTarget() jsonImei = null"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    .end local v2    # "jsonImei":Ljava/lang/String;
    goto :goto_0

    .line 746
    :catch_0
    move-exception v2

    .line 747
    .local v2, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OPcheckTarget() error message = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 750
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_0
    return v1
.end method

.method private OPdeleteApn(Landroid/content/ContentValues;)V
    .locals 6
    .param p1, "row"    # Landroid/content/ContentValues;

    .line 606
    const/4 v0, 0x0

    .line 608
    .local v0, "delete_count":I
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPselectConflictingRow(Landroid/content/ContentValues;)Landroid/database/Cursor;

    move-result-object v1

    .line 609
    .local v1, "oldRow":Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 611
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OPdeleteApn() there is no row = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "in db. Do not delete APN !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 615
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 617
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=? AND "

    sget-object v4, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->CARRIERS_UNIQUE_FIELDS:Ljava/util/List;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 618
    .local v2, "where":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OPdeleteApn() where = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 619
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPgetWhereArgs(Landroid/content/ContentValues;)[Ljava/lang/String;

    move-result-object v3

    .line 623
    .local v3, "whereArgs":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 624
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OPdeleteApn() delete_count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 625
    .end local v2    # "where":Ljava/lang/String;
    .end local v3    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 628
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OPdeleteApn() there are "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " old rows in db already. Do not delete APN !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 630
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 632
    :goto_1
    return-void
.end method

.method private OPgetRow(Lorg/json/JSONObject;)Landroid/content/ContentValues;
    .locals 6
    .param p1, "jsonObj"    # Lorg/json/JSONObject;

    .line 345
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 348
    .local v0, "map":Landroid/content/ContentValues;
    :try_start_0
    const-string v1, "mcc"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "mcc":Ljava/lang/String;
    const-string v2, "mnc"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, "mnc":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 352
    .local v3, "numeric":Ljava/lang/String;
    const-string v4, "numeric"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v4, "mcc"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v4, "mnc"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OPgetRow() mcc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mnc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", numeric = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 361
    .end local v1    # "mcc":Ljava/lang/String;
    .end local v2    # "mnc":Ljava/lang/String;
    .end local v3    # "numeric":Ljava/lang/String;
    nop

    .line 365
    const-string v1, "carrier"

    const-string v2, "name"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPaddStringAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 368
    const-string v1, "apn"

    const-string v2, "apn"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPaddStringAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 369
    const-string v1, "user"

    const-string v2, "user"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPaddStringAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 370
    const-string v1, "server"

    const-string v2, "server"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPaddStringAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 371
    const-string v1, "password"

    const-string v2, "password"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPaddStringAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 372
    const-string v1, "proxy"

    const-string v2, "proxy"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPaddStringAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 373
    const-string v1, "port"

    const-string v2, "port"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPaddStringAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 374
    const-string v1, "mmsproxy"

    const-string v2, "mmsproxy"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPaddStringAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 375
    const-string v1, "mmsport"

    const-string v2, "mmsport"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPaddStringAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 376
    const-string v1, "mmsc"

    const-string v2, "mmsc"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPaddStringAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 377
    const-string v1, "type"

    const-string v2, "type"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPaddStringAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 378
    const-string v1, "protocol"

    const-string v2, "protocol"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPaddStringAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 379
    const-string v1, "roaming_protocol"

    const-string v2, "roaming_protocol"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPaddStringAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 381
    const-string v1, "authtype"

    const-string v2, "authtype"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPaddIntAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 382
    const-string v1, "bearer"

    const-string v2, "bearer"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPaddIntAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 383
    const-string v1, "profile_id"

    const-string v2, "profile_id"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPaddIntAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 384
    const-string v1, "max_conns"

    const-string v2, "max_conns"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPaddIntAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 385
    const-string v1, "wait_time"

    const-string v2, "wait_time"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPaddIntAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 386
    const-string v1, "max_conns_time"

    const-string v2, "max_conns_time"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPaddIntAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 387
    const-string v1, "mtu"

    const-string v2, "mtu"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPaddIntAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 389
    const-string v1, "carrier_enabled"

    const-string v2, "carrier_enabled"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPaddBoolAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 390
    const-string v1, "modem_cognitive"

    const-string v2, "modem_cognitive"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPaddBoolAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 391
    const-string v1, "user_visible"

    const-string v2, "user_visible"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPaddBoolAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 392
    const-string v1, "read_only"

    const-string v2, "read_only"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPaddBoolAttribute(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 395
    const/4 v1, 0x0

    .line 396
    .local v1, "bearerBitmask":I
    :try_start_1
    const-string v2, "bearer_bitmask"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, "bearerList":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 399
    invoke-static {v2}, Landroid/telephony/ServiceState;->getBitmaskFromString(Ljava/lang/String;)I

    move-result v3

    move v1, v3

    .line 401
    :cond_0
    const-string v3, "bearer_bitmask"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 403
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OPgetRow() bearerBitmask = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 407
    .end local v1    # "bearerBitmask":I
    .end local v2    # "bearerList":Ljava/lang/String;
    goto :goto_0

    .line 405
    :catch_0
    move-exception v1

    .line 406
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OPgetRow() error message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 410
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    :try_start_2
    const-string v1, "mvno_type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, "mvno_type":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 413
    const-string v2, "mvno_match_data"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 414
    .local v2, "mvno_match_data":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 416
    const-string v3, "mvno_type"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v3, "mvno_match_data"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OPgetRow() mvno_type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mvno_match_data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 424
    .end local v1    # "mvno_type":Ljava/lang/String;
    .end local v2    # "mvno_match_data":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 422
    :catch_1
    move-exception v1

    .line 423
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OPgetRow() error message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 426
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OPgetRow() map = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 427
    return-object v0

    .line 357
    :catch_2
    move-exception v1

    .line 359
    .restart local v1    # "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OPgetRow() error message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 360
    const/4 v2, 0x0

    return-object v2
.end method

.method private OPgetWhereArgs(Landroid/content/ContentValues;)[Ljava/lang/String;
    .locals 8
    .param p1, "row"    # Landroid/content/ContentValues;

    .line 432
    const/4 v0, 0x0

    .line 433
    .local v0, "i":I
    const/16 v1, 0xf

    new-array v1, v1, [Ljava/lang/String;

    .line 434
    .local v1, "whereArgs":[Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    .local v2, "i":I
    const-string v3, "numeric"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 435
    .end local v0    # "i":I
    add-int/lit8 v0, v2, 0x1

    .restart local v0    # "i":I
    const-string v3, "mcc"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 436
    .end local v2    # "i":I
    add-int/lit8 v2, v0, 0x1

    .restart local v2    # "i":I
    const-string v3, "mnc"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 437
    .end local v0    # "i":I
    add-int/lit8 v0, v2, 0x1

    .restart local v0    # "i":I
    const-string v3, "apn"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "apn"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    aput-object v3, v1, v2

    .line 438
    .end local v2    # "i":I
    add-int/lit8 v2, v0, 0x1

    .restart local v2    # "i":I
    const-string v3, "proxy"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "proxy"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v3, ""

    :goto_1
    aput-object v3, v1, v0

    .line 439
    .end local v0    # "i":I
    add-int/lit8 v0, v2, 0x1

    .restart local v0    # "i":I
    const-string v3, "port"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "port"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    const-string v3, ""

    :goto_2
    aput-object v3, v1, v2

    .line 440
    .end local v2    # "i":I
    add-int/lit8 v2, v0, 0x1

    .restart local v2    # "i":I
    const-string v3, "mmsproxy"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "mmsproxy"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_3
    const-string v3, ""

    :goto_3
    aput-object v3, v1, v0

    .line 441
    .end local v0    # "i":I
    add-int/lit8 v0, v2, 0x1

    .restart local v0    # "i":I
    const-string v3, "mmsport"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "mmsport"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_4
    const-string v3, ""

    :goto_4
    aput-object v3, v1, v2

    .line 442
    .end local v2    # "i":I
    add-int/lit8 v2, v0, 0x1

    .restart local v2    # "i":I
    const-string v3, "mmsc"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "mmsc"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_5
    const-string v3, ""

    :goto_5
    aput-object v3, v1, v0

    .line 443
    .end local v0    # "i":I
    add-int/lit8 v0, v2, 0x1

    .restart local v0    # "i":I
    const-string v3, "carrier_enabled"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "carrier_enabled"

    .line 444
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "carrier_enabled"

    .line 445
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 446
    :cond_6
    const-string v3, "0"

    goto :goto_6

    :cond_7
    const-string v3, "1"

    :goto_6
    aput-object v3, v1, v2

    .line 447
    .end local v2    # "i":I
    add-int/lit8 v2, v0, 0x1

    .restart local v2    # "i":I
    const-string v3, "bearer"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "bearer"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_8
    const-string v3, "0"

    :goto_7
    aput-object v3, v1, v0

    .line 448
    .end local v0    # "i":I
    add-int/lit8 v0, v2, 0x1

    .restart local v0    # "i":I
    const-string v3, "mvno_type"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "mvno_type"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_9
    const-string v3, ""

    :goto_8
    aput-object v3, v1, v2

    .line 449
    .end local v2    # "i":I
    add-int/lit8 v2, v0, 0x1

    .restart local v2    # "i":I
    const-string v3, "mvno_match_data"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 450
    const-string v3, "mvno_match_data"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_a
    const-string v3, ""

    :goto_9
    aput-object v3, v1, v0

    .line 451
    .end local v0    # "i":I
    add-int/lit8 v0, v2, 0x1

    .restart local v0    # "i":I
    const-string v3, "profile_id"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "profile_id"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_b
    const-string v3, "0"

    :goto_a
    aput-object v3, v1, v2

    .line 452
    .end local v2    # "i":I
    add-int/lit8 v2, v0, 0x1

    .restart local v2    # "i":I
    const-string v3, "type"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "type"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    :cond_c
    const-string v3, ""

    :goto_b
    aput-object v3, v1, v0

    .line 454
    .end local v0    # "i":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    .local v0, "builder":Ljava/lang/StringBuilder;
    array-length v3, v1

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v3, :cond_d

    aget-object v5, v1, v4

    .line 457
    .local v5, "s":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .end local v5    # "s":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 459
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OPgetWhereArgs() whereArgs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 461
    return-object v1
.end method

.method private OPgetWhereArgsVerizon(Landroid/content/ContentValues;)[Ljava/lang/String;
    .locals 8
    .param p1, "row"    # Landroid/content/ContentValues;

    .line 467
    const/4 v0, 0x0

    .line 468
    .local v0, "i":I
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    .line 469
    .local v1, "whereArgs":[Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    .local v2, "i":I
    const-string v3, "numeric"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 470
    .end local v0    # "i":I
    add-int/lit8 v0, v2, 0x1

    .restart local v0    # "i":I
    const-string v3, "mcc"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 471
    .end local v2    # "i":I
    add-int/lit8 v2, v0, 0x1

    .restart local v2    # "i":I
    const-string v3, "mnc"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 472
    .end local v0    # "i":I
    add-int/lit8 v0, v2, 0x1

    .restart local v0    # "i":I
    const-string v3, "profile_id"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "profile_id"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "0"

    :goto_0
    aput-object v3, v1, v2

    .line 473
    .end local v2    # "i":I
    add-int/lit8 v2, v0, 0x1

    .restart local v2    # "i":I
    const-string v3, "type"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "type"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v3, ""

    :goto_1
    aput-object v3, v1, v0

    .line 475
    .end local v0    # "i":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 476
    .local v0, "builder":Ljava/lang/StringBuilder;
    array-length v3, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 478
    .local v5, "s":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .end local v5    # "s":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 480
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OPgetWhereArgsVerizon() whereArgs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 482
    return-object v1
.end method

.method private OPinsertApn(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "row"    # Landroid/content/ContentValues;

    .line 560
    const/4 v0, 0x0

    .line 562
    .local v0, "mUri":Landroid/net/Uri;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPselectConflictingRow(Landroid/content/ContentValues;)Landroid/database/Cursor;

    move-result-object v1

    .line 563
    .local v1, "oldRow":Landroid/database/Cursor;
    if-nez v1, :cond_1

    .line 566
    iget-object v2, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 567
    if-eqz v0, :cond_0

    .line 569
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OPinsertApn() oldRow = null, rowID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for row = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 575
    :cond_0
    const-string v2, "OPinsertApn() oldRow = null, mUri = null "

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 580
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 583
    iget-object v2, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 585
    if-eqz v0, :cond_2

    .line 587
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OPinsertApn() oldRow.getCount() = 0, rowID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for row = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 593
    :cond_2
    const-string v2, "OPinsertApn() oldRow.getCount() = 0, mUri = null "

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 598
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OPinsertApn() there are "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " old rows in db already. Do not insert APN !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 600
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 602
    :goto_1
    return-void
.end method

.method private OPreplaceVzwApns(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 926
    const-string v0, "OPreplaceVzwApns()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 927
    if-eqz p1, :cond_2

    .line 929
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 930
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 931
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->getRowFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;

    move-result-object v0

    .line 932
    .local v0, "row":Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    .line 935
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OPreplaceVzwApns(): row: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 936
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPupdateFindApn(Landroid/content/ContentValues;I)V

    .line 937
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPupdateNewApn(Landroid/content/ContentValues;I)V

    .line 938
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 939
    .end local v0    # "row":Landroid/content/ContentValues;
    goto :goto_0

    .line 933
    .restart local v0    # "row":Landroid/content/ContentValues;
    :cond_0
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Expected \'apn\' tag"

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 942
    .end local v0    # "row":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 943
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got IOException while loading apns."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->loge(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 940
    :catch_1
    move-exception v0

    .line 941
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got XmlPullParserException while loading apns."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->loge(Ljava/lang/String;)V

    .line 944
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    nop

    .line 946
    :cond_2
    :goto_1
    return-void
.end method

.method private OPselectConflictingRow(Landroid/content/ContentValues;)Landroid/database/Cursor;
    .locals 1
    .param p1, "row"    # Landroid/content/ContentValues;

    .line 486
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPselectConflictingRow(Landroid/content/ContentValues;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private OPselectConflictingRow(Landroid/content/ContentValues;I)Landroid/database/Cursor;
    .locals 8
    .param p1, "row"    # Landroid/content/ContentValues;
    .param p2, "conflictRule"    # I

    .line 494
    const-string v0, "numeric"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const-string v0, "mcc"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "mnc"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 499
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OPselectConflictingRow() conflictRule = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 501
    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    .line 505
    .local v4, "columns":[Ljava/lang/String;
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=? AND "

    sget-object v3, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->VERIZON_UNIQUE_FIELDS:Ljava/util/List;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "where":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OPselectConflictingRow() for Verizon where = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 508
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPgetWhereArgsVerizon(Landroid/content/ContentValues;)[Ljava/lang/String;

    move-result-object v2

    .line 512
    .local v6, "whereArgs":[Ljava/lang/String;
    :goto_0
    move-object v6, v2

    goto :goto_1

    .line 510
    .end local v0    # "where":Ljava/lang/String;
    .end local v6    # "whereArgs":[Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=? AND "

    sget-object v3, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->CARRIERS_UNIQUE_FIELDS:Ljava/util/List;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 511
    .restart local v0    # "where":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OPselectConflictingRow() where = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 512
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPgetWhereArgs(Landroid/content/ContentValues;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 520
    .restart local v6    # "whereArgs":[Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "name ASC"

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 522
    .local v2, "c":Landroid/database/Cursor;
    if-eqz v2, :cond_5

    .line 524
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OPselectConflictingRow() "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " conflicting rows found"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 526
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 528
    return-object v2

    .line 532
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 534
    const-string v1, "_id"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 535
    .local v1, "idColumnIdx":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OPselectConflictingRow() idColumnIdx = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 536
    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    .line 538
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OPselectConflictingRow() the first row Id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 541
    :cond_3
    return-object v2

    .line 545
    .end local v1    # "idColumnIdx":I
    :cond_4
    const-string v3, "OPselectConflictingRow() moveToFirst() failed"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 548
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 552
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OPselectConflictingRow() Error - c is null; no matching row found for cv = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 555
    :goto_2
    return-object v1

    .line 495
    .end local v0    # "where":Ljava/lang/String;
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v4    # "columns":[Ljava/lang/String;
    .end local v6    # "whereArgs":[Ljava/lang/String;
    :cond_6
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OPselectConflictingRow() called for non-conflicting row = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 496
    return-object v1
.end method

.method private OPupdateFindApn(Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "row"    # Landroid/content/ContentValues;

    .line 637
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPupdateFindApn(Landroid/content/ContentValues;I)V

    .line 638
    return-void
.end method

.method private OPupdateFindApn(Landroid/content/ContentValues;I)V
    .locals 4
    .param p1, "row"    # Landroid/content/ContentValues;
    .param p2, "conflictRule"    # I

    .line 643
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPselectConflictingRow(Landroid/content/ContentValues;I)Landroid/database/Cursor;

    move-result-object v0

    .line 644
    .local v0, "oldRow":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OPupdateFindApn() there is no row = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "in db."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 650
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OPupdateFindApn() there is one row in db. updateFindFlag = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->updateFindFlag:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 653
    sget-boolean v1, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->updateFindFlag:Z

    if-nez v1, :cond_3

    .line 655
    sput-boolean v2, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->updateFindFlag:Z

    .line 657
    if-ne p2, v2, :cond_1

    .line 659
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPgetWhereArgsVerizon(Landroid/content/ContentValues;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->whereArgsUpdateFind:[Ljava/lang/String;

    goto :goto_0

    .line 663
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPgetWhereArgs(Landroid/content/ContentValues;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->whereArgsUpdateFind:[Ljava/lang/String;

    goto :goto_0

    .line 670
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OPupdateFindApn() there are "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " old rows in db. Do not update APN !!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 672
    :cond_3
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 674
    :goto_1
    return-void
.end method

.method private OPupdateNewApn(Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "row"    # Landroid/content/ContentValues;

    .line 679
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPupdateNewApn(Landroid/content/ContentValues;I)V

    .line 680
    return-void
.end method

.method private OPupdateNewApn(Landroid/content/ContentValues;I)V
    .locals 5
    .param p1, "row"    # Landroid/content/ContentValues;
    .param p2, "conflictRule"    # I

    .line 685
    const/4 v0, 0x0

    .line 687
    .local v0, "update_count":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OPupdateNewApn() updateFindFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->updateFindFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 689
    sget-boolean v1, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->updateFindFlag:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 693
    if-ne p2, v2, :cond_0

    .line 695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=? AND "

    sget-object v3, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->VERIZON_UNIQUE_FIELDS:Ljava/util/List;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "where":Ljava/lang/String;
    goto :goto_0

    .line 699
    .end local v1    # "where":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=? AND "

    sget-object v3, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->CARRIERS_UNIQUE_FIELDS:Ljava/util/List;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 702
    .restart local v1    # "where":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OPupdateNewApn() where = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 703
    iget-object v2, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->whereArgsUpdateFind:[Ljava/lang/String;

    invoke-virtual {v2, v3, p1, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 704
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OPupdateNewApn() update_count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 707
    .end local v1    # "where":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->updateFindFlag:Z

    .line 708
    const/4 v1, 0x0

    sput-object v1, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->whereArgsUpdateFind:[Ljava/lang/String;

    .line 709
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/OPOnlineConfigTelephony;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/OPOnlineConfigTelephony;
    .param p1, "x1"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/OPOnlineConfigTelephony;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/OPOnlineConfigTelephony;
    .param p1, "x1"    # I

    .line 77
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->triggerOPOnlineConfigTelephonyLoading(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/OPOnlineConfigTelephony;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/OPOnlineConfigTelephony;

    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/OPOnlineConfigTelephony;Lorg/json/JSONArray;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/OPOnlineConfigTelephony;
    .param p1, "x1"    # Lorg/json/JSONArray;
    .param p2, "x2"    # I

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->resolveOPOnlineConfigApnFromJSONandUpdateDb(Lorg/json/JSONArray;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/OPOnlineConfigTelephony;Lorg/json/JSONArray;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/OPOnlineConfigTelephony;
    .param p1, "x1"    # Lorg/json/JSONArray;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->resolveOPOnlineCarrierConfigFromJSON(Lorg/json/JSONArray;ZI)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/OPOnlineConfigTelephony;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/OPOnlineConfigTelephony;
    .param p1, "x1"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 77
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPreplaceVzwApns(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/OPOnlineConfigTelephony;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/OPOnlineConfigTelephony;
    .param p1, "x1"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private addBoolAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "att"    # Ljava/lang/String;
    .param p3, "map"    # Landroid/content/ContentValues;
    .param p4, "key"    # Ljava/lang/String;

    .line 1063
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1064
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1065
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p3, p4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1067
    :cond_0
    return-void
.end method

.method private addIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "att"    # Ljava/lang/String;
    .param p3, "map"    # Landroid/content/ContentValues;
    .param p4, "key"    # Ljava/lang/String;

    .line 1054
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1055
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1056
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, p4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1058
    :cond_0
    return-void
.end method

.method private addStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "att"    # Ljava/lang/String;
    .param p3, "map"    # Landroid/content/ContentValues;
    .param p4, "key"    # Ljava/lang/String;

    .line 1045
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1046
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1047
    invoke-virtual {p3, p4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    :cond_0
    return-void
.end method

.method private checkApnsVersion(Lorg/json/JSONArray;)Z
    .locals 5
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 254
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 255
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "jsonApnsVersionName":Ljava/lang/String;
    const-string v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->jsonApnsVersionInt:I

    .line 259
    const-string v3, "persist.radio.apns_ver_updated"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->propApnsVersionUpdated:I

    .line 260
    const-string v3, "persist.radio.apns_ver_xml"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->propApnsVersionInXML:I

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkApnsVersion() jsonApnsVersionInt = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->jsonApnsVersionInt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", propApnsVersionUpdated = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->propApnsVersionUpdated:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " propApnsVersionInXML = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->propApnsVersionInXML:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 265
    const-string v3, "apns version"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 267
    const-string v3, "checkApnsVersion() the first object in config.json is not apns version, do nothing !!!"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 268
    return v0

    .line 271
    :cond_0
    sget v3, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->jsonApnsVersionInt:I

    sget v4, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->propApnsVersionInXML:I

    if-gt v3, v4, :cond_1

    .line 273
    const-string v3, "checkApnsVersion() version in config.json <= apns-conf.xml, do nothing !!!"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 274
    return v0

    .line 277
    :cond_1
    sget v3, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->jsonApnsVersionInt:I

    sget v4, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->propApnsVersionUpdated:I

    if-gt v3, v4, :cond_2

    .line 279
    const-string v3, "checkApnsVersion() version in config.json <= persist.radio.apns_ver_updated, do nothing !!!"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    return v0

    .line 285
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    .end local v2    # "jsonApnsVersionName":Ljava/lang/String;
    :cond_2
    nop

    .line 287
    const/4 v0, 0x1

    return v0

    .line 282
    :catch_0
    move-exception v1

    .line 283
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkApnsVersion() checkApnsVersion error message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 284
    return v0
.end method

.method private getRowFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 956
    const-string v0, "apn"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 957
    return-object v1

    .line 960
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 962
    .local v0, "map":Landroid/content/ContentValues;
    const-string v2, "mcc"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 963
    .local v2, "mcc":Ljava/lang/String;
    const-string v3, "mnc"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 964
    .local v3, "mnc":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 966
    .local v4, "numeric":Ljava/lang/String;
    const-string v5, "numeric"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    const-string v5, "mcc"

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    const-string v5, "mnc"

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    const-string v5, "name"

    const-string v6, "carrier"

    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    const-string v5, "apn"

    const-string v6, "apn"

    invoke-direct {p0, p1, v5, v0, v6}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->addStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 973
    const-string v5, "user"

    const-string v6, "user"

    invoke-direct {p0, p1, v5, v0, v6}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->addStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 974
    const-string v5, "server"

    const-string v6, "server"

    invoke-direct {p0, p1, v5, v0, v6}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->addStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 975
    const-string v5, "password"

    const-string v6, "password"

    invoke-direct {p0, p1, v5, v0, v6}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->addStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 976
    const-string v5, "proxy"

    const-string v6, "proxy"

    invoke-direct {p0, p1, v5, v0, v6}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->addStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 977
    const-string v5, "port"

    const-string v6, "port"

    invoke-direct {p0, p1, v5, v0, v6}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->addStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 978
    const-string v5, "mmsproxy"

    const-string v6, "mmsproxy"

    invoke-direct {p0, p1, v5, v0, v6}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->addStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 979
    const-string v5, "mmsport"

    const-string v6, "mmsport"

    invoke-direct {p0, p1, v5, v0, v6}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->addStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 980
    const-string v5, "mmsc"

    const-string v6, "mmsc"

    invoke-direct {p0, p1, v5, v0, v6}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->addStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 982
    const-string v5, "type"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 983
    .local v5, "apnType":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 985
    const-string v6, "\\s+"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 986
    const-string v6, "type"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    :cond_1
    const-string v6, "protocol"

    const-string v7, "protocol"

    invoke-direct {p0, p1, v6, v0, v7}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->addStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 990
    const-string v6, "roaming_protocol"

    const-string v7, "roaming_protocol"

    invoke-direct {p0, p1, v6, v0, v7}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->addStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 992
    const-string v6, "authtype"

    const-string v7, "authtype"

    invoke-direct {p0, p1, v6, v0, v7}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->addIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 993
    const-string v6, "bearer"

    const-string v7, "bearer"

    invoke-direct {p0, p1, v6, v0, v7}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->addIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 994
    const-string v6, "profile_id"

    const-string v7, "profile_id"

    invoke-direct {p0, p1, v6, v0, v7}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->addIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 995
    const-string v6, "max_conns"

    const-string v7, "max_conns"

    invoke-direct {p0, p1, v6, v0, v7}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->addIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 996
    const-string v6, "wait_time"

    const-string v7, "wait_time"

    invoke-direct {p0, p1, v6, v0, v7}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->addIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 997
    const-string v6, "max_conns_time"

    const-string v7, "max_conns_time"

    invoke-direct {p0, p1, v6, v0, v7}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->addIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 998
    const-string v6, "mtu"

    const-string v7, "mtu"

    invoke-direct {p0, p1, v6, v0, v7}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->addIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 999
    const-string v6, "apn_set_id"

    const-string v7, "apn_set_id"

    invoke-direct {p0, p1, v6, v0, v7}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->addIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1000
    const-string v6, "carrier_enabled"

    const-string v7, "carrier_enabled"

    invoke-direct {p0, p1, v6, v0, v7}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->addBoolAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1001
    const-string v6, "modem_cognitive"

    const-string v7, "modem_cognitive"

    invoke-direct {p0, p1, v6, v0, v7}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->addBoolAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1002
    const-string v6, "user_visible"

    const-string v7, "user_visible"

    invoke-direct {p0, p1, v6, v0, v7}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->addBoolAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1003
    const-string v6, "user_editable"

    const-string v7, "user_editable"

    invoke-direct {p0, p1, v6, v0, v7}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->addBoolAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1004
    const-string v6, "persistent"

    const-string v7, "persistent"

    invoke-direct {p0, p1, v6, v0, v7}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->addBoolAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1005
    const-string v6, "read_only"

    const-string v7, "read_only"

    invoke-direct {p0, p1, v6, v0, v7}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->addBoolAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1007
    const/4 v6, 0x0

    .line 1008
    .local v6, "networkTypeBitmask":I
    const-string v7, "network_type_bitmask"

    invoke-interface {p1, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1009
    .local v7, "networkTypeList":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 1010
    invoke-static {v7}, Landroid/telephony/ServiceState;->getBitmaskFromString(Ljava/lang/String;)I

    move-result v6

    .line 1012
    :cond_2
    const-string v8, "network_type_bitmask"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1014
    const/4 v8, 0x0

    .line 1015
    .local v8, "bearerBitmask":I
    if-eqz v7, :cond_3

    .line 1016
    nop

    .line 1017
    invoke-static {v6}, Landroid/telephony/ServiceState;->convertNetworkTypeBitmaskToBearerBitmask(I)I

    move-result v8

    goto :goto_0

    .line 1019
    :cond_3
    const-string v9, "bearer_bitmask"

    invoke-interface {p1, v1, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1020
    .local v9, "bearerList":Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 1021
    invoke-static {v9}, Landroid/telephony/ServiceState;->getBitmaskFromString(Ljava/lang/String;)I

    move-result v8

    .line 1024
    :cond_4
    invoke-static {v8}, Landroid/telephony/ServiceState;->convertBearerBitmaskToNetworkTypeBitmask(I)I

    move-result v6

    .line 1026
    const-string v10, "network_type_bitmask"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1028
    .end local v9    # "bearerList":Ljava/lang/String;
    :goto_0
    const-string v9, "bearer_bitmask"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1030
    const-string v9, "mvno_type"

    invoke-interface {p1, v1, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1031
    .local v9, "mvno_type":Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 1032
    const-string v10, "mvno_match_data"

    invoke-interface {p1, v1, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1033
    .local v1, "mvno_match_data":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 1034
    const-string v10, "mvno_type"

    invoke-virtual {v0, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    const-string v10, "mvno_match_data"

    invoke-virtual {v0, v10, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    .end local v1    # "mvno_match_data":Ljava/lang/String;
    :cond_5
    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 1106
    const-string v0, "OPOnlineConfigTelephony"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 1110
    const-string v0, "OPOnlineConfigTelephony"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    return-void
.end method

.method private resolveOPOnlineCarrierConfigFromJSON(Lorg/json/JSONArray;ZI)V
    .locals 12
    .param p1, "jsonArray"    # Lorg/json/JSONArray;
    .param p2, "newConfig"    # Z
    .param p3, "phoneId"    # I

    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resolveOPOnlineCarrierConfigFromJSON(phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") start..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 855
    if-nez p1, :cond_0

    .line 856
    const-string v0, "resolveOPOnlineCarrierConfigFromJSON() jsonArray is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 857
    return-void

    .line 860
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 861
    .local v0, "simOperator":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 862
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveOPOnlineCarrierConfigFromJSON() simOperator("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 863
    return-void

    .line 865
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveOPOnlineCarrierConfigFromJSON: phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " simOperator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 867
    if-eqz p2, :cond_2

    .line 868
    const-string v1, "persist.radio.carrierconfig"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    const-string v1, "Clear persist.radio.carrierconfig"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 873
    :cond_2
    const/4 v1, 0x0

    .local v1, "indexJsonArray":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 875
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 876
    .local v2, "jsonObj":Lorg/json/JSONObject;
    if-nez v2, :cond_3

    .line 877
    const-string v3, "resolveOPOnlineCarrierConfigFromJSON() jsonObj is null"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 878
    return-void

    .line 880
    :cond_3
    const-string v3, "MCC"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 881
    .local v3, "jsonMcc":Ljava/lang/String;
    const-string v4, "MNC"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 882
    .local v4, "jsonMnc":Ljava/lang/String;
    const-string v5, "VolteDefaultEnabled"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 883
    .local v5, "jsonVolteDefaultEnabled":Ljava/lang/String;
    const-string v6, "VolteAvail"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 884
    .local v6, "jsonVolteAvail":Ljava/lang/String;
    const-string v7, "VtAvail"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 885
    .local v7, "jsonVtAvail":Ljava/lang/String;
    const-string v8, "WfcAvail"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 887
    .local v8, "jsonWfcAvail":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "resolveOPOnlineCarrierConfigFromJSON: MCC = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", MNC = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", VolteDefaultEnabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", VolteAvail = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", VtAvail = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", WfcAvail = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 894
    if-eqz v0, :cond_4

    .line 896
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 898
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 905
    .local v9, "carrier_config":Ljava/lang/String;
    const-string v10, "persist.radio.carrierconfig"

    invoke-static {p3, v10, v9}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 907
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PLMN Match write to SystemProp, phoneId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " carrier_config="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 908
    goto :goto_1

    .line 873
    .end local v9    # "carrier_config":Ljava/lang/String;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 914
    .end local v1    # "indexJsonArray":I
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    .end local v3    # "jsonMcc":Ljava/lang/String;
    .end local v4    # "jsonMnc":Ljava/lang/String;
    .end local v5    # "jsonVolteDefaultEnabled":Ljava/lang/String;
    .end local v6    # "jsonVolteAvail":Ljava/lang/String;
    .end local v7    # "jsonVtAvail":Ljava/lang/String;
    .end local v8    # "jsonWfcAvail":Ljava/lang/String;
    :cond_5
    :goto_1
    goto :goto_2

    .line 912
    :catch_0
    move-exception v1

    .line 913
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolveOPOnlineCarrierConfigFromJSON() error, Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 915
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_2
    return-void
.end method

.method private resolveOPOnlineConfigApnFromJSONandUpdateDb(Lorg/json/JSONArray;I)V
    .locals 6
    .param p1, "jsonArray"    # Lorg/json/JSONArray;
    .param p2, "reset_prop_version"    # I

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resolveOPOnlineConfigApnFromJSON() start, reset_prop_version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 761
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 763
    const-string v1, "persist.radio.apns_ver_updated"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    :cond_0
    if-nez p1, :cond_1

    .line 767
    const-string v0, "resolveOPOnlineConfigApnFromJSON() jsonArray is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 768
    return-void

    .line 771
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->checkApnsVersion(Lorg/json/JSONArray;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 773
    const-string v0, "resolveOPOnlineConfigApnFromJSON() checkVersion() == false"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 774
    return-void

    .line 779
    :cond_2
    nop

    .local v0, "indexJsonArray":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 781
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 782
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string v2, "action"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 784
    .local v2, "jsonAction":Ljava/lang/String;
    if-eqz v2, :cond_8

    .line 786
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resolveOPOnlineConfigApnFromJSON() indexJsonArray = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", jsonAction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 789
    const-string v3, "target"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 791
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPcheckTarget(Lorg/json/JSONObject;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 793
    goto :goto_1

    .line 801
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPgetRow(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v3

    .line 802
    .local v3, "row":Landroid/content/ContentValues;
    if-eqz v3, :cond_9

    .line 804
    const-string v4, "insert"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 806
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPinsertApn(Landroid/content/ContentValues;)V

    goto :goto_1

    .line 808
    :cond_4
    const-string v4, "delete"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 810
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPdeleteApn(Landroid/content/ContentValues;)V

    goto :goto_1

    .line 812
    :cond_5
    const-string v4, "update-find"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 814
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPupdateFindApn(Landroid/content/ContentValues;)V

    goto :goto_1

    .line 816
    :cond_6
    const-string v4, "update-new"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 818
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->OPupdateNewApn(Landroid/content/ContentValues;)V

    goto :goto_1

    .line 822
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolveOPOnlineConfigApnFromJSON() Do not support "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " !"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 828
    .end local v3    # "row":Landroid/content/ContentValues;
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resolveOPOnlineConfigApnFromJSON() indexJsonArray = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", jsonAction = null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 779
    :cond_9
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 835
    .end local v0    # "indexJsonArray":I
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    .end local v2    # "jsonAction":Ljava/lang/String;
    :cond_a
    nop

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resolveOPOnlineConfigApnFromJSON() end, set jsonApnsVersionInt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->jsonApnsVersionInt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to PROP_APNS_VERSION_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V

    .line 838
    const-string v0, "persist.radio.apns_ver_updated"

    sget v1, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->jsonApnsVersionInt:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    return-void

    .line 834
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 831
    :catch_0
    move-exception v0

    .line 832
    .local v0, "e":Lorg/json/JSONException;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveOPOnlineConfigApnFromJSON() error message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 833
    return-void

    .line 834
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2
    throw v0
.end method

.method private triggerOPOnlineConfigTelephonyLoading(I)V
    .locals 2
    .param p1, "reset_prop_version"    # I

    .line 1072
    iget-object v0, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->mOPOnlineConfigTelephonyHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1073
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1074
    iget-object v1, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->mOPOnlineConfigTelephonyHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1075
    return-void
.end method
