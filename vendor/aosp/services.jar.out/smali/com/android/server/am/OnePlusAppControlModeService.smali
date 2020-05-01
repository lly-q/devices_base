.class public Lcom/android/server/am/OnePlusAppControlModeService;
.super Ljava/lang/Object;
.source "OnePlusAppControlModeService.java"


# static fields
.field private static final APPCONTROL_PKG_BLACKLIST:I = 0x0

.field private static final APPCONTROL_PKG_WHITELIST:I = 0x1

.field public static DEBUG_ONEPLUS:Z = false

.field private static final OEM_DOZE_CLOSE:I = 0x0

.field private static final OEM_DOZE_MODE_POLICY_KEY:Ljava/lang/String; = "doze_mode_policy"

.field private static final OEM_DOZE_OPEN:I = 0x1

.field private static final SEPARATOR:Ljava/lang/String; = "|"

.field private static final SEPARATOR_SPLIT:Ljava/lang/String; = "\\|"

.field private static final SETTED_PKG_LIST:Ljava/lang/String; = "setted_pkg_list"

.field public static final TAG:Ljava/lang/String; = "OnePlusAppBootManager"

.field private static mContext:Landroid/content/Context;

.field private static mOnePlusAppControlModeService:Lcom/android/server/am/OnePlusAppControlModeService;

.field private static mSettedPkgList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDeviceIdleService:Landroid/os/IDeviceIdleController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusAppControlModeService;->DEBUG_ONEPLUS:Z

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OnePlusAppControlModeService;->sDeviceIdleService:Landroid/os/IDeviceIdleController;

    .line 177
    sput-object v0, Lcom/android/server/am/OnePlusAppControlModeService;->mContext:Landroid/content/Context;

    .line 178
    sput-object v0, Lcom/android/server/am/OnePlusAppControlModeService;->mOnePlusAppControlModeService:Lcom/android/server/am/OnePlusAppControlModeService;

    .line 191
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusAppControlModeService;->mSettedPkgList:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    sput-object p1, Lcom/android/server/am/OnePlusAppControlModeService;->mContext:Landroid/content/Context;

    .line 188
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppControlModeService;->initPersistData()V

    .line 189
    return-void
.end method

.method public static getAllAppControlModes(I)Ljava/util/List;
    .locals 14
    .param p0, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/oneplus/appboot/AppControlMode;",
            ">;"
        }
    .end annotation

    .line 68
    sget-boolean v0, Lcom/android/server/am/OnePlusAppControlModeService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppControl#getAllAppControlModes # mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    const/4 v0, 0x0

    if-nez p0, :cond_8

    .line 72
    move-object v1, v0

    .line 74
    .local v1, "idleArray":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/android/server/am/OnePlusAppControlModeService;->getIdleController()Landroid/os/IDeviceIdleController;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IDeviceIdleController;->getUserPowerWhitelist()[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 77
    goto :goto_0

    .line 75
    :catch_0
    move-exception v2

    .line 76
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 78
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusAppBootManager;->getAllAppBootModes(I)Ljava/util/List;

    move-result-object v0

    .line 79
    .local v0, "bootList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/appboot/AppBootMode;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v3, "controlList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/appboot/AppControlMode;>;"
    if-eqz v1, :cond_1

    array-length v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    .line 81
    .local v4, "idlesz":I
    :goto_1
    const/4 v5, 0x1

    if-nez v0, :cond_2

    .line 82
    nop

    .local v2, "i":I
    :goto_2
    if-ge v2, v4, :cond_6

    .line 83
    new-instance v6, Lcom/oneplus/appboot/AppControlMode;

    aget-object v7, v1, v2

    invoke-direct {v6, v7, p0, v5}, Lcom/oneplus/appboot/AppControlMode;-><init>(Ljava/lang/String;II)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 86
    .end local v2    # "i":I
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/appboot/AppBootMode;

    .line 87
    .local v7, "bt":Lcom/oneplus/appboot/AppBootMode;
    const/4 v8, 0x0

    .line 88
    .local v8, "idleWhite":Z
    move v9, v2

    .local v9, "i":I
    :goto_4
    if-ge v9, v4, :cond_4

    .line 89
    iget-object v10, v7, Lcom/oneplus/appboot/AppBootMode;->packageName:Ljava/lang/String;

    aget-object v11, v1, v9

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 90
    const/4 v8, 0x1

    .line 91
    goto :goto_5

    .line 88
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 95
    .end local v9    # "i":I
    :cond_4
    :goto_5
    iget v9, v7, Lcom/oneplus/appboot/AppBootMode;->mode:I

    if-ne v9, v5, :cond_5

    move v9, v5

    goto :goto_6

    :cond_5
    move v9, v2

    .line 96
    .local v9, "appBootWhite":Z
    :goto_6
    iget-object v10, v7, Lcom/oneplus/appboot/AppBootMode;->packageName:Ljava/lang/String;

    invoke-static {v10, v9, v8}, Lcom/android/server/am/OnePlusAppControlModeService;->getAppControlListMergedBlack(Ljava/lang/String;ZZ)Z

    move-result v10

    .line 97
    .local v10, "finalBlack":Z
    new-instance v11, Lcom/oneplus/appboot/AppControlMode;

    iget-object v12, v7, Lcom/oneplus/appboot/AppBootMode;->packageName:Ljava/lang/String;

    .line 98
    xor-int/lit8 v13, v10, 0x1

    invoke-direct {v11, v12, p0, v13}, Lcom/oneplus/appboot/AppControlMode;-><init>(Ljava/lang/String;II)V

    .line 97
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    .end local v7    # "bt":Lcom/oneplus/appboot/AppBootMode;
    .end local v8    # "idleWhite":Z
    .end local v9    # "appBootWhite":Z
    .end local v10    # "finalBlack":Z
    goto :goto_3

    .line 102
    :cond_6
    sget-boolean v2, Lcom/android/server/am/OnePlusAppControlModeService;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_7

    .line 103
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/appboot/AppControlMode;

    .line 104
    .local v5, "c":Lcom/oneplus/appboot/AppControlMode;
    const-string v6, "OnePlusAppBootManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppControl#getAllAppControlModes # c="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .end local v5    # "c":Lcom/oneplus/appboot/AppControlMode;
    goto :goto_7

    .line 107
    :cond_7
    return-object v3

    .line 109
    .end local v0    # "bootList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/appboot/AppBootMode;>;"
    .end local v1    # "idleArray":[Ljava/lang/String;
    .end local v3    # "controlList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/appboot/AppControlMode;>;"
    .end local v4    # "idlesz":I
    :cond_8
    return-object v0
.end method

.method public static getAppBootState()Z
    .locals 1

    .line 311
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootState()Z

    move-result v0

    return v0
.end method

.method private static getAppControlListMergedBlack(Ljava/lang/String;ZZ)Z
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "appBootValue"    # Z
    .param p2, "deviceIdleValue"    # Z

    .line 49
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_0

    .line 50
    move p1, p2

    .line 52
    :cond_0
    const/4 v0, 0x1

    .line 53
    .local v0, "finalBlack":Z
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 54
    const/4 v0, 0x0

    .line 57
    :cond_1
    sget-boolean v1, Lcom/android/server/am/OnePlusAppControlModeService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_2

    .line 58
    const-string v1, "OnePlusAppBootManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppControl#getAppControlListMergedBlack # packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", appBootValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", deviceIdleValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",finalBlack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_2
    return v0
.end method

.method public static getAppControlMode(Ljava/lang/String;I)I
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "mode"    # I

    .line 114
    const/4 v0, -0x1

    .line 115
    .local v0, "ret":I
    if-nez p1, :cond_2

    .line 117
    :try_start_0
    invoke-static {}, Lcom/android/server/am/OnePlusAppControlModeService;->getIdleController()Landroid/os/IDeviceIdleController;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/os/IDeviceIdleController;->isPowerSaveWhitelistApp(Ljava/lang/String;)Z

    move-result v1

    .line 118
    .local v1, "idleWhite":Z
    const/4 v2, 0x0

    .line 119
    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootMode(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v2, v3

    .line 120
    .local v2, "appBootWhite":Z
    invoke-static {p0, v2, v1}, Lcom/android/server/am/OnePlusAppControlModeService;->getAppControlListMergedBlack(Ljava/lang/String;ZZ)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .local v3, "finalBlack":Z
    if-eqz v3, :cond_1

    .line 122
    const/4 v0, 0x0

    goto :goto_1

    .line 124
    :cond_1
    const/4 v0, 0x1

    .line 129
    .end local v1    # "idleWhite":Z
    .end local v2    # "appBootWhite":Z
    .end local v3    # "finalBlack":Z
    :goto_1
    goto :goto_2

    .line 126
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 128
    const/4 v0, -0x2

    .line 131
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_2
    sget-boolean v1, Lcom/android/server/am/OnePlusAppControlModeService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_3

    .line 132
    const-string v1, "OnePlusAppBootManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppControl#getAppControlMode # packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_3
    return v0
.end method

.method public static getAppControlState(Landroid/content/Context;I)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .line 251
    sget-boolean v0, Lcom/android/server/am/OnePlusAppControlModeService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 252
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppControl#getAppControlState # mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    const/4 v0, -0x1

    .line 255
    .local v0, "ret":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_5

    .line 256
    invoke-static {}, Lcom/android/server/am/OnePlusAppControlModeService;->getAppBootState()Z

    move-result v3

    .line 257
    .local v3, "appboot":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "doze_mode_policy"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v1, v2

    nop

    .line 260
    .local v1, "doze":Z
    :cond_1
    if-eq v3, v1, :cond_3

    .line 261
    const/4 v0, 0x1

    .line 262
    invoke-static {p0, p1, v0}, Lcom/android/server/am/OnePlusAppControlModeService;->setAppControlState(Landroid/content/Context;II)I

    move-result v2

    .line 263
    .local v2, "result":I
    if-gez v2, :cond_2

    .line 264
    const-string v4, "OnePlusAppBootManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AppControl# setAppControlState error # result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",on="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .end local v2    # "result":I
    :cond_2
    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    .line 267
    const/4 v0, 0x1

    goto :goto_0

    .line 269
    :cond_4
    const/4 v0, 0x0

    .line 271
    .end local v1    # "doze":Z
    .end local v3    # "appboot":Z
    :goto_0
    goto :goto_1

    :cond_5
    if-ne p1, v2, :cond_6

    .line 272
    invoke-static {}, Lcom/android/server/am/OnePlusAppControlModeService;->getAppBootState()Z

    move-result v1

    move v0, v1

    goto :goto_1

    .line 273
    :cond_6
    const/4 v3, 0x2

    if-ne p1, v3, :cond_8

    .line 275
    nop

    .line 274
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "doze_mode_policy"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_7

    .line 275
    move v1, v2

    nop

    :cond_7
    move v0, v1

    .line 277
    :cond_8
    :goto_1
    return v0
.end method

.method private static getIdleController()Landroid/os/IDeviceIdleController;
    .locals 1

    .line 316
    sget-object v0, Lcom/android/server/am/OnePlusAppControlModeService;->sDeviceIdleService:Landroid/os/IDeviceIdleController;

    if-eqz v0, :cond_0

    .line 317
    sget-object v0, Lcom/android/server/am/OnePlusAppControlModeService;->sDeviceIdleService:Landroid/os/IDeviceIdleController;

    return-object v0

    .line 320
    :cond_0
    const-string v0, "deviceidle"

    .line 321
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OnePlusAppControlModeService;->sDeviceIdleService:Landroid/os/IDeviceIdleController;

    .line 322
    sget-object v0, Lcom/android/server/am/OnePlusAppControlModeService;->sDeviceIdleService:Landroid/os/IDeviceIdleController;

    return-object v0
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/android/server/am/OnePlusAppControlModeService;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 180
    sget-object v0, Lcom/android/server/am/OnePlusAppControlModeService;->mOnePlusAppControlModeService:Lcom/android/server/am/OnePlusAppControlModeService;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Lcom/android/server/am/OnePlusAppControlModeService;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusAppControlModeService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/am/OnePlusAppControlModeService;->mOnePlusAppControlModeService:Lcom/android/server/am/OnePlusAppControlModeService;

    .line 183
    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusAppControlModeService;->mOnePlusAppControlModeService:Lcom/android/server/am/OnePlusAppControlModeService;

    return-object v0
.end method

.method private initPersistData()V
    .locals 2

    .line 196
    sget-object v0, Lcom/android/server/am/OnePlusAppControlModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "setted_pkg_list"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "list":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusAppControlModeService;->loadSettedPkgList(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_0
    if-nez v0, :cond_1

    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v1, :cond_1

    .line 200
    invoke-static {}, Lcom/android/server/am/OnePlusAppBootManager;->getSettedList()Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/OnePlusAppControlModeService;->mSettedPkgList:Ljava/util/Set;

    .line 201
    invoke-static {}, Lcom/android/server/am/OnePlusAppControlModeService;->updateListToSettingSecure()V

    .line 203
    :cond_1
    :goto_0
    return-void
.end method

.method public static isSetted(Ljava/lang/String;)Z
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;

    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "isSetted":Z
    sget-object v1, Lcom/android/server/am/OnePlusAppControlModeService;->mSettedPkgList:Ljava/util/Set;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/am/OnePlusAppControlModeService;->mSettedPkgList:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    const/4 v0, 0x1

    .line 245
    :cond_0
    return v0
.end method

.method private loadSettedPkgList(Ljava/lang/String;)V
    .locals 4
    .param p1, "list"    # Ljava/lang/String;

    .line 206
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "temp":[Ljava/lang/String;
    sget-object v1, Lcom/android/server/am/OnePlusAppControlModeService;->mSettedPkgList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 208
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 209
    sget-object v2, Lcom/android/server/am/OnePlusAppControlModeService;->mSettedPkgList:Ljava/util/Set;

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public static setAppControlMode(Ljava/lang/String;II)I
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .param p2, "value"    # I

    .line 139
    sget-boolean v0, Lcom/android/server/am/OnePlusAppControlModeService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppControl#setAppControlMode # packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    const/4 v0, 0x0

    .line 143
    .local v0, "ret":I
    if-nez p1, :cond_3

    .line 144
    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 145
    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v1

    const/4 v2, 0x2

    .line 146
    invoke-virtual {v1, p0, v2}, Lcom/android/server/am/OnePlusAppBootManager;->setAppBootMode(Ljava/lang/String;I)I

    .line 148
    :try_start_0
    invoke-static {}, Lcom/android/server/am/OnePlusAppControlModeService;->getIdleController()Landroid/os/IDeviceIdleController;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/os/IDeviceIdleController;->removePowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 151
    const/4 v0, -0x2

    .line 152
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_2

    .line 153
    :cond_1
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    .line 154
    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v1

    .line 155
    invoke-virtual {v1, p0, v2}, Lcom/android/server/am/OnePlusAppBootManager;->setAppBootMode(Ljava/lang/String;I)I

    .line 157
    :try_start_1
    invoke-static {}, Lcom/android/server/am/OnePlusAppControlModeService;->getIdleController()Landroid/os/IDeviceIdleController;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 158
    :catch_1
    move-exception v1

    .line 159
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 160
    const/4 v0, -0x2

    .line 161
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_2

    .line 163
    :cond_2
    const/4 v0, -0x1

    .line 168
    :goto_2
    invoke-static {p0}, Lcom/android/server/am/OnePlusAppControlModeService;->updateSettedPkgList(Ljava/lang/String;)V

    .line 170
    return v0

    .line 172
    :cond_3
    return v0
.end method

.method public static setAppControlState(Landroid/content/Context;II)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "on"    # I

    .line 282
    sget-boolean v0, Lcom/android/server/am/OnePlusAppControlModeService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 283
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppControl#setAppControlState # mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_0
    const/4 v0, -0x1

    .line 286
    .local v0, "ret":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_3

    .line 287
    if-ne p2, v3, :cond_1

    .line 288
    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/am/OnePlusAppBootManager;->setAppBootState(Z)V

    .line 289
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "doze_mode_policy"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 290
    const/4 v0, 0x1

    goto :goto_0

    .line 291
    :cond_1
    if-nez p2, :cond_2

    .line 292
    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusAppBootManager;->setAppBootState(Z)V

    .line 293
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "doze_mode_policy"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 294
    const/4 v0, 0x0

    goto :goto_0

    .line 296
    :cond_2
    const/4 v0, -0x2

    goto :goto_0

    .line 298
    :cond_3
    if-ne p1, v3, :cond_5

    .line 299
    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v1

    if-ne p2, v3, :cond_4

    move v2, v3

    nop

    :cond_4
    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusAppBootManager;->setAppBootState(Z)V

    .line 300
    const/4 v0, 0x2

    goto :goto_0

    .line 301
    :cond_5
    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    .line 302
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "doze_mode_policy"

    if-ne p2, v3, :cond_6

    move v2, v3

    nop

    :cond_6
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 303
    const/4 v0, 0x3

    .line 305
    :cond_7
    :goto_0
    return v0
.end method

.method private static updateListToSettingSecure()V
    .locals 5

    .line 215
    :try_start_0
    sget-object v0, Lcom/android/server/am/OnePlusAppControlModeService;->mSettedPkgList:Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 218
    .local v1, "i":I
    sget-object v2, Lcom/android/server/am/OnePlusAppControlModeService;->mSettedPkgList:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 219
    .local v3, "pkg":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 220
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    sget-object v4, Lcom/android/server/am/OnePlusAppControlModeService;->mSettedPkgList:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-eq v1, v4, :cond_0

    .line 222
    const-string/jumbo v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 225
    :cond_1
    sget-object v2, Lcom/android/server/am/OnePlusAppControlModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "setted_pkg_list"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    :cond_2
    goto :goto_1

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OnePlusAppBootManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateListToSettingSecure e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 231
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private static updateSettedPkgList(Ljava/lang/String;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 234
    sget-object v0, Lcom/android/server/am/OnePlusAppControlModeService;->mSettedPkgList:Ljava/util/Set;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OnePlusAppControlModeService;->mSettedPkgList:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    sget-object v0, Lcom/android/server/am/OnePlusAppControlModeService;->mSettedPkgList:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-static {}, Lcom/android/server/am/OnePlusAppControlModeService;->updateListToSettingSecure()V

    .line 238
    :cond_0
    return-void
.end method
