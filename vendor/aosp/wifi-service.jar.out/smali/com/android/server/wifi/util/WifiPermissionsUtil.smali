.class public Lcom/android/server/wifi/util/WifiPermissionsUtil;
.super Ljava/lang/Object;
.source "WifiPermissionsUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiPermissionsUtil"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private mLog:Lcom/android/server/wifi/WifiLog;

.field private final mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/util/WifiPermissionsWrapper;Landroid/content/Context;Lcom/android/server/wifi/WifiSettingsStore;Landroid/os/UserManager;Lcom/android/server/wifi/WifiInjector;)V
    .locals 2
    .param p1, "wifiPermissionsWrapper"    # Lcom/android/server/wifi/util/WifiPermissionsWrapper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "settingsStore"    # Lcom/android/server/wifi/WifiSettingsStore;
    .param p4, "userManager"    # Landroid/os/UserManager;
    .param p5, "wifiInjector"    # Lcom/android/server/wifi/WifiInjector;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    .line 52
    iput-object p2, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mContext:Landroid/content/Context;

    .line 53
    iput-object p4, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mUserManager:Landroid/os/UserManager;

    .line 54
    iget-object v0, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mAppOps:Landroid/app/AppOpsManager;

    .line 55
    iput-object p3, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    .line 56
    const-string v0, "WifiPermissionsUtil"

    invoke-virtual {p5, v0}, Lcom/android/server/wifi/WifiInjector;->makeLog(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mLog:Lcom/android/server/wifi/WifiLog;

    .line 57
    return-void
.end method

.method private checkAppOpAllowed(ILjava/lang/String;I)Z
    .locals 1
    .param p1, "op"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 278
    iget-object v0, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p1, p3, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkCallerHasPeersMacAddressPermission(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 215
    iget-object v0, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    const-string v1, "android.permission.PEERS_MAC_ADDRESS"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/util/WifiPermissionsWrapper;->getUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkInteractAcrossUsersFull(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 232
    iget-object v0, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/util/WifiPermissionsWrapper;->getUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isCurrentProfile(I)Z
    .locals 7
    .param p1, "uid"    # I

    .line 242
    iget-object v0, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    invoke-virtual {v0}, Lcom/android/server/wifi/util/WifiPermissionsWrapper;->getCurrentUser()I

    move-result v0

    .line 243
    .local v0, "currentUser":I
    iget-object v1, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/util/WifiPermissionsWrapper;->getCallingUserId(I)I

    move-result v1

    .line 244
    .local v1, "callingUserId":I
    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    .line 245
    return v2

    .line 247
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    .line 248
    .local v3, "userProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 249
    .local v5, "user":Landroid/content/pm/UserInfo;
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    if-ne v6, v1, :cond_1

    .line 250
    return v2

    .line 252
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    goto :goto_0

    .line 254
    .end local v3    # "userProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method private isLocationModeEnabled()Z
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    iget-object v1, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiSettingsStore;->getLocationModeSetting(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isScanAllowedbyApps(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 225
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkAppOpAllowed(ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public checkCallersFineLocationPermission(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 160
    iget-object v0, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wifi/util/WifiPermissionsWrapper;->getUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 163
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkAppOpAllowed(ILjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    return v0

    .line 166
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public checkCallersLocationPermission(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 129
    iget-object v0, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wifi/util/WifiPermissionsWrapper;->getUidPermission(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 132
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkAppOpAllowed(ILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x1

    return v0

    .line 135
    :cond_0
    return v1
.end method

.method public checkChangePermission(I)Z
    .locals 4
    .param p1, "uid"    # I

    .line 83
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/util/WifiPermissionsWrapper;->getChangeWifiConfigPermission(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .local v1, "permission":I
    if-nez v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 85
    .end local v1    # "permission":I
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v3, "Error checking for permission: %"

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->r(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 87
    return v0
.end method

.method public checkConfigOverridePermission(I)Z
    .locals 4
    .param p1, "uid"    # I

    .line 67
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/util/WifiPermissionsWrapper;->getOverrideWifiConfigPermission(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .local v1, "permission":I
    if-nez v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 69
    .end local v1    # "permission":I
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v3, "Error checking for permission: %"

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->r(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 71
    return v0
.end method

.method public checkNetworkSettingsPermission(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 290
    iget-object v0, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/util/WifiPermissionsWrapper;->getUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public checkNetworkSetupWizardPermission(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 299
    iget-object v0, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    const-string v1, "android.permission.NETWORK_SETUP_WIZARD"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/util/WifiPermissionsWrapper;->getUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public checkWifiAccessPermission(I)Z
    .locals 4
    .param p1, "uid"    # I

    .line 99
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/util/WifiPermissionsWrapper;->getAccessWifiStatePermission(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .local v1, "permission":I
    if-nez v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 101
    .end local v1    # "permission":I
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v3, "Error checking for permission: %"

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->r(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 103
    return v0
.end method

.method public enforceCanAccessScanResults(Ljava/lang/String;I)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p2, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 179
    invoke-virtual {p0, p2}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkNetworkSettingsPermission(I)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0, p2}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkNetworkSetupWizardPermission(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->isLocationModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 190
    invoke-direct {p0, p2}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkCallerHasPeersMacAddressPermission(I)Z

    move-result v0

    .line 193
    .local v0, "canCallingUidAccessLocation":Z
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkCallersLocationPermission(Ljava/lang/String;I)Z

    move-result v1

    .line 197
    .local v1, "canAppPackageUseLocation":Z
    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    .line 198
    :cond_1
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has no location permission"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 201
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->isScanAllowedbyApps(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 206
    invoke-direct {p0, p2}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->isCurrentProfile(I)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0, p2}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkInteractAcrossUsersFull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 207
    :cond_3
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " profile not permitted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 209
    :cond_4
    :goto_1
    return-void

    .line 202
    :cond_5
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has no wifi scan permission"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 186
    .end local v0    # "canCallingUidAccessLocation":Z
    .end local v1    # "canAppPackageUseLocation":Z
    :cond_6
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Location mode is disabled for the device"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_7
    :goto_2
    return-void
.end method

.method public enforceFineLocationPermission(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 145
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkCallersFineLocationPermission(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    return-void

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not have Fine Location permission"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enforceLocationPermission(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkCallersLocationPermission(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    return-void

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not have Coarse Location permission"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isLegacyVersion(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "minVersion"    # I

    .line 261
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 263
    .local v0, "token":J
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v3, p2, :cond_0

    .line 265
    const/4 v2, 0x1

    .line 272
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 265
    return v2

    .line 272
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 267
    :catch_0
    move-exception v3

    .line 272
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 273
    nop

    .line 274
    return v2
.end method
