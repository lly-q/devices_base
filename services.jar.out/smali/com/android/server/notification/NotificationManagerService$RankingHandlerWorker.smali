.class final Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;
.super Landroid/os/Handler;
.source "NotificationManagerService.java"

# interfaces
.implements Lcom/android/server/notification/RankingHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RankingHandlerWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 5777
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 5778
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 5779
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 5783
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 5788
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleRankingSort()V

    goto :goto_0

    .line 5785
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$8600(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Message;)V

    .line 5786
    nop

    .line 5791
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public requestReconsideration(Lcom/android/server/notification/RankingReconsideration;)V
    .locals 3
    .param p1, "recon"    # Lcom/android/server/notification/RankingReconsideration;

    .line 5801
    const/16 v0, 0x3e8

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5803
    .local v0, "m":Landroid/os/Message;
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1}, Lcom/android/server/notification/RankingReconsideration;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    .line 5804
    .local v1, "delay":J
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5805
    return-void
.end method

.method public requestSort()V
    .locals 2

    .line 5794
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;->removeMessages(I)V

    .line 5795
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 5796
    .local v1, "msg":Landroid/os/Message;
    iput v0, v1, Landroid/os/Message;->what:I

    .line 5797
    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;->sendMessage(Landroid/os/Message;)Z

    .line 5798
    return-void
.end method
