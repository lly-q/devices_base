.class Lcom/android/server/OemSceneModeController$1;
.super Landroid/os/Handler;
.source "OemSceneModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemSceneModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneModeController;


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneModeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OemSceneModeController;

    .line 352
    iput-object p1, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 354
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 383
    :pswitch_1
    const/4 v0, 0x0

    .line 384
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 385
    .local v1, "event":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v2

    .line 386
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 387
    const-string/jumbo v3, "hashmap"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/HashMap;

    .line 389
    :cond_0
    iget-object v3, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v3}, Lcom/android/server/OemSceneModeController;->access$1400(Lcom/android/server/OemSceneModeController;)Lnet/oneplus/odm/insight/tracker/OSTracker;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 389
    .end local v0    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "event":Ljava/lang/String;
    .end local v2    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 380
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$1300(Lcom/android/server/OemSceneModeController;)V

    .line 381
    goto :goto_1

    .line 377
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$1200(Lcom/android/server/OemSceneModeController;)V

    .line 378
    goto :goto_1

    .line 391
    :goto_0
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneModeController;->handleBreathModeChanged()V

    .line 392
    goto :goto_1

    .line 374
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneModeController;->handleStartMonitorPassive()V

    .line 375
    goto :goto_1

    .line 371
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneModeController;->handleStopMonitorPassive()V

    .line 372
    goto :goto_1

    .line 368
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneModeController;->handleStartMonitor()V

    .line 369
    goto :goto_1

    .line 365
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$1100(Lcom/android/server/OemSceneModeController;)V

    .line 366
    goto :goto_1

    .line 362
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$1000(Lcom/android/server/OemSceneModeController;)V

    .line 363
    goto :goto_1

    .line 359
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$900(Lcom/android/server/OemSceneModeController;)V

    .line 360
    goto :goto_1

    .line 356
    :pswitch_b
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$800(Lcom/android/server/OemSceneModeController;)V

    .line 357
    nop

    .line 398
    :goto_1
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$1500(Lcom/android/server/OemSceneModeController;)V

    .line 399
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
