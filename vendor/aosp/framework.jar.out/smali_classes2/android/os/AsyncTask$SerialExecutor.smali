.class Landroid/os/AsyncTask$SerialExecutor;
.super Ljava/lang/Object;
.source "AsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerialExecutor"
.end annotation


# instance fields
.field mActive:Ljava/lang/Runnable;

.field final mTasks:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/os/AsyncTask$SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/AsyncTask$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/AsyncTask$1;

    .line 237
    invoke-direct {p0}, Landroid/os/AsyncTask$SerialExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    monitor-enter p0

    .line 242
    :try_start_0
    iget-object v0, p0, Landroid/os/AsyncTask$SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    new-instance v1, Landroid/os/AsyncTask$SerialExecutor$1;

    invoke-direct {v1, p0, p1}, Landroid/os/AsyncTask$SerialExecutor$1;-><init>(Landroid/os/AsyncTask$SerialExecutor;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 251
    iget-object v0, p0, Landroid/os/AsyncTask$SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 252
    invoke-virtual {p0}, Landroid/os/AsyncTask$SerialExecutor;->scheduleNext()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :cond_0
    monitor-exit p0

    return-void

    .line 241
    .end local p1    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/os/AsyncTask$SerialExecutor;
    throw p1
.end method

.method protected declared-synchronized scheduleNext()V
    .locals 2

    monitor-enter p0

    .line 257
    :try_start_0
    iget-object v0, p0, Landroid/os/AsyncTask$SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Landroid/os/AsyncTask$SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 258
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/os/AsyncTask$SerialExecutor;->mActive:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :cond_0
    monitor-exit p0

    return-void

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/os/AsyncTask$SerialExecutor;
    throw v0
.end method
