.class Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;
.super Landroid/net/ip/IpClient$Callback;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IpClientCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .line 1197
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/net/ip/IpClient$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public installPacketFilter([B)V
    .locals 2
    .param p1, "filter"    # [B

    .line 1246
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x200ca

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1247
    return-void
.end method

.method public onLinkPropertiesChange(Landroid/net/LinkProperties;)V
    .locals 2
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .line 1235
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x2008c

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1236
    return-void
.end method

.method public onNewDhcpResults(Landroid/net/DhcpResults;)V
    .locals 4
    .param p1, "dhcpResults"    # Landroid/net/DhcpResults;

    .line 1210
    if-eqz p1, :cond_0

    .line 1211
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x200c8

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1213
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x200c9

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1214
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getWifiLastResortWatchdog()Lcom/android/server/wifi/WifiLastResortWatchdog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 1215
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$1300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 1214
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiLastResortWatchdog;->noteConnectionFailureAndTriggerIfNeeded(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1218
    :goto_0
    return-void
.end method

.method public onPostDhcpAction()V
    .locals 2

    .line 1205
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x30004

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1206
    return-void
.end method

.method public onPreDhcpAction()V
    .locals 2

    .line 1200
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x30003

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1201
    return-void
.end method

.method public onProvisioningFailure(Landroid/net/LinkProperties;)V
    .locals 2
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .line 1229
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$1600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMetrics;->logStaEvent(I)V

    .line 1230
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x2008b

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1231
    return-void
.end method

.method public onProvisioningSuccess(Landroid/net/LinkProperties;)V
    .locals 2
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .line 1222
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$1600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMetrics;->logStaEvent(I)V

    .line 1223
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x2008c

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1224
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x2008a

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1225
    return-void
.end method

.method public onReachabilityLost(Ljava/lang/String;)V
    .locals 2
    .param p1, "logMsg"    # Ljava/lang/String;

    .line 1240
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$1600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMetrics;->logStaEvent(I)V

    .line 1241
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x20095

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1242
    return-void
.end method

.method public setFallbackMulticastFilter(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 1256
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const v2, 0x200cb

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1257
    return-void
.end method

.method public setNeighborDiscoveryOffload(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 1261
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x200cc

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 1262
    return-void
.end method

.method public startReadPacketFilter()V
    .locals 2

    .line 1251
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpClientCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x200d0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1252
    return-void
.end method
