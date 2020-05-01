.class public Lcom/android/server/OemSceneAudioController;
.super Ljava/lang/Object;
.source "OemSceneAudioController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemSceneAudioController$AudioProcessesController;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "OemSceneAudioController"

.field private static sInstance:Lcom/android/server/OemSceneAudioController;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioProcessesController:Lcom/android/server/OemSceneAudioController$AudioProcessesController;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OemSceneAudioController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/server/OemSceneAudioController;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/OemSceneAudioController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OemSceneAudioController;

    .line 36
    invoke-direct {p0}, Lcom/android/server/OemSceneAudioController;->startAudioProcessesController()V

    return-void
.end method

.method private getActiveAudioUids()[Ljava/lang/String;
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/android/server/OemSceneAudioController;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/server/OemSceneAudioController;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/OemSceneAudioController;->mAudioManager:Landroid/media/AudioManager;

    .line 111
    :cond_0
    const-string v0, ""

    .line 112
    .local v0, "uids":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/OemSceneAudioController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/android/server/OemSceneAudioController;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v2, "get_uid"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/OemSceneAudioController;->parseActiveAudioUidsStr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneAudioController;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 47
    sget-object v0, Lcom/android/server/OemSceneAudioController;->sInstance:Lcom/android/server/OemSceneAudioController;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/android/server/OemSceneAudioController;

    invoke-direct {v0, p0}, Lcom/android/server/OemSceneAudioController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/OemSceneAudioController;->sInstance:Lcom/android/server/OemSceneAudioController;

    .line 50
    :cond_0
    sget-object v0, Lcom/android/server/OemSceneAudioController;->sInstance:Lcom/android/server/OemSceneAudioController;

    return-object v0
.end method

.method private killProcesses([Ljava/lang/String;)V
    .locals 8
    .param p1, "uids"    # [Ljava/lang/String;

    .line 89
    if-nez p1, :cond_0

    return-void

    .line 91
    :cond_0
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 92
    .local v2, "uidstr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    .end local v2    # "uidstr":Ljava/lang/String;
    goto :goto_1

    .line 93
    .restart local v2    # "uidstr":Ljava/lang/String;
    :cond_1
    const-string v3, "OemSceneAudioController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mute uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " by zen mode."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 95
    .local v3, "uid":I
    const/16 v4, 0x2710

    if-lt v3, v4, :cond_2

    .line 96
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    .line 97
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    const-string/jumbo v7, "killUidByZenMode"

    .line 96
    invoke-interface {v4, v5, v6, v7}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V

    .line 99
    const-string v4, "OemSceneAudioController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " mute uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " by zen mode."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v2    # "uidstr":Ljava/lang/String;
    .end local v3    # "uid":I
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_3
    goto :goto_2

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OemSceneAudioController"

    const-string v2, "Error calling killUid"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method private parseActiveAudioUidsStr(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "uids"    # Ljava/lang/String;

    .line 120
    sget-boolean v0, Lcom/android/server/OemSceneAudioController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 121
    const-string v0, "OemSceneAudioController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parseActiveAudioUidsStr():uids="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    if-eqz p1, :cond_2

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 126
    :cond_1
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 123
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private startAudioProcessesController()V
    .locals 1

    .line 85
    invoke-direct {p0}, Lcom/android/server/OemSceneAudioController;->getActiveAudioUids()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneAudioController;->killProcesses([Ljava/lang/String;)V

    .line 86
    return-void
.end method


# virtual methods
.method public getAudioProcessesController()Lcom/android/server/OemSceneAudioController$AudioProcessesController;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/server/OemSceneAudioController;->mAudioProcessesController:Lcom/android/server/OemSceneAudioController$AudioProcessesController;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/android/server/OemSceneAudioController$AudioProcessesController;

    invoke-direct {v0, p0}, Lcom/android/server/OemSceneAudioController$AudioProcessesController;-><init>(Lcom/android/server/OemSceneAudioController;)V

    iput-object v0, p0, Lcom/android/server/OemSceneAudioController;->mAudioProcessesController:Lcom/android/server/OemSceneAudioController$AudioProcessesController;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneAudioController;->mAudioProcessesController:Lcom/android/server/OemSceneAudioController$AudioProcessesController;

    return-object v0
.end method
