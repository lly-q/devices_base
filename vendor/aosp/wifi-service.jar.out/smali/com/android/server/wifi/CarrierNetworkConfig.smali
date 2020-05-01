.class public Lcom/android/server/wifi/CarrierNetworkConfig;
.super Ljava/lang/Object;
.source "CarrierNetworkConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/CarrierNetworkConfig$NetworkInfo;
    }
.end annotation


# static fields
.field private static final CONFIG_ELEMENT_SIZE:I = 0x2

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final EAP_TYPE_INDEX:I = 0x1

.field private static final ENCODED_SSID_INDEX:I = 0x0

.field private static final NETWORK_CONFIG_SEPARATOR:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String; = "CarrierNetworkConfig"


# instance fields
.field private final mCarrierNetworkMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/CarrierNetworkConfig$NetworkInfo;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field private mIsCarrierImsiEncryptionInfoAvailable:Z

.field private mWifiService:Landroid/net/wifi/IWifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    const-string v0, "content://carrier_information/carrier"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/CarrierNetworkConfig;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/FrameworkFacade;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "framework"    # Lcom/android/server/wifi/FrameworkFacade;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/CarrierNetworkConfig;->mIsCarrierImsiEncryptionInfoAvailable:Z

    .line 67
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/CarrierNetworkConfig;->mWifiService:Landroid/net/wifi/IWifiManager;

    .line 73
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/CarrierNetworkConfig;->mCarrierNetworkMap:Ljava/util/Map;

    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/wifi/CarrierNetworkConfig;->updateNetworkConfig(Landroid/content/Context;)V

    .line 76
    iput-object p1, p0, Lcom/android/server/wifi/CarrierNetworkConfig;->mContext:Landroid/content/Context;

    .line 80
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 81
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    new-instance v2, Lcom/android/server/wifi/CarrierNetworkConfig$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/CarrierNetworkConfig$1;-><init>(Lcom/android/server/wifi/CarrierNetworkConfig;)V

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    sget-object v2, Lcom/android/server/wifi/CarrierNetworkConfig;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Lcom/android/server/wifi/CarrierNetworkConfig$2;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v3, p0, v4, p1}, Lcom/android/server/wifi/CarrierNetworkConfig$2;-><init>(Lcom/android/server/wifi/CarrierNetworkConfig;Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {p3, p1, v2, v0, v3}, Lcom/android/server/wifi/FrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/CarrierNetworkConfig;)Landroid/net/wifi/IWifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/CarrierNetworkConfig;

    .line 55
    iget-object v0, p0, Lcom/android/server/wifi/CarrierNetworkConfig;->mWifiService:Landroid/net/wifi/IWifiManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/wifi/CarrierNetworkConfig;Landroid/net/wifi/IWifiManager;)Landroid/net/wifi/IWifiManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/CarrierNetworkConfig;
    .param p1, "x1"    # Landroid/net/wifi/IWifiManager;

    .line 55
    iput-object p1, p0, Lcom/android/server/wifi/CarrierNetworkConfig;->mWifiService:Landroid/net/wifi/IWifiManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/wifi/CarrierNetworkConfig;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/CarrierNetworkConfig;
    .param p1, "x1"    # Landroid/content/Context;

    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/wifi/CarrierNetworkConfig;->updateNetworkConfig(Landroid/content/Context;)V

    return-void
.end method

.method private static parseEapType(I)I
    .locals 1
    .param p0, "eapType"    # I

    .line 343
    const/16 v0, 0x12

    if-ne p0, v0, :cond_0

    .line 344
    const/4 v0, 0x4

    return v0

    .line 345
    :cond_0
    const/16 v0, 0x17

    if-ne p0, v0, :cond_1

    .line 346
    const/4 v0, 0x5

    return v0

    .line 347
    :cond_1
    const/16 v0, 0x32

    if-ne p0, v0, :cond_2

    .line 348
    const/4 v0, 0x6

    return v0

    .line 350
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private processNetworkConfig(Landroid/os/PersistableBundle;Ljava/lang/String;I)V
    .locals 17
    .param p1, "carrierConfig"    # Landroid/os/PersistableBundle;
    .param p2, "carrierName"    # Ljava/lang/String;
    .param p3, "simSlot"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 267
    if-nez v2, :cond_0

    .line 268
    return-void

    .line 270
    :cond_0
    const-string v0, "carrier_wifi_string_array"

    invoke-virtual {v2, v0}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, "networkConfigs":[Ljava/lang/String;
    if-nez v3, :cond_1

    .line 274
    const-string v0, "CarrierNetworkConfig"

    const-string v4, "No carrier network config"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-void

    .line 279
    :cond_1
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_6

    aget-object v7, v3, v6

    .line 280
    .local v7, "networkConfig":Ljava/lang/String;
    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 281
    .local v8, "configArr":[Ljava/lang/String;
    array-length v0, v8

    const/4 v9, 0x2

    if-eq v0, v9, :cond_2

    .line 282
    const-string v0, "CarrierNetworkConfig"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignore invalid config: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    nop

    .line 279
    .end local v7    # "networkConfig":Ljava/lang/String;
    .end local v8    # "configArr":[Ljava/lang/String;
    :goto_1
    move-object/from16 v12, p2

    goto/16 :goto_7

    .line 286
    .restart local v7    # "networkConfig":Ljava/lang/String;
    .restart local v8    # "configArr":[Ljava/lang/String;
    :cond_2
    :try_start_0
    new-instance v0, Ljava/lang/String;

    aget-object v10, v8, v5

    invoke-static {v10, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>([B)V

    move-object v10, v0

    .line 289
    .local v10, "ssid":Ljava/lang/String;
    const-string v0, "CarrierNetworkConfig"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Carrier network SSID: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/4 v0, 0x1

    aget-object v11, v8, v0

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Lcom/android/server/wifi/CarrierNetworkConfig;->parseEapType(I)I

    move-result v11

    .line 293
    .local v11, "eapType":I
    const/4 v12, -0x1

    if-ne v11, v12, :cond_3

    .line 294
    const-string v9, "CarrierNetworkConfig"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid EAP type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v8, v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    goto :goto_1

    .line 300
    :cond_3
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    move-object v13, v0

    .line 301
    .local v13, "carrierWifiConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-static {v10}, Lcom/android/server/wifi/util/ScanResultUtil;->createQuotedSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 302
    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v9}, Ljava/util/BitSet;->set(I)V

    .line 303
    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x3

    invoke-virtual {v0, v9}, Ljava/util/BitSet;->set(I)V

    .line 304
    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v0}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 305
    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v11}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 306
    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v9, ""

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 307
    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v9, ""

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 308
    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    add-int/lit8 v14, p3, 0x1

    invoke-virtual {v0, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setSimNum(I)V

    .line 309
    const/4 v14, -0x1

    .line 310
    .local v14, "configNetworkId":I
    iget-object v0, v1, Lcom/android/server/wifi/CarrierNetworkConfig;->mWifiService:Landroid/net/wifi/IWifiManager;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v0, :cond_4

    .line 312
    :try_start_1
    iget-object v0, v1, Lcom/android/server/wifi/CarrierNetworkConfig;->mWifiService:Landroid/net/wifi/IWifiManager;

    iget-object v15, v1, Lcom/android/server/wifi/CarrierNetworkConfig;->mContext:Landroid/content/Context;

    .line 313
    invoke-virtual {v15}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v0, v13, v15}, Landroid/net/wifi/IWifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    move v14, v0

    .line 316
    :goto_2
    goto :goto_3

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v15, "CarrierNetworkConfig"

    const-string v5, "RemoteException: "

    invoke-static {v15, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 318
    :cond_4
    const-string v0, "CarrierNetworkConfig"

    const-string v5, "WifiService is not available"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :goto_3
    if-eq v14, v12, :cond_5

    .line 321
    iget-object v0, v1, Lcom/android/server/wifi/CarrierNetworkConfig;->mCarrierNetworkMap:Ljava/util/Map;

    new-instance v5, Lcom/android/server/wifi/CarrierNetworkConfig$NetworkInfo;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v12, p2

    :try_start_3
    invoke-direct {v5, v11, v12, v14}, Lcom/android/server/wifi/CarrierNetworkConfig$NetworkInfo;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 323
    :cond_5
    move-object/from16 v12, p2

    const-string v0, "CarrierNetworkConfig"

    const-string v5, "Failed to addNetwork"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    .end local v10    # "ssid":Ljava/lang/String;
    .end local v11    # "eapType":I
    .end local v13    # "carrierWifiConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v14    # "configNetworkId":I
    goto :goto_6

    .line 328
    :catch_1
    move-exception v0

    goto :goto_4

    .line 326
    :catch_2
    move-exception v0

    goto :goto_5

    .line 328
    :catch_3
    move-exception v0

    move-object/from16 v12, p2

    .line 329
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_4
    const-string v5, "CarrierNetworkConfig"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to decode SSID: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v7    # "networkConfig":Ljava/lang/String;
    .end local v8    # "configArr":[Ljava/lang/String;
    goto :goto_7

    .line 326
    .restart local v7    # "networkConfig":Ljava/lang/String;
    .restart local v8    # "configArr":[Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 v12, p2

    .line 327
    .local v0, "e":Ljava/lang/NumberFormatException;
    :goto_5
    const-string v5, "CarrierNetworkConfig"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to parse EAP type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v7    # "networkConfig":Ljava/lang/String;
    .end local v8    # "configArr":[Ljava/lang/String;
    :goto_6
    nop

    .line 279
    :goto_7
    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 332
    :cond_6
    move-object/from16 v12, p2

    return-void
.end method

.method private updateNetworkConfig(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 205
    invoke-direct {p0, p1}, Lcom/android/server/wifi/CarrierNetworkConfig;->verifyCarrierImsiEncryptionInfoIsAvailable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/CarrierNetworkConfig;->mIsCarrierImsiEncryptionInfoAvailable:Z

    .line 210
    iget-object v0, p0, Lcom/android/server/wifi/CarrierNetworkConfig;->mWifiService:Landroid/net/wifi/IWifiManager;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/server/wifi/CarrierNetworkConfig;->mCarrierNetworkMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 212
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/CarrierNetworkConfig$NetworkInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/CarrierNetworkConfig;->getCarrierConfigNid(Ljava/lang/String;)I

    move-result v2

    .line 213
    .local v2, "nid":I
    const-string v3, "CarrierNetworkConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remove carrier wifi config nid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/CarrierNetworkConfig;->mWifiService:Landroid/net/wifi/IWifiManager;

    iget-object v4, p0, Lcom/android/server/wifi/CarrierNetworkConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Landroid/net/wifi/IWifiManager;->removeNetwork(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    goto :goto_1

    .line 216
    :catch_0
    move-exception v3

    .line 217
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "CarrierNetworkConfig"

    const-string v5, "RemoteException: "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/CarrierNetworkConfig$NetworkInfo;>;"
    .end local v2    # "nid":I
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 221
    :cond_0
    const-string v0, "CarrierNetworkConfig"

    const-string v1, "WifiService is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/CarrierNetworkConfig;->mCarrierNetworkMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 226
    const-string v0, "carrier_config"

    .line 227
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 228
    .local v0, "carrierConfigManager":Landroid/telephony/CarrierConfigManager;
    if-nez v0, :cond_2

    .line 229
    return-void

    .line 232
    :cond_2
    const-string v1, "telephony_subscription_service"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    .line 234
    .local v1, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    if-nez v1, :cond_3

    .line 235
    return-void

    .line 237
    :cond_3
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 238
    .local v2, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v2, :cond_4

    .line 239
    return-void

    .line 243
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 244
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    nop

    .line 245
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v5

    .line 248
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v7

    .line 244
    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/wifi/CarrierNetworkConfig;->processNetworkConfig(Landroid/os/PersistableBundle;Ljava/lang/String;I)V

    .line 250
    .end local v4    # "subInfo":Landroid/telephony/SubscriptionInfo;
    goto :goto_2

    .line 251
    :cond_5
    return-void
.end method

.method private verifyCarrierImsiEncryptionInfoIsAvailable(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 145
    const-string v0, "phone"

    .line 146
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 147
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 148
    return v1

    .line 151
    :cond_0
    const/4 v2, 0x2

    .line 152
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getCarrierInfoForImsiEncryption(I)Landroid/telephony/ImsiEncryptionInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .local v2, "imsiEncryptionInfo":Landroid/telephony/ImsiEncryptionInfo;
    if-nez v2, :cond_1

    .line 154
    return v1

    .line 159
    .end local v2    # "imsiEncryptionInfo":Landroid/telephony/ImsiEncryptionInfo;
    :cond_1
    nop

    .line 161
    const/4 v1, 0x1

    return v1

    .line 156
    :catch_0
    move-exception v2

    .line 157
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "CarrierNetworkConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get imsi encryption info: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return v1
.end method


# virtual methods
.method public getCarrierConfigNid(Ljava/lang/String;)I
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/android/server/wifi/CarrierNetworkConfig;->mCarrierNetworkMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/CarrierNetworkConfig$NetworkInfo;

    .line 172
    .local v0, "info":Lcom/android/server/wifi/CarrierNetworkConfig$NetworkInfo;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/android/server/wifi/CarrierNetworkConfig$NetworkInfo;->mCarrierConfigNid:I

    :goto_0
    return v1
.end method

.method public getCarrierName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/android/server/wifi/CarrierNetworkConfig;->mCarrierNetworkMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/CarrierNetworkConfig$NetworkInfo;

    .line 127
    .local v0, "info":Lcom/android/server/wifi/CarrierNetworkConfig$NetworkInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/server/wifi/CarrierNetworkConfig$NetworkInfo;->mCarrierName:Ljava/lang/String;

    :goto_0
    return-object v1
.end method

.method public getNetworkEapType(Ljava/lang/String;)I
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/android/server/wifi/CarrierNetworkConfig;->mCarrierNetworkMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/CarrierNetworkConfig$NetworkInfo;

    .line 118
    .local v0, "info":Lcom/android/server/wifi/CarrierNetworkConfig$NetworkInfo;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/android/server/wifi/CarrierNetworkConfig$NetworkInfo;->mEapType:I

    :goto_0
    return v1
.end method

.method public isCarrierEncryptionInfoAvailable()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/android/server/wifi/CarrierNetworkConfig;->mIsCarrierImsiEncryptionInfoAvailable:Z

    return v0
.end method

.method public isCarrierNetwork(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/android/server/wifi/CarrierNetworkConfig;->mCarrierNetworkMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
