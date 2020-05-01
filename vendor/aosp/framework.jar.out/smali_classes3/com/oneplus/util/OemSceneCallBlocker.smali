.class public Lcom/oneplus/util/OemSceneCallBlocker;
.super Ljava/lang/Object;
.source "OemSceneCallBlocker.java"

# interfaces
.implements Lcom/oneplus/oimc/IOPFunction;


# static fields
.field private static final CLICK_TIMEOUT:J = 0x7d0L

.field private static final CMD_CLICK_INCALL:I = 0x1

.field private static final CMD_FETCH_CONFIG:I = 0x3

.field private static final CMD_POP_REMOVE:I = 0x2

.field private static final DBG:Z

.field private static final DBG_DUMP:Z

.field private static final DBG_LOGV:Z

.field private static final IM_CONFIG_NAME:Ljava/lang/String; = "GameModeImComponents"

.field private static final INCALL_TIMEOUT:J = 0x7530L

.field private static final NOTIFICATION_ID:I = 0xd348

.field private static final SEC:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "OemSceneCallBlocker"

.field private static sContext:Landroid/content/Context;

.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/oneplus/util/OemSceneCallBlocker;

.field private static sIsFetched:Z

.field private static sIsNotifyBlocked:Z

.field private static sSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

.field private static s_ImComponentLists:Lcom/oneplus/util/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/util/MultiMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static s_ImSpecialActions:Lcom/oneplus/util/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/util/MultiMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static s_ImSpecialIntents:Lcom/oneplus/util/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/util/MultiMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static s_InCallClickedPackage:Ljava/lang/String;

.field private static s_PoppedComponentName:Ljava/lang/String;

.field private static whiteListInBreathMode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static whiteListInESportMode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static whiteListTagInSystemUI:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 112
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    .line 113
    const-string v0, "persist.debug.scene.imcall"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_LOGV:Z

    .line 114
    const-string v0, "persist.debug.scene.dump"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_DUMP:Z

    .line 122
    sput-boolean v1, Lcom/oneplus/util/OemSceneCallBlocker;->sIsFetched:Z

    .line 123
    sput-boolean v1, Lcom/oneplus/util/OemSceneCallBlocker;->sIsNotifyBlocked:Z

    .line 128
    new-instance v0, Lcom/oneplus/util/MultiMap;

    invoke-direct {v0}, Lcom/oneplus/util/MultiMap;-><init>()V

    sput-object v0, Lcom/oneplus/util/OemSceneCallBlocker;->s_ImComponentLists:Lcom/oneplus/util/MultiMap;

    .line 129
    new-instance v0, Lcom/oneplus/util/MultiMap;

    invoke-direct {v0}, Lcom/oneplus/util/MultiMap;-><init>()V

    sput-object v0, Lcom/oneplus/util/OemSceneCallBlocker;->s_ImSpecialIntents:Lcom/oneplus/util/MultiMap;

    .line 130
    new-instance v0, Lcom/oneplus/util/MultiMap;

    invoke-direct {v0}, Lcom/oneplus/util/MultiMap;-><init>()V

    sput-object v0, Lcom/oneplus/util/OemSceneCallBlocker;->s_ImSpecialActions:Lcom/oneplus/util/MultiMap;

    .line 132
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/util/OemSceneCallBlocker;->s_PoppedComponentName:Ljava/lang/String;

    .line 134
    sput-object v0, Lcom/oneplus/util/OemSceneCallBlocker;->s_InCallClickedPackage:Ljava/lang/String;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.oneplus.deskclock"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/oneplus/util/OemSceneCallBlocker;->whiteListInESportMode:Ljava/util/ArrayList;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "low_battery"

    const-string v2, "high_temp"

    const-string v3, "auto_saver"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/oneplus/util/OemSceneCallBlocker;->whiteListTagInSystemUI:Ljava/util/ArrayList;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.android.dialer"

    const-string v2, "com.android.phone"

    const-string v3, "com.oneplus.camera"

    const-string v4, "com.oneplus.gallery"

    const-string v5, "com.android.emergency"

    const-string v6, "com.android.server.telecom"

    const-string v7, "com.oneplus.brickmode"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/oneplus/util/OemSceneCallBlocker;->whiteListInBreathMode:Ljava/util/ArrayList;

    .line 200
    invoke-static {}, Lcom/oneplus/util/OemSceneCallBlocker;->loadDefaultConfigs()V

    .line 201
    invoke-static {}, Lcom/oneplus/util/OemSceneCallBlocker;->initHandler()V

    .line 202
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 108
    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 108
    invoke-static {p0}, Lcom/oneplus/util/OemSceneCallBlocker;->hideView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .locals 1

    .line 108
    sget-object v0, Lcom/oneplus/util/OemSceneCallBlocker;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 108
    sput-object p0, Lcom/oneplus/util/OemSceneCallBlocker;->s_InCallClickedPackage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400()Landroid/content/Context;
    .locals 1

    .line 108
    sget-object v0, Lcom/oneplus/util/OemSceneCallBlocker;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lorg/json/JSONArray;

    .line 108
    invoke-static {p0}, Lcom/oneplus/util/OemSceneCallBlocker;->resolveImConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I

    .line 108
    invoke-static {p0, p1}, Lcom/oneplus/util/OemSceneCallBlocker;->checkLaunchedApp(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 108
    invoke-static {p0}, Lcom/oneplus/util/OemSceneCallBlocker;->resolveAdditionalConfig(Ljava/lang/String;)V

    return-void
.end method

.method private static blockerEnabled(Landroid/content/Context;I)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 278
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x19

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    .line 279
    :cond_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 280
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 285
    :cond_1
    const/16 v1, 0x3e7

    if-ne p1, v1, :cond_2

    .line 286
    const/4 p1, 0x0

    .line 291
    :cond_2
    const-string v1, "1"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "esport_mode_enabled"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 293
    .local v1, "esport_mode_status":Z
    sget-boolean v3, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_DUMP:Z

    if-eqz v3, :cond_3

    const-string v3, "OemSceneCallBlocker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "esport_mode_status :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_3
    if-eqz v1, :cond_4

    .line 295
    sput-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->sIsNotifyBlocked:Z

    .line 296
    invoke-static {}, Lcom/oneplus/util/OemSceneCallBlocker;->fetchConfig()V

    .line 297
    return v0

    .line 299
    :cond_4
    sput-boolean v2, Lcom/oneplus/util/OemSceneCallBlocker;->sIsNotifyBlocked:Z

    .line 302
    invoke-static {}, Lcom/oneplus/util/OemSceneCallBlocker;->fetchConfig()V

    .line 306
    :try_start_0
    const-string v3, "NotifyFor3PtyCallsBlocking"

    invoke-static {v3}, Lcom/oneplus/oimc/OIMCManager;->getRemoteFuncStatus(Ljava/lang/String;)I

    move-result v3

    .line 308
    .local v3, "game_call_blocker_oimc_status":I
    sget-boolean v4, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_LOGV:Z

    if-eqz v4, :cond_5

    const-string v4, "OemSceneCallBlocker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "blockerEnabled: userId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", game_call_blocker_oimc_status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_5
    if-ne v3, v0, :cond_6

    const-string v4, "1"

    .line 313
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "game_mode_notifications_3rd_calls"

    invoke-static {v5, v6, p1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_6

    .line 315
    return v0

    .line 319
    .end local v3    # "game_call_blocker_oimc_status":I
    :cond_6
    goto :goto_0

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "OemSceneCallBlocker"

    const-string v4, "blockerEnabled error:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return v2
.end method

.method private static checkLaunchedApp(Ljava/lang/String;I)V
    .locals 5
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 793
    sget-object v0, Lcom/oneplus/util/OemSceneCallBlocker;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    .line 795
    :try_start_0
    sget-object v0, Lcom/oneplus/util/OemSceneCallBlocker;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 796
    .local v0, "pkgUid":I
    sget-boolean v1, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_LOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "OemSceneCallBlocker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " checkLaunchedApp: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_0
    sget-object v1, Lcom/oneplus/util/OemSceneCallBlocker;->sContext:Landroid/content/Context;

    invoke-static {v1, p0, v0}, Lcom/oneplus/util/OemSceneCallBlocker;->isForegroundAppWithUid(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 798
    sget-boolean v1, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "OemSceneCallBlocker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " launch \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") again"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_1
    sget-object v1, Lcom/oneplus/util/OemSceneCallBlocker;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 800
    .local v1, "newintent":Landroid/content/Intent;
    if-eqz v1, :cond_2

    .line 801
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 802
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 803
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 804
    sget-object v2, Lcom/oneplus/util/OemSceneCallBlocker;->sContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 806
    :cond_2
    const-string v2, "OemSceneCallBlocker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get launch intent for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    .end local v1    # "newintent":Landroid/content/Intent;
    :goto_0
    goto :goto_1

    .line 809
    :cond_3
    sget-boolean v1, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_LOGV:Z

    if-eqz v1, :cond_4

    const-string v1, "OemSceneCallBlocker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " checkLaunchedApp: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' has been launched"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    .end local v0    # "pkgUid":I
    :cond_4
    :goto_1
    goto :goto_2

    .line 811
    :catch_0
    move-exception v0

    .line 814
    :cond_5
    :goto_2
    return-void
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 834
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 835
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 838
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 839
    .local v0, "width":I
    const/4 v1, 0x1

    if-lez v0, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    move v0, v2

    .line 840
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 841
    .local v2, "height":I
    if-lez v2, :cond_2

    move v1, v2

    nop

    .line 843
    .end local v2    # "height":I
    .local v1, "height":I
    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 844
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 845
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p0, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 846
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 848
    return-object v2
.end method

.method private static fetchConfig()V
    .locals 4

    .line 858
    sget-object v0, Lcom/oneplus/util/OemSceneCallBlocker;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 859
    invoke-static {}, Lcom/oneplus/util/OemSceneCallBlocker;->initHandler()V

    .line 861
    :cond_0
    sget-object v0, Lcom/oneplus/util/OemSceneCallBlocker;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/oneplus/util/OemSceneCallBlocker;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->sIsFetched:Z

    if-nez v0, :cond_2

    .line 862
    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_LOGV:Z

    if-eqz v0, :cond_1

    const-string v0, "OemSceneCallBlocker"

    const-string v1, "fetchConfig: go fetch"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_1
    sget-object v0, Lcom/oneplus/util/OemSceneCallBlocker;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 864
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 865
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 866
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "CONFIG_NAME"

    const-string v3, "GameModeImComponents"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 868
    sget-object v2, Lcom/oneplus/util/OemSceneCallBlocker;->sHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 869
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 870
    :cond_2
    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_LOGV:Z

    if-eqz v0, :cond_3

    const-string v0, "OemSceneCallBlocker"

    const-string v1, "fetchConfig: skip to fetch"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_3
    :goto_0
    return-void
.end method

.method private static getAppNameFromPkgName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "Packagename"    # Ljava/lang/String;
    .param p2, "rInfo"    # Landroid/content/pm/ResolveInfo;

    .line 942
    const/4 v0, 0x0

    .line 944
    .local v0, "appName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 945
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 946
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 950
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 951
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 953
    :cond_1
    return-object v0

    .line 950
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 947
    :catch_0
    move-exception v1

    .line 948
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 950
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 951
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 953
    :cond_3
    return-object v0

    .line 950
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 951
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 953
    :cond_5
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/util/OemSceneCallBlocker;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 160
    sget-object v0, Lcom/oneplus/util/OemSceneCallBlocker;->sInstance:Lcom/oneplus/util/OemSceneCallBlocker;

    if-nez v0, :cond_2

    .line 162
    const-string v0, "android"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneCallBlocker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstance from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    invoke-static {p0}, Lcom/oneplus/util/OemSceneCallBlocker;->resetPopedStatus(Landroid/content/Context;)V

    .line 167
    :cond_1
    new-instance v0, Lcom/oneplus/util/OemSceneCallBlocker;

    invoke-direct {v0}, Lcom/oneplus/util/OemSceneCallBlocker;-><init>()V

    sput-object v0, Lcom/oneplus/util/OemSceneCallBlocker;->sInstance:Lcom/oneplus/util/OemSceneCallBlocker;

    .line 169
    :cond_2
    sget-object v0, Lcom/oneplus/util/OemSceneCallBlocker;->sInstance:Lcom/oneplus/util/OemSceneCallBlocker;

    return-object v0
.end method

.method private static getPopedStatus(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 989
    const-string v0, "-1"

    .line 990
    .local v0, "popUid":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 991
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "game_mode_notifications_3rd_calls_uid"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 992
    sget-boolean v1, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_LOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "OemSceneCallBlocker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPopedStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    :cond_0
    return-object v0
.end method

.method private static hideView(Ljava/lang/String;)V
    .locals 3
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 626
    sget-object v0, Lcom/oneplus/util/OemSceneCallBlocker;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OemSceneCallBlocker;->resetPopedStatus(Landroid/content/Context;)V

    .line 627
    sget-object v0, Lcom/oneplus/util/OemSceneCallBlocker;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 628
    sget-object v0, Lcom/oneplus/util/OemSceneCallBlocker;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 630
    :cond_0
    if-eqz p0, :cond_2

    sget-object v0, Lcom/oneplus/util/OemSceneCallBlocker;->sSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

    if-eqz v0, :cond_2

    .line 631
    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_LOGV:Z

    if-eqz v0, :cond_1

    const-string v0, "OemSceneCallBlocker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideView: hide from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_1
    sget-object v0, Lcom/oneplus/util/OemSceneCallBlocker;->sSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

    invoke-virtual {v0, p0}, Lcom/oneplus/util/notification/SimpleHeadsUpController;->hide(Ljava/lang/String;)V

    goto :goto_0

    .line 634
    :cond_2
    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "OemSceneCallBlocker"

    const-string v1, "hideView: unable to hide"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_3
    :goto_0
    return-void
.end method

.method private static initHandler()V
    .locals 2

    .line 1021
    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneCallBlocker"

    const-string v1, "initHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :cond_0
    new-instance v0, Lcom/oneplus/util/OemSceneCallBlocker$5;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/util/OemSceneCallBlocker$5;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/oneplus/util/OemSceneCallBlocker;->sHandler:Landroid/os/Handler;

    .line 1055
    return-void
.end method

.method public static isBrickModeOn()Z
    .locals 2

    .line 340
    const-string v0, "BrickModeObserver"

    invoke-static {v0}, Lcom/oneplus/oimc/OIMCManager;->getRemoteFuncStatus(Ljava/lang/String;)I

    move-result v0

    .line 341
    .local v0, "oimc_status":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 342
    return v1

    .line 344
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isCallBlocked(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "rInfo"    # Landroid/content/pm/ResolveInfo;

    .line 215
    const/4 v0, 0x0

    if-eqz p2, :cond_12

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 218
    :cond_0
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_1

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 220
    .local v1, "userId":I
    :goto_0
    invoke-static {p0, v1}, Lcom/oneplus/util/OemSceneCallBlocker;->isCallBlockedOnForUser(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {v1}, Lcom/oneplus/util/OemSceneCallBlocker;->isValidUserId(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 221
    sget-boolean v2, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_LOGV:Z

    if-eqz v2, :cond_2

    const-string v2, "OemSceneCallBlocker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCallBlocked: intent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_2
    sget-boolean v2, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_LOGV:Z

    if-eqz v2, :cond_3

    const-string v2, "OemSceneCallBlocker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCallBlocked: rInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "component_name":Ljava/lang/String;
    sget-object v3, Lcom/oneplus/util/OemSceneCallBlocker;->s_ImComponentLists:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v3, v2}, Lcom/oneplus/util/MultiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 228
    sget-boolean v3, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v3, :cond_4

    const-string v3, "OemSceneCallBlocker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCallBlocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_4
    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 230
    .local v3, "rPkgName":Ljava/lang/String;
    if-eqz v3, :cond_9

    .line 233
    :try_start_0
    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_5

    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :goto_1
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_2

    :cond_5
    sget-object v4, Lcom/oneplus/util/OemSceneCallBlocker;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    goto :goto_1

    .line 234
    .local v4, "appUid":I
    :goto_2
    invoke-static {p0, v3, v4}, Lcom/oneplus/util/OemSceneCallBlocker;->isForegroundAppWithUid(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 235
    sget-boolean v5, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v5, :cond_6

    const-string v5, "OemSceneCallBlocker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isCallBlocked: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") is running in the foreground."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_6
    return v0

    .line 238
    :cond_7
    sget-boolean v5, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_LOGV:Z

    if-eqz v5, :cond_8

    const-string v5, "OemSceneCallBlocker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isCallBlocked: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") is running in the background."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .end local v4    # "appUid":I
    :cond_8
    goto :goto_3

    .line 240
    :catch_0
    move-exception v4

    .line 241
    .local v4, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "OemSceneCallBlocker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error on checking uid of \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\':"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .end local v4    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_9
    :goto_3
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 246
    .local v4, "pkg_name":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 247
    .local v5, "action":Ljava/lang/String;
    if-eqz v5, :cond_e

    .line 248
    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 249
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    .line 250
    .local v6, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v6, :cond_c

    const-string v7, "android.intent.category.LAUNCHER"

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "android.intent.category.HOME"

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 251
    :cond_a
    sget-boolean v7, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v7, :cond_b

    const-string v7, "OemSceneCallBlocker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isCallBlocked: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\' is launched from launcher."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_b
    return v0

    .line 255
    .end local v6    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_c
    sget-object v6, Lcom/oneplus/util/OemSceneCallBlocker;->s_ImSpecialActions:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v6, v4}, Lcom/oneplus/util/MultiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    sget-object v6, Lcom/oneplus/util/OemSceneCallBlocker;->s_ImSpecialActions:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v6, v5}, Lcom/oneplus/util/MultiMap;->getKeyFromValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_e

    .line 256
    sget-boolean v6, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v6, :cond_d

    const-string v6, "OemSceneCallBlocker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isCallBlocked: Skip action \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\' of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_d
    return v0

    .line 261
    :cond_e
    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->sIsNotifyBlocked:Z

    if-nez v0, :cond_f

    .line 264
    :try_start_1
    invoke-static {p0, p1, p2}, Lcom/oneplus/util/OemSceneCallBlocker;->popNotify(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 267
    goto :goto_4

    .line 265
    :catch_1
    move-exception v0

    .line 266
    .local v0, "ex":Ljava/lang/Exception;
    const-string v6, "OemSceneCallBlocker"

    const-string v7, "isCallBlocked error:"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_f
    :goto_4
    const/4 v0, 0x1

    return v0

    .line 271
    .end local v3    # "rPkgName":Ljava/lang/String;
    .end local v4    # "pkg_name":Ljava/lang/String;
    .end local v5    # "action":Ljava/lang/String;
    :cond_10
    sget-boolean v3, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v3, :cond_11

    const-string v3, "OemSceneCallBlocker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCallBlocked: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' is not handled."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .end local v2    # "component_name":Ljava/lang/String;
    :cond_11
    return v0

    .line 216
    .end local v1    # "userId":I
    :cond_12
    :goto_5
    return v0
.end method

.method private static isCallBlockedOn(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 349
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/oneplus/util/OemSceneCallBlocker;->isCallBlockedOnForUser(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static isCallBlockedOnForUser(Landroid/content/Context;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 326
    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_DUMP:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneCallBlocker"

    const-string v1, "isCallBlockedForUser:"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    :cond_0
    sget-object v0, Lcom/oneplus/util/OemSceneCallBlocker;->sContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_1

    .line 330
    sput-object p0, Lcom/oneplus/util/OemSceneCallBlocker;->sContext:Landroid/content/Context;

    .line 331
    sput-boolean v1, Lcom/oneplus/util/OemSceneCallBlocker;->sIsFetched:Z

    .line 333
    :cond_1
    invoke-static {p0, p1}, Lcom/oneplus/util/OemSceneCallBlocker;->blockerEnabled(Landroid/content/Context;I)Z

    move-result v0

    .line 334
    .local v0, "isBlockerEnabled":Z
    sget-boolean v2, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_LOGV:Z

    if-eqz v2, :cond_2

    const-string v2, "OemSceneCallBlocker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBlockerEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_2
    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/oneplus/util/OemSceneCallBlocker;->isScreenAwake(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Lcom/oneplus/util/OemSceneCallBlocker;->isScreenLocked(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v1, 0x1

    nop

    :cond_3
    return v1
.end method

.method public static isCallBlockedWithUid(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "rInfo"    # Landroid/content/pm/ResolveInfo;
    .param p3, "callingUid"    # I

    .line 205
    const/16 v0, 0x3e8

    if-ne p3, v0, :cond_1

    .line 206
    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneCallBlocker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCallBlockedWithUid: system starting activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 209
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/oneplus/util/OemSceneCallBlocker;->isCallBlocked(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    return v0
.end method

.method private static isForegroundAppWithUid(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 577
    const/4 v0, 0x0

    move v1, v0

    .line 580
    .local v1, "isAppForeground":Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    .line 581
    .local v2, "iAm":Landroid/app/IActivityManager;
    invoke-interface {v2}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 582
    .local v3, "pis":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 583
    .local v5, "e":Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v5, :cond_0

    iget v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v7, 0x64

    if-ne v6, v7, :cond_0

    iget v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v6, p2, :cond_0

    .line 586
    const/4 v1, 0x1

    .line 587
    goto :goto_1

    .line 589
    .end local v5    # "e":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    goto :goto_0

    .line 592
    :cond_1
    :goto_1
    if-eqz v1, :cond_7

    .line 595
    :try_start_1
    const-string v4, "android"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 596
    invoke-interface {v2}, Landroid/app/IActivityManager;->getFocusedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v4

    .line 597
    .local v4, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    if-eqz v4, :cond_6

    .line 598
    iget-object v5, v4, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 602
    .local v5, "focusedPkgName":Ljava/lang/String;
    if-eqz v5, :cond_5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "packageinstaller"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 603
    sget-boolean v6, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v6, :cond_2

    const-string v6, "OemSceneCallBlocker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isForegroundAppWithUid: focusedPkgName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 604
    :cond_2
    nop

    .line 616
    sget-boolean v6, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_LOGV:Z

    if-eqz v6, :cond_4

    const-string v6, "OemSceneCallBlocker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isForegroundAppWithUid("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "): \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\' is running "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    if-eqz v1, :cond_3

    const-string v8, "foreground"

    goto :goto_2

    :cond_3
    const-string v8, "background"

    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 616
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_4
    return v0

    .line 606
    :cond_5
    :try_start_2
    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_LOGV:Z

    if-eqz v0, :cond_6

    const-string v0, "OemSceneCallBlocker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isForegroundAppWithUid: focusedPkgName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 611
    .end local v4    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    .end local v5    # "focusedPkgName":Ljava/lang/String;
    :cond_6
    goto :goto_3

    .line 609
    :catch_0
    move-exception v0

    .line 610
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_3
    sget-boolean v4, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_LOGV:Z

    if-eqz v4, :cond_7

    const-string v4, "OemSceneCallBlocker"

    const-string v5, "isForegroundAppWithUid: Checking focused app failed."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 616
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v2    # "iAm":Landroid/app/IActivityManager;
    .end local v3    # "pis":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_7
    :goto_3
    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_LOGV:Z

    if-eqz v0, :cond_9

    const-string v0, "OemSceneCallBlocker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isForegroundAppWithUid("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' is running "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    if-eqz v1, :cond_8

    :goto_4
    const-string v3, "foreground"

    goto :goto_5

    :cond_8
    const-string v3, "background"

    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 616
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    .line 613
    :catch_1
    move-exception v0

    .line 614
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_4
    const-string v2, "OemSceneCallBlocker"

    const-string v3, "isForegroundAppWithUid error:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 616
    .end local v0    # "ex":Ljava/lang/Exception;
    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_LOGV:Z

    if-eqz v0, :cond_9

    const-string v0, "OemSceneCallBlocker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isForegroundAppWithUid("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' is running "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    if-eqz v1, :cond_8

    goto :goto_4

    .line 619
    :cond_9
    :goto_6
    return v1

    .line 616
    :goto_7
    sget-boolean v2, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_LOGV:Z

    if-eqz v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isForegroundAppWithUid("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' is running "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    if-eqz v1, :cond_a

    const-string v3, "foreground"

    goto :goto_8

    :cond_a
    const-string v3, "background"

    :goto_8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 616
    const-string v3, "OemSceneCallBlocker"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    throw v0
.end method

.method private static isForegroundCalling(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 533
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 534
    .local v0, "callingUid":I
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 538
    .local v1, "callingPkg":Ljava/lang/String;
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 539
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v3

    .line 542
    :cond_0
    invoke-static {p0}, Lcom/oneplus/util/OemSceneCallBlocker;->getPopedStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 543
    .local v2, "popUid":Ljava/lang/String;
    const/4 v4, 0x0

    .line 546
    .local v4, "isForeGround":Z
    sget-object v5, Lcom/oneplus/util/OemSceneCallBlocker;->s_ImComponentLists:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v5, v1}, Lcom/oneplus/util/MultiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 547
    sget-boolean v5, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_LOGV:Z

    if-eqz v5, :cond_1

    const-string v5, "OemSceneCallBlocker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isForegroundCalling: Skip to check the calling from \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_1
    return v3

    .line 551
    :cond_2
    sget-boolean v3, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "OemSceneCallBlocker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isForegroundCalling: Calling from \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "), popUid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_3
    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_9

    :try_start_0
    const-string v3, "android.uid.systemui"

    .line 554
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 555
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 558
    invoke-static {p0, v1, v0}, Lcom/oneplus/util/OemSceneCallBlocker;->isForegroundAppWithUid(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v3

    goto/16 :goto_4

    .line 563
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 560
    :catch_0
    move-exception v3

    .line 561
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "OemSceneCallBlocker"

    const-string v6, "isForegroundCalling error:"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 563
    .end local v3    # "ex":Ljava/lang/Exception;
    sget-boolean v3, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v3, :cond_5

    const-string v3, "OemSceneCallBlocker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isForegroundCalling: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")\' is calling in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_4

    const-string v6, "foreground."

    goto :goto_0

    :cond_4
    const-string v6, "background."

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_5
    if-eqz v4, :cond_c

    sget-boolean v3, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_DUMP:Z

    if-eqz v3, :cond_c

    .line 565
    const-string v3, "OemSceneCallBlocker"

    const-string v5, "isForegroundCalling stack: "

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    :goto_1
    invoke-static {v3, v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 563
    :goto_2
    sget-boolean v5, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v5, :cond_7

    const-string v5, "OemSceneCallBlocker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isForegroundCalling: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")\' is calling in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_6

    const-string v7, "foreground."

    goto :goto_3

    :cond_6
    const-string v7, "background."

    :goto_3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_7
    if-eqz v4, :cond_8

    sget-boolean v5, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_DUMP:Z

    if-eqz v5, :cond_8

    .line 565
    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    const-string v6, "OemSceneCallBlocker"

    const-string v7, "isForegroundCalling stack: "

    invoke-static {v6, v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    throw v3

    .line 563
    :cond_9
    :goto_4
    sget-boolean v3, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v3, :cond_b

    const-string v3, "OemSceneCallBlocker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isForegroundCalling: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")\' is calling in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_a

    const-string v6, "foreground."

    goto :goto_5

    :cond_a
    const-string v6, "background."

    :goto_5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_b
    if-eqz v4, :cond_c

    sget-boolean v3, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_DUMP:Z

    if-eqz v3, :cond_c

    .line 565
    const-string v3, "OemSceneCallBlocker"

    const-string v5, "isForegroundCalling stack: "

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    goto/16 :goto_1

    .line 568
    :cond_c
    :goto_6
    return v4
.end method

.method private static isHandledByBrickMode(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 353
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 354
    .local v0, "callingUid":I
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, "callingPkg":Ljava/lang/String;
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 359
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v3

    .line 361
    :cond_0
    const-string v2, "android.uid.systemui"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/oneplus/util/OemSceneCallBlocker;->whiteListInBreathMode:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/oneplus/util/OemSceneCallBlocker;->whiteListInBreathMode:Ljava/util/ArrayList;

    .line 363
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :goto_1
    move v2, v3

    .line 364
    .local v2, "isHandled":Z
    sget-boolean v3, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_LOGV:Z

    if-eqz v3, :cond_4

    const-string v3, "OemSceneCallBlocker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isHandledByBrickMode: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' pkg \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_3

    const-string v5, " "

    goto :goto_2

    :cond_3
    const-string v5, " not "

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "handled on brick mode."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 364
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_4
    return v2
.end method

.method private static isHandledByCallBlocker(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 449
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 450
    .local v0, "callingUid":I
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, "callingPkg":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 455
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v1, v3, v2

    .line 457
    :cond_0
    const-string v3, "android.uid.systemui"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/oneplus/util/OemSceneCallBlocker;->s_ImComponentLists:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v3, v1}, Lcom/oneplus/util/MultiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 458
    .local v2, "isHandled":Z
    :goto_1
    sget-boolean v3, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_LOGV:Z

    if-eqz v3, :cond_4

    const-string v3, "OemSceneCallBlocker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isHandledByCallBlocker: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_3

    const-string v5, " "

    goto :goto_2

    :cond_3
    const-string v5, " not "

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "handled on call blocker."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_4
    return v2
.end method

.method public static isMutedByCallBlocker(Landroid/content/Context;Landroid/media/AudioAttributes;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "aa"    # Landroid/media/AudioAttributes;

    .line 370
    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_DUMP:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneCallBlocker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMutedByCallBlocker: aa = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    :cond_0
    invoke-static {p0}, Lcom/oneplus/util/OemSceneCallBlocker;->isCallBlockedOn(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/oneplus/util/OemSceneCallBlocker;->isHandledByCallBlocker(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/oneplus/util/OemSceneCallBlocker;->isForegroundCalling(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 373
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    .line 374
    .local v0, "audio_usage":I
    invoke-static {p1}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v2

    .line 375
    .local v2, "audio_stream":I
    const/4 v3, 0x6

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    if-eqz v2, :cond_1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_2

    .line 380
    :cond_1
    const-string v3, "OemSceneCallBlocker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isMutedByCallBlock: sound("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") will be blocked here"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return v1

    .line 385
    .end local v0    # "audio_usage":I
    .end local v2    # "audio_stream":I
    :cond_2
    invoke-static {}, Lcom/oneplus/util/OemSceneCallBlocker;->isBrickModeOn()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/oneplus/util/OemSceneCallBlocker;->isHandledByBrickMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 386
    const-string v0, "OemSceneCallBlocker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMutedByBrickMode: sound("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") will be blocked here"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return v1

    .line 389
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public static isNotificationMutedByCallBlocker(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 464
    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_DUMP:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneCallBlocker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNotificationMutedByCallBlocker: sbn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 465
    :cond_0
    invoke-static {p0}, Lcom/oneplus/util/OemSceneCallBlocker;->isCallBlockedOn(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 466
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 467
    .local v0, "notify":Landroid/app/Notification;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 468
    .local v2, "pkgName":Ljava/lang/String;
    sget-boolean v3, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "OemSceneCallBlocker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNotificationMutedByCallBlocker: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_1
    :try_start_0
    iget-object v3, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 471
    .local v3, "pending":Landroid/app/PendingIntent;
    if-eqz v3, :cond_4

    .line 474
    const-string v4, "call"

    iget-object v5, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    if-nez v4, :cond_4

    const-string v4, "call"

    invoke-virtual {v0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "notification"

    invoke-virtual {v0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 475
    :cond_2
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 476
    .local v4, "notificationIntent":Landroid/content/Intent;
    sget-boolean v5, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_LOGV:Z

    if-eqz v5, :cond_3

    const-string v5, "OemSceneCallBlocker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isNotificationMutedByCallBlocker: notificationIntent = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 478
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    .line 480
    invoke-static {p0, v4, v5}, Lcom/oneplus/util/OemSceneCallBlocker;->isCallBlocked(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    .line 486
    .end local v3    # "pending":Landroid/app/PendingIntent;
    .end local v4    # "notificationIntent":Landroid/content/Intent;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_4
    goto :goto_0

    .line 484
    :catch_0
    move-exception v3

    .line 485
    .local v3, "ex":Ljava/lang/Exception;
    const-string v4, "OemSceneCallBlocker"

    const-string v5, "isNotificationMutedByCallBlocker error"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 488
    .end local v0    # "notify":Landroid/app/Notification;
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_5
    :goto_0
    return v1
.end method

.method public static isNotificationMutedByESport(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 999
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1001
    :cond_0
    const/4 v0, 0x1

    .line 1002
    .local v0, "muted":Z
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1003
    .local v1, "pkgName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 1005
    .local v2, "tag":Ljava/lang/String;
    sget-object v3, Lcom/oneplus/util/OemSceneCallBlocker;->whiteListInESportMode:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1006
    sget-boolean v3, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "OemSceneCallBlocker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not mute in esport pkg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1008
    :cond_2
    const-string v3, "com.android.systemui"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1009
    sget-object v3, Lcom/oneplus/util/OemSceneCallBlocker;->whiteListTagInSystemUI:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1010
    sget-boolean v3, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "OemSceneCallBlocker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not mute in esport tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :cond_3
    const/4 v0, 0x0

    .line 1014
    :cond_4
    :goto_0
    return v0
.end method

.method private static isScreenAwake(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 826
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 827
    .local v0, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    .line 828
    .local v1, "isScreenAwake":Z
    sget-boolean v2, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_LOGV:Z

    if-eqz v2, :cond_0

    const-string v2, "OemSceneCallBlocker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isScreenAwake: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_0
    return v1
.end method

.method private static isScreenLocked(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 818
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 819
    .local v0, "myKM":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    .line 820
    .local v1, "isScreenLocked":Z
    sget-boolean v2, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_LOGV:Z

    if-eqz v2, :cond_0

    const-string v2, "OemSceneCallBlocker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isScreenLocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_0
    return v1
.end method

.method public static isStreamMutedByCallBlocker(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "streamType"    # I

    .line 428
    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_DUMP:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneCallBlocker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isStreamMutedByCallBlock: streamType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 431
    :cond_0
    invoke-static {p0}, Lcom/oneplus/util/OemSceneCallBlocker;->isCallBlockedOn(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/oneplus/util/OemSceneCallBlocker;->isHandledByCallBlocker(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/oneplus/util/OemSceneCallBlocker;->isForegroundCalling(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 432
    if-eqz p1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 436
    :cond_1
    const-string v0, "OemSceneCallBlocker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isStreamMutedByCallBlocker: sound stream("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") will be blocked here"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return v1

    .line 440
    :cond_2
    invoke-static {}, Lcom/oneplus/util/OemSceneCallBlocker;->isBrickModeOn()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/oneplus/util/OemSceneCallBlocker;->isHandledByBrickMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 441
    const-string v0, "OemSceneCallBlocker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMutedByBrickMode: sound("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") will be blocked here"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    return v1

    .line 444
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public static isUsageMutedByCallBlocker(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "audio_usage"    # I

    .line 407
    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_DUMP:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneCallBlocker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUsageMutedByCallBlocker: audio_usage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    :cond_0
    invoke-static {p0}, Lcom/oneplus/util/OemSceneCallBlocker;->isCallBlockedOn(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/oneplus/util/OemSceneCallBlocker;->isHandledByCallBlocker(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 410
    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_2

    .line 413
    :cond_1
    invoke-static {p0}, Lcom/oneplus/util/OemSceneCallBlocker;->isForegroundCalling(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 414
    const-string v0, "OemSceneCallBlocker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUsageMutedByCallBlocker: sound usage("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") will be blocked here"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return v1

    .line 419
    :cond_2
    invoke-static {}, Lcom/oneplus/util/OemSceneCallBlocker;->isBrickModeOn()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/oneplus/util/OemSceneCallBlocker;->isHandledByBrickMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 420
    const-string v0, "OemSceneCallBlocker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMutedByBrickMode: sound("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") will be blocked here"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    return v1

    .line 423
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private static isValidUserId(I)Z
    .locals 5
    .param p0, "userId"    # I

    .line 959
    const/4 v0, 0x0

    .line 960
    .local v0, "isValidUserId":Z
    sget-boolean v1, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "OemSceneCallBlocker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidUserId: userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 962
    .local v1, "currentUserId":I
    sget-boolean v2, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "OemSceneCallBlocker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isValidUserId: currentUserId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    :cond_1
    if-ne p0, v1, :cond_2

    .line 964
    const/4 v0, 0x1

    goto :goto_0

    .line 965
    :cond_2
    const/16 v2, 0x3e7

    if-ne p0, v2, :cond_3

    if-nez v1, :cond_3

    .line 966
    const/4 v0, 0x1

    .line 969
    :cond_3
    :goto_0
    return v0
.end method

.method public static isVibratorUsageMutedByCallBlocker(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "usageHint"    # I

    .line 394
    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_DUMP:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneCallBlocker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVibratorUsageMutedByCallBlocker: usageHint = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 395
    :cond_0
    invoke-static {p0}, Lcom/oneplus/util/OemSceneCallBlocker;->isCallBlockedOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/oneplus/util/OemSceneCallBlocker;->isHandledByCallBlocker(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/oneplus/util/OemSceneCallBlocker;->isForegroundCalling(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 396
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_2

    .line 399
    :cond_1
    const-string v1, "OemSceneCallBlocker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVibratorUsageMutedByCallBlocker: vibrator usage("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") will be blocked here"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return v0

    .line 403
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static loadDefaultConfigs()V
    .locals 12

    .line 493
    new-instance v0, Ljava/util/ArrayList;

    .line 494
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x502001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 496
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 497
    .local v2, "defaultString":Ljava/lang/String;
    const-string v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 498
    .local v6, "split":[Ljava/lang/String;
    array-length v7, v6

    if-lt v7, v3, :cond_1

    .line 499
    sget-boolean v3, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_LOGV:Z

    if-eqz v3, :cond_0

    const-string v3, "OemSceneCallBlocker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "defaultString("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v6, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v6, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_0
    sget-object v3, Lcom/oneplus/util/OemSceneCallBlocker;->s_ImComponentLists:Lcom/oneplus/util/MultiMap;

    aget-object v5, v6, v5

    aget-object v4, v6, v4

    invoke-virtual {v3, v5, v4}, Lcom/oneplus/util/MultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    .end local v2    # "defaultString":Ljava/lang/String;
    .end local v6    # "split":[Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 504
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 505
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x5020021

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 507
    .local v1, "intentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 508
    .local v6, "intentString":Ljava/lang/String;
    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 509
    .local v7, "split":[Ljava/lang/String;
    array-length v8, v7

    if-lt v8, v3, :cond_4

    .line 510
    sget-boolean v8, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_LOGV:Z

    if-eqz v8, :cond_3

    const-string v8, "OemSceneCallBlocker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "intentString("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v7, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v7, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_3
    sget-object v8, Lcom/oneplus/util/OemSceneCallBlocker;->s_ImSpecialIntents:Lcom/oneplus/util/MultiMap;

    aget-object v9, v7, v5

    aget-object v10, v7, v4

    invoke-virtual {v8, v9, v10}, Lcom/oneplus/util/MultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    .end local v6    # "intentString":Ljava/lang/String;
    .end local v7    # "split":[Ljava/lang/String;
    :cond_4
    goto :goto_1

    .line 515
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    .line 516
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x5020020

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 518
    .local v2, "actionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 519
    .local v7, "actionString":Ljava/lang/String;
    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 520
    .local v8, "split":[Ljava/lang/String;
    array-length v9, v8

    if-lt v9, v3, :cond_7

    .line 521
    sget-boolean v9, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_LOGV:Z

    if-eqz v9, :cond_6

    const-string v9, "OemSceneCallBlocker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "actionString("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v8, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v8, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_6
    sget-object v9, Lcom/oneplus/util/OemSceneCallBlocker;->s_ImSpecialActions:Lcom/oneplus/util/MultiMap;

    aget-object v10, v8, v5

    aget-object v11, v8, v4

    invoke-virtual {v9, v10, v11}, Lcom/oneplus/util/MultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    .end local v7    # "actionString":Ljava/lang/String;
    .end local v8    # "split":[Ljava/lang/String;
    :cond_7
    goto :goto_2

    .line 526
    :cond_8
    invoke-static {}, Lcom/oneplus/util/OemSceneCallBlocker;->fetchConfig()V

    .line 527
    return-void
.end method

.method private static popNotify(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "rInfo"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 687
    move-object/from16 v2, p2

    sget-boolean v3, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_LOGV:Z

    if-eqz v3, :cond_0

    const-string v3, "OemSceneCallBlocker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "popNotify+ :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_0
    sget-object v3, Lcom/oneplus/util/OemSceneCallBlocker;->sSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

    if-nez v3, :cond_1

    .line 689
    new-instance v3, Lcom/oneplus/util/notification/SimpleHeadsUpController;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/oneplus/util/notification/SimpleHeadsUpController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v3, Lcom/oneplus/util/OemSceneCallBlocker;->sSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

    .line 693
    :cond_1
    sput-object v0, Lcom/oneplus/util/OemSceneCallBlocker;->sContext:Landroid/content/Context;

    .line 694
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x509000c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 695
    .local v3, "inCallView":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 696
    .local v4, "pkgName":Ljava/lang/String;
    invoke-static {v0, v4, v2}, Lcom/oneplus/util/OemSceneCallBlocker;->getAppNameFromPkgName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v6

    .line 697
    .local v6, "appLabel":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x50c0069

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-virtual {v7, v8, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 700
    .local v7, "strTitle":Ljava/lang/String;
    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_2

    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :goto_0
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_1

    :cond_2
    sget-object v8, Lcom/oneplus/util/OemSceneCallBlocker;->sContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v4, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    goto :goto_0

    .line 701
    .local v8, "appUid":I
    :goto_1
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 703
    .local v10, "userId":I
    sget-boolean v12, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v12, :cond_3

    const-string v12, "OemSceneCallBlocker"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "popNotify: strTitle  = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_3
    sget-boolean v12, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v12, :cond_4

    const-string v12, "OemSceneCallBlocker"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "popNotify: appLabel = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_4
    sget-boolean v12, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v12, :cond_5

    const-string v12, "OemSceneCallBlocker"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "popNotify: pkgName = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_5
    sget-boolean v12, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v12, :cond_6

    const-string v12, "OemSceneCallBlocker"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "popNotify: userId = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_6
    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 712
    invoke-static/range {p0 .. p0}, Lcom/oneplus/util/OemSceneCallBlocker;->getPopedStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 713
    .local v12, "popUid":Ljava/lang/String;
    sget-boolean v13, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v13, :cond_7

    const-string v13, "OemSceneCallBlocker"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "popNotify: uid: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v13

    .line 716
    .local v13, "comingComponentName":Ljava/lang/String;
    sget-boolean v14, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v14, :cond_8

    const-string v14, "OemSceneCallBlocker"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "popNotify: comingComponentName = "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_8
    sget-boolean v11, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v11, :cond_9

    const-string v11, "OemSceneCallBlocker"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "popNotify: s_PoppedComponentName = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Lcom/oneplus/util/OemSceneCallBlocker;->s_PoppedComponentName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_9
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 722
    .local v11, "imUid":Ljava/lang/String;
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    sget-object v14, Lcom/oneplus/util/OemSceneCallBlocker;->s_PoppedComponentName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    goto :goto_3

    .line 723
    :cond_a
    :goto_2
    move-object/from16 v16, v6

    goto/16 :goto_6

    .line 722
    :cond_b
    :goto_3
    sget-object v14, Lcom/oneplus/util/OemSceneCallBlocker;->sContext:Landroid/content/Context;

    invoke-static {v14, v4, v8}, Lcom/oneplus/util/OemSceneCallBlocker;->isForegroundAppWithUid(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_10

    sget-object v14, Lcom/oneplus/util/OemSceneCallBlocker;->s_InCallClickedPackage:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    goto :goto_2

    .line 728
    :cond_c
    sput-object v13, Lcom/oneplus/util/OemSceneCallBlocker;->s_PoppedComponentName:Ljava/lang/String;

    .line 730
    invoke-static {v4}, Lcom/oneplus/util/OemSceneCallBlocker;->hideView(Ljava/lang/String;)V

    .line 732
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 733
    .local v14, "iconDraw":Landroid/graphics/drawable/Drawable;
    invoke-static {v14}, Lcom/oneplus/util/OemSceneCallBlocker;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 735
    .local v15, "iconBitmap":Landroid/graphics/Bitmap;
    const v5, 0x5070053

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 736
    .local v5, "tv":Landroid/widget/TextView;
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    const v9, 0x5070051

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 738
    .local v9, "iv":Landroid/widget/ImageView;
    invoke-virtual {v9, v15}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 739
    const v2, 0x5070050

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 740
    .local v2, "btn":Landroid/widget/Button;
    move-object/from16 v16, v6

    new-instance v6, Lcom/oneplus/util/OemSceneCallBlocker$1;

    .end local v6    # "appLabel":Ljava/lang/String;
    .local v16, "appLabel":Ljava/lang/String;
    invoke-direct {v6, v4}, Lcom/oneplus/util/OemSceneCallBlocker$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 747
    new-instance v6, Lcom/oneplus/util/OemSceneCallBlocker$2;

    invoke-direct {v6, v1, v0, v10, v4}, Lcom/oneplus/util/OemSceneCallBlocker$2;-><init>(Landroid/content/Intent;Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 769
    new-instance v6, Lcom/oneplus/util/OemSceneCallBlocker$3;

    invoke-direct {v6, v4}, Lcom/oneplus/util/OemSceneCallBlocker$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 779
    invoke-static/range {p0 .. p0}, Landroid/content/res/ThemeController;->getInstance(Landroid/content/Context;)Landroid/content/res/ThemeController;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/ThemeController;->getThemeState()I

    move-result v6

    const/4 v0, 0x1

    if-ne v6, v0, :cond_d

    goto :goto_4

    :cond_d
    const/4 v0, 0x0

    .line 780
    .local v0, "isBlackTheme":Z
    :goto_4
    if-eqz v0, :cond_e

    .line 781
    const v6, 0x5070052

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 782
    .local v6, "rl":Landroid/widget/RelativeLayout;
    move/from16 v17, v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .end local v0    # "isBlackTheme":Z
    .local v17, "isBlackTheme":Z
    move-object/from16 v18, v2

    const v2, 0x506006e

    .end local v2    # "btn":Landroid/widget/Button;
    .local v18, "btn":Landroid/widget/Button;
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 783
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x5040002

    move-object/from16 v19, v6

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .end local v6    # "rl":Landroid/widget/RelativeLayout;
    .local v19, "rl":Landroid/widget/RelativeLayout;
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .end local v19    # "rl":Landroid/widget/RelativeLayout;
    goto :goto_5

    .line 786
    .end local v17    # "isBlackTheme":Z
    .end local v18    # "btn":Landroid/widget/Button;
    .restart local v0    # "isBlackTheme":Z
    .restart local v2    # "btn":Landroid/widget/Button;
    :cond_e
    move/from16 v17, v0

    move-object/from16 v18, v2

    .end local v0    # "isBlackTheme":Z
    .end local v2    # "btn":Landroid/widget/Button;
    .restart local v17    # "isBlackTheme":Z
    .restart local v18    # "btn":Landroid/widget/Button;
    :goto_5
    move-object/from16 v20, v5

    const-wide/16 v5, 0x7530

    .end local v5    # "tv":Landroid/widget/TextView;
    .local v20, "tv":Landroid/widget/TextView;
    invoke-static {v3, v4, v5, v6, v10}, Lcom/oneplus/util/OemSceneCallBlocker;->showView(Landroid/view/View;Ljava/lang/String;JI)V

    .line 788
    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_LOGV:Z

    if-eqz v0, :cond_f

    const-string v0, "OemSceneCallBlocker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "popNotify- :"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_f
    return-void

    .line 723
    .end local v9    # "iv":Landroid/widget/ImageView;
    .end local v14    # "iconDraw":Landroid/graphics/drawable/Drawable;
    .end local v15    # "iconBitmap":Landroid/graphics/Bitmap;
    .end local v16    # "appLabel":Ljava/lang/String;
    .end local v17    # "isBlackTheme":Z
    .end local v18    # "btn":Landroid/widget/Button;
    .end local v20    # "tv":Landroid/widget/TextView;
    .local v6, "appLabel":Ljava/lang/String;
    :cond_10
    move-object/from16 v16, v6

    .end local v6    # "appLabel":Ljava/lang/String;
    .restart local v16    # "appLabel":Ljava/lang/String;
    :goto_6
    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v0, :cond_11

    const-string v0, "OemSceneCallBlocker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "popNotify: \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") is already existed or in the foreground. Skip to pop."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_11
    return-void
.end method

.method private static putPopedStatus(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imUid"    # Ljava/lang/String;

    .line 978
    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneCallBlocker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putPopedStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_0
    if-eqz p0, :cond_3

    .line 980
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 981
    .local v0, "userId":I
    const/16 v1, 0x3e7

    if-ne v1, v0, :cond_1

    .line 982
    const/4 v0, 0x0

    .line 984
    :cond_1
    sget-boolean v1, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_LOGV:Z

    if-eqz v1, :cond_2

    const-string v1, "OemSceneCallBlocker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putPopedStatus: userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "game_mode_notifications_3rd_calls_uid"

    invoke-static {v1, v2, p1, v0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 987
    .end local v0    # "userId":I
    :cond_3
    return-void
.end method

.method private static resetPopedStatus(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 974
    const-string v0, "-1"

    invoke-static {p0, v0}, Lcom/oneplus/util/OemSceneCallBlocker;->putPopedStatus(Landroid/content/Context;Ljava/lang/String;)V

    .line 975
    return-void
.end method

.method private static resolveAdditionalConfig(Ljava/lang/String;)V
    .locals 3
    .param p0, "cfgName"    # Ljava/lang/String;

    .line 876
    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneCallBlocker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveAdditionalConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_0
    sget-object v0, Lcom/oneplus/util/OemSceneCallBlocker;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 878
    new-instance v0, Lcom/oneplus/util/OemSceneCallBlocker$4;

    invoke-direct {v0, p0}, Lcom/oneplus/util/OemSceneCallBlocker$4;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 888
    :cond_1
    const-string v0, "OemSceneCallBlocker"

    const-string v1, "resolveAdditionalConfig: sContext is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :goto_0
    return-void
.end method

.method private static resolveImConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 12
    .param p0, "jsonArray"    # Lorg/json/JSONArray;

    .line 894
    if-nez p0, :cond_0

    .line 895
    const-string v0, "OemSceneCallBlocker"

    const-string v1, "resolveCompatConfigFromJSON: jsonArray is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    return-void

    .line 900
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .local v1, "index":I
    :goto_0
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_8

    .line 901
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 902
    .local v3, "json":Lorg/json/JSONObject;
    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 903
    .local v4, "configListJsonArray":Lorg/json/JSONArray;
    move v5, v0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 904
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 905
    .local v6, "pkgInfoJsonObject":Lorg/json/JSONObject;
    const-string v7, "pkg"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 906
    .local v7, "c_pkg":Ljava/lang/String;
    const-string v8, "name"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 907
    .local v8, "c_name":Ljava/lang/String;
    const-string v9, "name"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "im_components"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 908
    sget-object v9, Lcom/oneplus/util/OemSceneCallBlocker;->s_ImComponentLists:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v9, v8}, Lcom/oneplus/util/MultiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 909
    sget-boolean v9, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v9, :cond_1

    const-string v9, "OemSceneCallBlocker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resolveImConfigFromJSON: add s_ImComponentLists \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :cond_1
    sget-object v9, Lcom/oneplus/util/OemSceneCallBlocker;->s_ImComponentLists:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v9, v7, v8}, Lcom/oneplus/util/MultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    :cond_2
    const-string v9, "name"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "im_special_intents"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 914
    sget-object v9, Lcom/oneplus/util/OemSceneCallBlocker;->s_ImSpecialIntents:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v9, v8}, Lcom/oneplus/util/MultiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 915
    sget-boolean v9, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v9, :cond_3

    const-string v9, "OemSceneCallBlocker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resolveImConfigFromJSON: add s_ImSpecialIntents \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :cond_3
    sget-object v9, Lcom/oneplus/util/OemSceneCallBlocker;->s_ImSpecialIntents:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v9, v7, v8}, Lcom/oneplus/util/MultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    :cond_4
    const-string v9, "name"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "im_special_actions"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 920
    sget-object v9, Lcom/oneplus/util/OemSceneCallBlocker;->s_ImSpecialActions:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v9, v8}, Lcom/oneplus/util/MultiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 921
    sget-boolean v9, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v9, :cond_5

    const-string v9, "OemSceneCallBlocker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resolveImConfigFromJSON: add s_ImSpecialActions \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :cond_5
    sget-object v9, Lcom/oneplus/util/OemSceneCallBlocker;->s_ImSpecialActions:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v9, v7, v8}, Lcom/oneplus/util/MultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 903
    .end local v6    # "pkgInfoJsonObject":Lorg/json/JSONObject;
    .end local v7    # "c_pkg":Ljava/lang/String;
    .end local v8    # "c_name":Ljava/lang/String;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 900
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "configListJsonArray":Lorg/json/JSONArray;
    .end local v5    # "i":I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 932
    .end local v1    # "index":I
    :cond_8
    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->sIsFetched:Z

    if-nez v0, :cond_f

    .line 933
    sput-boolean v2, Lcom/oneplus/util/OemSceneCallBlocker;->sIsFetched:Z

    .line 934
    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "OemSceneCallBlocker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveImConfigFromJSON: s_ImComponentLists = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oneplus/util/OemSceneCallBlocker;->s_ImComponentLists:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v2}, Lcom/oneplus/util/MultiMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :cond_9
    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v0, :cond_a

    const-string v0, "OemSceneCallBlocker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveImConfigFromJSON: s_ImSpecialIntents = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oneplus/util/OemSceneCallBlocker;->s_ImSpecialIntents:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v2}, Lcom/oneplus/util/MultiMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :cond_a
    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v0, :cond_f

    const-string v0, "OemSceneCallBlocker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    const-string v2, "resolveImConfigFromJSON: s_ImSpecialActions = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oneplus/util/OemSceneCallBlocker;->s_ImSpecialActions:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v2}, Lcom/oneplus/util/MultiMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 932
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 929
    :catch_0
    move-exception v0

    .line 930
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "OemSceneCallBlocker"

    const-string v3, "resolveCompatConfigFromJSON error:"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 932
    .end local v0    # "e":Ljava/lang/Exception;
    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->sIsFetched:Z

    if-nez v0, :cond_f

    .line 933
    sput-boolean v2, Lcom/oneplus/util/OemSceneCallBlocker;->sIsFetched:Z

    .line 934
    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "OemSceneCallBlocker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveImConfigFromJSON: s_ImComponentLists = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oneplus/util/OemSceneCallBlocker;->s_ImComponentLists:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v2}, Lcom/oneplus/util/MultiMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :cond_b
    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "OemSceneCallBlocker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveImConfigFromJSON: s_ImSpecialIntents = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oneplus/util/OemSceneCallBlocker;->s_ImSpecialIntents:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v2}, Lcom/oneplus/util/MultiMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :cond_c
    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v0, :cond_f

    const-string v0, "OemSceneCallBlocker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    .line 927
    :catch_1
    move-exception v0

    .line 928
    .local v0, "ex":Lorg/json/JSONException;
    :try_start_2
    const-string v1, "OemSceneCallBlocker"

    const-string v3, "resolveCompatConfigFromJSON JSONException:"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 932
    .end local v0    # "ex":Lorg/json/JSONException;
    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->sIsFetched:Z

    if-nez v0, :cond_f

    .line 933
    sput-boolean v2, Lcom/oneplus/util/OemSceneCallBlocker;->sIsFetched:Z

    .line 934
    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v0, :cond_d

    const-string v0, "OemSceneCallBlocker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveImConfigFromJSON: s_ImComponentLists = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oneplus/util/OemSceneCallBlocker;->s_ImComponentLists:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v2}, Lcom/oneplus/util/MultiMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :cond_d
    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v0, :cond_e

    const-string v0, "OemSceneCallBlocker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveImConfigFromJSON: s_ImSpecialIntents = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oneplus/util/OemSceneCallBlocker;->s_ImSpecialIntents:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v2}, Lcom/oneplus/util/MultiMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :cond_e
    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v0, :cond_f

    const-string v0, "OemSceneCallBlocker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_2

    .line 939
    :cond_f
    :goto_3
    return-void

    .line 932
    :goto_4
    sget-boolean v1, Lcom/oneplus/util/OemSceneCallBlocker;->sIsFetched:Z

    if-nez v1, :cond_12

    .line 933
    sput-boolean v2, Lcom/oneplus/util/OemSceneCallBlocker;->sIsFetched:Z

    .line 934
    sget-boolean v1, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v1, :cond_10

    const-string v1, "OemSceneCallBlocker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolveImConfigFromJSON: s_ImComponentLists = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/oneplus/util/OemSceneCallBlocker;->s_ImComponentLists:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v3}, Lcom/oneplus/util/MultiMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :cond_10
    sget-boolean v1, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v1, :cond_11

    const-string v1, "OemSceneCallBlocker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolveImConfigFromJSON: s_ImSpecialIntents = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/oneplus/util/OemSceneCallBlocker;->s_ImSpecialIntents:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v3}, Lcom/oneplus/util/MultiMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :cond_11
    sget-boolean v1, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v1, :cond_12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveImConfigFromJSON: s_ImSpecialActions = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oneplus/util/OemSceneCallBlocker;->s_ImSpecialActions:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v2}, Lcom/oneplus/util/MultiMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OemSceneCallBlocker"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    throw v0
.end method

.method private static showView(Landroid/view/View;Ljava/lang/String;JI)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "timeout"    # J
    .param p4, "userId"    # I

    .line 643
    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneCallBlocker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showView+: pkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_0
    sget-object v0, Lcom/oneplus/util/OemSceneCallBlocker;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_6

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_6

    .line 647
    const/4 v0, 0x2

    :try_start_0
    sget-object v1, Lcom/oneplus/util/OemSceneCallBlocker;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/util/OemSceneCallBlocker;->getPopedStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 648
    .local v1, "popUid":Ljava/lang/String;
    sget-object v2, Lcom/oneplus/util/OemSceneCallBlocker;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, p4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 649
    .local v2, "uid":I
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 650
    .local v3, "imUid":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 651
    sget-boolean v4, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "OemSceneCallBlocker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showView: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") is already existed. Skip to pop."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    :cond_1
    sget-object v4, Lcom/oneplus/util/OemSceneCallBlocker;->sHandler:Landroid/os/Handler;

    if-eqz v4, :cond_2

    .line 670
    sget-object v4, Lcom/oneplus/util/OemSceneCallBlocker;->sHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 671
    sget-object v4, Lcom/oneplus/util/OemSceneCallBlocker;->sHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 672
    .local v4, "msg":Landroid/os/Message;
    iput v0, v4, Landroid/os/Message;->what:I

    .line 673
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 674
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "PKG"

    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    invoke-virtual {v4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 676
    sget-object v5, Lcom/oneplus/util/OemSceneCallBlocker;->sHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 652
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v4    # "msg":Landroid/os/Message;
    :cond_2
    return-void

    .line 655
    :cond_3
    :try_start_1
    sget-object v4, Lcom/oneplus/util/OemSceneCallBlocker;->sContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/oneplus/util/OemSceneCallBlocker;->putPopedStatus(Landroid/content/Context;Ljava/lang/String;)V

    .line 656
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x30

    const/4 v6, -0x2

    invoke-direct {v4, v6, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 660
    .local v4, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v5, 0x31

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 661
    sget-object v5, Lcom/oneplus/util/OemSceneCallBlocker;->sSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

    if-eqz v5, :cond_4

    .line 662
    sget-object v5, Lcom/oneplus/util/OemSceneCallBlocker;->sSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

    invoke-virtual {v5, p0, v4, p2, p3}, Lcom/oneplus/util/notification/SimpleHeadsUpController;->showView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;J)V

    .line 664
    const/4 v5, 0x0

    sput-object v5, Lcom/oneplus/util/OemSceneCallBlocker;->s_InCallClickedPackage:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 669
    .end local v1    # "popUid":Ljava/lang/String;
    .end local v2    # "uid":I
    .end local v3    # "imUid":Ljava/lang/String;
    .end local v4    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    sget-object v1, Lcom/oneplus/util/OemSceneCallBlocker;->sHandler:Landroid/os/Handler;

    if-eqz v1, :cond_7

    .line 670
    sget-object v1, Lcom/oneplus/util/OemSceneCallBlocker;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 671
    sget-object v1, Lcom/oneplus/util/OemSceneCallBlocker;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 672
    .local v1, "msg":Landroid/os/Message;
    iput v0, v1, Landroid/os/Message;->what:I

    .line 673
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 669
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 666
    :catch_0
    move-exception v1

    .line 667
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "OemSceneCallBlocker"

    const-string v3, "showView failed."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 669
    .end local v1    # "e":Ljava/lang/Exception;
    sget-object v1, Lcom/oneplus/util/OemSceneCallBlocker;->sHandler:Landroid/os/Handler;

    if-eqz v1, :cond_7

    .line 670
    sget-object v1, Lcom/oneplus/util/OemSceneCallBlocker;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 671
    sget-object v1, Lcom/oneplus/util/OemSceneCallBlocker;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 672
    .local v1, "msg":Landroid/os/Message;
    iput v0, v1, Landroid/os/Message;->what:I

    .line 673
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 674
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    const-string v2, "PKG"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 676
    sget-object v2, Lcom/oneplus/util/OemSceneCallBlocker;->sHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 677
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_2

    .line 669
    :goto_1
    sget-object v2, Lcom/oneplus/util/OemSceneCallBlocker;->sHandler:Landroid/os/Handler;

    if-eqz v2, :cond_5

    .line 670
    sget-object v2, Lcom/oneplus/util/OemSceneCallBlocker;->sHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 671
    sget-object v2, Lcom/oneplus/util/OemSceneCallBlocker;->sHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 672
    .local v2, "msg":Landroid/os/Message;
    iput v0, v2, Landroid/os/Message;->what:I

    .line 673
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 674
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v3, "PKG"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 676
    sget-object v3, Lcom/oneplus/util/OemSceneCallBlocker;->sHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 677
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_5
    throw v1

    .line 680
    :cond_6
    const-string v0, "OemSceneCallBlocker"

    const-string v1, "showView failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_7
    :goto_2
    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->DBG_LOGV:Z

    if-eqz v0, :cond_8

    const-string v0, "OemSceneCallBlocker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showView-: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_8
    return-void
.end method


# virtual methods
.method public config(Ljava/lang/Object;)I
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 195
    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneCallBlocker"

    const-string v1, "OemSceneCallBlocker: config"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public start(Ljava/lang/Object;)I
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 175
    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneCallBlocker"

    const-string v1, "OemSceneCallBlocker: start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    sget-object v0, Lcom/oneplus/util/OemSceneCallBlocker;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 179
    sget-object v0, Lcom/oneplus/util/OemSceneCallBlocker;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OemSceneCallBlocker;->resetPopedStatus(Landroid/content/Context;)V

    .line 181
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public stop(Ljava/lang/Object;)I
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 185
    sget-boolean v0, Lcom/oneplus/util/OemSceneCallBlocker;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneCallBlocker"

    const-string v1, "OemSceneCallBlocker: stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    sget-object v0, Lcom/oneplus/util/OemSceneCallBlocker;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 189
    sget-object v0, Lcom/oneplus/util/OemSceneCallBlocker;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OemSceneCallBlocker;->resetPopedStatus(Landroid/content/Context;)V

    .line 191
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
