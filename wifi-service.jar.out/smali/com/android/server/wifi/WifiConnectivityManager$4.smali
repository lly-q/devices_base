.class Lcom/android/server/wifi/WifiConnectivityManager$4;
.super Landroid/content/BroadcastReceiver;
.source "WifiConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiConnectivityManager;-><init>(Landroid/content/Context;Lcom/android/server/wifi/ScoringParams;Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiScanner;Lcom/android/server/wifi/WifiConfigManager;Landroid/net/wifi/WifiInfo;Lcom/android/server/wifi/WifiNetworkSelector;Lcom/android/server/wifi/WifiConnectivityHelper;Lcom/android/server/wifi/WifiLastResortWatchdog;Lcom/android/server/wifi/OpenNetworkNotifier;Lcom/android/server/wifi/CarrierNetworkNotifier;Lcom/android/server/wifi/CarrierNetworkConfig;Lcom/android/server/wifi/WifiMetrics;Landroid/os/Looper;Lcom/android/server/wifi/Clock;Landroid/util/LocalLog;ZLcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/SavedNetworkEvaluator;Lcom/android/server/wifi/ScoredNetworkEvaluator;Lcom/android/server/wifi/hotspot2/PasspointNetworkEvaluator;Lcom/android/server/wifi/CarrierNetworkEvaluator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConnectivityManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .line 735
    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityManager$4;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 738
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$4;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->access$2302(Lcom/android/server/wifi/WifiConnectivityManager;Z)Z

    .line 739
    return-void
.end method
