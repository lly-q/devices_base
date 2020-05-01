.class Lcom/android/server/wifi/WifiController$StaDisabledState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StaDisabledState"
.end annotation


# instance fields
.field private mDeferredEnableSerialNumber:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;

    .line 441
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 442
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->mDeferredEnableSerialNumber:I

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$1100(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachinePrime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->disableWifi()V

    .line 459
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$3400(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->clearANQPCache()V

    .line 460
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$202(Lcom/android/server/wifi/WifiController;Z)Z

    .line 462
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 465
    invoke-static {}, Lcom/android/server/wifi/WifiController;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+ StaDisabledState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2, p1}, Lcom/android/server/wifi/WifiController;->access$800(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$3500(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 466
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x26012

    const/4 v2, 0x1

    if-eq v0, v1, :cond_8

    const v1, 0x26064

    if-eq v0, v1, :cond_7

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 539
    return v1

    .line 516
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->mDeferredEnableSerialNumber:I

    if-eq v0, v1, :cond_1

    .line 517
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v1, "DEFERRED_TOGGLE ignored due to serial mismatch"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$3800(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 518
    goto/16 :goto_0

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v1, "DEFERRED_TOGGLE handled"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$3900(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->sendMessage(Landroid/os/Message;)V

    .line 522
    goto/16 :goto_0

    .line 506
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$1500(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 507
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v1, "drop softap requests when in airplane mode"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$3700(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 508
    goto/16 :goto_0

    .line 510
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_3

    .line 512
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$1500(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiSettingsStore;->setWifiSavedState(I)V

    .line 514
    :cond_3
    return v1

    .line 493
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0, p1, v2}, Lcom/android/server/wifi/WifiController;->access$3600(Lcom/android/server/wifi/WifiController;Landroid/os/Message;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 494
    goto/16 :goto_0

    .line 496
    :cond_4
    return v1

    .line 468
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$1500(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 470
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0, p1, v2}, Lcom/android/server/wifi/WifiController;->access$3600(Lcom/android/server/wifi/WifiController;Landroid/os/Message;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 471
    goto/16 :goto_0

    .line 483
    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$1900(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 484
    :cond_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$2000(Lcom/android/server/wifi/WifiController;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 486
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$1500(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 487
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$2100(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 499
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$2000(Lcom/android/server/wifi/WifiController;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 500
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$2100(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 501
    goto :goto_0

    .line 535
    :cond_7
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiController;->deferMessage(Landroid/os/Message;)V

    .line 536
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$4000(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$FtmModeState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 537
    goto :goto_0

    .line 524
    :cond_8
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$1500(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 527
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$1900(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 528
    goto :goto_0

    .line 529
    :cond_9
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$2000(Lcom/android/server/wifi/WifiController;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 530
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$2100(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 531
    nop

    .line 541
    :cond_a
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x26007
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
