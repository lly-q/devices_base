.class Lcom/android/server/wifi/WifiServiceImpl$8;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .line 2701
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$8;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2704
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2705
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2706
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$8;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->access$1000(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v1

    const v2, 0x2600c

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto/16 :goto_0

    .line 2707
    :cond_0
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2708
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2709
    .local v1, "userHandle":I
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$8;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v2, v2, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->removeUserConfigs(I)V

    .line 2710
    .end local v1    # "userHandle":I
    goto/16 :goto_0

    :cond_1
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2711
    const-string v1, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2713
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$8;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v2, v2, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendBluetoothAdapterStateChange(I)V

    .line 2714
    .end local v1    # "state":I
    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2715
    const-string v1, "phoneinECMState"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 2716
    .local v1, "emergencyMode":Z
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$8;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v3}, Lcom/android/server/wifi/WifiServiceImpl;->access$1000(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v3

    const v4, 0x26001

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/wifi/WifiController;->sendMessage(III)V

    .line 2717
    .end local v1    # "emergencyMode":Z
    goto :goto_0

    :cond_3
    const-string v1, "android.intent.action.EMERGENCY_CALL_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2718
    const-string v1, "phoneInEmergencyCall"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 2719
    .local v1, "inCall":Z
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$8;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v3}, Lcom/android/server/wifi/WifiServiceImpl;->access$1000(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v3

    const v4, 0x2600e

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/wifi/WifiController;->sendMessage(III)V

    .line 2720
    .end local v1    # "inCall":Z
    goto :goto_0

    :cond_4
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2721
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$8;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiServiceImpl;->handleIdleModeChanged()V

    goto :goto_0

    .line 2723
    :cond_5
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2724
    const-string v1, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2726
    .local v1, "state":I
    const/4 v3, 0x3

    if-ne v1, v3, :cond_6

    .line 2727
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$8;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v3}, Lcom/android/server/wifi/WifiServiceImpl;->access$2000(Lcom/android/server/wifi/WifiServiceImpl;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2728
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$8;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v3}, Lcom/android/server/wifi/WifiServiceImpl;->access$2100(Lcom/android/server/wifi/WifiServiceImpl;)V

    .line 2729
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$8;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v3, v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$2002(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    .line 2734
    .end local v1    # "state":I
    :cond_6
    :goto_0
    return-void
.end method
