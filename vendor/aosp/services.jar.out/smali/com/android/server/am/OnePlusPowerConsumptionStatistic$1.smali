.class Lcom/android/server/am/OnePlusPowerConsumptionStatistic$1;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusPowerConsumptionStatistic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 615
    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$1;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 617
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    .line 618
    const-string v0, "OPCS"

    const-string v1, "# mReceiver # onReceive # ENABLE false, return"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    return-void

    .line 622
    :cond_0
    if-nez p2, :cond_1

    .line 623
    const-string v0, "OPCS"

    const-string v1, "# mReceiver # onReceive # intent is null, return"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    return-void

    .line 627
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$1;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 628
    const-string v0, "BaseTimer not yet timing, return"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$200(Ljava/lang/String;)V

    .line 629
    return-void

    .line 632
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 633
    .local v0, "action":Ljava/lang/String;
    const-string v1, "OPCS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# mReceiver # onReceive # action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const-string v1, "com.OPCS.action.report"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 636
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$1;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    .line 637
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$1;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 638
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$1;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 640
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$1;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 641
    :cond_4
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "android.intent.action.TIME_SET"

    .line 642
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    .line 647
    :cond_5
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 652
    const-string v1, "OPCS"

    const-string v2, "# mReceiver # onReceive # shutdown to persist data immediately"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$1;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Z)V

    goto :goto_1

    .line 643
    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$1;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 644
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$1;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 646
    :cond_7
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$1;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 656
    :cond_8
    :goto_1
    return-void
.end method
