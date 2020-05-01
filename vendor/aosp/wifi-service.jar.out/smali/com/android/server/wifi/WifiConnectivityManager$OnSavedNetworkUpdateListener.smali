.class Lcom/android/server/wifi/WifiConnectivityManager$OnSavedNetworkUpdateListener;
.super Ljava/lang/Object;
.source "WifiConnectivityManager.java"

# interfaces
.implements Lcom/android/server/wifi/WifiConfigManager$OnSavedNetworkUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSavedNetworkUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityManager;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiConnectivityManager;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityManager$OnSavedNetworkUpdateListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiConnectivityManager;Lcom/android/server/wifi/WifiConnectivityManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/WifiConnectivityManager;
    .param p2, "x1"    # Lcom/android/server/wifi/WifiConnectivityManager$1;

    .line 592
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager$OnSavedNetworkUpdateListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;)V

    return-void
.end method

.method private updatePnoScan()V
    .locals 2

    .line 625
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$OnSavedNetworkUpdateListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->access$2100(Lcom/android/server/wifi/WifiConnectivityManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$OnSavedNetworkUpdateListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    const-string v1, "Saved networks updated"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->access$400(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V

    .line 627
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$OnSavedNetworkUpdateListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->access$000(Lcom/android/server/wifi/WifiConnectivityManager;Z)V

    .line 629
    :cond_0
    return-void
.end method


# virtual methods
.method public onSavedNetworkAdded(I)V
    .locals 0
    .param p1, "networkId"    # I

    .line 596
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager$OnSavedNetworkUpdateListener;->updatePnoScan()V

    .line 597
    return-void
.end method

.method public onSavedNetworkEnabled(I)V
    .locals 0
    .param p1, "networkId"    # I

    .line 600
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager$OnSavedNetworkUpdateListener;->updatePnoScan()V

    .line 601
    return-void
.end method

.method public onSavedNetworkPermanentlyDisabled(II)V
    .locals 1
    .param p1, "networkId"    # I
    .param p2, "disableReason"    # I

    .line 619
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$OnSavedNetworkUpdateListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->access$2000(Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/WifiConnectivityHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConnectivityHelper;->removeNetworkIfCurrent(I)V

    .line 620
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager$OnSavedNetworkUpdateListener;->updatePnoScan()V

    .line 621
    return-void
.end method

.method public onSavedNetworkRemoved(I)V
    .locals 0
    .param p1, "networkId"    # I

    .line 604
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager$OnSavedNetworkUpdateListener;->updatePnoScan()V

    .line 605
    return-void
.end method

.method public onSavedNetworkTemporarilyDisabled(II)V
    .locals 1
    .param p1, "networkId"    # I
    .param p2, "disableReason"    # I

    .line 614
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    return-void

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$OnSavedNetworkUpdateListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->access$2000(Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/WifiConnectivityHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConnectivityHelper;->removeNetworkIfCurrent(I)V

    .line 616
    return-void
.end method

.method public onSavedNetworkUpdated(I)V
    .locals 1
    .param p1, "networkId"    # I

    .line 609
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$OnSavedNetworkUpdateListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->access$1900(Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities()V

    .line 610
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager$OnSavedNetworkUpdateListener;->updatePnoScan()V

    .line 611
    return-void
.end method
