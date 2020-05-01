.class Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;
.super Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ModeActiveState;
.source "WifiStateMachinePrime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanOnlyModeActiveState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState$ScanOnlyListener;
    }
.end annotation


# instance fields
.field mListener:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState$ScanOnlyListener;

.field final synthetic this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    .line 449
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ModeActiveState;-><init>(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 478
    const-string v0, "WifiStateMachinePrime"

    const-string v1, "Entering ScanOnlyModeActiveState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    new-instance v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState$ScanOnlyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState$ScanOnlyListener;-><init>(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;Lcom/android/server/wifi/WifiStateMachinePrime$1;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;->mListener:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState$ScanOnlyListener;

    .line 481
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$1100(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/WifiInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;->mListener:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState$ScanOnlyListener;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiInjector;->makeScanOnlyModeManager(Lcom/android/server/wifi/ScanOnlyModeManager$Listener;)Lcom/android/server/wifi/ScanOnlyModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;->mManager:Lcom/android/server/wifi/ActiveModeManager;

    .line 482
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;->mManager:Lcom/android/server/wifi/ActiveModeManager;

    invoke-interface {v0}, Lcom/android/server/wifi/ActiveModeManager;->start()V

    .line 483
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$400(Lcom/android/server/wifi/WifiStateMachinePrime;)Landroid/util/ArraySet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;->mManager:Lcom/android/server/wifi/ActiveModeManager;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 485
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$500(Lcom/android/server/wifi/WifiStateMachinePrime;Z)V

    .line 486
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$1500(Lcom/android/server/wifi/WifiStateMachinePrime;)V

    .line 487
    return-void
.end method

.method public exit()V
    .locals 1

    .line 491
    invoke-super {p0}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ModeActiveState;->exit()V

    .line 492
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;->mListener:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState$ScanOnlyListener;

    .line 493
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .line 497
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->access$900(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;Landroid/os/Message;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 498
    return v1

    .line 501
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    .line 528
    const/4 v0, 0x0

    return v0

    .line 506
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;->mListener:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState$ScanOnlyListener;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eq v0, v2, :cond_1

    .line 507
    const-string v0, "WifiStateMachinePrime"

    const-string v2, "ScanOnly mode state change from previous manager"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    return v1

    .line 511
    :cond_1
    const-string v0, "WifiStateMachinePrime"

    const-string v2, "ScanOnlyMode failed, return to WifiDisabledState."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$1600(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/ScanOnlyModeManager$Listener;

    move-result-object v0

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Lcom/android/server/wifi/ScanOnlyModeManager$Listener;->onStateChanged(I)V

    .line 514
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$300(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->access$1300(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 515
    goto :goto_0

    .line 517
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;->mListener:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState$ScanOnlyListener;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eq v0, v2, :cond_2

    .line 518
    const-string v0, "WifiStateMachinePrime"

    const-string v2, "ScanOnly mode state change from previous manager"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    return v1

    .line 522
    :cond_2
    const-string v0, "WifiStateMachinePrime"

    const-string v2, "ScanOnlyMode stopped, return to WifiDisabledState."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$1600(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/ScanOnlyModeManager$Listener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/server/wifi/ScanOnlyModeManager$Listener;->onStateChanged(I)V

    .line 525
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->access$300(Lcom/android/server/wifi/WifiStateMachinePrime;)Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine$ScanOnlyModeActiveState;->this$1:Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->access$1300(Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 526
    goto :goto_0

    .line 503
    :cond_3
    const-string v0, "WifiStateMachinePrime"

    const-string v2, "Received CMD_START_SCAN_ONLY_MODE when active - drop"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    nop

    .line 530
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x200cb
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
