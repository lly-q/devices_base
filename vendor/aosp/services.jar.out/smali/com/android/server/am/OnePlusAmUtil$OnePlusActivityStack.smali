.class public Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;
.super Ljava/lang/Object;
.source "OnePlusAmUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusAmUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnePlusActivityStack"
.end annotation


# instance fields
.field private mActivityStack:Lcom/android/server/am/ActivityStack;

.field protected mSceneModeActivityStack:Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 1
    .param p1, "as"    # Lcom/android/server/am/ActivityStack;
    .param p2, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    iput-object p1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    .line 411
    new-instance v0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;

    invoke-direct {v0, p1, p2}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;-><init>(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityStackSupervisor;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;->mSceneModeActivityStack:Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;

    .line 413
    return-void
.end method


# virtual methods
.method public final handleEvaluateGameMode(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 447
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;->mSceneModeActivityStack:Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->handleEvaluateGameMode(Z)V

    .line 448
    return-void
.end method

.method public final handleEvaluateReadMode(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 443
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;->mSceneModeActivityStack:Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->handleEvaluateReadMode(Z)V

    .line 444
    return-void
.end method

.method public final resumeTopActivityInnerLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/ActivityRecord;)Z
    .locals 5
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "next"    # Lcom/android/server/am/ActivityRecord;

    .line 428
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;->mSceneModeActivityStack:Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->startEvaluateSceneModes(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 429
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;->mSceneModeActivityStack:Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v1, p3}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->updateSceneScreenEffectFlag(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityRecord;)V

    .line 432
    iget-object v0, p3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 433
    invoke-static {}, Lcom/android/server/am/OnePlusTemperatureMonitor;->getInstance()Lcom/android/server/am/OnePlusTemperatureMonitor;

    move-result-object v0

    iget-object v1, p3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusTemperatureMonitor;->startAntutuMonitor(Ljava/lang/String;)Z

    .line 434
    iget-object v0, p3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    .line 435
    invoke-static {}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->getInstance()Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;

    move-result-object v0

    iget-object v1, p3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, p3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v3, p3, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->setFront(Ljava/lang/String;Ljava/lang/String;II)V

    .line 437
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z
    .locals 2
    .param p1, "userLeaving"    # Z
    .param p2, "uiSleeping"    # Z
    .param p3, "resuming"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "pauseImmediately"    # Z

    .line 419
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;->mSceneModeActivityStack:Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1, p3}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->stopEvaluateSceneModes(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 422
    const/4 v0, 0x0

    return v0
.end method

.method public final updateDisableSceneScreenEffectFlag(I)V
    .locals 1
    .param p1, "toDisableMode"    # I

    .line 451
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;->mSceneModeActivityStack:Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->updateDisableSceneScreenEffectFlag(I)V

    .line 452
    return-void
.end method
