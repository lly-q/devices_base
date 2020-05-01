.class Lcom/android/server/wifi/WifiController$FtmModeState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FtmModeState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;

    .line 935
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$FtmModeState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private getDriverStatus()Ljava/lang/String;
    .locals 2

    .line 974
    const-string v0, "wlan.driver.status"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 938
    invoke-static {}, Lcom/android/server/wifi/WifiController;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$FtmModeState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v1, "+++ FtmModeState +++"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$5900(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 939
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 943
    invoke-static {}, Lcom/android/server/wifi/WifiController;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$FtmModeState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+ FtmModeState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$FtmModeState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2, p1}, Lcom/android/server/wifi/WifiController;->access$800(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$6000(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 944
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 968
    return v2

    .line 946
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController$FtmModeState;->getDriverStatus()Ljava/lang/String;

    move-result-object v0

    const-string v2, "unloaded"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 947
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController$FtmModeState;->getDriverStatus()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 952
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$FtmModeState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$FtmModeState;->this$0:Lcom/android/server/wifi/WifiController;

    const v3, 0x26064

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wifi/WifiController;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 954
    goto :goto_1

    .line 948
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$FtmModeState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$3400(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setFtmMode(Z)Z

    goto :goto_1

    .line 958
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$FtmModeState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiController;->deferMessage(Landroid/os/Message;)V

    .line 959
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$FtmModeState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$FtmModeState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$1200(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledState;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 961
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$FtmModeState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$3400(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->setFtmMode(Z)Z

    .line 962
    goto :goto_1

    .line 965
    :pswitch_3
    nop

    .line 970
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x26007
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x26064
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
