.class public Lcom/android/server/wifi/WifiConfigManager;
.super Ljava/lang/Object;
.source "WifiConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;
    }
.end annotation


# static fields
.field public static final LINK_CONFIGURATION_BSSID_MATCH_LENGTH:I = 0x10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final LINK_CONFIGURATION_MAX_SCAN_CACHE_ENTRIES:I = 0x6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final NETWORK_SELECTION_DISABLE_THRESHOLD:[I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final NETWORK_SELECTION_DISABLE_TIMEOUT_MS:[I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final PASSWORD_MASK:Ljava/lang/String; = "*"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SCAN_CACHE_ENTRIES_MAX_SIZE:I = 0xc0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SCAN_CACHE_ENTRIES_TRIM_SIZE:I = 0x80
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final SCAN_RESULT_MAXIMUM_AGE_MS:I = 0x9c40

.field public static final SYSUI_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WifiConfigManager"

.field private static final sScanListComparator:Lcom/android/server/wifi/WifiConfigurationUtil$WifiConfigurationComparator;


# instance fields
.field private final mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private final mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mDeferredUserUnlockRead:Z

.field private final mDeletedEphemeralSSIDs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeletedEphemeralSsidsStoreData:Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;

.field private mLastSelectedNetworkId:I

.field private mLastSelectedTimeStamp:J

.field private mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

.field private final mLocalLog:Landroid/util/LocalLog;

.field private final mMaxNumActiveChannelsForPartialScans:I

.field private final mNetworkListStoreData:Lcom/android/server/wifi/NetworkListStoreData;

.field private mNextNetworkId:I

.field private final mOnlyLinkSameCredentialConfigurations:Z

.field private mPendingStoreRead:Z

.field private mPendingUnlockStoreRead:Z

.field private final mScanDetailCaches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/ScanDetailCache;",
            ">;"
        }
    .end annotation
.end field

.field private mSimPresent:Z

.field private mSystemUiUid:I

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUserManager:Landroid/os/UserManager;

.field private mVerboseLoggingEnabled:Z

.field private final mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

.field private final mWifiConfigStoreLegacy:Lcom/android/server/wifi/WifiConfigStoreLegacy;

.field private final mWifiKeyStore:Lcom/android/server/wifi/WifiKeyStore;

.field private final mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

.field private final mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 115
    const/16 v0, 0xe

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/wifi/WifiConfigManager;->NETWORK_SELECTION_DISABLE_THRESHOLD:[I

    .line 138
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/wifi/WifiConfigManager;->NETWORK_SELECTION_DISABLE_TIMEOUT_MS:[I

    .line 221
    new-instance v0, Lcom/android/server/wifi/WifiConfigManager$1;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiConfigManager$1;-><init>()V

    sput-object v0, Lcom/android/server/wifi/WifiConfigManager;->sScanListComparator:Lcom/android/server/wifi/WifiConfigurationUtil$WifiConfigurationComparator;

    return-void

    :array_0
    .array-data 4
        -0x1
        0x1
        0x5
        0x5
        0x5
        0x5
        0x1
        0x1
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x7fffffff
        0xdbba0
        0x493e0
        0x493e0
        0x493e0
        0x493e0
        0x927c0
        0x0
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x7fffffff
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/Clock;Landroid/os/UserManager;Landroid/telephony/TelephonyManager;Lcom/android/server/wifi/WifiKeyStore;Lcom/android/server/wifi/WifiConfigStore;Lcom/android/server/wifi/WifiConfigStoreLegacy;Lcom/android/server/wifi/util/WifiPermissionsUtil;Lcom/android/server/wifi/util/WifiPermissionsWrapper;Lcom/android/server/wifi/NetworkListStoreData;Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clock"    # Lcom/android/server/wifi/Clock;
    .param p3, "userManager"    # Landroid/os/UserManager;
    .param p4, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p5, "wifiKeyStore"    # Lcom/android/server/wifi/WifiKeyStore;
    .param p6, "wifiConfigStore"    # Lcom/android/server/wifi/WifiConfigStore;
    .param p7, "wifiConfigStoreLegacy"    # Lcom/android/server/wifi/WifiConfigStoreLegacy;
    .param p8, "wifiPermissionsUtil"    # Lcom/android/server/wifi/util/WifiPermissionsUtil;
    .param p9, "wifiPermissionsWrapper"    # Lcom/android/server/wifi/util/WifiPermissionsWrapper;
    .param p10, "networkListStoreData"    # Lcom/android/server/wifi/NetworkListStoreData;
    .param p11, "deletedEphemeralSsidsStoreData"    # Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    new-instance v0, Landroid/util/LocalLog;

    .line 256
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x80

    goto :goto_0

    :cond_0
    const/16 v1, 0x100

    :goto_0
    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    .line 288
    iput v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    .line 294
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mPendingUnlockStoreRead:Z

    .line 300
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mPendingStoreRead:Z

    .line 304
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeferredUserUnlockRead:Z

    .line 308
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mSimPresent:Z

    .line 313
    iput v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mNextNetworkId:I

    .line 318
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mSystemUiUid:I

    .line 325
    iput v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedNetworkId:I

    .line 326
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedTimeStamp:J

    .line 335
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    .line 348
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    .line 349
    iput-object p2, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    .line 350
    iput-object p3, p0, Lcom/android/server/wifi/WifiConfigManager;->mUserManager:Landroid/os/UserManager;

    .line 351
    new-instance v1, Lcom/android/server/wifi/BackupManagerProxy;

    invoke-direct {v1}, Lcom/android/server/wifi/BackupManagerProxy;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

    .line 352
    iput-object p4, p0, Lcom/android/server/wifi/WifiConfigManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 353
    iput-object p5, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    .line 354
    iput-object p6, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    .line 355
    iput-object p7, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStoreLegacy:Lcom/android/server/wifi/WifiConfigStoreLegacy;

    .line 356
    iput-object p8, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    .line 357
    iput-object p9, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    .line 359
    new-instance v1, Lcom/android/server/wifi/ConfigurationMap;

    invoke-direct {v1, p3}, Lcom/android/server/wifi/ConfigurationMap;-><init>(Landroid/os/UserManager;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    .line 360
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x10

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mScanDetailCaches:Ljava/util/Map;

    .line 361
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    .line 364
    iput-object p10, p0, Lcom/android/server/wifi/WifiConfigManager;->mNetworkListStoreData:Lcom/android/server/wifi/NetworkListStoreData;

    .line 365
    iput-object p11, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSsidsStoreData:Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;

    .line 366
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mNetworkListStoreData:Lcom/android/server/wifi/NetworkListStoreData;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->registerStoreData(Lcom/android/server/wifi/WifiConfigStore$StoreData;)Z

    .line 367
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSsidsStoreData:Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->registerStoreData(Lcom/android/server/wifi/WifiConfigStore$StoreData;)Z

    .line 369
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mOnlyLinkSameCredentialConfigurations:Z

    .line 371
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mMaxNumActiveChannelsForPartialScans:I

    .line 375
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.android.systemui"

    const/high16 v3, 0x100000

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mSystemUiUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    goto :goto_1

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "WifiConfigManager"

    const-string v2, "Unable to resolve SystemUI\'s UID."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    return-void
.end method

.method private addOrUpdateNetworkInternal(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;
    .locals 10
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    .line 1028
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1029
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding/Updating network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :cond_0
    const/4 v0, 0x0

    .line 1034
    .local v0, "newInternalConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1036
    .local v1, "existingInternalConfig":Landroid/net/wifi/WifiConfiguration;
    const/4 v2, 0x1

    const/4 v3, -0x1

    if-nez v1, :cond_2

    .line 1037
    invoke-static {p1, v2}, Lcom/android/server/wifi/WifiConfigurationUtil;->validate(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1038
    const-string v2, "WifiConfigManager"

    const-string v4, "Cannot add network with invalid config"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    new-instance v2, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v2, v3}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v2

    .line 1041
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigManager;->createNewInternalWifiConfigurationFromExternal(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1045
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1048
    :cond_2
    const/4 v4, 0x0

    if-eqz v1, :cond_5

    .line 1049
    invoke-static {p1, v4}, Lcom/android/server/wifi/WifiConfigurationUtil;->validate(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1051
    const-string v2, "WifiConfigManager"

    const-string v4, "Cannot update network with invalid config"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    new-instance v2, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v2, v3}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v2

    .line 1055
    :cond_3
    invoke-direct {p0, v1, p2}, Lcom/android/server/wifi/WifiConfigManager;->canModifyNetwork(Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1056
    const-string v2, "WifiConfigManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " does not have permission to update configuration "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1056
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    new-instance v2, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v2, v3}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v2

    .line 1060
    :cond_4
    nop

    .line 1061
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/wifi/WifiConfigManager;->updateExistingInternalWifiConfigurationFromExternal(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1066
    :cond_5
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiConfigurationUtil;->hasProxyChanged(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1067
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiConfigManager;->canModifyProxySettings(I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1068
    const-string v2, "WifiConfigManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " does not have permission to modify proxy Settings "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". Must have NETWORK_SETTINGS, or be device or profile owner."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1068
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    new-instance v2, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v2, v3}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v2

    .line 1076
    :cond_6
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v5, :cond_7

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1077
    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v5

    if-eq v5, v3, :cond_7

    .line 1078
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1079
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    invoke-virtual {v5, v0, v1}, Lcom/android/server/wifi/WifiKeyStore;->updateNetworkKeys(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1080
    new-instance v2, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v2, v3}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v2

    .line 1084
    :cond_7
    if-nez v1, :cond_8

    move v5, v2

    goto :goto_0

    :cond_8
    move v5, v4

    .line 1086
    .local v5, "newNetwork":Z
    :goto_0
    if-nez v5, :cond_a

    .line 1087
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiConfigurationUtil;->hasIpChanged(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_1

    :cond_9
    move v6, v4

    goto :goto_2

    :cond_a
    :goto_1
    move v6, v2

    .line 1089
    .local v6, "hasIpChanged":Z
    :goto_2
    if-nez v5, :cond_c

    .line 1090
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiConfigurationUtil;->hasProxyChanged(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v7

    if-eqz v7, :cond_b

    goto :goto_3

    :cond_b
    move v7, v4

    goto :goto_4

    :cond_c
    :goto_3
    move v7, v2

    .line 1093
    .local v7, "hasProxyChanged":Z
    :goto_4
    if-nez v5, :cond_e

    .line 1094
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiConfigurationUtil;->hasCredentialChanged(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v8

    if-eqz v8, :cond_d

    goto :goto_5

    :cond_d
    move v2, v4

    nop

    .line 1096
    .local v2, "hasCredentialChanged":Z
    :cond_e
    :goto_5
    if-eqz v2, :cond_f

    .line 1097
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setHasEverConnected(Z)V

    .line 1103
    :cond_f
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v4, v0}, Lcom/android/server/wifi/ConfigurationMap;->put(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1107
    nop

    .line 1109
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1110
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v3, :cond_10

    .line 1111
    const-string v3, "WifiConfigManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removed from ephemeral blacklist: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :cond_10
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

    invoke-virtual {v3}, Lcom/android/server/wifi/BackupManagerProxy;->notifyDataChanged()V

    .line 1118
    new-instance v3, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v3, v6, v7, v2}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(ZZZ)V

    .line 1120
    .local v3, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual {v3, v5}, Lcom/android/server/wifi/NetworkUpdateResult;->setIsNewNetwork(Z)V

    .line 1121
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/NetworkUpdateResult;->setNetworkId(I)V

    .line 1123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addOrUpdateNetworkInternal: added/updated config. netId="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " configKey="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " uid="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 1126
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " name="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1123
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 1128
    return-object v3

    .line 1104
    .end local v3    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :catch_0
    move-exception v4

    .line 1105
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v8, "WifiConfigManager"

    const-string v9, "Failed to add network to config map"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1106
    new-instance v8, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v8, v3}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v8
.end method

.method private addToChannelSetForNetworkFromScanDetailCache(Ljava/util/Set;Lcom/android/server/wifi/ScanDetailCache;JJI)Z
    .locals 11
    .param p2, "scanDetailCache"    # Lcom/android/server/wifi/ScanDetailCache;
    .param p3, "nowInMillis"    # J
    .param p5, "ageInMillis"    # J
    .param p7, "maxChannelSetSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/wifi/ScanDetailCache;",
            "JJI)Z"
        }
    .end annotation

    .line 2376
    .local p1, "channelSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 2377
    invoke-virtual {p2}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/ScanDetail;

    .line 2378
    .local v2, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v2}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v3

    .line 2379
    .local v3, "result":Landroid/net/wifi/ScanResult;
    iget-wide v4, v3, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v4, p3, v4

    cmp-long v4, v4, p5

    const/4 v5, 0x0

    if-gez v4, :cond_0

    move v4, v0

    goto :goto_1

    :cond_0
    move v4, v5

    .line 2380
    .local v4, "valid":Z
    :goto_1
    move-object v6, p0

    iget-boolean v7, v6, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v7, :cond_1

    .line 2381
    const-string v7, "WifiConfigManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fetchChannelSetForNetwork has "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " freq "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v3, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " age "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v3, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v9, p3, v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " ?="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    :cond_1
    if-eqz v4, :cond_2

    .line 2386
    iget v7, v3, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v8, p1

    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2388
    :cond_2
    move-object v8, p1

    :goto_2
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v7

    move/from16 v9, p7

    if-lt v7, v9, :cond_3

    .line 2389
    return v5

    .line 2391
    .end local v2    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    .end local v4    # "valid":Z
    :cond_3
    goto :goto_0

    .line 2393
    :cond_4
    move-object v6, p0

    move-object v8, p1

    move/from16 v9, p7

    return v0
.end method

.method private attemptNetworkLinking(Landroid/net/wifi/WifiConfiguration;)V
    .locals 7
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 2322
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2323
    return-void

    .line 2325
    :cond_0
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCacheForNetwork(I)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v0

    .line 2327
    .local v0, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    const/4 v2, 0x6

    if-eqz v0, :cond_1

    .line 2328
    invoke-virtual {v0}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v3

    if-le v3, v2, :cond_1

    .line 2329
    return-void

    .line 2331
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetworks()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 2332
    .local v4, "linkConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2333
    goto :goto_0

    .line 2335
    :cond_2
    iget-boolean v5, v4, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v5, :cond_3

    .line 2336
    goto :goto_0

    .line 2340
    :cond_3
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2341
    goto :goto_0

    .line 2343
    :cond_4
    iget v5, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 2344
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCacheForNetwork(I)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v5

    .line 2346
    .local v5, "linkScanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-eqz v5, :cond_5

    .line 2347
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v6

    if-le v6, v2, :cond_5

    .line 2348
    goto :goto_0

    .line 2351
    :cond_5
    invoke-direct {p0, p1, v4, v0, v5}, Lcom/android/server/wifi/WifiConfigManager;->shouldNetworksBeLinked(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/ScanDetailCache;Lcom/android/server/wifi/ScanDetailCache;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2353
    invoke-direct {p0, p1, v4}, Lcom/android/server/wifi/WifiConfigManager;->linkNetworks(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_1

    .line 2355
    :cond_6
    invoke-direct {p0, p1, v4}, Lcom/android/server/wifi/WifiConfigManager;->unlinkNetworks(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)V

    .line 2357
    .end local v4    # "linkConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "linkScanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    :goto_1
    goto :goto_0

    .line 2358
    :cond_7
    return-void
.end method

.method private canModifyNetwork(Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 9
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    .line 683
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_0

    .line 684
    return v0

    .line 691
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v1

    const/16 v2, 0x3f2

    if-eqz v1, :cond_1

    if-ne p2, v2, :cond_1

    .line 692
    return v0

    .line 698
    :cond_1
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v1, :cond_2

    if-ne p2, v2, :cond_2

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 700
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/wifi/util/TelephonyUtil;->isSimEapMethod(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 701
    return v0

    .line 704
    :cond_2
    const-class v1, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 707
    .local v1, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    const/4 v2, -0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1, p2, v2}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v0

    goto :goto_0

    :cond_3
    move v4, v3

    .line 711
    .local v4, "isUidDeviceOwner":Z
    :goto_0
    if-eqz v4, :cond_4

    .line 712
    return v0

    .line 715
    :cond_4
    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    if-ne v5, p2, :cond_5

    move v5, v0

    goto :goto_1

    :cond_5
    move v5, v3

    .line 719
    .local v5, "isCreator":Z
    :goto_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.software.device_admin"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-nez v1, :cond_6

    .line 721
    const-string v0, "WifiConfigManager"

    const-string v2, "Error retrieving DPMI service."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    return v3

    .line 726
    :cond_6
    if-eqz v1, :cond_7

    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {v1, v6, v2}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v3

    .line 728
    .local v2, "isConfigEligibleForLockdown":Z
    :goto_2
    if-nez v2, :cond_a

    .line 729
    if-nez v5, :cond_9

    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    invoke-virtual {v6, p2}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkNetworkSettingsPermission(I)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_3

    :cond_8
    move v0, v3

    nop

    :cond_9
    :goto_3
    return v0

    .line 732
    :cond_a
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 733
    .local v6, "resolver":Landroid/content/ContentResolver;
    const-string v7, "wifi_device_owner_configs_lockdown"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_b

    move v7, v0

    goto :goto_4

    :cond_b
    move v7, v3

    .line 735
    .local v7, "isLockdownFeatureEnabled":Z
    :goto_4
    if-nez v7, :cond_c

    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    .line 736
    invoke-virtual {v8, p2}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkNetworkSettingsPermission(I)Z

    move-result v8

    if-eqz v8, :cond_c

    goto :goto_5

    .line 735
    :cond_c
    move v0, v3

    :goto_5
    return v0
.end method

.method private canModifyProxySettings(I)Z
    .locals 8
    .param p1, "uid"    # I

    .line 3067
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    .line 3068
    invoke-virtual {v0}, Lcom/android/server/wifi/util/WifiPermissionsWrapper;->getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v0

    .line 3069
    .local v0, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v3, -0x1

    invoke-virtual {v0, p1, v3}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 3071
    .local v3, "isUidProfileOwner":Z
    :goto_0
    if-eqz v0, :cond_1

    const/4 v4, -0x2

    invoke-virtual {v0, p1, v4}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    .line 3073
    .local v4, "isUidDeviceOwner":Z
    :goto_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    .line 3074
    invoke-virtual {v5, p1}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkNetworkSettingsPermission(I)Z

    move-result v5

    .line 3076
    .local v5, "hasNetworkSettingsPermission":Z
    if-nez v4, :cond_4

    if-nez v3, :cond_4

    if-eqz v5, :cond_2

    goto :goto_2

    .line 3079
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v2, :cond_3

    .line 3080
    const-string v2, "WifiConfigManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " cannot modify WifiConfiguration proxy settings. ConfigOverride="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " DeviceOwner="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " ProfileOwner="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3085
    :cond_3
    return v1

    .line 3077
    :cond_4
    :goto_2
    return v2
.end method

.method private clearInternalData()V
    .locals 1

    .line 2743
    const-string v0, "clearInternalData: Clearing all internal data"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 2744
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v0}, Lcom/android/server/wifi/ConfigurationMap;->clear()V

    .line 2745
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2746
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mScanDetailCaches:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2747
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->clearLastSelectedNetwork()V

    .line 2748
    return-void
.end method

.method private clearInternalUserData(I)Ljava/util/Set;
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearInternalUserData: Clearing user internal data for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 2763
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2765
    .local v0, "removedNetworkIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetworks()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 2766
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v3, v2, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-nez v3, :cond_0

    iget v3, v2, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mUserManager:Landroid/os/UserManager;

    .line 2767
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    .line 2766
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiConfigurationUtil;->doesUidBelongToAnyProfile(ILjava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2768
    iget v3, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2769
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearInternalUserData: removed config. netId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " configKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2771
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2769
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 2772
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    iget v4, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/ConfigurationMap;->remove(I)Landroid/net/wifi/WifiConfiguration;

    .line 2774
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    goto :goto_0

    .line 2775
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 2776
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mScanDetailCaches:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 2777
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->clearLastSelectedNetwork()V

    .line 2778
    return-object v0
.end method

.method private clearLastSelectedNetwork()V
    .locals 2

    .line 1977
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1978
    const-string v0, "WifiConfigManager"

    const-string v1, "Clearing last selected network"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedNetworkId:I

    .line 1981
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedTimeStamp:J

    .line 1982
    return-void
.end method

.method public static createDebugTimeStampString(J)Ljava/lang/String;
    .locals 5
    .param p0, "wallClockMillis"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 393
    .local v1, "c":Ljava/util/Calendar;
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 394
    const-string v2, "%tm-%td %tH:%tM:%tS.%tL"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const/4 v4, 0x3

    aput-object v1, v3, v4

    const/4 v4, 0x4

    aput-object v1, v3, v4

    const/4 v4, 0x5

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private createExternalWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Z)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p1, "configuration"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "maskPasswords"    # Z

    .line 454
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0, p1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 455
    .local v0, "network":Landroid/net/wifi/WifiConfiguration;
    if-eqz p2, :cond_0

    .line 456
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->maskPasswordsInWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 458
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->maskRandomizedMacAddressInWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 459
    return-object v0
.end method

.method private createNewInternalWifiConfigurationFromExternal(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .param p1, "externalConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    .line 964
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 967
    .local v0, "newInternalConfig":Landroid/net/wifi/WifiConfiguration;
    iget v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mNextNetworkId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mNextNetworkId:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 970
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->setDefaultsInWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 973
    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/WifiConfigManager;->mergeWithInternalWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)V

    .line 978
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    .line 979
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    .line 980
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 981
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    .line 982
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->shared:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    .line 985
    iput p2, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    iput p2, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 986
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    .line 987
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    .line 988
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    .line 989
    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->createDebugTimeStampString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    .line 991
    return-object v0
.end method

.method private doesUidBelongToCurrentUser(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 752
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mSystemUiUid:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    .line 756
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 755
    invoke-static {p1, v0}, Lcom/android/server/wifi/WifiConfigurationUtil;->doesUidBelongToAnyProfile(ILjava/util/List;)Z

    move-result v0

    return v0

    .line 753
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private getConfiguredNetworks(ZZ)Ljava/util/List;
    .locals 4
    .param p1, "savedOnly"    # Z
    .param p2, "maskPasswords"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 474
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .local v0, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetworks()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 476
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz p1, :cond_0

    iget-boolean v3, v2, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v3, :cond_0

    .line 477
    goto :goto_0

    .line 479
    :cond_0
    invoke-direct {p0, v2, p2}, Lcom/android/server/wifi/WifiConfigManager;->createExternalWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Z)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    goto :goto_0

    .line 481
    :cond_1
    return-object v0
.end method

.method private getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "networkId"    # I

    .line 619
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 620
    const/4 v0, 0x0

    return-object v0

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 623
    .local v0, "internalConfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_1

    .line 624
    const-string v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find network with networkId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_1
    return-object v0
.end method

.method private getInternalConfiguredNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 602
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 603
    .local v0, "internalConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 604
    return-object v0

    .line 606
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKeyForCurrentUser(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 607
    if-nez v0, :cond_1

    .line 608
    const-string v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find network with networkId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " or configKey "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 608
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_1
    return-object v0
.end method

.method private getInternalConfiguredNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "configKey"    # Ljava/lang/String;

    .line 634
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    .line 635
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKeyForCurrentUser(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 636
    .local v0, "internalConfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 637
    const-string v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find network with configKey "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_0
    return-object v0
.end method

.method private getInternalConfiguredNetworks()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 592
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v0}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private getOrCreateScanDetailCacheForNetwork(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 2053
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2054
    :cond_0
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCacheForNetwork(I)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v0

    .line 2055
    .local v0, "cache":Lcom/android/server/wifi/ScanDetailCache;
    if-nez v0, :cond_1

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 2056
    new-instance v1, Lcom/android/server/wifi/ScanDetailCache;

    const/16 v2, 0xc0

    const/16 v3, 0x80

    invoke-direct {v1, p1, v2, v3}, Lcom/android/server/wifi/ScanDetailCache;-><init>(Landroid/net/wifi/WifiConfiguration;II)V

    move-object v0, v1

    .line 2058
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mScanDetailCaches:Ljava/util/Map;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2060
    :cond_1
    return-object v0
.end method

.method private handleUserUnlockOrSwitch(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 2641
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2642
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading from store after user switch/unlock for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->loadFromUserStoreAfterUnlockOrSwitch(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2646
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    .line 2647
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mPendingUnlockStoreRead:Z

    .line 2649
    :cond_1
    return-void
.end method

.method private isEncryptionEap(Ljava/lang/String;)Z
    .locals 1
    .param p1, "encryption"    # Ljava/lang/String;

    .line 1475
    const-string v0, "EAP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private isEncryptionPsk(Ljava/lang/String;)Z
    .locals 1
    .param p1, "encryption"    # Ljava/lang/String;

    .line 1471
    const-string v0, "PSK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private isEncryptionWapiCert(Landroid/net/wifi/ScanResult;)Z
    .locals 2
    .param p1, "scan"    # Landroid/net/wifi/ScanResult;

    .line 1462
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 1463
    .local v0, "scanResultEncrypt":Ljava/lang/String;
    const-string v1, "WAPI-CERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private isEncryptionWapiCert(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 1457
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v0

    .line 1458
    .local v0, "configEncrypt":Ljava/lang/String;
    const-string v1, "WAPI_CERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private isEncryptionWapiPsk(Landroid/net/wifi/ScanResult;)Z
    .locals 2
    .param p1, "scan"    # Landroid/net/wifi/ScanResult;

    .line 1452
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 1453
    .local v0, "scanResultEncrypt":Ljava/lang/String;
    const-string v1, "WAPI-KEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private isEncryptionWapiPsk(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 1447
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v0

    .line 1448
    .local v0, "configEncrypt":Ljava/lang/String;
    const-string v1, "WAPI_PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private isEncryptionWep(Ljava/lang/String;)Z
    .locals 1
    .param p1, "encryption"    # Ljava/lang/String;

    .line 1467
    const-string v0, "WEP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private isOpenNetwork(Ljava/lang/String;)Z
    .locals 1
    .param p1, "encryption"    # Ljava/lang/String;

    .line 1479
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->isEncryptionWep(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->isEncryptionPsk(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1480
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->isEncryptionEap(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1481
    const/4 v0, 0x1

    return v0

    .line 1483
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private linkNetworks(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .param p1, "network1"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "network2"    # Landroid/net/wifi/WifiConfiguration;

    .line 2272
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2273
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkNetworks will link "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2274
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2273
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    :cond_0
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 2277
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p2, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    .line 2279
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 2280
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    .line 2284
    :cond_2
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2285
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2286
    return-void
.end method

.method private loadInternalData(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2845
    .local p1, "sharedConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .local p2, "userConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .local p3, "deletedEphemeralSSIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->clearInternalData()V

    .line 2846
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->loadInternalDataFromSharedStore(Ljava/util/List;)V

    .line 2847
    invoke-direct {p0, p2, p3}, Lcom/android/server/wifi/WifiConfigManager;->loadInternalDataFromUserStore(Ljava/util/List;Ljava/util/Set;)V

    .line 2848
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v0}, Lcom/android/server/wifi/ConfigurationMap;->sizeForAllUsers()I

    move-result v0

    if-nez v0, :cond_0

    .line 2849
    const-string v0, "WifiConfigManager"

    const-string v1, "No stored networks found."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2851
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->sendConfiguredNetworksChangedBroadcast()V

    .line 2852
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mPendingStoreRead:Z

    .line 2853
    return-void
.end method

.method private loadInternalDataFromSharedStore(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 2789
    .local p1, "configurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2790
    .local v1, "configuration":Landroid/net/wifi/WifiConfiguration;
    iget v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mNextNetworkId:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mNextNetworkId:I

    iput v2, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 2791
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v2, :cond_0

    .line 2792
    const-string v2, "WifiConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding network from shared store "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2795
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/ConfigurationMap;->put(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2798
    goto :goto_1

    .line 2796
    :catch_0
    move-exception v2

    .line 2797
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "WifiConfigManager"

    const-string v4, "Failed to add network to config map"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2799
    .end local v1    # "configuration":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    goto :goto_0

    .line 2800
    :cond_1
    return-void
.end method

.method private loadInternalDataFromUserStore(Ljava/util/List;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2812
    .local p1, "configurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .local p2, "deletedEphemeralSSIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2813
    .local v1, "configuration":Landroid/net/wifi/WifiConfiguration;
    iget v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mNextNetworkId:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mNextNetworkId:I

    iput v2, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 2814
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v2, :cond_0

    .line 2815
    const-string v2, "WifiConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding network from user store "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2818
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/ConfigurationMap;->put(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2821
    goto :goto_1

    .line 2819
    :catch_0
    move-exception v2

    .line 2820
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "WifiConfigManager"

    const-string v4, "Failed to add network to config map"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2822
    .end local v1    # "configuration":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    goto :goto_0

    .line 2823
    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2824
    .local v1, "ssid":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2825
    .end local v1    # "ssid":Ljava/lang/String;
    goto :goto_2

    .line 2826
    :cond_2
    return-void
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 3041
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    if-eqz v0, :cond_0

    .line 3042
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 3044
    :cond_0
    return-void
.end method

.method private maskPasswordsInWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .param p1, "configuration"    # Landroid/net/wifi/WifiConfiguration;

    .line 418
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    const-string v0, "*"

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 421
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 422
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 423
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 424
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const-string v2, "*"

    aput-object v2, v1, v0

    .line 422
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 428
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 429
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    .line 431
    :cond_3
    return-void
.end method

.method private maskRandomizedMacAddressInWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "configuration"    # Landroid/net/wifi/WifiConfiguration;

    .line 440
    const-string v0, "02:00:00:00:00:00"

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    .line 441
    .local v0, "defaultMac":Landroid/net/MacAddress;
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setRandomizedMacAddress(Landroid/net/MacAddress;)V

    .line 442
    return-void
.end method

.method private mergeWithInternalWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .param p1, "internalConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "externalConfig"    # Landroid/net/wifi/WifiConfiguration;

    .line 778
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 781
    :cond_0
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 782
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 784
    :cond_1
    iget-boolean v0, p2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 785
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v1, "*"

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 787
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 792
    :cond_2
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 793
    const/4 v0, 0x0

    .line 794
    .local v0, "hasWepKey":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 795
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    const-string v3, "*"

    .line 796
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 797
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v3, v3, v1

    aput-object v3, v2, v1

    .line 798
    const/4 v0, 0x1

    .line 794
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 801
    .end local v1    # "i":I
    :cond_4
    if-eqz v0, :cond_5

    .line 802
    iget v1, p2, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    iput v1, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 805
    .end local v0    # "hasWepKey":Z
    :cond_5
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 806
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    .line 808
    :cond_6
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 809
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    .line 811
    :cond_7
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    if-eqz v0, :cond_8

    .line 812
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    .line 816
    :cond_8
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    if-eqz v0, :cond_9

    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 817
    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 818
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 819
    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 821
    :cond_9
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    if-eqz v0, :cond_a

    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 822
    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 823
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 825
    :cond_a
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-eqz v0, :cond_b

    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 826
    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 827
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 828
    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 830
    :cond_b
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    if-eqz v0, :cond_c

    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 831
    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 832
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 833
    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 835
    :cond_c
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    if-eqz v0, :cond_d

    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 836
    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 837
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 838
    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 840
    :cond_d
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedGroupMgmtCiphers:Ljava/util/BitSet;

    if-eqz v0, :cond_e

    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedGroupMgmtCiphers:Ljava/util/BitSet;

    .line 841
    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 842
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedGroupMgmtCiphers:Ljava/util/BitSet;

    .line 843
    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupMgmtCiphers:Ljava/util/BitSet;

    .line 845
    :cond_e
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedSuiteBCiphers:Ljava/util/BitSet;

    if-eqz v0, :cond_f

    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedSuiteBCiphers:Ljava/util/BitSet;

    .line 846
    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 847
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedSuiteBCiphers:Ljava/util/BitSet;

    .line 848
    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedSuiteBCiphers:Ljava/util/BitSet;

    .line 853
    :cond_f
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xbe

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 854
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    .line 855
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    .line 859
    :cond_10
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xbf

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 860
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->wapiCertSelMode:I

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->wapiCertSelMode:I

    .line 861
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->wapiCertSel:Ljava/lang/String;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->wapiCertSel:Ljava/lang/String;

    .line 865
    :cond_11
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 866
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v0

    .line 867
    .local v0, "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    if-eq v0, v1, :cond_12

    .line 868
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 869
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v0, v1, :cond_12

    .line 870
    new-instance v1, Landroid/net/StaticIpConfiguration;

    .line 871
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/StaticIpConfiguration;-><init>(Landroid/net/StaticIpConfiguration;)V

    .line 870
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 874
    :cond_12
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v1

    .line 875
    .local v1, "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    if-eq v1, v2, :cond_14

    .line 876
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 877
    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-eq v1, v2, :cond_13

    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v1, v2, :cond_14

    .line 879
    :cond_13
    new-instance v2, Landroid/net/ProxyInfo;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/ProxyInfo;-><init>(Landroid/net/ProxyInfo;)V

    invoke-virtual {p1, v2}, Landroid/net/wifi/WifiConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 884
    .end local v0    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .end local v1    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    :cond_14
    iget-boolean v0, p2, Landroid/net/wifi/WifiConfiguration;->shareThisAp:Z

    iput-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->shareThisAp:Z

    .line 887
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v0, :cond_15

    .line 888
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v2, "*"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->copyFromExternal(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/lang/String;)V

    .line 893
    :cond_15
    iget-boolean v0, p2, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    iput-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    .line 894
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 896
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->dppConnector:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 897
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->dppConnector:Ljava/lang/String;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->dppConnector:Ljava/lang/String;

    .line 899
    :cond_16
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->dppNetAccessKey:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 900
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->dppNetAccessKey:Ljava/lang/String;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->dppNetAccessKey:Ljava/lang/String;

    .line 902
    :cond_17
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->dppNetAccessKeyExpiry:I

    if-ltz v0, :cond_18

    .line 903
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->dppNetAccessKeyExpiry:I

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->dppNetAccessKeyExpiry:I

    .line 905
    :cond_18
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->dppCsign:Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 906
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->dppCsign:Ljava/lang/String;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->dppCsign:Ljava/lang/String;

    .line 908
    :cond_19
    return-void
.end method

.method private removeConnectChoiceFromAllNetworks(Ljava/lang/String;)V
    .locals 7
    .param p1, "connectChoiceConfigKey"    # Ljava/lang/String;

    .line 1856
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1857
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing connect choice from all networks "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    :cond_0
    if-nez p1, :cond_1

    .line 1860
    return-void

    .line 1862
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v0}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 1863
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    .line 1864
    .local v2, "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v3

    .line 1865
    .local v3, "connectChoice":Ljava/lang/String;
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1866
    const-string v4, "WifiConfigManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove connect choice:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->clearNetworkConnectChoice(I)Z

    .line 1870
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    .end local v3    # "connectChoice":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 1871
    :cond_3
    return-void
.end method

.method private removeNetworkInternal(Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    .line 1186
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1187
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1191
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1192
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiKeyStore;->removeKeys(Landroid/net/wifi/WifiEnterpriseConfig;)V

    .line 1195
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->removeConnectChoiceFromAllNetworks(Ljava/lang/String;)V

    .line 1196
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/ConfigurationMap;->remove(I)Landroid/net/wifi/WifiConfiguration;

    .line 1197
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mScanDetailCaches:Ljava/util/Map;

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

    invoke-virtual {v0}, Lcom/android/server/wifi/BackupManagerProxy;->notifyDataChanged()V

    .line 1201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeNetworkInternal: removed config. netId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " configKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1204
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    .line 1205
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1201
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 1206
    const/4 v0, 0x1

    return v0
.end method

.method private saveToScanDetailCacheForNetwork(Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/ScanDetail;)V
    .locals 5
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;

    .line 2072
    invoke-virtual {p2}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v0

    .line 2074
    .local v0, "scanResult":Landroid/net/wifi/ScanResult;
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getOrCreateScanDetailCacheForNetwork(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v1

    .line 2075
    .local v1, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-nez v1, :cond_0

    .line 2076
    const-string v2, "WifiConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not allocate scan cache for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    return-void

    .line 2081
    :cond_0
    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v2, :cond_1

    .line 2084
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/net/wifi/ScanResult;->untrusted:Z

    .line 2088
    :cond_1
    invoke-virtual {v1, p2}, Lcom/android/server/wifi/ScanDetailCache;->put(Lcom/android/server/wifi/ScanDetail;)V

    .line 2092
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->attemptNetworkLinking(Landroid/net/wifi/WifiConfiguration;)V

    .line 2093
    return-void
.end method

.method private sendConfiguredNetworkChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 4
    .param p1, "network"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "reason"    # I

    .line 652
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 653
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 654
    const-string v1, "multipleChanges"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 656
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, p1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 657
    .local v1, "broadcastNetwork":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->maskPasswordsInWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 658
    const-string v2, "wifiConfiguration"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 659
    const-string v2, "changeReason"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 660
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 661
    return-void
.end method

.method private sendConfiguredNetworksChangedBroadcast()V
    .locals 3

    .line 668
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 669
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 670
    const-string v1, "multipleChanges"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 671
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 672
    return-void
.end method

.method private setDefaultsInWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5
    .param p1, "configuration"    # Landroid/net/wifi/WifiConfiguration;

    .line 919
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 921
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 922
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 924
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 927
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 928
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 930
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 931
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 932
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 934
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 935
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 936
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 937
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 938
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 940
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupMgmtCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 942
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedSuiteBCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 944
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 945
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 947
    iput v2, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 948
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionStatus(I)V

    .line 950
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionDisableReason(I)V

    .line 952
    return-void
.end method

.method private setLastSelectedNetwork(I)V
    .locals 3
    .param p1, "networkId"    # I

    .line 1990
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1991
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting last selected network to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    :cond_0
    iput p1, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedNetworkId:I

    .line 1994
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedTimeStamp:J

    .line 1995
    return-void
.end method

.method private setNetworkSelectionEnabled(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 1330
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    .line 1331
    .local v0, "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionStatus(I)V

    .line 1333
    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setDisableTime(J)V

    .line 1335
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionDisableReason(I)V

    .line 1338
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->clearDisableReasonCounter()V

    .line 1339
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;->onSavedNetworkEnabled(I)V

    .line 1340
    :cond_0
    return-void
.end method

.method private setNetworkSelectionPermanentlyDisabled(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "disableReason"    # I

    .line 1363
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    .line 1364
    .local v0, "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionStatus(I)V

    .line 1366
    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setDisableTime(J)V

    .line 1368
    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionDisableReason(I)V

    .line 1369
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    if-eqz v1, :cond_0

    .line 1370
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-interface {v1, v2, p2}, Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;->onSavedNetworkPermanentlyDisabled(II)V

    .line 1372
    :cond_0
    return-void
.end method

.method private setNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "reason"    # I

    .line 1396
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    .line 1397
    .local v0, "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    const/4 v1, 0x0

    if-ltz p2, :cond_3

    const/16 v2, 0xe

    if-lt p2, v2, :cond_0

    goto :goto_1

    .line 1401
    :cond_0
    const/4 v2, 0x1

    if-nez p2, :cond_1

    .line 1402
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkSelectionEnabled(Landroid/net/wifi/WifiConfiguration;)V

    .line 1403
    const/4 v3, 0x2

    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkStatus(Landroid/net/wifi/WifiConfiguration;I)V

    goto :goto_0

    .line 1404
    :cond_1
    const/16 v3, 0x8

    if-ge p2, v3, :cond_2

    .line 1405
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkSelectionTemporarilyDisabled(Landroid/net/wifi/WifiConfiguration;I)V

    goto :goto_0

    .line 1407
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkSelectionPermanentlyDisabled(Landroid/net/wifi/WifiConfiguration;I)V

    .line 1408
    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkStatus(Landroid/net/wifi/WifiConfiguration;I)V

    .line 1410
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNetworkSelectionStatus: configKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " networkStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1411
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " disableReason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1412
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkDisableReasonString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " at="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    .line 1413
    invoke-virtual {v4}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConfigManager;->createDebugTimeStampString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1410
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 1414
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    .line 1415
    return v2

    .line 1398
    :cond_3
    :goto_1
    const-string v2, "WifiConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Network disable reason "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    return v1
.end method

.method private setNetworkSelectionTemporarilyDisabled(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "disableReason"    # I

    .line 1347
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    .line 1348
    .local v0, "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionStatus(I)V

    .line 1351
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setDisableTime(J)V

    .line 1352
    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionDisableReason(I)V

    .line 1353
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    if-eqz v1, :cond_0

    .line 1354
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-interface {v1, v2, p2}, Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;->onSavedNetworkTemporarilyDisabled(II)V

    .line 1356
    :cond_0
    return-void
.end method

.method private setNetworkStatus(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "status"    # I

    .line 1379
    iput p2, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1380
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiConfigManager;->sendConfiguredNetworkChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    .line 1381
    return-void
.end method

.method private shouldNetworksBeLinked(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/ScanDetailCache;Lcom/android/server/wifi/ScanDetailCache;)Z
    .locals 18
    .param p1, "network1"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "network2"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "scanDetailCache1"    # Lcom/android/server/wifi/ScanDetailCache;
    .param p4, "scanDetailCache2"    # Lcom/android/server/wifi/ScanDetailCache;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2222
    iget-boolean v3, v0, Lcom/android/server/wifi/WifiConfigManager;->mOnlyLinkSameCredentialConfigurations:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 2223
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v5, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2224
    iget-boolean v3, v0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v3, :cond_0

    .line 2225
    const-string v3, "WifiConfigManager"

    const-string v5, "shouldNetworksBeLinked unlink due to password mismatch"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    :cond_0
    return v4

    .line 2230
    :cond_1
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 2232
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2233
    iget-boolean v3, v0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v3, :cond_2

    .line 2234
    const-string v3, "WifiConfigManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shouldNetworksBeLinked link due to same gw "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " and "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " GW "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    :cond_2
    return v5

    .line 2244
    :cond_3
    if-eqz p3, :cond_7

    if-eqz p4, :cond_7

    .line 2245
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wifi/ScanDetailCache;->keySet()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2246
    .local v8, "abssid":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wifi/ScanDetailCache;->keySet()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v14, v9

    check-cast v14, Ljava/lang/String;

    .line 2247
    .local v14, "bbssid":Ljava/lang/String;
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x10

    move-object v9, v8

    move-object v12, v14

    move-object v4, v14

    move/from16 v14, v16

    .end local v14    # "bbssid":Ljava/lang/String;
    .local v4, "bbssid":Ljava/lang/String;
    invoke-virtual/range {v9 .. v14}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2251
    iget-boolean v7, v0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v7, :cond_4

    .line 2252
    const-string v7, "WifiConfigManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "shouldNetworksBeLinked link due to DBDC BSSID match "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " and "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " bssida "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " bssidb "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    :cond_4
    return v5

    .line 2258
    .end local v4    # "bbssid":Ljava/lang/String;
    :cond_5
    nop

    .line 2246
    const/4 v4, 0x0

    goto :goto_1

    .line 2259
    .end local v8    # "abssid":Ljava/lang/String;
    :cond_6
    nop

    .line 2245
    const/4 v4, 0x0

    goto :goto_0

    .line 2262
    :cond_7
    const/4 v4, 0x0

    return v4
.end method

.method private tryEnableNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 8
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 1574
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    .line 1575
    .local v0, "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkTemporaryDisabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1576
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    .line 1577
    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 1578
    .local v3, "timeDifferenceMs":J
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v1

    .line 1579
    .local v1, "disableReason":I
    sget-object v5, Lcom/android/server/wifi/WifiConfigManager;->NETWORK_SELECTION_DISABLE_TIMEOUT_MS:[I

    aget v5, v5, v1

    int-to-long v5, v5

    .line 1580
    .local v5, "disableTimeoutMs":J
    cmp-long v7, v3, v5

    if-ltz v7, :cond_0

    .line 1581
    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v2

    return v2

    .line 1584
    .end local v1    # "disableReason":I
    .end local v3    # "timeDifferenceMs":J
    .end local v5    # "disableTimeoutMs":J
    :cond_0
    goto :goto_0

    :cond_1
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isDisabledByReason(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1586
    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v1

    return v1

    .line 1589
    :cond_2
    :goto_0
    return v2
.end method

.method private unlinkNetworks(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .param p1, "network1"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "network2"    # Landroid/net/wifi/WifiConfiguration;

    .line 2295
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    .line 2296
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2297
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2298
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlinkNetworks un-link "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2299
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2298
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    :cond_0
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2303
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    .line 2304
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2305
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_2

    .line 2306
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlinkNetworks un-link "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2307
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2306
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2311
    :cond_3
    return-void
.end method

.method private updateExistingInternalWifiConfigurationFromExternal(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .param p1, "internalConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "externalConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "uid"    # I

    .line 1005
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0, p1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 1008
    .local v0, "newInternalConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v0, p2}, Lcom/android/server/wifi/WifiConfigManager;->mergeWithInternalWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)V

    .line 1011
    iput p3, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    .line 1012
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    .line 1013
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->createDebugTimeStampString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    .line 1015
    return-object v0
.end method

.method private updateNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "reason"    # I

    .line 1496
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    .line 1497
    .local v0, "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    if-eqz p2, :cond_1

    .line 1498
    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->incrementDisableReasonCounter(I)V

    .line 1501
    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v1

    .line 1502
    .local v1, "disableReasonCounter":I
    sget-object v2, Lcom/android/server/wifi/WifiConfigManager;->NETWORK_SELECTION_DISABLE_THRESHOLD:[I

    aget v2, v2, p2

    .line 1503
    .local v2, "disableReasonThreshold":I
    if-ge v1, v2, :cond_1

    .line 1504
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v3, :cond_0

    .line 1505
    const-string v3, "WifiConfigManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disable counter for network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for reason "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1507
    invoke-static {p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkDisableReasonString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1508
    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " and threshold is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1505
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 1514
    .end local v1    # "disableReasonCounter":I
    .end local v2    # "disableReasonThreshold":I
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    .line 1141
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiConfigManager;->doesUidBelongToCurrentUser(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1142
    const-string v0, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not visible to the current user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    new-instance v0, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v0

    .line 1145
    :cond_0
    if-nez p1, :cond_1

    .line 1146
    const-string v0, "WifiConfigManager"

    const-string v2, "Cannot add/update network with null config"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    new-instance v0, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v0

    .line 1149
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mPendingStoreRead:Z

    if-eqz v0, :cond_2

    .line 1150
    const-string v0, "WifiConfigManager"

    const-string v2, "Cannot add/update network before store is read!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    new-instance v0, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v0

    .line 1153
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigManager;->addOrUpdateNetworkInternal(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v0

    .line 1154
    .local v0, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual {v0}, Lcom/android/server/wifi/NetworkUpdateResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1155
    const-string v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to add/update network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    return-object v0

    .line 1158
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1159
    .local v1, "newConfig":Landroid/net/wifi/WifiConfiguration;
    nop

    .line 1161
    invoke-virtual {v0}, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1162
    const/4 v2, 0x0

    goto :goto_0

    .line 1163
    :cond_4
    const/4 v2, 0x2

    .line 1159
    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->sendConfiguredNetworkChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    .line 1165
    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v2, :cond_6

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1166
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    .line 1167
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    if-eqz v2, :cond_6

    .line 1168
    invoke-virtual {v0}, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1169
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;->onSavedNetworkAdded(I)V

    goto :goto_1

    .line 1171
    :cond_5
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;->onSavedNetworkUpdated(I)V

    .line 1175
    :cond_6
    :goto_1
    return-object v0
.end method

.method public clearNetworkCandidateScanResult(I)Z
    .locals 4
    .param p1, "networkId"    # I

    .line 1807
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1808
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clear network candidate scan result for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1811
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1812
    return v1

    .line 1814
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidate(Landroid/net/wifi/ScanResult;)V

    .line 1815
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidateScore(I)V

    .line 1816
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setSeenInLastQualifiedNetworkSelection(Z)V

    .line 1817
    const/4 v1, 0x1

    return v1
.end method

.method public clearNetworkConnectChoice(I)Z
    .locals 5
    .param p1, "networkId"    # I

    .line 1881
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1882
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clear network connect choice for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1885
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1886
    return v1

    .line 1888
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoice(Ljava/lang/String;)V

    .line 1889
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoiceTimestamp(J)V

    .line 1891
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    .line 1892
    const/4 v1, 0x1

    return v1
.end method

.method public clearRecentFailureReason(I)V
    .locals 2
    .param p1, "netId"    # I

    .line 3113
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 3114
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 3115
    return-void

    .line 3117
    :cond_0
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->recentFailure:Landroid/net/wifi/WifiConfiguration$RecentFailure;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$RecentFailure;->clear()V

    .line 3118
    return-void
.end method

.method public disableEphemeralNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "ssid"    # Ljava/lang/String;

    .line 2558
    if-nez p1, :cond_0

    .line 2559
    const/4 v0, 0x0

    return-object v0

    .line 2561
    :cond_0
    const/4 v0, 0x0

    .line 2562
    .local v0, "foundConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetworks()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 2563
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v3, v2, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2564
    move-object v0, v2

    .line 2565
    goto :goto_1

    .line 2567
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    goto :goto_0

    .line 2568
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2569
    const-string v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Forget ephemeral SSID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " num="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2570
    if-eqz v0, :cond_3

    .line 2571
    const-string v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found ephemeral config in disableEphemeralNetwork: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    :cond_3
    return-object v0
.end method

.method public disableNetwork(II)Z
    .locals 5
    .param p1, "networkId"    # I
    .param p2, "uid"    # I

    .line 1655
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1656
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disabling network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiConfigManager;->doesUidBelongToCurrentUser(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1659
    const-string v0, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not visible to the current user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    return v1

    .line 1662
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1663
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_2

    .line 1664
    return v1

    .line 1666
    :cond_2
    invoke-direct {p0, v0, p2}, Lcom/android/server/wifi/WifiConfigManager;->canModifyNetwork(Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1667
    const-string v2, "WifiConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " does not have permission to update configuration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1668
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1667
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    return v1

    .line 1671
    :cond_3
    const/16 v2, 0xb

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1673
    return v1

    .line 1675
    :cond_4
    iget v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedNetworkId:I

    if-ne p1, v1, :cond_5

    .line 1676
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->clearLastSelectedNetwork()V

    .line 1678
    :cond_5
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    .line 1679
    return v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3050
    const-string v0, "Dump of WifiConfigManager"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3051
    const-string v0, "WifiConfigManager - Log Begin ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3052
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3053
    const-string v0, "WifiConfigManager - Log End ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3054
    const-string v0, "WifiConfigManager - Configured networks Begin ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3055
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetworks()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 3056
    .local v1, "network":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3057
    .end local v1    # "network":Landroid/net/wifi/WifiConfiguration;
    goto :goto_0

    .line 3058
    :cond_0
    const-string v0, "WifiConfigManager - Configured networks End ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiConfigManager - Next network ID to be allocated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mNextNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiConfigManager - Last selected network ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3061
    return-void
.end method

.method public enableNetwork(IZI)Z
    .locals 5
    .param p1, "networkId"    # I
    .param p2, "disableOthers"    # Z
    .param p3, "uid"    # I

    .line 1620
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1621
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enabling network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (disableOthers "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/wifi/WifiConfigManager;->doesUidBelongToCurrentUser(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1624
    const-string v0, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not visible to the current user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    return v1

    .line 1627
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1628
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_2

    .line 1629
    return v1

    .line 1631
    :cond_2
    invoke-direct {p0, v0, p3}, Lcom/android/server/wifi/WifiConfigManager;->canModifyNetwork(Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1632
    const-string v2, "WifiConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " does not have permission to update configuration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1633
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1632
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    return v1

    .line 1636
    :cond_3
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1638
    return v1

    .line 1640
    :cond_4
    if-eqz p2, :cond_5

    .line 1641
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->setLastSelectedNetwork(I)V

    .line 1643
    :cond_5
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    .line 1644
    return v1
.end method

.method public enableVerboseLogging(I)V
    .locals 2
    .param p1, "verbose"    # I

    .line 402
    if-lez p1, :cond_0

    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    goto :goto_0

    .line 405
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    .line 407
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->enableVerboseLogging(Z)V

    .line 408
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiKeyStore;->enableVerboseLogging(Z)V

    .line 409
    return-void
.end method

.method public fetchChannelSetForNetworkForPartialScan(IJI)Ljava/util/Set;
    .locals 22
    .param p1, "networkId"    # I
    .param p2, "ageInMillis"    # J
    .param p4, "homeChannelFreq"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v8, p0

    .line 2409
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 2410
    .local v9, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v0, 0x0

    if-nez v9, :cond_0

    .line 2411
    return-object v0

    .line 2413
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCacheForNetwork(I)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v10

    .line 2414
    .local v10, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-nez v10, :cond_1

    iget-object v1, v9, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 2415
    const-string v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No scan detail and linked configs associated with networkId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p1

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    return-object v0

    .line 2418
    :cond_1
    move/from16 v11, p1

    iget-boolean v0, v8, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_4

    .line 2419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2420
    .local v0, "dbg":Ljava/lang/StringBuilder;
    const-string v1, "fetchChannelSetForNetworkForPartialScan ageInMillis "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2421
    move-wide/from16 v12, p2

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " for "

    .line 2422
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2423
    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " max "

    .line 2424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/android/server/wifi/WifiConfigManager;->mMaxNumActiveChannelsForPartialScans:I

    .line 2425
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2426
    if-eqz v10, :cond_2

    .line 2427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " bssids "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2429
    :cond_2
    iget-object v1, v9, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    .line 2430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " linked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2432
    :cond_3
    const-string v1, "WifiConfigManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "dbg":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 2434
    :cond_4
    move-wide/from16 v12, p2

    :goto_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v14, v0

    .line 2437
    .local v14, "channelSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-lez p4, :cond_5

    .line 2438
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2439
    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v0

    iget v1, v8, Lcom/android/server/wifi/WifiConfigManager;->mMaxNumActiveChannelsForPartialScans:I

    if-lt v0, v1, :cond_5

    .line 2440
    return-object v14

    .line 2444
    :cond_5
    iget-object v0, v8, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v15

    .line 2447
    .local v15, "nowInMillis":J
    iget v7, v8, Lcom/android/server/wifi/WifiConfigManager;->mMaxNumActiveChannelsForPartialScans:I

    move-object v0, v8

    move-object v1, v14

    move-object v2, v10

    move-wide v3, v15

    move-wide v5, v12

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wifi/WifiConfigManager;->addToChannelSetForNetworkFromScanDetailCache(Ljava/util/Set;Lcom/android/server/wifi/ScanDetailCache;JJI)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2450
    return-object v14

    .line 2454
    :cond_6
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v0, :cond_9

    .line 2455
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 2456
    .local v5, "configKey":Ljava/lang/String;
    invoke-direct {v8, v5}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    .line 2457
    .local v6, "linkedConfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v6, :cond_7

    .line 2458
    goto :goto_1

    .line 2460
    :cond_7
    iget v0, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 2461
    invoke-virtual {v8, v0}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCacheForNetwork(I)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v17

    .line 2462
    .local v17, "linkedScanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    iget v3, v8, Lcom/android/server/wifi/WifiConfigManager;->mMaxNumActiveChannelsForPartialScans:I

    move-object v0, v8

    move-object v1, v14

    move-object/from16 v2, v17

    move/from16 v18, v3

    move-wide v3, v15

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-wide v5, v12

    .end local v5    # "configKey":Ljava/lang/String;
    .end local v6    # "linkedConfig":Landroid/net/wifi/WifiConfiguration;
    .local v19, "configKey":Ljava/lang/String;
    .local v20, "linkedConfig":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v21, v7

    move/from16 v7, v18

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wifi/WifiConfigManager;->addToChannelSetForNetworkFromScanDetailCache(Ljava/util/Set;Lcom/android/server/wifi/ScanDetailCache;JJI)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2465
    goto :goto_2

    .line 2467
    .end local v17    # "linkedScanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    .end local v19    # "configKey":Ljava/lang/String;
    .end local v20    # "linkedConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_8
    nop

    .line 2455
    move-object/from16 v7, v21

    goto :goto_1

    .line 2469
    :cond_9
    :goto_2
    return-object v14
.end method

.method public getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "networkId"    # I

    .line 523
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 524
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 525
    const/4 v1, 0x0

    return-object v1

    .line 529
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->createExternalWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Z)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    return-object v1
.end method

.method public getConfiguredNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "configKey"    # Ljava/lang/String;

    .line 540
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 541
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 542
    const/4 v1, 0x0

    return-object v1

    .line 546
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->createExternalWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Z)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    return-object v1
.end method

.method public getConfiguredNetworkForScanDetail(Lcom/android/server/wifi/ScanDetail;)Landroid/net/wifi/WifiConfiguration;
    .locals 5
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;

    .line 2103
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v0

    .line 2104
    .local v0, "scanResult":Landroid/net/wifi/ScanResult;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2105
    const-string v2, "WifiConfigManager"

    const-string v3, "No scan result found in scan detail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    return-object v1

    .line 2108
    :cond_0
    nop

    .line 2110
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/ConfigurationMap;->getByScanResultForCurrentUser(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 2113
    goto :goto_0

    .line 2111
    :catch_0
    move-exception v2

    .line 2112
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "WifiConfigManager"

    const-string v4, "Failed to lookup network from config map"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2114
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    if-eqz v1, :cond_1

    .line 2115
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v2, :cond_1

    .line 2116
    const-string v2, "WifiConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSavedNetworkFromScanDetail Found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    :cond_1
    return-object v1
.end method

.method public getConfiguredNetworkForScanDetailAndCache(Lcom/android/server/wifi/ScanDetail;)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;

    .line 2133
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetworkForScanDetail(Lcom/android/server/wifi/ScanDetail;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2134
    .local v0, "network":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 2135
    const/4 v1, 0x0

    return-object v1

    .line 2137
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/WifiConfigManager;->saveToScanDetailCacheForNetwork(Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/ScanDetail;)V

    .line 2143
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2144
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getDtimInterval()I

    move-result v1

    if-lez v1, :cond_1

    .line 2145
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getDtimInterval()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->dtimInterval:I

    .line 2147
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->createExternalWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Z)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    return-object v1
.end method

.method public getConfiguredNetworkWithPassword(I)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "networkId"    # I

    .line 560
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 561
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 562
    const/4 v1, 0x0

    return-object v1

    .line 566
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->createExternalWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Z)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    return-object v1
.end method

.method public getConfiguredNetworkWithoutMasking(I)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "networkId"    # I

    .line 580
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 581
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 582
    const/4 v1, 0x0

    return-object v1

    .line 584
    :cond_0
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    return-object v1
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 490
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetworks(ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguredNetworksWithPasswords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 503
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetworks(ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLastSelectedNetwork()I
    .locals 1

    .line 2004
    iget v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedNetworkId:I

    return v0
.end method

.method public getLastSelectedNetworkConfigKey()Ljava/lang/String;
    .locals 2

    .line 2014
    iget v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedNetworkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2015
    const-string v0, ""

    return-object v0

    .line 2017
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedNetworkId:I

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2018
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_1

    .line 2019
    const-string v1, ""

    return-object v1

    .line 2021
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLastSelectedTimeStamp()J
    .locals 2

    .line 2030
    iget-wide v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedTimeStamp:J

    return-wide v0
.end method

.method public getSavedNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 512
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetworks(ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getScanDetailCacheForNetwork(I)Lcom/android/server/wifi/ScanDetailCache;
    .locals 2
    .param p1, "networkId"    # I

    .line 2041
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mScanDetailCaches:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/ScanDetailCache;

    return-object v0
.end method

.method public handleUserStop(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 2726
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2727
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling user stop for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2729
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2730
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    .line 2731
    iget v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->clearInternalUserData(I)Ljava/util/Set;

    .line 2733
    :cond_1
    return-void
.end method

.method public handleUserSwitch(I)Ljava/util/Set;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2666
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2667
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling user switch for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    if-ne p1, v0, :cond_1

    .line 2670
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User already in foreground "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2671
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 2673
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mPendingStoreRead:Z

    if-eqz v0, :cond_2

    .line 2674
    const-string v0, "WifiConfigManager"

    const-string v1, "Unexpected user switch before store is read!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 2677
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 2678
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    .line 2681
    :cond_3
    iget v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->clearInternalUserData(I)Ljava/util/Set;

    move-result-object v0

    .line 2682
    .local v0, "removedNetworkIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/ConfigurationMap;->setNewUser(I)V

    .line 2683
    iput p1, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    .line 2685
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mUserManager:Landroid/os/UserManager;

    iget v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2686
    iget v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->handleUserUnlockOrSwitch(I)V

    goto :goto_0

    .line 2689
    :cond_4
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mPendingUnlockStoreRead:Z

    .line 2690
    const-string v1, "WifiConfigManager"

    const-string v2, "Waiting for user unlock to load from store"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    :goto_0
    return-object v0
.end method

.method public handleUserUnlock(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 2704
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2705
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling user unlock for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2707
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mPendingStoreRead:Z

    if-eqz v0, :cond_1

    .line 2708
    const-string v0, "WifiConfigManager"

    const-string v1, "Ignore user unlock until store is read!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeferredUserUnlockRead:Z

    .line 2710
    return-void

    .line 2712
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mPendingUnlockStoreRead:Z

    if-eqz v0, :cond_2

    .line 2713
    iget v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->handleUserUnlockOrSwitch(I)V

    .line 2715
    :cond_2
    return-void
.end method

.method public incrementNetworkNoInternetAccessReports(I)Z
    .locals 3
    .param p1, "networkId"    # I

    .line 1930
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1931
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 1932
    const/4 v1, 0x0

    return v1

    .line 1934
    :cond_0
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    .line 1935
    return v2
.end method

.method public isConfigMatchScanResult(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)Z
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 1421
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 1424
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1425
    .local v1, "ssid":Ljava/lang/String;
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 1429
    :cond_1
    iget-object v2, p2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 1430
    .local v2, "scanResultEncrypt":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    .line 1431
    .local v3, "configEncrypt":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->isEncryptionWep(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConfigManager;->isEncryptionWep(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1432
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->isEncryptionPsk(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConfigManager;->isEncryptionPsk(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1433
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->isEncryptionEap(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConfigManager;->isEncryptionEap(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1434
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiConfigManager;->isEncryptionWapiPsk(Landroid/net/wifi/ScanResult;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->isEncryptionWapiPsk(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1435
    :cond_5
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiConfigManager;->isEncryptionWapiCert(Landroid/net/wifi/ScanResult;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->isEncryptionWapiCert(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1436
    :cond_6
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->isOpenNetwork(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConfigManager;->isOpenNetwork(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1437
    :cond_7
    const-string v0, "isConfigMatchScanresult(): found matched network"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 1443
    const/4 v0, 0x1

    return v0

    .line 1439
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isConfigMatchScanresult(): security not match scanResultEncrypt:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", configEncrypt:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 1441
    return v0

    .line 1426
    .end local v2    # "scanResultEncrypt":Ljava/lang/String;
    .end local v3    # "configEncrypt":Ljava/lang/String;
    :cond_9
    :goto_0
    return v0

    .line 1422
    .end local v1    # "ssid":Ljava/lang/String;
    :cond_a
    :goto_1
    return v0
.end method

.method public isSimPresent()Z
    .locals 1

    .line 2609
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mSimPresent:Z

    return v0
.end method

.method public loadFromStore()Z
    .locals 4

    .line 2910
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeferredUserUnlockRead:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2911
    const-string v0, "WifiConfigManager"

    const-string v2, "Handling user unlock before loading from store."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2912
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    invoke-static {v2}, Lcom/android/server/wifi/WifiConfigStore;->createUserFile(I)Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConfigStore;->setUserStore(Lcom/android/server/wifi/WifiConfigStore$StoreFile;)V

    .line 2913
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeferredUserUnlockRead:Z

    .line 2915
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->areStoresPresent()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 2916
    const-string v0, "WifiConfigManager"

    const-string v3, "New store files not found. No saved networks loaded!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStoreLegacy:Lcom/android/server/wifi/WifiConfigStoreLegacy;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStoreLegacy;->areStoresPresent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2919
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mPendingStoreRead:Z

    .line 2921
    :cond_1
    return v2

    .line 2924
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->read()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2931
    nop

    .line 2932
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mNetworkListStoreData:Lcom/android/server/wifi/NetworkListStoreData;

    invoke-virtual {v0}, Lcom/android/server/wifi/NetworkListStoreData;->getSharedConfigurations()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mNetworkListStoreData:Lcom/android/server/wifi/NetworkListStoreData;

    .line 2933
    invoke-virtual {v1}, Lcom/android/server/wifi/NetworkListStoreData;->getUserConfigurations()Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSsidsStoreData:Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;

    .line 2934
    invoke-virtual {v3}, Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;->getSsidList()Ljava/util/Set;

    move-result-object v3

    .line 2932
    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/wifi/WifiConfigManager;->loadInternalData(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)V

    .line 2935
    return v2

    .line 2928
    :catch_0
    move-exception v0

    .line 2929
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "WifiConfigManager"

    const-string v3, "XML deserialization of store failed. All saved networks are lost!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2930
    return v1

    .line 2925
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 2926
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "WifiConfigManager"

    const-string v3, "Reading from new store failed. All saved networks are lost!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2927
    return v1
.end method

.method public loadFromUserStoreAfterUnlockOrSwitch(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 2952
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-static {p1}, Lcom/android/server/wifi/WifiConfigStore;->createUserFile(I)Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->switchUserStoreAndRead(Lcom/android/server/wifi/WifiConfigStore$StoreFile;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2960
    nop

    .line 2961
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mNetworkListStoreData:Lcom/android/server/wifi/NetworkListStoreData;

    invoke-virtual {v0}, Lcom/android/server/wifi/NetworkListStoreData;->getUserConfigurations()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSsidsStoreData:Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;

    .line 2962
    invoke-virtual {v1}, Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;->getSsidList()Ljava/util/Set;

    move-result-object v1

    .line 2961
    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->loadInternalDataFromUserStore(Ljava/util/List;Ljava/util/Set;)V

    .line 2963
    const/4 v0, 0x1

    return v0

    .line 2956
    :catch_0
    move-exception v1

    .line 2957
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "WifiConfigManager"

    const-string v3, "XML deserialization of store failed. All saved private networks arelost!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2959
    return v0

    .line 2953
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 2954
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "WifiConfigManager"

    const-string v3, "Reading from new store failed. All saved private networks are lost!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2955
    return v0
.end method

.method public migrateFromLegacyStore()Z
    .locals 5

    .line 2865
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStoreLegacy:Lcom/android/server/wifi/WifiConfigStoreLegacy;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStoreLegacy;->areStoresPresent()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2866
    const-string v0, "WifiConfigManager"

    const-string v2, "Legacy store files not found. No migration needed!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2867
    return v1

    .line 2869
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->areStoresPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2870
    const-string v0, "WifiConfigManager"

    const-string v2, "New store files found. No migration needed! Remove legacy store files"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2872
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStoreLegacy:Lcom/android/server/wifi/WifiConfigStoreLegacy;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStoreLegacy;->removeStores()Z

    .line 2873
    return v1

    .line 2875
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStoreLegacy:Lcom/android/server/wifi/WifiConfigStoreLegacy;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStoreLegacy;->read()Lcom/android/server/wifi/WifiConfigStoreLegacy$WifiConfigStoreDataLegacy;

    move-result-object v0

    .line 2876
    .local v0, "storeData":Lcom/android/server/wifi/WifiConfigStoreLegacy$WifiConfigStoreDataLegacy;
    const-string v2, "WifiConfigManager"

    const-string v3, "Reading from legacy store completed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStoreLegacy$WifiConfigStoreDataLegacy;->getConfigurations()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2878
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStoreLegacy$WifiConfigStoreDataLegacy;->getDeletedEphemeralSSIDs()Ljava/util/Set;

    move-result-object v4

    .line 2877
    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/wifi/WifiConfigManager;->loadInternalData(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)V

    .line 2882
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeferredUserUnlockRead:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 2883
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    invoke-static {v4}, Lcom/android/server/wifi/WifiConfigStore;->createUserFile(I)Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/wifi/WifiConfigStore;->setUserStore(Lcom/android/server/wifi/WifiConfigStore$StoreFile;)V

    .line 2884
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeferredUserUnlockRead:Z

    .line 2887
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2888
    return v3

    .line 2890
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStoreLegacy:Lcom/android/server/wifi/WifiConfigStoreLegacy;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStoreLegacy;->removeStores()Z

    .line 2891
    const-string v2, "WifiConfigManager"

    const-string v3, "Migration from legacy store completed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2892
    return v1
.end method

.method public needsUnlockedKeyStore()Z
    .locals 3

    .line 2619
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetworks()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2620
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Lcom/android/server/wifi/WifiConfigurationUtil;->isConfigForEapNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2621
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-static {v2}, Lcom/android/server/wifi/WifiKeyStore;->needsSoftwareBackedKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2622
    const/4 v0, 0x1

    return v0

    .line 2625
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    goto :goto_0

    .line 2626
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public removeAllEphemeralOrPasspointConfiguredNetworks()Z
    .locals 8

    .line 1306
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1307
    const-string v0, "WifiConfigManager"

    const-string v1, "Removing all passpoint or ephemeral configured networks"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    :cond_0
    const/4 v0, 0x0

    .line 1310
    .local v0, "didRemove":Z
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    .line 1311
    invoke-virtual {v1}, Lcom/android/server/wifi/ConfigurationMap;->valuesForAllUsers()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Landroid/net/wifi/WifiConfiguration;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/wifi/WifiConfiguration;

    .line 1312
    .local v1, "copiedConfigs":[Landroid/net/wifi/WifiConfiguration;
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, v1, v2

    .line 1313
    .local v4, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1314
    const-string v5, "WifiConfigManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing passpoint network config "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    iget v5, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mSystemUiUid:I

    invoke-virtual {p0, v5, v6}, Lcom/android/server/wifi/WifiConfigManager;->removeNetwork(II)Z

    .line 1316
    const/4 v0, 0x1

    goto :goto_1

    .line 1317
    :cond_1
    iget-boolean v5, v4, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v5, :cond_2

    .line 1318
    const-string v5, "WifiConfigManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing ephemeral network config "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    iget v5, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mSystemUiUid:I

    invoke-virtual {p0, v5, v6}, Lcom/android/server/wifi/WifiConfigManager;->removeNetwork(II)Z

    .line 1320
    const/4 v0, 0x1

    .line 1312
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1323
    :cond_3
    return v0
.end method

.method public removeNetwork(II)Z
    .locals 5
    .param p1, "networkId"    # I
    .param p2, "uid"    # I

    .line 1217
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiConfigManager;->doesUidBelongToCurrentUser(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1218
    const-string v0, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not visible to the current user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    return v1

    .line 1221
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1222
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_1

    .line 1223
    return v1

    .line 1225
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/android/server/wifi/WifiConfigManager;->canModifyNetwork(Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1226
    const-string v2, "WifiConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " does not have permission to delete configuration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1226
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    return v1

    .line 1230
    :cond_2
    invoke-direct {p0, v0, p2}, Lcom/android/server/wifi/WifiConfigManager;->removeNetworkInternal(Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1231
    const-string v2, "WifiConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    return v1

    .line 1234
    :cond_3
    iget v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedNetworkId:I

    if-ne p1, v1, :cond_4

    .line 1235
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->clearLastSelectedNetwork()V

    .line 1237
    :cond_4
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->sendConfiguredNetworkChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    .line 1239
    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v2, :cond_5

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1240
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    .line 1241
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    invoke-interface {v2, p1}, Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;->onSavedNetworkRemoved(I)V

    .line 1243
    :cond_5
    return v1
.end method

.method public removeNetworksForApp(Landroid/content/pm/ApplicationInfo;)Ljava/util/Set;
    .locals 7
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1254
    if-eqz p1, :cond_4

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1257
    :cond_0
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove all networks for app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1259
    .local v0, "removedNetworks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    .line 1260
    invoke-virtual {v1}, Lcom/android/server/wifi/ConfigurationMap;->valuesForAllUsers()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Landroid/net/wifi/WifiConfiguration;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/wifi/WifiConfiguration;

    .line 1261
    .local v1, "copiedConfigs":[Landroid/net/wifi/WifiConfiguration;
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, v1, v2

    .line 1262
    .local v4, "config":Landroid/net/wifi/WifiConfiguration;
    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v6, v4, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    if-ne v5, v6, :cond_2

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v4, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1263
    goto :goto_1

    .line 1265
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing network "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", application \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\" uninstalled from user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1267
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1265
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 1268
    iget v5, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mSystemUiUid:I

    invoke-virtual {p0, v5, v6}, Lcom/android/server/wifi/WifiConfigManager;->removeNetwork(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1269
    iget v5, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1261
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1272
    :cond_3
    return-object v0

    .line 1255
    .end local v0    # "removedNetworks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v1    # "copiedConfigs":[Landroid/net/wifi/WifiConfiguration;
    :cond_4
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method removeNetworksForUser(I)Ljava/util/Set;
    .locals 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1283
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove all networks for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1285
    .local v0, "removedNetworks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    .line 1286
    invoke-virtual {v1}, Lcom/android/server/wifi/ConfigurationMap;->valuesForAllUsers()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Landroid/net/wifi/WifiConfiguration;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/wifi/WifiConfiguration;

    .line 1287
    .local v1, "copiedConfigs":[Landroid/net/wifi/WifiConfiguration;
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    .line 1288
    .local v4, "config":Landroid/net/wifi/WifiConfiguration;
    iget v5, v4, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-eq p1, v5, :cond_0

    .line 1289
    goto :goto_1

    .line 1291
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing network "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " removed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 1292
    iget v5, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mSystemUiUid:I

    invoke-virtual {p0, v5, v6}, Lcom/android/server/wifi/WifiConfigManager;->removeNetwork(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1293
    iget v5, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1287
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1296
    :cond_2
    return-object v0
.end method

.method public resetSimNetworks(Z)V
    .locals 5
    .param p1, "simPresent"    # Z

    .line 2581
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "resetSimNetworks"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 2582
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetworks()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2583
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Lcom/android/server/wifi/util/TelephonyUtil;->isSimConfig(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2584
    const/4 v2, 0x0

    .line 2585
    .local v2, "currentIdentity":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 2586
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v4, Lcom/android/server/wifi/util/TelephonyUtil;

    invoke-direct {v4}, Lcom/android/server/wifi/util/TelephonyUtil;-><init>()V

    invoke-static {v3, v4, v1}, Lcom/android/server/wifi/util/TelephonyUtil;->getSimIdentity(Landroid/telephony/TelephonyManager;Lcom/android/server/wifi/util/TelephonyUtil;Landroid/net/wifi/WifiConfiguration;)Landroid/util/Pair;

    move-result-object v2

    .line 2590
    :cond_1
    if-nez v2, :cond_2

    .line 2591
    const-string v0, "WifiConfigManager"

    const-string v3, "Identity is null"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    return-void

    .line 2594
    :cond_2
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 2595
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v3

    if-eqz v3, :cond_3

    .line 2596
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 2599
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "currentIdentity":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    goto :goto_0

    .line 2600
    :cond_4
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConfigManager;->mSimPresent:Z

    .line 2601
    return-void
.end method

.method public retrieveHiddenNetworkList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;",
            ">;"
        }
    .end annotation

    .line 2516
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2517
    .local v0, "hiddenList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetworks()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2519
    .local v1, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2520
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiConfiguration;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2521
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 2522
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v4, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-nez v4, :cond_0

    .line 2523
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 2525
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    goto :goto_0

    .line 2526
    :cond_1
    sget-object v3, Lcom/android/server/wifi/WifiConfigManager;->sScanListComparator:Lcom/android/server/wifi/WifiConfigurationUtil$WifiConfigurationComparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2528
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 2529
    .local v4, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v5, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    iget-object v6, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2531
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    goto :goto_1

    .line 2532
    :cond_2
    return-object v0
.end method

.method public retrievePnoNetworkList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;",
            ">;"
        }
    .end annotation

    .line 2484
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2485
    .local v0, "pnoList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetworks()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2487
    .local v1, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2488
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiConfiguration;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2489
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 2490
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v4, v3, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2491
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkPermanentlyDisabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2492
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkTemporaryDisabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2493
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 2495
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    goto :goto_0

    .line 2496
    :cond_2
    sget-object v3, Lcom/android/server/wifi/WifiConfigManager;->sScanListComparator:Lcom/android/server/wifi/WifiConfigurationUtil$WifiConfigurationComparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2498
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 2499
    .local v4, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-static {v4}, Lcom/android/server/wifi/WifiConfigurationUtil;->createPnoNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2500
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    goto :goto_1

    .line 2501
    :cond_3
    return-object v0
.end method

.method public saveToStore(Z)Z
    .locals 9
    .param p1, "forceWrite"    # Z

    .line 2973
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mPendingStoreRead:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2974
    const-string v0, "WifiConfigManager"

    const-string v2, "Cannot save to store before store is read!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2975
    return v1

    .line 2977
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2978
    .local v0, "sharedConfigurations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/WifiConfiguration;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2980
    .local v2, "userConfigurations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/WifiConfiguration;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2981
    .local v3, "legacyPasspointNetId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v4}, Lcom/android/server/wifi/ConfigurationMap;->valuesForAllUsers()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 2983
    .local v5, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v6, v5, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-boolean v6, v5, Landroid/net/wifi/WifiConfiguration;->isLegacyPasspointConfig:Z

    if-nez v6, :cond_2

    .line 2984
    goto :goto_0

    .line 2989
    :cond_2
    iget-boolean v6, v5, Landroid/net/wifi/WifiConfiguration;->isLegacyPasspointConfig:Z

    if-eqz v6, :cond_3

    iget v6, v5, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigManager;->mUserManager:Landroid/os/UserManager;

    iget v8, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    .line 2990
    invoke-virtual {v7, v8}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v7

    .line 2989
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiConfigurationUtil;->doesUidBelongToAnyProfile(ILjava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2991
    iget v6, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2993
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/PasspointManager;->addLegacyPasspointConfig(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2994
    const-string v6, "WifiConfigManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to migrate legacy Passpoint config: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3007
    :cond_3
    iget-boolean v6, v5, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-nez v6, :cond_5

    iget v6, v5, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigManager;->mUserManager:Landroid/os/UserManager;

    iget v8, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    .line 3008
    invoke-virtual {v7, v8}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v7

    .line 3007
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiConfigurationUtil;->doesUidBelongToAnyProfile(ILjava/util/List;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    .line 3011
    :cond_4
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    goto :goto_2

    .line 3009
    .restart local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_5
    :goto_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3013
    .end local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    :goto_2
    goto :goto_0

    .line 3016
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 3017
    .local v5, "networkId":I
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v6, v5}, Lcom/android/server/wifi/ConfigurationMap;->remove(I)Landroid/net/wifi/WifiConfiguration;

    .line 3018
    .end local v5    # "networkId":I
    goto :goto_3

    .line 3021
    :cond_7
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mNetworkListStoreData:Lcom/android/server/wifi/NetworkListStoreData;

    invoke-virtual {v4, v0}, Lcom/android/server/wifi/NetworkListStoreData;->setSharedConfigurations(Ljava/util/List;)V

    .line 3022
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mNetworkListStoreData:Lcom/android/server/wifi/NetworkListStoreData;

    invoke-virtual {v4, v2}, Lcom/android/server/wifi/NetworkListStoreData;->setUserConfigurations(Ljava/util/List;)V

    .line 3023
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSsidsStoreData:Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;->setSsidList(Ljava/util/Set;)V

    .line 3026
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v4, p1}, Lcom/android/server/wifi/WifiConfigStore;->write(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3033
    nop

    .line 3034
    const/4 v1, 0x1

    return v1

    .line 3030
    :catch_0
    move-exception v4

    .line 3031
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v5, "WifiConfigManager"

    const-string v6, "XML serialization for store failed. Saved networks maybe lost!"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3032
    return v1

    .line 3027
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v4

    .line 3028
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "WifiConfigManager"

    const-string v6, "Writing to store failed. Saved networks maybe lost!"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3029
    return v1
.end method

.method public setNetworkCandidateScanResult(ILandroid/net/wifi/ScanResult;I)Z
    .locals 3
    .param p1, "networkId"    # I
    .param p2, "scanResult"    # Landroid/net/wifi/ScanResult;
    .param p3, "score"    # I

    .line 1834
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1835
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set network candidate scan result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1838
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_1

    .line 1839
    const/4 v1, 0x0

    return v1

    .line 1841
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidate(Landroid/net/wifi/ScanResult;)V

    .line 1842
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidateScore(I)V

    .line 1843
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setSeenInLastQualifiedNetworkSelection(Z)V

    .line 1844
    return v2
.end method

.method public setNetworkConnectChoice(ILjava/lang/String;J)Z
    .locals 3
    .param p1, "networkId"    # I
    .param p2, "connectChoiceConfigKey"    # Ljava/lang/String;
    .param p3, "timestamp"    # J

    .line 1910
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1911
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set network connect choice "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1914
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1915
    return v1

    .line 1917
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoice(Ljava/lang/String;)V

    .line 1918
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoiceTimestamp(J)V

    .line 1919
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    .line 1920
    const/4 v1, 0x1

    return v1
.end method

.method public setNetworkDefaultGwMacAddress(ILjava/lang/String;)Z
    .locals 2
    .param p1, "networkId"    # I
    .param p2, "macAddress"    # Ljava/lang/String;

    .line 1771
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1772
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 1773
    const/4 v1, 0x0

    return v1

    .line 1775
    :cond_0
    iput-object p2, v0, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    .line 1776
    const/4 v1, 0x1

    return v1
.end method

.method public setNetworkNoInternetAccessExpected(IZ)Z
    .locals 2
    .param p1, "networkId"    # I
    .param p2, "expected"    # Z

    .line 1964
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1965
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 1966
    const/4 v1, 0x0

    return v1

    .line 1968
    :cond_0
    iput-boolean p2, v0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    .line 1969
    const/4 v1, 0x1

    return v1
.end method

.method public setNetworkRandomizedMacAddress(ILandroid/net/MacAddress;)Z
    .locals 2
    .param p1, "networkId"    # I
    .param p2, "macAddress"    # Landroid/net/MacAddress;

    .line 1787
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1788
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 1789
    const/4 v1, 0x0

    return v1

    .line 1791
    :cond_0
    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiConfiguration;->setRandomizedMacAddress(Landroid/net/MacAddress;)V

    .line 1792
    const/4 v1, 0x1

    return v1
.end method

.method public setNetworkValidatedInternetAccess(IZ)Z
    .locals 2
    .param p1, "networkId"    # I
    .param p2, "validated"    # Z

    .line 1946
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1947
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1948
    return v1

    .line 1950
    :cond_0
    iput-boolean p2, v0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    .line 1951
    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    .line 1952
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    .line 1953
    const/4 v1, 0x1

    return v1
.end method

.method public setOnSavedNetworkUpdateListener(Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    .line 3092
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigManager;->mListener:Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;

    .line 3093
    return-void
.end method

.method public setRecentFailureAssociationStatus(II)V
    .locals 2
    .param p1, "netId"    # I
    .param p2, "reason"    # I

    .line 3102
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 3103
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 3104
    return-void

    .line 3106
    :cond_0
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->recentFailure:Landroid/net/wifi/WifiConfiguration$RecentFailure;

    invoke-virtual {v1, p2}, Landroid/net/wifi/WifiConfiguration$RecentFailure;->setAssociationStatus(I)V

    .line 3107
    return-void
.end method

.method public tryEnableNetwork(I)Z
    .locals 2
    .param p1, "networkId"    # I

    .line 1603
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1604
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 1605
    const/4 v1, 0x0

    return v1

    .line 1607
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->tryEnableNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    return v1
.end method

.method public updateLastConnectUid(II)Z
    .locals 4
    .param p1, "networkId"    # I
    .param p2, "uid"    # I

    .line 1690
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1691
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update network last connect UID for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiConfigManager;->doesUidBelongToCurrentUser(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1694
    const-string v0, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not visible to the current user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    return v1

    .line 1697
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1698
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_2

    .line 1699
    return v1

    .line 1701
    :cond_2
    iput p2, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    .line 1702
    const/4 v1, 0x1

    return v1
.end method

.method public updateNetworkAfterConnect(I)Z
    .locals 4
    .param p1, "networkId"    # I

    .line 1719
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1720
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update network after connect for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1723
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1724
    return v1

    .line 1726
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v2}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    .line 1727
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    .line 1728
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->clearDisableReasonCounter()V

    .line 1729
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setHasEverConnected(Z)V

    .line 1730
    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkStatus(Landroid/net/wifi/WifiConfiguration;I)V

    .line 1731
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    .line 1732
    return v3
.end method

.method public updateNetworkAfterDisconnect(I)Z
    .locals 4
    .param p1, "networkId"    # I

    .line 1746
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1747
    const-string v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update network after disconnect for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1750
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1751
    return v1

    .line 1753
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v2}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/wifi/WifiConfiguration;->lastDisconnected:J

    .line 1756
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v2, :cond_2

    .line 1757
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkStatus(Landroid/net/wifi/WifiConfiguration;I)V

    .line 1759
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    .line 1760
    const/4 v1, 0x1

    return v1
.end method

.method public updateNetworkNotRecommended(IZ)Z
    .locals 4
    .param p1, "networkId"    # I
    .param p2, "notRecommended"    # Z

    .line 1548
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1549
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1550
    return v1

    .line 1553
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNotRecommended(Z)V

    .line 1554
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v2, :cond_1

    .line 1555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNetworkRecommendation: configKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " notRecommended="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 1558
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    .line 1559
    const/4 v1, 0x1

    return v1
.end method

.method public updateNetworkSelectionStatus(II)Z
    .locals 2
    .param p1, "networkId"    # I
    .param p2, "reason"    # I

    .line 1533
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1534
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 1535
    const/4 v1, 0x0

    return v1

    .line 1537
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v1

    return v1
.end method

.method public updateScanDetailCacheFromWifiInfo(Landroid/net/wifi/WifiInfo;)V
    .locals 18
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, p0

    .line 2158
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 2159
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCacheForNetwork(I)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v2

    .line 2160
    .local v2, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 2161
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ScanDetailCache;->getScanDetail(Ljava/lang/String;)Lcom/android/server/wifi/ScanDetail;

    move-result-object v3

    .line 2162
    .local v3, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    if-eqz v3, :cond_1

    .line 2163
    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v4

    .line 2164
    .local v4, "result":Landroid/net/wifi/ScanResult;
    iget-wide v5, v4, Landroid/net/wifi/ScanResult;->seen:J

    .line 2165
    .local v5, "previousSeen":J
    iget v7, v4, Landroid/net/wifi/ScanResult;->level:I

    .line 2167
    .local v7, "previousRssi":I
    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetail;->setSeen()J

    .line 2168
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v8

    iput v8, v4, Landroid/net/wifi/ScanResult;->level:I

    .line 2170
    const-wide/32 v8, 0x9c40

    .line 2171
    .local v8, "maxAge":J
    iget-wide v10, v4, Landroid/net/wifi/ScanResult;->seen:J

    sub-long/2addr v10, v5

    .line 2172
    .local v10, "age":J
    const-wide/16 v12, 0x0

    cmp-long v14, v5, v12

    if-lez v14, :cond_0

    cmp-long v12, v10, v12

    if-lez v12, :cond_0

    const-wide/16 v12, 0x2

    div-long v12, v8, v12

    cmp-long v12, v10, v12

    if-gez v12, :cond_0

    .line 2174
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    long-to-double v14, v10

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    long-to-double v2, v8

    .end local v2    # "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    .end local v3    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .local v16, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    .local v17, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    div-double/2addr v14, v2

    sub-double/2addr v12, v14

    .line 2175
    .local v12, "alpha":D
    iget v2, v4, Landroid/net/wifi/ScanResult;->level:I

    int-to-double v2, v2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v14, v12

    mul-double/2addr v2, v14

    int-to-double v14, v7

    mul-double/2addr v14, v12

    add-double/2addr v2, v14

    double-to-int v2, v2

    iput v2, v4, Landroid/net/wifi/ScanResult;->level:I

    .end local v12    # "alpha":D
    goto :goto_0

    .line 2178
    .end local v16    # "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    .end local v17    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .restart local v2    # "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    .restart local v3    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_0
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .end local v2    # "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    .end local v3    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .restart local v16    # "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    .restart local v17    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :goto_0
    iget-boolean v2, v0, Lcom/android/server/wifi/WifiConfigManager;->mVerboseLoggingEnabled:Z

    if-eqz v2, :cond_2

    .line 2179
    const-string v2, "WifiConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Updating scan detail cache freq="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v4, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " BSSID="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " RSSI="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v4, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " for "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2182
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2179
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "result":Landroid/net/wifi/ScanResult;
    .end local v5    # "previousSeen":J
    .end local v7    # "previousRssi":I
    .end local v8    # "maxAge":J
    .end local v10    # "age":J
    .end local v17    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    goto :goto_1

    .line 2186
    .end local v16    # "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    .restart local v2    # "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    :cond_1
    move-object/from16 v16, v2

    .end local v2    # "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    .restart local v16    # "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    :cond_2
    :goto_1
    return-void
.end method

.method public updateScanDetailForNetwork(ILcom/android/server/wifi/ScanDetail;)V
    .locals 1
    .param p1, "networkId"    # I
    .param p2, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;

    .line 2197
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getInternalConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2198
    .local v0, "network":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 2199
    return-void

    .line 2201
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/server/wifi/WifiConfigManager;->saveToScanDetailCacheForNetwork(Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/ScanDetail;)V

    .line 2202
    return-void
.end method

.method public wasEphemeralNetworkDeleted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;

    .line 2543
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
