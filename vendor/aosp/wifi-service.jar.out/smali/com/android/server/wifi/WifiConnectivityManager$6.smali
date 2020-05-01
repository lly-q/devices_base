.class Lcom/android/server/wifi/WifiConnectivityManager$6;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/server/wifi/WifiConnectivityManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConnectivityManager;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 758
    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityManager$6;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .line 761
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$6;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$6;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityManager;->access$2500(Lcom/android/server/wifi/WifiConnectivityManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_should_switch_network"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->access$2402(Lcom/android/server/wifi/WifiConnectivityManager;Z)Z

    .line 763
    const-string v0, "WifiConnectivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WIFI_SHOULD_SWITCH_NETWORK change "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager$6;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityManager;->access$2400(Lcom/android/server/wifi/WifiConnectivityManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$6;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->access$2400(Lcom/android/server/wifi/WifiConnectivityManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 765
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$6;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    const/16 v1, 0x4e20

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->access$2602(Lcom/android/server/wifi/WifiConnectivityManager;I)I

    .line 766
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$6;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$6;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityManager;->access$2800(Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/Clock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->access$2702(Lcom/android/server/wifi/WifiConnectivityManager;J)J

    .line 767
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$6;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->access$2900(Lcom/android/server/wifi/WifiConnectivityManager;)V

    .line 769
    :cond_1
    return-void
.end method
