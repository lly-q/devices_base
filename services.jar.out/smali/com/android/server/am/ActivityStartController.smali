.class public Lcom/android/server/am/ActivityStartController;
.super Ljava/lang/Object;
.source "ActivityStartController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStartController$StartHandler;
    }
.end annotation


# static fields
.field private static final DO_PENDING_ACTIVITY_LAUNCHES_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private final mFactory:Lcom/android/server/am/ActivityStarter$Factory;

.field private final mHandler:Landroid/os/Handler;

.field private mLastHomeActivityStartRecord:Lcom/android/server/am/ActivityRecord;

.field private mLastHomeActivityStartResult:I

.field private mLastStarter:Lcom/android/server/am/ActivityStarter;

.field private final mPendingActivityLaunches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingRemoteAnimationRegistry:Lcom/android/server/am/PendingRemoteAnimationRegistry;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private tmpOutRecord:[Lcom/android/server/am/ActivityRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 115
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v1, Lcom/android/server/am/ActivityStarter$DefaultFactory;

    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v3, Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v4, p1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {v3, p1, v4}, Lcom/android/server/am/ActivityStartInterceptor;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V

    invoke-direct {v1, p1, v2, v3}, Lcom/android/server/am/ActivityStarter$DefaultFactory;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStartInterceptor;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/ActivityStartController;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStarter$Factory;)V

    .line 118
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStarter$Factory;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p3, "factory"    # Lcom/android/server/am/ActivityStarter$Factory;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/am/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStartController;->tmpOutRecord:[Lcom/android/server/am/ActivityRecord;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    .line 123
    iput-object p1, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 124
    iput-object p2, p0, Lcom/android/server/am/ActivityStartController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 125
    new-instance v0, Lcom/android/server/am/ActivityStartController$StartHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityStartController$StartHandler;-><init>(Lcom/android/server/am/ActivityStartController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStartController;->mHandler:Landroid/os/Handler;

    .line 126
    iput-object p3, p0, Lcom/android/server/am/ActivityStartController;->mFactory:Lcom/android/server/am/ActivityStarter$Factory;

    .line 127
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mFactory:Lcom/android/server/am/ActivityStarter$Factory;

    invoke-interface {v0, p0}, Lcom/android/server/am/ActivityStarter$Factory;->setController(Lcom/android/server/am/ActivityStartController;)V

    .line 128
    new-instance v0, Lcom/android/server/am/PendingRemoteAnimationRegistry;

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-direct {v0, p1, v1}, Lcom/android/server/am/PendingRemoteAnimationRegistry;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/am/PendingRemoteAnimationRegistry;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActivityStartController;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityStartController;

    .line 63
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method


# virtual methods
.method addPendingActivityLaunch(Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;)V
    .locals 1
    .param p1, "launch"    # Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    .line 427
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    return-void
.end method

.method checkTargetUser(IZIILjava/lang/String;)I
    .locals 9
    .param p1, "targetUserId"    # I
    .param p2, "validateIncomingUser"    # Z
    .param p3, "realCallingPid"    # I
    .param p4, "realCallingUid"    # I
    .param p5, "reason"    # Ljava/lang/String;

    .line 239
    if-eqz p2, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v8, 0x0

    move v2, p3

    move v3, p4

    move v4, p1

    move-object v7, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->ensureNotSpecialUser(I)V

    .line 244
    return p1
.end method

.method clearPendingActivityLaunches(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 431
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 433
    .local v0, "pendingLaunches":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "palNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 434
    iget-object v2, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    .line 435
    .local v2, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    iget-object v3, v2, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    .line 436
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 437
    iget-object v4, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 433
    .end local v2    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 440
    .end local v1    # "palNdx":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method doPendingActivityLaunches(Z)V
    .locals 12
    .param p1, "doResume"    # Z

    .line 411
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    .line 413
    .local v0, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    move v8, v1

    .line 414
    .local v8, "resume":Z
    const/4 v1, 0x0

    const-string/jumbo v2, "pendingActivityLaunch"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    .line 417
    .local v2, "starter":Lcom/android/server/am/ActivityStarter;
    :try_start_0
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->sourceRecord:Lcom/android/server/am/ActivityRecord;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->startFlags:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/am/ActivityStarter;->startResolvedActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    goto :goto_1

    .line 419
    :catch_0
    move-exception v1

    .line 420
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception during pending activity launch pal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->sendErrorResult(Ljava/lang/String;)V

    .line 423
    .end local v0    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "starter":Lcom/android/server/am/ActivityStarter;
    .end local v8    # "resume":Z
    :goto_1
    goto :goto_0

    .line 424
    :cond_1
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpPackage"    # Ljava/lang/String;

    .line 453
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 454
    const-string/jumbo v0, "mLastHomeActivityStartResult="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 455
    iget v0, p0, Lcom/android/server/am/ActivityStartController;->mLastHomeActivityStartResult:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 457
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 459
    const-string/jumbo v0, "mLastHomeActivityStartRecord:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/am/ActivityRecord;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 463
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 465
    .local v2, "dumpPackagePresent":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    if-eqz v3, :cond_4

    .line 466
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    .line 467
    invoke-virtual {v3, p3}, Lcom/android/server/am/ActivityStarter;->relatedToPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/am/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 469
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    move v0, v1

    .line 471
    .local v0, "dump":Z
    :goto_2
    if-eqz v0, :cond_4

    .line 472
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 473
    iget-object v1, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/android/server/am/ActivityStarter;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 475
    if-eqz v2, :cond_4

    .line 476
    return-void

    .line 481
    .end local v0    # "dump":Z
    :cond_4
    if-eqz v2, :cond_5

    .line 482
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 483
    const-string v0, "(nothing)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 485
    :cond_5
    return-void
.end method

.method getPendingRemoteAnimationRegistry()Lcom/android/server/am/PendingRemoteAnimationRegistry;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/am/PendingRemoteAnimationRegistry;

    return-object v0
.end method

.method obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "reason"    # Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mFactory:Lcom/android/server/am/ActivityStarter$Factory;

    invoke-interface {v0}, Lcom/android/server/am/ActivityStarter$Factory;->obtain()Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStarter;->setIntent(Landroid/content/Intent;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityStarter;->setReason(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    return-object v0
.end method

.method onExecutionComplete(Lcom/android/server/am/ActivityStarter;)V
    .locals 1
    .param p1, "starter"    # Lcom/android/server/am/ActivityStarter;

    .line 142
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mFactory:Lcom/android/server/am/ActivityStarter$Factory;

    invoke-interface {v0}, Lcom/android/server/am/ActivityStarter$Factory;->obtain()Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStarter;->set(Lcom/android/server/am/ActivityStarter;)V

    .line 147
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mFactory:Lcom/android/server/am/ActivityStarter$Factory;

    invoke-interface {v0, p1}, Lcom/android/server/am/ActivityStarter$Factory;->recycle(Lcom/android/server/am/ActivityStarter;)V

    .line 148
    return-void
.end method

.method postStartActivityProcessingForLastStarter(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "result"    # I
    .param p3, "targetStack"    # Lcom/android/server/am/ActivityStack;

    .line 156
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    if-nez v0, :cond_0

    .line 157
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ActivityStarter;->postStartActivityProcessing(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;)V

    .line 161
    return-void
.end method

.method registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "adapter"    # Landroid/view/RemoteAnimationAdapter;

    .line 445
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/am/PendingRemoteAnimationRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/PendingRemoteAnimationRegistry;->addPendingAnimation(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V

    .line 446
    return-void
.end method

.method schedulePendingActivityLaunches(J)V
    .locals 2
    .param p1, "delayMs"    # J

    .line 405
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 406
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 407
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/ActivityStartController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 408
    return-void
.end method

.method startActivities(Landroid/app/IApplicationThread;IIILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/am/SafeActivityOptions;ILjava/lang/String;)I
    .locals 34
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "incomingRealCallingPid"    # I
    .param p4, "incomingRealCallingUid"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;
    .param p6, "intents"    # [Landroid/content/Intent;
    .param p7, "resolvedTypes"    # [Ljava/lang/String;
    .param p8, "resultTo"    # Landroid/os/IBinder;
    .param p9, "options"    # Lcom/android/server/am/SafeActivityOptions;
    .param p10, "userId"    # I
    .param p11, "reason"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    .line 307
    if-eqz v3, :cond_11

    .line 310
    if-eqz v4, :cond_10

    .line 313
    array-length v0, v3

    array-length v5, v4

    if-ne v0, v5, :cond_f

    .line 317
    if-eqz p3, :cond_0

    .line 318
    nop

    .line 319
    move/from16 v0, p3

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    :goto_0
    move v6, v0

    .line 320
    .local v6, "realCallingPid":I
    const/16 v0, -0x2710

    move/from16 v7, p4

    if-eq v7, v0, :cond_1

    .line 321
    nop

    .line 322
    move v8, v7

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 324
    .local v8, "realCallingUid":I
    :goto_1
    const/4 v9, -0x1

    if-ltz p2, :cond_2

    .line 325
    const/4 v11, -0x1

    .line 330
    .local v11, "callingPid":I
    move/from16 v10, p2

    goto :goto_2

    .line 326
    .end local v11    # "callingPid":I
    :cond_2
    if-nez v2, :cond_3

    .line 327
    move v11, v6

    .line 328
    .restart local v11    # "callingPid":I
    move v10, v8

    .line 328
    .end local p2    # "callingUid":I
    .local v10, "callingUid":I
    goto :goto_2

    .line 330
    .end local v10    # "callingUid":I
    .end local v11    # "callingPid":I
    .restart local p2    # "callingUid":I
    :cond_3
    move v10, v9

    .line 330
    .end local p2    # "callingUid":I
    .restart local v10    # "callingUid":I
    move v11, v9

    .line 332
    .restart local v11    # "callingPid":I
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 334
    .local v12, "origId":J
    :try_start_0
    iget-object v14, v1, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 335
    const/4 v15, 0x1

    new-array v9, v15, [Lcom/android/server/am/ActivityRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 336
    .local v9, "outActivity":[Lcom/android/server/am/ActivityRecord;
    const/16 v17, 0x0

    move-object/from16 v19, p8

    move/from16 v18, v17

    .line 336
    .end local p8    # "resultTo":Landroid/os/IBinder;
    .local v18, "i":I
    .local v19, "resultTo":Landroid/os/IBinder;
    :goto_3
    move/from16 v20, v18

    .line 336
    .end local v18    # "i":I
    .local v20, "i":I
    :try_start_2
    array-length v15, v3

    move/from16 v0, v20

    if-ge v0, v15, :cond_e

    .line 337
    .end local v20    # "i":I
    .local v0, "i":I
    aget-object v15, v3, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 338
    .local v15, "intent":Landroid/content/Intent;
    if-nez v15, :cond_4

    .line 339
    nop

    .line 336
    move-object/from16 v15, p11

    move-wide v2, v12

    goto/16 :goto_a

    .line 343
    :cond_4
    if-eqz v15, :cond_6

    :try_start_3
    invoke-virtual {v15}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v18

    if-nez v18, :cond_5

    goto :goto_4

    .line 344
    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v7, "File descriptors passed in Intent"

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 396
    .end local v0    # "i":I
    .end local v9    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .end local v15    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v0

    move-object/from16 v15, p11

    move-wide v2, v12

    move-object/from16 v31, v19

    goto/16 :goto_c

    .line 347
    .restart local v0    # "i":I
    .restart local v9    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .restart local v15    # "intent":Landroid/content/Intent;
    :cond_6
    :goto_4
    :try_start_4
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    goto :goto_5

    :cond_7
    move/from16 v5, v17

    .line 350
    .local v5, "componentSpecified":Z
    :goto_5
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v15}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 353
    .end local v15    # "intent":Landroid/content/Intent;
    .local v7, "intent":Landroid/content/Intent;
    iget-object v15, v1, Lcom/android/server/am/ActivityStartController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    aget-object v23, v4, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 354
    move-wide/from16 v28, v12

    const/16 v12, -0x2710

    :try_start_5
    invoke-static {v10, v8, v12}, Lcom/android/server/am/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v27

    .line 353
    .end local v12    # "origId":J
    .local v28, "origId":J
    move-object/from16 v21, v15

    move-object/from16 v22, v7

    move/from16 v26, p10

    invoke-virtual/range {v21 .. v27}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;

    move-result-object v13

    .line 357
    .local v13, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v15, v1, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v12, p10

    invoke-virtual {v15, v13, v12}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-object v13, v15

    .line 359
    if-eqz v13, :cond_9

    :try_start_6
    iget-object v15, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v15, v15, 0x2

    if-nez v15, :cond_8

    goto :goto_6

    .line 362
    :cond_8
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v12, "FLAG_CANT_SAVE_STATE not supported here"

    invoke-direct {v15, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 396
    .end local v0    # "i":I
    .end local v5    # "componentSpecified":Z
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v9    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catchall_1
    move-exception v0

    move-object/from16 v15, p11

    move-object/from16 v31, v19

    move-wide/from16 v2, v28

    goto/16 :goto_c

    .line 366
    .restart local v0    # "i":I
    .restart local v5    # "componentSpecified":Z
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v9    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .restart local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_9
    :goto_6
    :try_start_7
    array-length v12, v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    const/4 v15, 0x1

    sub-int/2addr v12, v15

    if-ne v0, v12, :cond_a

    move v12, v15

    goto :goto_7

    :cond_a
    move/from16 v12, v17

    .line 367
    .local v12, "top":Z
    :goto_7
    const/16 v18, 0x0

    if-eqz v12, :cond_b

    .line 368
    nop

    .line 369
    move-object/from16 v20, p9

    goto :goto_8

    :cond_b
    move-object/from16 v20, v18

    :goto_8
    move-object/from16 v30, v20

    .line 370
    .local v30, "checkedOptions":Lcom/android/server/am/SafeActivityOptions;
    move-object/from16 v15, p11

    :try_start_8
    invoke-virtual {v1, v7, v15}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v3

    .line 371
    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/am/ActivityStarter;

    move-result-object v3

    aget-object v1, v4, v0

    .line 372
    invoke-virtual {v3, v1}, Lcom/android/server/am/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v1

    .line 373
    invoke-virtual {v1, v13}, Lcom/android/server/am/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityStarter;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 374
    move-object/from16 v3, v19

    :try_start_9
    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/am/ActivityStarter;

    move-result-object v1

    .line 375
    .end local v19    # "resultTo":Landroid/os/IBinder;
    .local v3, "resultTo":Landroid/os/IBinder;
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStarter;->setRequestCode(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v1

    .line 376
    invoke-virtual {v1, v11}, Lcom/android/server/am/ActivityStarter;->setCallingPid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v1

    .line 377
    invoke-virtual {v1, v10}, Lcom/android/server/am/ActivityStarter;->setCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v1

    .line 378
    move-object/from16 v2, p5

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v1

    .line 379
    invoke-virtual {v1, v6}, Lcom/android/server/am/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v1

    .line 380
    invoke-virtual {v1, v8}, Lcom/android/server/am/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v1

    .line 381
    move-object/from16 v2, v30

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStarter;->setActivityOptions(Lcom/android/server/am/SafeActivityOptions;)Lcom/android/server/am/ActivityStarter;

    move-result-object v1

    .line 382
    .end local v30    # "checkedOptions":Lcom/android/server/am/SafeActivityOptions;
    .local v2, "checkedOptions":Lcom/android/server/am/SafeActivityOptions;
    invoke-virtual {v1, v5}, Lcom/android/server/am/ActivityStarter;->setComponentSpecified(Z)Lcom/android/server/am/ActivityStarter;

    move-result-object v1

    .line 383
    invoke-virtual {v1, v9}, Lcom/android/server/am/ActivityStarter;->setOutActivity([Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStarter;

    move-result-object v1

    .line 387
    invoke-virtual {v1, v12}, Lcom/android/server/am/ActivityStarter;->setAllowPendingRemoteAnimationRegistryLookup(Z)Lcom/android/server/am/ActivityStarter;

    move-result-object v1

    .line 388
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStarter;->execute()I

    move-result v1

    .line 390
    .local v1, "res":I
    if-gez v1, :cond_c

    .line 391
    monitor-exit v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 398
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move-object/from16 v32, v2

    move-object/from16 v31, v3

    move-wide/from16 v2, v28

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 391
    .end local v3    # "resultTo":Landroid/os/IBinder;
    .end local v28    # "origId":J
    .local v2, "origId":J
    .local v31, "resultTo":Landroid/os/IBinder;
    .local v32, "checkedOptions":Lcom/android/server/am/SafeActivityOptions;
    return v1

    .line 394
    .end local v31    # "resultTo":Landroid/os/IBinder;
    .end local v32    # "checkedOptions":Lcom/android/server/am/SafeActivityOptions;
    .local v2, "checkedOptions":Lcom/android/server/am/SafeActivityOptions;
    .restart local v3    # "resultTo":Landroid/os/IBinder;
    .restart local v28    # "origId":J
    :cond_c
    move-object/from16 v32, v2

    move-object/from16 v31, v3

    move-wide/from16 v2, v28

    .line 394
    .end local v3    # "resultTo":Landroid/os/IBinder;
    .end local v28    # "origId":J
    .local v2, "origId":J
    .restart local v31    # "resultTo":Landroid/os/IBinder;
    .restart local v32    # "checkedOptions":Lcom/android/server/am/SafeActivityOptions;
    :try_start_a
    aget-object v16, v9, v17

    if-eqz v16, :cond_d

    move/from16 v33, v1

    aget-object v1, v9, v17

    .line 394
    .end local v1    # "res":I
    .local v33, "res":I
    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v18, v1

    goto :goto_9

    .line 394
    .end local v33    # "res":I
    .restart local v1    # "res":I
    :cond_d
    move/from16 v33, v1

    .line 394
    .end local v1    # "res":I
    .restart local v33    # "res":I
    :goto_9
    move-object/from16 v19, v18

    .line 336
    .end local v5    # "componentSpecified":Z
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v12    # "top":Z
    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v31    # "resultTo":Landroid/os/IBinder;
    .end local v32    # "checkedOptions":Lcom/android/server/am/SafeActivityOptions;
    .end local v33    # "res":I
    .restart local v19    # "resultTo":Landroid/os/IBinder;
    :goto_a
    add-int/lit8 v18, v0, 0x1

    .line 336
    .end local v0    # "i":I
    .restart local v18    # "i":I
    move-wide v12, v2

    const/16 v0, -0x2710

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p6

    move/from16 v7, p4

    const/4 v15, 0x1

    goto/16 :goto_3

    .line 396
    .end local v2    # "origId":J
    .end local v9    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .end local v18    # "i":I
    .end local v19    # "resultTo":Landroid/os/IBinder;
    .restart local v3    # "resultTo":Landroid/os/IBinder;
    .restart local v28    # "origId":J
    :catchall_2
    move-exception v0

    move-object/from16 v31, v3

    move-wide/from16 v2, v28

    .line 396
    .end local v3    # "resultTo":Landroid/os/IBinder;
    .end local v28    # "origId":J
    .restart local v2    # "origId":J
    .restart local v31    # "resultTo":Landroid/os/IBinder;
    goto :goto_c

    .line 396
    .end local v2    # "origId":J
    .end local v31    # "resultTo":Landroid/os/IBinder;
    .restart local v19    # "resultTo":Landroid/os/IBinder;
    .restart local v28    # "origId":J
    :catchall_3
    move-exception v0

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object/from16 v15, p11

    :goto_b
    move-object/from16 v31, v19

    move-wide/from16 v2, v28

    .line 396
    .end local v19    # "resultTo":Landroid/os/IBinder;
    .end local v28    # "origId":J
    .restart local v2    # "origId":J
    .restart local v31    # "resultTo":Landroid/os/IBinder;
    goto :goto_c

    .line 396
    .end local v2    # "origId":J
    .end local v31    # "resultTo":Landroid/os/IBinder;
    .local v12, "origId":J
    .restart local v19    # "resultTo":Landroid/os/IBinder;
    :cond_e
    move-object/from16 v15, p11

    move-wide v2, v12

    move-object/from16 v31, v19

    .line 396
    .end local v12    # "origId":J
    .end local v19    # "resultTo":Landroid/os/IBinder;
    .restart local v2    # "origId":J
    .restart local v31    # "resultTo":Landroid/os/IBinder;
    monitor-exit v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 398
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 399
    nop

    .line 401
    return v17

    .line 396
    .end local v2    # "origId":J
    .end local v31    # "resultTo":Landroid/os/IBinder;
    .restart local v12    # "origId":J
    .restart local v19    # "resultTo":Landroid/os/IBinder;
    :catchall_5
    move-exception v0

    move-object/from16 v15, p11

    move-wide v2, v12

    move-object/from16 v31, v19

    .line 396
    .end local v12    # "origId":J
    .end local v19    # "resultTo":Landroid/os/IBinder;
    .restart local v2    # "origId":J
    .restart local v31    # "resultTo":Landroid/os/IBinder;
    goto :goto_c

    .line 396
    .end local v2    # "origId":J
    .end local v31    # "resultTo":Landroid/os/IBinder;
    .restart local v12    # "origId":J
    .restart local p8    # "resultTo":Landroid/os/IBinder;
    :catchall_6
    move-exception v0

    move-object/from16 v15, p11

    move-wide v2, v12

    move-object/from16 v31, p8

    .line 396
    .end local v12    # "origId":J
    .end local p8    # "resultTo":Landroid/os/IBinder;
    .restart local v2    # "origId":J
    .restart local v31    # "resultTo":Landroid/os/IBinder;
    :goto_c
    :try_start_c
    monitor-exit v14
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 398
    :catchall_7
    move-exception v0

    goto :goto_d

    .line 396
    :catchall_8
    move-exception v0

    goto :goto_c

    .line 398
    .end local v2    # "origId":J
    .end local v31    # "resultTo":Landroid/os/IBinder;
    .restart local v12    # "origId":J
    .restart local p8    # "resultTo":Landroid/os/IBinder;
    :catchall_9
    move-exception v0

    move-object/from16 v15, p11

    move-wide v2, v12

    move-object/from16 v31, p8

    .line 398
    .end local v12    # "origId":J
    .end local p8    # "resultTo":Landroid/os/IBinder;
    .restart local v2    # "origId":J
    .restart local v31    # "resultTo":Landroid/os/IBinder;
    :goto_d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 314
    .end local v2    # "origId":J
    .end local v6    # "realCallingPid":I
    .end local v8    # "realCallingUid":I
    .end local v10    # "callingUid":I
    .end local v11    # "callingPid":I
    .end local v31    # "resultTo":Landroid/os/IBinder;
    .restart local p2    # "callingUid":I
    .restart local p8    # "resultTo":Landroid/os/IBinder;
    :cond_f
    move-object/from16 v15, p11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "intents are length different than resolvedTypes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_10
    move-object/from16 v15, p11

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "resolvedTypes is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_11
    move-object/from16 v15, p11

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "intents is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final startActivitiesInPackage(IIILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/am/SafeActivityOptions;IZ)I
    .locals 19
    .param p1, "uid"    # I
    .param p2, "realCallingPid"    # I
    .param p3, "realCallingUid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "intents"    # [Landroid/content/Intent;
    .param p6, "resolvedTypes"    # [Ljava/lang/String;
    .param p7, "resultTo"    # Landroid/os/IBinder;
    .param p8, "options"    # Lcom/android/server/am/SafeActivityOptions;
    .param p9, "userId"    # I
    .param p10, "validateIncomingUser"    # Z

    .line 294
    const-string/jumbo v0, "startActivityInPackage"

    .line 296
    .local v0, "reason":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 297
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const-string/jumbo v6, "startActivityInPackage"

    .line 296
    move-object/from16 v1, p0

    move/from16 v2, p9

    move/from16 v3, p10

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStartController;->checkTargetUser(IZIILjava/lang/String;)I

    move-result v1

    .line 300
    .end local p9    # "userId":I
    .local v1, "userId":I
    const-string/jumbo v18, "startActivityInPackage"

    const/4 v8, 0x0

    move-object/from16 v7, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move/from16 v17, v1

    invoke-virtual/range {v7 .. v18}, Lcom/android/server/am/ActivityStartController;->startActivities(Landroid/app/IApplicationThread;IIILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/am/SafeActivityOptions;ILjava/lang/String;)I

    move-result v2

    return v2
.end method

.method final startActivitiesInPackage(ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/am/SafeActivityOptions;IZ)I
    .locals 11
    .param p1, "uid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intents"    # [Landroid/content/Intent;
    .param p4, "resolvedTypes"    # [Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "options"    # Lcom/android/server/am/SafeActivityOptions;
    .param p7, "userId"    # I
    .param p8, "validateIncomingUser"    # Z

    .line 285
    const/4 v2, 0x0

    const/16 v3, -0x2710

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/ActivityStartController;->startActivitiesInPackage(IIILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/am/SafeActivityOptions;IZ)I

    move-result v0

    return v0
.end method

.method final startActivityInPackage(IIILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/am/SafeActivityOptions;ILcom/android/server/am/TaskRecord;Ljava/lang/String;Z)I
    .locals 16
    .param p1, "uid"    # I
    .param p2, "realCallingPid"    # I
    .param p3, "realCallingUid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "resolvedType"    # Ljava/lang/String;
    .param p7, "resultTo"    # Landroid/os/IBinder;
    .param p8, "resultWho"    # Ljava/lang/String;
    .param p9, "requestCode"    # I
    .param p10, "startFlags"    # I
    .param p11, "options"    # Lcom/android/server/am/SafeActivityOptions;
    .param p12, "userId"    # I
    .param p13, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p14, "reason"    # Ljava/lang/String;
    .param p15, "validateIncomingUser"    # Z

    .line 253
    move-object/from16 v0, p0

    move/from16 v1, p12

    move/from16 v2, p15

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p14

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStartController;->checkTargetUser(IZIILjava/lang/String;)I

    move-result v0

    .line 257
    .end local p12    # "userId":I
    .local v0, "userId":I
    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p14

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 258
    move/from16 v5, p1

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStarter;->setCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 259
    move/from16 v6, p2

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 260
    move/from16 v7, p3

    invoke-virtual {v4, v7}, Lcom/android/server/am/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 261
    move-object/from16 v8, p4

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 262
    move-object/from16 v9, p6

    invoke-virtual {v4, v9}, Lcom/android/server/am/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 263
    move-object/from16 v10, p7

    invoke-virtual {v4, v10}, Lcom/android/server/am/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 264
    move-object/from16 v11, p8

    invoke-virtual {v4, v11}, Lcom/android/server/am/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 265
    move/from16 v12, p9

    invoke-virtual {v4, v12}, Lcom/android/server/am/ActivityStarter;->setRequestCode(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 266
    move/from16 v13, p10

    invoke-virtual {v4, v13}, Lcom/android/server/am/ActivityStarter;->setStartFlags(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 267
    move-object/from16 v14, p11

    invoke-virtual {v4, v14}, Lcom/android/server/am/ActivityStarter;->setActivityOptions(Lcom/android/server/am/SafeActivityOptions;)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 268
    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStarter;->setMayWait(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 269
    move-object/from16 v15, p13

    invoke-virtual {v4, v15}, Lcom/android/server/am/ActivityStarter;->setInTask(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 270
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStarter;->execute()I

    move-result v4

    .line 257
    return v4
.end method

.method startHomeActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "reason"    # Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p3}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(Ljava/lang/String;)Z

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startHomeActivity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStartController;->tmpOutRecord:[Lcom/android/server/am/ActivityRecord;

    .line 167
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStarter;->setOutActivity([Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 168
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStarter;->setCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 169
    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStarter;->execute()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityStartController;->mLastHomeActivityStartResult:I

    .line 171
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->tmpOutRecord:[Lcom/android/server/am/ActivityRecord;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/server/am/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/am/ActivityRecord;

    .line 172
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleResumeTopActivities()V

    .line 178
    :cond_0
    return-void
.end method

.method startSetupActivity()V
    .locals 10

    .line 185
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getCheckedForSetup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 193
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, v1, Lcom/android/server/am/ActivityManagerService;->mFactoryTest:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const-string v1, "device_provisioned"

    .line 194
    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    .line 196
    iget-object v1, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->setCheckedForSetup(Z)V

    .line 199
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UPGRADE_SETUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 201
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const v4, 0x100480

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 204
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 205
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 206
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_1

    .line 207
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "android.SETUP_VERSION"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 208
    :cond_1
    const/4 v5, 0x0

    .line 209
    .local v5, "vers":Ljava/lang/String;
    :goto_0
    if-nez v5, :cond_2

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_2

    .line 210
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "android.SETUP_VERSION"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 213
    :cond_2
    const-string/jumbo v6, "last_setup_shown"

    invoke-static {v0, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 215
    .local v6, "lastVers":Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 216
    const/high16 v7, 0x10000000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 217
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 219
    const-string/jumbo v7, "startSetupActivity"

    invoke-virtual {p0, v1, v7}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v7

    .line 220
    invoke-virtual {v7, v3}, Lcom/android/server/am/ActivityStarter;->setCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v3

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 221
    invoke-virtual {v3, v7}, Lcom/android/server/am/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityStarter;

    move-result-object v3

    .line 222
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStarter;->execute()I

    .line 226
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v5    # "vers":Ljava/lang/String;
    .end local v6    # "lastVers":Ljava/lang/String;
    :cond_3
    return-void
.end method
