.class Lcom/android/server/wifi/CarrierNetworkConfig$1;
.super Landroid/content/BroadcastReceiver;
.source "CarrierNetworkConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/CarrierNetworkConfig;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/FrameworkFacade;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/CarrierNetworkConfig;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/CarrierNetworkConfig;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/CarrierNetworkConfig;

    .line 82
    iput-object p1, p0, Lcom/android/server/wifi/CarrierNetworkConfig$1;->this$0:Lcom/android/server/wifi/CarrierNetworkConfig;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 86
    iget-object v0, p0, Lcom/android/server/wifi/CarrierNetworkConfig$1;->this$0:Lcom/android/server/wifi/CarrierNetworkConfig;

    invoke-static {v0}, Lcom/android/server/wifi/CarrierNetworkConfig;->access$000(Lcom/android/server/wifi/CarrierNetworkConfig;)Landroid/net/wifi/IWifiManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/server/wifi/CarrierNetworkConfig$1;->this$0:Lcom/android/server/wifi/CarrierNetworkConfig;

    const-string v1, "wifi"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/CarrierNetworkConfig;->access$002(Lcom/android/server/wifi/CarrierNetworkConfig;Landroid/net/wifi/IWifiManager;)Landroid/net/wifi/IWifiManager;

    .line 88
    iget-object v0, p0, Lcom/android/server/wifi/CarrierNetworkConfig$1;->this$0:Lcom/android/server/wifi/CarrierNetworkConfig;

    invoke-static {v0}, Lcom/android/server/wifi/CarrierNetworkConfig;->access$000(Lcom/android/server/wifi/CarrierNetworkConfig;)Landroid/net/wifi/IWifiManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 89
    const-string v0, "CarrierNetworkConfig"

    const-string v1, "WifiService is not ready yet"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/CarrierNetworkConfig$1;->this$0:Lcom/android/server/wifi/CarrierNetworkConfig;

    invoke-static {v0, p1}, Lcom/android/server/wifi/CarrierNetworkConfig;->access$100(Lcom/android/server/wifi/CarrierNetworkConfig;Landroid/content/Context;)V

    .line 93
    return-void
.end method
