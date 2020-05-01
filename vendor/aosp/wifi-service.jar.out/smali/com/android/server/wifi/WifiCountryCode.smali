.class public Lcom/android/server/wifi/WifiCountryCode;
.super Ljava/lang/Object;
.source "WifiCountryCode.java"


# static fields
.field static final PROPERTY_ICC_OPERATOR_ISO_COUNTRY:Ljava/lang/String; = "gsm.sim.operator.iso-country"

.field static final PROPERTY_OPERATOR_ISO_COUNTRY:Ljava/lang/String; = "gsm.operator.iso-country"

.field static final PROPERTY_PERSIST_COUNTRY:Ljava/lang/String; = "persist.vendor.wificountrycode"

.field private static final TAG:Ljava/lang/String; = "WifiCountryCode"


# instance fields
.field private DBG:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentCountryCode:Ljava/lang/String;

.field private mDefaultCountryCode:Ljava/lang/String;

.field private mReady:Z

.field private mRevertCountryCodeOnCellularLoss:Z

.field private mTelephonyCountryCode:Ljava/lang/String;

.field private mWifiInjector:Lcom/android/server/wifi/WifiInjector;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;Ljava/lang/String;ZLcom/android/server/wifi/WifiInjector;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p3, "oemDefaultCountryCode"    # Ljava/lang/String;
    .param p4, "revertCountryCodeOnCellularLoss"    # Z
    .param p5, "wifiInjector"    # Lcom/android/server/wifi/WifiInjector;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    .line 47
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mReady:Z

    .line 54
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/WifiCountryCode;->mDefaultCountryCode:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/android/server/wifi/WifiCountryCode;->mTelephonyCountryCode:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/android/server/wifi/WifiCountryCode;->mCurrentCountryCode:Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lcom/android/server/wifi/WifiCountryCode;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/android/server/wifi/WifiCountryCode;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 83
    iput-boolean p4, p0, Lcom/android/server/wifi/WifiCountryCode;->mRevertCountryCodeOnCellularLoss:Z

    .line 85
    iput-object p5, p0, Lcom/android/server/wifi/WifiCountryCode;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    .line 88
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mDefaultCountryCode:Ljava/lang/String;

    goto :goto_0

    .line 97
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiCountryCode;->mRevertCountryCodeOnCellularLoss:Z

    if-eqz v1, :cond_1

    .line 98
    const-string v1, "WifiCountryCode"

    const-string v2, "config_wifi_revert_country_code_on_cellular_loss is set, but there is no default country code."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mRevertCountryCodeOnCellularLoss:Z

    .line 101
    return-void

    .line 105
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mRevertCountryCodeOnCellularLoss:Z

    if-eqz v0, :cond_2

    .line 106
    const-string v0, "WifiCountryCode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Country code will be reverted to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/WifiCountryCode;->mDefaultCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on MCC loss"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiNative;Ljava/lang/String;ZLcom/android/server/wifi/WifiInjector;)V
    .locals 6
    .param p1, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p2, "oemDefaultCountryCode"    # Ljava/lang/String;
    .param p3, "revertCountryCodeOnCellularLoss"    # Z
    .param p4, "wifiInjector"    # Lcom/android/server/wifi/WifiInjector;

    .line 117
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiCountryCode;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;Ljava/lang/String;ZLcom/android/server/wifi/WifiInjector;)V

    .line 124
    return-void
.end method

.method private declared-synchronized getCountryCodeProperty()Ljava/lang/String;
    .locals 10

    monitor-enter p0

    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, "country":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lcom/android/server/wifi/WifiCountryCode$1;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiCountryCode$1;-><init>(Lcom/android/server/wifi/WifiCountryCode;)V

    .line 345
    .local v1, "isoCountryProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 346
    .local v3, "propName":Ljava/lang/String;
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 347
    .local v4, "property":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 348
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 349
    .local v5, "str":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_1

    .line 350
    aget-object v7, v5, v6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 351
    aget-object v7, v5, v6

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 352
    const-string v7, "WifiCountryCode"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Get telephony country code in property: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    goto :goto_2

    .line 349
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 357
    .end local v3    # "propName":Ljava/lang/String;
    .end local v4    # "property":Ljava/lang/String;
    .end local v5    # "str":[Ljava/lang/String;
    .end local v6    # "i":I
    :cond_1
    :goto_2
    goto :goto_0

    .line 358
    :cond_2
    monitor-exit p0

    return-object v0

    .line 338
    .end local v0    # "country":Ljava/lang/String;
    .end local v1    # "isoCountryProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiCountryCode;
    throw v0
.end method

.method private pickCountryCode()Ljava/lang/String;
    .locals 5

    .line 277
    iget-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mTelephonyCountryCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mTelephonyCountryCode:Ljava/lang/String;

    return-object v0

    .line 281
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiCountryCode;->getCountryCodeProperty()Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "countryCode":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 283
    return-object v0

    .line 286
    :cond_1
    const-string v1, "sys.radio.mcc"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "mcc":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "WifiCountryCode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pickCountryCode:mcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 290
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 294
    goto :goto_0

    .line 291
    :catch_0
    move-exception v2

    .line 292
    .local v2, "re":Ljava/lang/Exception;
    const-string v3, "WifiCountryCode"

    const-string v4, "radio mcc is not number string"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v0, 0x0

    .line 295
    .end local v2    # "re":Ljava/lang/Exception;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 297
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "WifiCountryCode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pickCountryCode:mcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " countryCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_3
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 307
    :cond_4
    const-string v2, "persist.vendor.wificountrycode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, "persistCountryCode":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 309
    return-object v2

    .line 311
    :cond_5
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v4, v3, v4

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "CN"

    goto :goto_1

    :cond_6
    const-string v3, "US"

    :goto_1
    return-object v3
.end method

.method private sendCountryCodeChangedBroadcast()V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 139
    return-void

    .line 142
    :cond_0
    const-string v0, "WifiCountryCode"

    const-string v1, "sending WIFI_COUNTRY_CODE_CHANGED_ACTION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.COUNTRY_CODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 145
    const-string v1, "country_code"

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiCountryCode;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    iget-object v1, p0, Lcom/android/server/wifi/WifiCountryCode;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 147
    return-void
.end method

.method private setCountryCodeNative(Ljava/lang/String;)Z
    .locals 3
    .param p1, "country"    # Ljava/lang/String;

    .line 325
    iget-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiCountryCode;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->getClientInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiNative;->setCountryCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    const-string v0, "WifiCountryCode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Succeeded to set country code to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v0, "persist.vendor.wificountrycode"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iput-object p1, p0, Lcom/android/server/wifi/WifiCountryCode;->mCurrentCountryCode:Ljava/lang/String;

    .line 331
    const/4 v0, 0x1

    return v0

    .line 333
    :cond_0
    const-string v0, "WifiCountryCode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set country code to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method private updateCountryCode()V
    .locals 3

    .line 251
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiCountryCode"

    const-string v1, "Update country code"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiCountryCode;->pickCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "country":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 260
    iget-object v1, p0, Lcom/android/server/wifi/WifiCountryCode;->mCurrentCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 261
    iget-object v1, p0, Lcom/android/server/wifi/WifiCountryCode;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiInjector;->getWifiStateMachine()Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiCountryCode;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 262
    iget-object v1, p0, Lcom/android/server/wifi/WifiCountryCode;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    if-eqz v1, :cond_1

    .line 263
    iget-object v1, p0, Lcom/android/server/wifi/WifiCountryCode;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->setWifiDefaultPower()Z

    goto :goto_0

    .line 265
    :cond_1
    const-string v1, "WifiCountryCode"

    const-string v2, "mWifiStateMachine is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiCountryCode;->setCountryCodeNative(Ljava/lang/String;)Z

    .line 274
    :cond_3
    return-void
.end method


# virtual methods
.method public declared-synchronized airplaneModeEnabled()V
    .locals 2

    monitor-enter p0

    .line 155
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiCountryCode"

    const-string v1, "Airplane Mode Enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mTelephonyCountryCode:Ljava/lang/String;

    .line 159
    invoke-direct {p0}, Lcom/android/server/wifi/WifiCountryCode;->sendCountryCodeChangedBroadcast()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiCountryCode;
    throw v0
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    monitor-enter p0

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mCurrentCountryCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CountryCode sent to driver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiCountryCode;->mCurrentCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiCountryCode;->pickCountryCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CountryCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wifi/WifiCountryCode;->pickCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was not sent to driver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_1
    const-string v0, "CountryCode was not initialized"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :goto_0
    monitor-exit p0

    return-void

    .line 238
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiCountryCode;
    throw p1
.end method

.method public enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .line 130
    if-lez p1, :cond_0

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    goto :goto_0

    .line 133
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    .line 135
    :goto_0
    return-void
.end method

.method public declared-synchronized getCountryCode()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 232
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiCountryCode;->pickCountryCode()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiCountryCode;
    throw v0
.end method

.method public declared-synchronized getCountryCodeSentToDriver()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mCurrentCountryCode:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiCountryCode;
    throw v0
.end method

.method public declared-synchronized setCountryCode(Ljava/lang/String;)Z
    .locals 3
    .param p1, "countryCode"    # Ljava/lang/String;

    monitor-enter p0

    .line 186
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiCountryCode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive set country code request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mRevertCountryCodeOnCellularLoss:Z

    if-eqz v0, :cond_3

    .line 190
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiCountryCode"

    const-string v1, "Received empty country code, reset to default country code"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mTelephonyCountryCode:Ljava/lang/String;

    goto :goto_0

    .line 195
    :cond_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mTelephonyCountryCode:Ljava/lang/String;

    .line 204
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mReady:Z

    if-eqz v0, :cond_4

    .line 205
    invoke-direct {p0}, Lcom/android/server/wifi/WifiCountryCode;->updateCountryCode()V

    .line 207
    :cond_4
    invoke-direct {p0}, Lcom/android/server/wifi/WifiCountryCode;->sendCountryCodeChangedBroadcast()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 185
    .end local p1    # "countryCode":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiCountryCode;
    throw p1
.end method

.method public declared-synchronized setCountryCodeFromMcc(I)Z
    .locals 4
    .param p1, "mcc"    # I

    monitor-enter p0

    .line 369
    const/4 v0, 0x0

    .line 370
    .local v0, "countryCode":Ljava/lang/String;
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiCountryCode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCountryCodeFromMcc:Receive set country code request from mcc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 376
    goto :goto_0

    .line 373
    :catch_0
    move-exception v1

    .line 374
    .local v1, "re":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "WifiCountryCode"

    const-string v3, "radio mcc is not number string"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v0, 0x0

    .line 377
    .end local v1    # "re":Ljava/lang/Exception;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 379
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "WifiCountryCode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCountryCodeFromMcc:mcc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " countryCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiCountryCode;->setCountryCode(Ljava/lang/String;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    .line 387
    :cond_2
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 368
    .end local v0    # "countryCode":Ljava/lang/String;
    .end local p1    # "mcc":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiCountryCode;
    throw p1
.end method

.method public declared-synchronized setReadyForChange(Z)V
    .locals 3
    .param p1, "ready"    # Z

    monitor-enter p0

    .line 169
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiCountryCode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set ready: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiCountryCode;->mReady:Z

    .line 173
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mReady:Z

    if-eqz v0, :cond_1

    .line 174
    invoke-direct {p0}, Lcom/android/server/wifi/WifiCountryCode;->updateCountryCode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :cond_1
    monitor-exit p0

    return-void

    .line 168
    .end local p1    # "ready":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiCountryCode;
    throw p1
.end method
