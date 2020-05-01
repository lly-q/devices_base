.class Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;
.super Landroid/os/Handler;
.source "OnePlusPowerConsumptionStatistic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConsumptionDetectorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 804
    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 805
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 806
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 809
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 953
    :pswitch_0
    const-string v0, "------MSG_PKG_EVENT"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 954
    const-string/jumbo v0, "none"

    .line 955
    .local v0, "pkg":Ljava/lang/String;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 956
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 959
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Ljava/lang/String;

    move-result-object v1

    .line 960
    .local v1, "oldPkg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Ljava/lang/String;

    move-result-object v2

    if-eq v2, v0, :cond_1

    .line 961
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3502(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)Ljava/lang/String;

    .line 962
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    .line 965
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------MSG_PKG_EVENT mScreenState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 966
    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " |mPlugState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " |mIdleState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 967
    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$4300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " |mPowerLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 968
    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " |oldPkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 965
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 969
    goto/16 :goto_2

    .line 1021
    .end local v0    # "pkg":Ljava/lang/String;
    .end local v1    # "oldPkg":Ljava/lang/String;
    :pswitch_1
    const-string v0, "------MSG_RESET_LISTENER"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 1022
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$4800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------MSG_RESET_LISTENER mScreenState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 1025
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mPlugState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mIdleState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 1026
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$4300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mPowerLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 1027
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1024
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 1028
    goto/16 :goto_2

    .line 1010
    :pswitch_2
    const-string v0, "------MSG_TRACKDATA"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 1011
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$4600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1012
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$4700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    .line 1015
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------MSG_TRACKDATA mScreenState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 1016
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mPlugState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mIdleState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 1017
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$4300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mPowerLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 1018
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1015
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 1019
    goto/16 :goto_2

    .line 1001
    :pswitch_3
    const-string v0, "------MSG_SHUTDOWN"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 1002
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v0, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Z)V

    .line 1004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------MSG_SHUTDOWN mScreenState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mPlugState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 1005
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mIdleState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 1006
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$4300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mPowerLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1004
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 1007
    goto/16 :goto_2

    .line 990
    :pswitch_4
    const-string v0, "------MSG_TIME_SET"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 991
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 992
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$4200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    .line 995
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------MSG_TIME_SET mScreenState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mPlugState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 996
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mIdleState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 997
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$4300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mPowerLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 995
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 998
    goto/16 :goto_2

    .line 981
    :pswitch_5
    const-string v0, "------MSG_REPORT"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 982
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Z)V

    .line 984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------MSG_REPORT mScreenState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mPlugState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 985
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mIdleState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 986
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$4300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mPowerLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 984
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 987
    goto/16 :goto_2

    .line 820
    :pswitch_6
    const-string v0, "------MSG_PLUG_INIT_EVENT"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 821
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 822
    .local v0, "isFastCharge":Z
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 823
    .local v3, "event_Plug_init":I
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 825
    .local v4, "plugType_init":I
    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    move-result-object v5

    if-nez v5, :cond_4

    .line 826
    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    new-instance v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-object v7, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {v6, v7}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    invoke-static {v5, v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2302(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    .line 827
    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->os_version:Ljava/lang/String;

    .line 828
    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->realStartTime:J

    .line 829
    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    new-instance v12, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;

    iget-object v7, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;JJ)V

    invoke-static {v5, v12}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2502(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;

    goto :goto_0

    .line 831
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    new-instance v12, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;

    iget-object v7, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-object v6, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 832
    invoke-static {v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    move-result-object v6

    iget-wide v10, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->duration:J

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;JJ)V

    .line 831
    invoke-static {v5, v12}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2502(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;

    .line 835
    :goto_0
    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    iget-object v6, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2602(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;J)J

    .line 836
    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    if-ne v3, v2, :cond_5

    move v1, v2

    nop

    :cond_5
    invoke-static {v5, v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2802(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Z)Z

    .line 838
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Landroid/os/PowerManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v5

    invoke-static {v1, v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2902(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Z)Z

    .line 839
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Landroid/os/BatteryManager;

    move-result-object v5

    const/4 v6, 0x4

    .line 840
    invoke-virtual {v5, v6}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v5

    .line 839
    invoke-static {v1, v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3102(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;I)I

    .line 842
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3300()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 844
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 845
    .local v1, "a":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_6

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_6

    .line 846
    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3502(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)Ljava/lang/String;

    .line 848
    :cond_6
    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    .end local v1    # "a":Lcom/android/server/am/ActivityRecord;
    goto :goto_1

    .line 849
    :catch_0
    move-exception v1

    .line 850
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "OPCS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSG_PLUG_INIT_EVENT Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 850
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 857
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1, v4}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;I)V

    .line 858
    if-eqz v0, :cond_8

    if-ne v3, v2, :cond_8

    .line 859
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    .line 861
    :cond_8
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    .line 862
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$4000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)V

    .line 864
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$000()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 865
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$4100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    .line 866
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$4200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    .line 869
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------MSG_PLUG_INIT_EVENT mScreenState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 870
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |mPlugState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |mIdleState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 871
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$4300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |mPowerLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 872
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |plugType_init:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |ENABLE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$000()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 869
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 874
    goto/16 :goto_2

    .line 972
    .end local v0    # "isFastCharge":Z
    .end local v3    # "event_Plug_init":I
    .end local v4    # "plugType_init":I
    :pswitch_7
    const-string v0, "------MSG_PERSIST"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 973
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Z)V

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------MSG_PERSIST mScreenState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mPlugState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 976
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mIdleState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 977
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$4300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mPowerLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 975
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 978
    goto/16 :goto_2

    .line 936
    :pswitch_8
    const-string v0, "------MSG_DOZE_EVENT"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 937
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 938
    .local v0, "event_idle":I
    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    if-ne v0, v2, :cond_a

    move v1, v2

    nop

    :cond_a
    invoke-static {v3, v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$4302(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Z)Z

    .line 939
    const-string v1, ""

    .line 940
    .local v1, "reason":Ljava/lang/String;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_b

    .line 941
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    .line 944
    :cond_b
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2, v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$4000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)V

    .line 946
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------MSG_DOZE_EVENT mScreenState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 947
    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " |mPlugState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " |mIdleState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 948
    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$4300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " |mPowerLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 949
    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 946
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 950
    goto/16 :goto_2

    .line 921
    .end local v0    # "event_idle":I
    .end local v1    # "reason":Ljava/lang/String;
    :pswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------MSG_POWERLEVEL_EVENT mLastPowerLevel:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |mPowerLevel:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 922
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v0

    .line 923
    .local v0, "lastPowerLevel":I
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 924
    .local v3, "event_PowerLevel":I
    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v4, v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3102(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;I)I

    .line 925
    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v4}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v4

    sub-int v4, v0, v4

    if-lez v4, :cond_c

    move v1, v2

    nop

    .line 927
    .local v1, "isDown":Z
    :cond_c
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2, v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$4500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Z)V

    .line 929
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "------MSG_POWERLEVEL_EVENT mScreenState:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 930
    invoke-static {v4}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " |mPlugState:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v4}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " |mIdleState:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 931
    invoke-static {v4}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$4300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " |mPowerLevel:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 932
    invoke-static {v4}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 929
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 933
    goto/16 :goto_2

    .line 908
    .end local v0    # "lastPowerLevel":I
    .end local v1    # "isDown":Z
    .end local v3    # "event_PowerLevel":I
    :pswitch_a
    const-string v0, "------MSG_SCREEN_EVENT"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 909
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 910
    .local v0, "event_Screen":I
    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    if-ne v0, v2, :cond_d

    move v1, v2

    nop

    :cond_d
    invoke-static {v3, v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2902(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Z)Z

    .line 912
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    .line 914
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------MSG_SCREEN_EVENT mScreenState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 915
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |mPlugState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |mIdleState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 916
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$4300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |mPowerLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 917
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 914
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 918
    goto/16 :goto_2

    .line 891
    .end local v0    # "event_Screen":I
    :pswitch_b
    const-string v0, "------MSG_PLUGGED_FASTCHARGE_EVENT"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 893
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 894
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    .line 897
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------MSG_PLUGGED_FASTCHARGE_EVENT mScreenState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 898
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mPlugState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 900
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mIdleState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 902
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$4300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mPowerLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 904
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 897
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 905
    goto/16 :goto_2

    .line 877
    :pswitch_c
    const-string v0, "------MSG_PLUG_EVENT"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 878
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 879
    .local v0, "event_Plug":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 880
    .local v3, "plugType":I
    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    if-ne v0, v2, :cond_f

    move v1, v2

    nop

    :cond_f
    invoke-static {v4, v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2802(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Z)Z

    .line 882
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1, v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$4400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;I)V

    .line 884
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------MSG_PLUG_EVENT mScreenState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 885
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |mPlugState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |mIdleState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 886
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$4300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |mPowerLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 887
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |plugType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 884
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 888
    goto :goto_2

    .line 811
    .end local v0    # "event_Plug":I
    .end local v3    # "plugType":I
    :pswitch_d
    const-string v0, "------MSG_GET_ONLINECONFIG"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 812
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "OPCS"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 813
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Lorg/json/JSONArray;)V

    .line 814
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    .line 816
    const-string v1, "------MSG_GET_ONLINECONFIG"

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 817
    nop

    .line 1033
    .end local v0    # "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    :goto_2
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
