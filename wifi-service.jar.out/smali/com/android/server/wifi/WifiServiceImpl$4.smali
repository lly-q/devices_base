.class Lcom/android/server/wifi/WifiServiceImpl$4;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiServiceImpl;->checkAndStartWifi()V
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

    .line 688
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$4;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 691
    const-string v0, "ss"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 692
    .local v0, "state":Ljava/lang/String;
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 693
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$4;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->access$1200(Lcom/android/server/wifi/WifiServiceImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 694
    const-string v1, "WifiService"

    const-string v2, "Not resetting networks as other SIM may active"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    return-void

    .line 697
    :cond_0
    const-string v1, "WifiService"

    const-string v2, "resetting networks because SIM was removed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$4;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v1, v1, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->resetSimAuthNetworks(Z)V

    goto :goto_0

    .line 699
    :cond_1
    const-string v1, "LOADED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 700
    const-string v1, "WifiService"

    const-string v2, "resetting networks because SIM was loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$4;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v1, v1, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->resetSimAuthNetworks(Z)V

    .line 703
    :cond_2
    :goto_0
    return-void
.end method
