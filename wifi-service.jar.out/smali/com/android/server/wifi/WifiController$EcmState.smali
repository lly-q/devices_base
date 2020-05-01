.class Lcom/android/server/wifi/WifiController$EcmState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EcmState"
.end annotation


# instance fields
.field private mEcmEntryCount:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;

    .line 810
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private decrementCountAndReturnToAppropriateState()V
    .locals 3

    .line 867
    const/4 v0, 0x0

    .line 869
    .local v0, "exitEcm":Z
    iget v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    if-nez v1, :cond_0

    .line 870
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v2, "mEcmEntryCount is 0; exiting Ecm"

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiController;->access$5600(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 871
    const/4 v0, 0x1

    goto :goto_0

    .line 872
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    if-nez v1, :cond_1

    .line 873
    const/4 v0, 0x1

    .line 876
    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    .line 877
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$1500(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 878
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->access$1900(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 879
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$2000(Lcom/android/server/wifi/WifiController;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 880
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->access$2100(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 882
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->access$1200(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 885
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .line 818
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$1100(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachinePrime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->shutdownWifi()V

    .line 819
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$3400(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->clearANQPCache()V

    .line 820
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    .line 821
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 830
    invoke-static {}, Lcom/android/server/wifi/WifiController;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+ EcmState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2, p1}, Lcom/android/server/wifi/WifiController;->access$800(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$5500(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 831
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x2600e

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    .line 832
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_1

    .line 834
    iget v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    goto :goto_0

    .line 835
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_2

    .line 837
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController$EcmState;->decrementCountAndReturnToAppropriateState()V

    .line 839
    :cond_2
    :goto_0
    return v2

    .line 840
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x26001

    if-ne v0, v1, :cond_6

    .line 842
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_4

    .line 844
    iget v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    goto :goto_1

    .line 845
    :cond_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_5

    .line 847
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController$EcmState;->decrementCountAndReturnToAppropriateState()V

    .line 849
    :cond_5
    :goto_1
    return v2

    .line 850
    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x26011

    if-eq v0, v1, :cond_c

    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x26013

    if-ne v0, v1, :cond_7

    goto :goto_4

    .line 854
    :cond_7
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x2600f

    if-eq v0, v1, :cond_b

    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x26015

    if-eq v0, v1, :cond_b

    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x26014

    if-ne v0, v1, :cond_8

    goto :goto_3

    .line 858
    :cond_8
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x2600a

    if-eq v0, v1, :cond_a

    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x2601f

    if-ne v0, v1, :cond_9

    goto :goto_2

    .line 862
    :cond_9
    const/4 v0, 0x0

    return v0

    .line 860
    :cond_a
    :goto_2
    return v2

    .line 857
    :cond_b
    :goto_3
    return v2

    .line 853
    :cond_c
    :goto_4
    return v2
.end method
