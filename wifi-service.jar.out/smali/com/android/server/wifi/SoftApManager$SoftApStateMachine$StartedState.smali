.class Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;
.super Lcom/android/internal/util/State;
.source "SoftApManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;
    }
.end annotation


# instance fields
.field private mSettingObserver:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;

.field private mSoftApTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

.field private mTimeoutDelay:I

.field final synthetic this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)V
    .locals 0

    .line 622
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/server/wifi/SoftApManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;
    .param p2, "x1"    # Lcom/android/server/wifi/SoftApManager$1;

    .line 622
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;-><init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;
    .param p1, "x1"    # I

    .line 622
    iput p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->mTimeoutDelay:I

    return p1
.end method

.method private cancelTimeoutMessage()V
    .locals 2

    .line 727
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->mSoftApTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 728
    const-string v0, "SoftApManager"

    const-string v1, "Timeout message canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    return-void
.end method

.method private getConfigSoftApTimeoutDelay()I
    .locals 4

    .line 708
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1500(Lcom/android/server/wifi/SoftApManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 710
    .local v0, "delay":I
    const v1, 0x927c0

    if-ge v0, v1, :cond_0

    .line 711
    const v0, 0x927c0

    .line 712
    const-string v1, "SoftApManager"

    const-string v2, "Overriding timeout delay with minimum limit value"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_0
    const-string v1, "SoftApManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout delay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    return v0
.end method

.method public static synthetic lambda$gfCssnBJI7TKfXb_Jmv7raVYNkY(I)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private onUpChanged(Z)V
    .locals 5
    .param p1, "isUp"    # Z

    .line 806
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1100(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    if-ne p1, v0, :cond_0

    .line 807
    return-void

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, p1}, Lcom/android/server/wifi/SoftApManager;->access$1102(Lcom/android/server/wifi/SoftApManager;Z)Z

    .line 810
    if-eqz p1, :cond_2

    .line 811
    const-string v0, "SoftApManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SoftAp is ready for use with band:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$2500(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x53

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 814
    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$600(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 815
    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$2500(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$2500(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    if-nez v1, :cond_1

    .line 816
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$600(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " set_txchainmask 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 817
    .local v1, "arg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const-string v4, "iwpriv "

    invoke-static {v2, v4, v1}, Lcom/android/server/wifi/SoftApManager;->access$2600(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 820
    .end local v1    # "arg":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/16 v2, 0xd

    const/16 v4, 0xc

    invoke-static {v1, v2, v4, v3}, Lcom/android/server/wifi/SoftApManager;->access$700(Lcom/android/server/wifi/SoftApManager;III)V

    .line 822
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$800(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/android/server/wifi/WifiMetrics;->incrementSoftApStartResult(ZI)V

    .line 823
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$2200(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiManager$SoftApCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 824
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$2200(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiManager$SoftApCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$2100(Lcom/android/server/wifi/SoftApManager;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/net/wifi/WifiManager$SoftApCallback;->onNumClientsChanged(I)V

    .line 825
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$2200(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiManager$SoftApCallback;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$2400(Lcom/android/server/wifi/SoftApManager;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/net/wifi/WifiManager$SoftApCallback;->onStaConnected(Ljava/lang/String;I)V

    goto :goto_0

    .line 829
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->sendMessage(I)V

    .line 831
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$800(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$2300(Lcom/android/server/wifi/SoftApManager;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/WifiMetrics;->addSoftApUpChangedEvent(ZI)V

    .line 832
    return-void
.end method

.method private scheduleTimeoutMessage()V
    .locals 5

    .line 719
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1700(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 720
    return-void

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->mSoftApTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->mTimeoutDelay:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 723
    const-string v0, "SoftApManager"

    const-string v1, "Timeout message scheduled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    return-void
.end method

.method private setConnectedStations(Ljava/lang/String;)V
    .locals 6
    .param p1, "Macaddr"    # Ljava/lang/String;

    .line 772
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$2408(Lcom/android/server/wifi/SoftApManager;)I

    .line 774
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 775
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 776
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v3, 0xc

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 778
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$2200(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiManager$SoftApCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 779
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$2200(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiManager$SoftApCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$2400(Lcom/android/server/wifi/SoftApManager;)I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/net/wifi/WifiManager$SoftApCallback;->onStaConnected(Ljava/lang/String;I)V

    goto :goto_0

    .line 781
    :cond_0
    const-string v1, "SoftApManager"

    const-string v2, "SoftApCallback is null. Dropping onStaConnected event."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :goto_0
    return-void
.end method

.method private setDisConnectedStations(Ljava/lang/String;)V
    .locals 5
    .param p1, "Macaddr"    # Ljava/lang/String;

    .line 791
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$2400(Lcom/android/server/wifi/SoftApManager;)I

    move-result v0

    if-lez v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$2410(Lcom/android/server/wifi/SoftApManager;)I

    .line 794
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 795
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 796
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const/16 v2, 0xc

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 798
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$2200(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiManager$SoftApCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 799
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$2200(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiManager$SoftApCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$2400(Lcom/android/server/wifi/SoftApManager;)I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/net/wifi/WifiManager$SoftApCallback;->onStaDisconnected(Ljava/lang/String;I)V

    goto :goto_0

    .line 801
    :cond_1
    const-string v1, "SoftApManager"

    const-string v2, "SoftApCallback is null. Dropping onStaDisconnected event."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :goto_0
    return-void
.end method

.method private setNumAssociatedStations(I)V
    .locals 5
    .param p1, "numStations"    # I

    .line 736
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$2100(Lcom/android/server/wifi/SoftApManager;)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 737
    return-void

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, p1}, Lcom/android/server/wifi/SoftApManager;->access$2102(Lcom/android/server/wifi/SoftApManager;I)I

    .line 740
    const-string v0, "SoftApManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of associated stations changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$2100(Lcom/android/server/wifi/SoftApManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    new-instance v0, Landroid/content/Intent;

    const-string v1, "codeaurora.net.conn.TETHER_CONNECT_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 744
    .local v0, "broadcast":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 745
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$1500(Lcom/android/server/wifi/SoftApManager;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 747
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$1500(Lcom/android/server/wifi/SoftApManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 748
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$2100(Lcom/android/server/wifi/SoftApManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->showSoftApClientsNotification(I)V

    .line 751
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$2200(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiManager$SoftApCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 752
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$2200(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiManager$SoftApCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->access$2100(Lcom/android/server/wifi/SoftApManager;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/net/wifi/WifiManager$SoftApCallback;->onNumClientsChanged(I)V

    goto :goto_0

    .line 754
    :cond_1
    const-string v2, "SoftApManager"

    const-string v3, "SoftApCallback is null. Dropping NumClientsChanged event."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$800(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->access$2100(Lcom/android/server/wifi/SoftApManager;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 757
    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->access$2300(Lcom/android/server/wifi/SoftApManager;)I

    move-result v4

    .line 756
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wifi/WifiMetrics;->addSoftApNumAssociatedStationsChangedEvent(II)V

    .line 759
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$2100(Lcom/android/server/wifi/SoftApManager;)I

    move-result v2

    if-nez v2, :cond_2

    .line 760
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->scheduleTimeoutMessage()V

    goto :goto_1

    .line 762
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->cancelTimeoutMessage()V

    .line 764
    :goto_1
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 7

    .line 836
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->access$1102(Lcom/android/server/wifi/SoftApManager;Z)Z

    .line 837
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$500(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$300(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiNative;->isInterfaceUp(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->onUpChanged(Z)V

    .line 839
    const-string v0, "ro.boot.project_name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 840
    .local v0, "project":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "18811"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 841
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/server/wifi/SoftApManager;->access$2002(Lcom/android/server/wifi/SoftApManager;I)I

    .line 848
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$000(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 849
    .local v2, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/android/internal/util/WakeupMessage;

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->access$1500(Lcom/android/server/wifi/SoftApManager;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "SoftApManager Soft AP Send Message Timeout"

    const/4 v6, 0x5

    invoke-direct {v3, v4, v2, v5, v6}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->mSoftApTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    .line 852
    new-instance v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;-><init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->mSettingObserver:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;

    .line 854
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->mSettingObserver:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;

    if-eqz v3, :cond_1

    .line 855
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->mSettingObserver:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;

    invoke-virtual {v3}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;->register()V

    .line 857
    :cond_1
    const-string v3, "SoftApManager"

    const-string v4, "Resetting num stations on start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v3, v1}, Lcom/android/server/wifi/SoftApManager;->access$2102(Lcom/android/server/wifi/SoftApManager;I)I

    .line 859
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v3, v1}, Lcom/android/server/wifi/SoftApManager;->access$2402(Lcom/android/server/wifi/SoftApManager;I)I

    .line 860
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->scheduleTimeoutMessage()V

    .line 863
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->access$2800(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/server/wifi/WifiInjector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiInjector;->makeWificond()Landroid/net/wifi/IWificond;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->access$2702(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Landroid/net/wifi/IWificond;)Landroid/net/wifi/IWificond;

    .line 864
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->access$2700(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Landroid/net/wifi/IWificond;

    move-result-object v1

    if-nez v1, :cond_2

    .line 865
    const-string v1, "SoftApManager"

    const-string v3, "Failed to get wificond binder handler"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    return-void

    .line 869
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->access$2700(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Landroid/net/wifi/IWificond;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->access$2900(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/server/wifi/SoftApManager$InterfaceEventHandler;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/net/wifi/IWificond;->RegisterCallback(Landroid/net/wifi/IInterfaceEventCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 870
    goto :goto_0

    :catch_0
    move-exception v1

    .line 872
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$3000(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->setWifiDefaultPower()Z

    .line 874
    return-void
.end method

.method public exit()V
    .locals 4

    .line 880
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$3000(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->setWifiDefaultPower()Z

    .line 882
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$600(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1000(Lcom/android/server/wifi/SoftApManager;)V

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->mSettingObserver:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;

    if-eqz v0, :cond_1

    .line 886
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->mSettingObserver:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;

    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState$SoftApTimeoutEnabledSettingObserver;->unregister()V

    .line 888
    :cond_1
    const-string v0, "SoftApManager"

    const-string v1, "Resetting num stations on stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->access$2102(Lcom/android/server/wifi/SoftApManager;I)I

    .line 890
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->access$2402(Lcom/android/server/wifi/SoftApManager;I)I

    .line 891
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->cancelTimeoutMessage()V

    .line 894
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$800(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$2300(Lcom/android/server/wifi/SoftApManager;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiMetrics;->addSoftApUpChangedEvent(ZI)V

    .line 895
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/16 v2, 0xb

    const/16 v3, 0xa

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/wifi/SoftApManager;->access$700(Lcom/android/server/wifi/SoftApManager;III)V

    .line 897
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/wifi/SoftApManager;->access$602(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;)Ljava/lang/String;

    .line 898
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, v2}, Lcom/android/server/wifi/SoftApManager;->access$302(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;)Ljava/lang/String;

    .line 899
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->access$1102(Lcom/android/server/wifi/SoftApManager;Z)Z

    .line 903
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->access$2700(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Landroid/net/wifi/IWificond;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->access$2900(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/server/wifi/SoftApManager$InterfaceEventHandler;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/wifi/IWificond;->UnregisterCallback(Landroid/net/wifi/IInterfaceEventCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 904
    goto :goto_0

    :catch_0
    move-exception v0

    .line 905
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-static {v0, v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->access$2902(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/server/wifi/SoftApManager$InterfaceEventHandler;)Lcom/android/server/wifi/SoftApManager$InterfaceEventHandler;

    .line 906
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$3100(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApConnectedDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->clearConnectedDevice()V

    .line 908
    new-instance v0, Landroid/content/Intent;

    const-string v1, "codeaurora.net.conn.TETHER_CONNECT_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 909
    .local v0, "broadcast":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 910
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$1500(Lcom/android/server/wifi/SoftApManager;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 912
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$000(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->quitNow()V

    .line 913
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .line 917
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    const/16 v2, 0xa

    const/16 v3, 0xd

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1041
    return v4

    .line 1037
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$3100(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApConnectedDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->connectionStatusChange(Landroid/os/Message;)V

    .line 1038
    goto/16 :goto_1

    .line 966
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 967
    const-string v0, "SoftApManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Macaddr of disconnected station: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    goto/16 :goto_1

    .line 970
    :cond_0
    const-string v0, "SoftApManager"

    const-string v2, "Setting Macaddr of stations on CMD_DISCONNECTED_STATIONS"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->setDisConnectedStations(Ljava/lang/String;)V

    .line 972
    goto/16 :goto_1

    .line 958
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 959
    const-string v0, "SoftApManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Macaddr of connected station: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    goto/16 :goto_1

    .line 962
    :cond_1
    const-string v0, "SoftApManager"

    const-string v2, "Setting Macaddr of stations on CMD_CONNECTED_STATIONS"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->setConnectedStations(Ljava/lang/String;)V

    .line 964
    goto/16 :goto_1

    .line 927
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v2}, Lcom/android/server/wifi/SoftApManager;->access$3202(Lcom/android/server/wifi/SoftApManager;I)I

    .line 928
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v2}, Lcom/android/server/wifi/SoftApManager;->access$3302(Lcom/android/server/wifi/SoftApManager;I)I

    .line 929
    const-string v0, "SoftApManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Channel switched. Frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->access$3200(Lcom/android/server/wifi/SoftApManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Bandwidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 930
    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->access$3300(Lcom/android/server/wifi/SoftApManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 929
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$800(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$3200(Lcom/android/server/wifi/SoftApManager;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 932
    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->access$3300(Lcom/android/server/wifi/SoftApManager;)I

    move-result v3

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v5}, Lcom/android/server/wifi/SoftApManager;->access$2300(Lcom/android/server/wifi/SoftApManager;)I

    move-result v5

    .line 931
    invoke-virtual {v0, v2, v3, v5}, Lcom/android/server/wifi/WifiMetrics;->addSoftApChannelSwitchedEvent(III)V

    .line 933
    new-array v0, v4, [I

    .line 934
    .local v0, "allowedChannels":[I
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$2500(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->apBand:I

    if-nez v2, :cond_2

    .line 935
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 936
    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$500(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    move-result-object v0

    goto :goto_0

    .line 937
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$2500(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->apBand:I

    const/4 v3, 0x2

    if-ne v2, v1, :cond_3

    .line 938
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 939
    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$500(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    move-result-object v0

    goto :goto_0

    .line 940
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$2500(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->apBand:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_4

    .line 941
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 942
    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$500(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    move-result-object v2

    .line 943
    .local v2, "allowed2GChannels":[I
    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 944
    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->access$500(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    move-result-object v3

    .line 945
    .local v3, "allowed5GChannels":[I
    nop

    .line 946
    invoke-static {v2}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v4

    .line 947
    invoke-static {v3}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v5

    .line 945
    invoke-static {v4, v5}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v4

    sget-object v5, Lcom/android/server/wifi/-$$Lambda$SoftApManager$SoftApStateMachine$StartedState$gfCssnBJI7TKfXb_Jmv7raVYNkY;->INSTANCE:Lcom/android/server/wifi/-$$Lambda$SoftApManager$SoftApStateMachine$StartedState$gfCssnBJI7TKfXb_Jmv7raVYNkY;

    .line 948
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v4

    .line 949
    invoke-interface {v4}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 951
    .end local v2    # "allowed2GChannels":[I
    .end local v3    # "allowed5GChannels":[I
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$3200(Lcom/android/server/wifi/SoftApManager;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v2

    if-nez v2, :cond_d

    .line 952
    const-string v2, "SoftApManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Channel does not satisfy user band preference: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 953
    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->access$3200(Lcom/android/server/wifi/SoftApManager;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 952
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$800(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiMetrics;->incrementNumSoftApUserBandPreferenceUnsatisfied()V

    goto/16 :goto_1

    .line 1027
    .end local v0    # "allowedChannels":[I
    :pswitch_4
    const-string v0, "SoftApManager"

    const-string v5, "interface error, stop and report failure"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/16 v5, 0xe

    invoke-static {v0, v5, v3, v4}, Lcom/android/server/wifi/SoftApManager;->access$700(Lcom/android/server/wifi/SoftApManager;III)V

    .line 1031
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, v2, v5, v4}, Lcom/android/server/wifi/SoftApManager;->access$700(Lcom/android/server/wifi/SoftApManager;III)V

    .line 1033
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->access$3400(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1034
    goto/16 :goto_1

    .line 1020
    :pswitch_5
    const-string v0, "SoftApManager"

    const-string v5, "Interface was cleanly destroyed."

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, v2, v3, v4}, Lcom/android/server/wifi/SoftApManager;->access$700(Lcom/android/server/wifi/SoftApManager;III)V

    .line 1023
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/wifi/SoftApManager;->access$602(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1024
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->access$3400(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1025
    goto/16 :goto_1

    .line 975
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 976
    .local v0, "enabledType":I
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$1800(Lcom/android/server/wifi/SoftApManager;)I

    move-result v2

    if-ne v2, v0, :cond_5

    .line 977
    goto/16 :goto_1

    .line 979
    :cond_5
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2, v0}, Lcom/android/server/wifi/SoftApManager;->access$1802(Lcom/android/server/wifi/SoftApManager;I)I

    .line 980
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    if-lt v0, v1, :cond_6

    move v4, v1

    nop

    :cond_6
    invoke-static {v2, v4}, Lcom/android/server/wifi/SoftApManager;->access$1702(Lcom/android/server/wifi/SoftApManager;Z)Z

    .line 990
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$1700(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 991
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->cancelTimeoutMessage()V

    .line 993
    :cond_7
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$1700(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager;->access$2100(Lcom/android/server/wifi/SoftApManager;)I

    move-result v2

    if-nez v2, :cond_d

    .line 994
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->scheduleTimeoutMessage()V

    goto/16 :goto_1

    .line 1005
    .end local v0    # "enabledType":I
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$1700(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1006
    const-string v0, "SoftApManager"

    const-string v2, "Timeout message received while timeout is disabled. Dropping."

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    goto/16 :goto_1

    .line 1010
    :cond_8
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$2100(Lcom/android/server/wifi/SoftApManager;)I

    move-result v0

    if-eqz v0, :cond_9

    .line 1011
    const-string v0, "SoftApManager"

    const-string v2, "Timeout message received but has clients. Dropping."

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    goto :goto_1

    .line 1014
    :cond_9
    const-string v0, "SoftApManager"

    const-string v5, "Timeout message received. Stopping soft AP."

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, v2, v3, v4}, Lcom/android/server/wifi/SoftApManager;->access$700(Lcom/android/server/wifi/SoftApManager;III)V

    .line 1017
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->access$3400(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1018
    goto :goto_1

    .line 919
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-gez v0, :cond_a

    .line 920
    const-string v0, "SoftApManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid number of associated stations: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    goto :goto_1

    .line 923
    :cond_a
    const-string v0, "SoftApManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting num stations on CMD_NUM_ASSOCIATED_STATIONS_CHANGED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->setNumAssociatedStations(I)V

    .line 925
    goto :goto_1

    .line 998
    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_b

    move v4, v1

    nop

    :cond_b
    move v0, v4

    .line 999
    .local v0, "isUp":Z
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->onUpChanged(Z)V

    .line 1000
    goto :goto_1

    .line 1003
    .end local v0    # "isUp":Z
    :cond_c
    nop

    .line 1043
    :cond_d
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
