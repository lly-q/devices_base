.class Lcom/android/server/wifi/WifiController$QcStaDisablingState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QcStaDisablingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;

    .line 1100
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$QcStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 1103
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$QcStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v1, "QcStaDisablingState.enter()"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$6100(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 1104
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1108
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x2601e

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 1124
    const/4 v0, 0x0

    return v0

    .line 1111
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$QcStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v1, "In QcStaDisablingState, deferMessage"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$6200(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 1112
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$QcStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiController;->deferMessage(Landroid/os/Message;)V

    .line 1113
    goto :goto_0

    .line 1115
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$QcStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$1500(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1116
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$QcStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$2000(Lcom/android/server/wifi/WifiController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1117
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$QcStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$QcStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$2100(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1119
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$QcStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$QcStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$1200(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1127
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x26008
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
