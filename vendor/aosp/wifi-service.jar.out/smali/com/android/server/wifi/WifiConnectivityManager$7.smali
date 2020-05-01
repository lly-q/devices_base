.class Lcom/android/server/wifi/WifiConnectivityManager$7;
.super Landroid/database/ContentObserver;
.source "WifiConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityManager;
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

    .line 940
    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityManager$7;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .line 943
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$7;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->access$2500(Lcom/android/server/wifi/WifiConnectivityManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_networks_available_notification_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v0, v1

    .line 945
    .local v0, "on":Z
    const-string v1, "WifiConnectivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WIFI_NETWORKS_AVAILABLE_NOTIFICATION_ON change "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$7;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->access$3002(Lcom/android/server/wifi/WifiConnectivityManager;Z)Z

    .line 947
    if-eqz v0, :cond_1

    .line 948
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$7;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    const/16 v2, 0x4e20

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->access$2602(Lcom/android/server/wifi/WifiConnectivityManager;I)I

    .line 949
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$7;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager$7;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityManager;->access$2800(Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/Clock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/WifiConnectivityManager;->access$2702(Lcom/android/server/wifi/WifiConnectivityManager;J)J

    .line 950
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$7;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityManager;->access$2900(Lcom/android/server/wifi/WifiConnectivityManager;)V

    .line 952
    :cond_1
    return-void
.end method
