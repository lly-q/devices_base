.class Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;
.super Landroid/database/ContentObserver;
.source "SoftApManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoftApTimeoutEnabledSettingObserver"
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 631
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;->this$2:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;

    .line 632
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 633
    return-void
.end method

.method private getIntValue()I
    .locals 4

    .line 672
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;->this$2:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1600(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/FrameworkFacade;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;->this$2:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$1500(Lcom/android/server/wifi/SoftApManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "soft_ap_timeout_enabled"

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;->this$2:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 673
    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->access$2000(Lcom/android/server/wifi/SoftApManager;)I

    move-result v3

    .line 672
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/FrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 674
    .local v0, "enabledType":I
    return v0
.end method

.method private getSoftApTimeoutDelay(I)I
    .locals 4
    .param p1, "enabledType"    # I

    .line 679
    packed-switch p1, :pswitch_data_0

    .line 690
    const v0, 0x493e0

    goto :goto_0

    .line 687
    :pswitch_0
    const v0, 0xdbba0

    .line 688
    .local v0, "delay":I
    goto :goto_0

    .line 684
    .end local v0    # "delay":I
    :pswitch_1
    const v0, 0x927c0

    .line 685
    .restart local v0    # "delay":I
    goto :goto_0

    .line 681
    .end local v0    # "delay":I
    :pswitch_2
    const v0, 0x493e0

    .line 682
    .restart local v0    # "delay":I
    nop

    .line 690
    :goto_0
    nop

    .line 693
    const-string v1, "SoftApManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout delay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getValue()Z
    .locals 4

    .line 666
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;->this$2:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1600(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/FrameworkFacade;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;->this$2:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$1500(Lcom/android/server/wifi/SoftApManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "soft_ap_timeout_enabled"

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;->this$2:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 667
    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->access$2000(Lcom/android/server/wifi/SoftApManager;)I

    move-result v3

    .line 666
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/FrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 668
    .local v0, "enabled":Z
    return v0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .line 652
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 654
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;->this$2:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;

    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;->getIntValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;->getSoftApTimeoutDelay(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->access$1902(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;I)I

    .line 655
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;->this$2:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$000(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;->getIntValue()I

    move-result v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->sendMessage(II)V

    .line 662
    return-void
.end method

.method public register()V
    .locals 4

    .line 636
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;->this$2:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1600(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/FrameworkFacade;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;->this$2:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$1500(Lcom/android/server/wifi/SoftApManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "soft_ap_timeout_enabled"

    .line 637
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 636
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/server/wifi/FrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 639
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;->this$2:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;->getValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->access$1702(Lcom/android/server/wifi/SoftApManager;Z)Z

    .line 641
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;->this$2:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;->getIntValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->access$1802(Lcom/android/server/wifi/SoftApManager;I)I

    .line 642
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;->this$2:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;

    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;->getIntValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;->getSoftApTimeoutDelay(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->access$1902(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;I)I

    .line 644
    return-void
.end method

.method public unregister()V
    .locals 2

    .line 647
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;->this$2:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1600(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/FrameworkFacade;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;->this$2:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$1500(Lcom/android/server/wifi/SoftApManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wifi/FrameworkFacade;->unregisterContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 648
    return-void
.end method
