.class Lnet/oneplus/odm/insight/AssistantEventCollector$1;
.super Landroid/os/Handler;
.source "AssistantEventCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/odm/insight/AssistantEventCollector;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/odm/insight/AssistantEventCollector;


# direct methods
.method constructor <init>(Lnet/oneplus/odm/insight/AssistantEventCollector;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/odm/insight/AssistantEventCollector;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 105
    iput-object p1, p0, Lnet/oneplus/odm/insight/AssistantEventCollector$1;->this$0:Lnet/oneplus/odm/insight/AssistantEventCollector;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 108
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 111
    .local v1, "event":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v2

    .line 112
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 113
    const-string v3, "hashmap"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/HashMap;

    .line 115
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 117
    :cond_1
    iget-object v3, p0, Lnet/oneplus/odm/insight/AssistantEventCollector$1;->this$0:Lnet/oneplus/odm/insight/AssistantEventCollector;

    invoke-static {v3}, Lnet/oneplus/odm/insight/AssistantEventCollector;->access$000(Lnet/oneplus/odm/insight/AssistantEventCollector;)Lnet/oneplus/odm/insight/tracker/OSTracker;

    move-result-object v3

    if-nez v3, :cond_2

    .line 118
    iget-object v3, p0, Lnet/oneplus/odm/insight/AssistantEventCollector$1;->this$0:Lnet/oneplus/odm/insight/AssistantEventCollector;

    new-instance v4, Lnet/oneplus/odm/insight/tracker/OSTracker;

    iget-object v5, p0, Lnet/oneplus/odm/insight/AssistantEventCollector$1;->this$0:Lnet/oneplus/odm/insight/AssistantEventCollector;

    invoke-static {v5}, Lnet/oneplus/odm/insight/AssistantEventCollector;->access$100(Lnet/oneplus/odm/insight/AssistantEventCollector;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "Y1K5J5SRDP"

    invoke-direct {v4, v5, v6}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lnet/oneplus/odm/insight/AssistantEventCollector;->access$002(Lnet/oneplus/odm/insight/AssistantEventCollector;Lnet/oneplus/odm/insight/tracker/OSTracker;)Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 120
    :cond_2
    iget-object v3, p0, Lnet/oneplus/odm/insight/AssistantEventCollector$1;->this$0:Lnet/oneplus/odm/insight/AssistantEventCollector;

    invoke-static {v3}, Lnet/oneplus/odm/insight/AssistantEventCollector;->access$000(Lnet/oneplus/odm/insight/AssistantEventCollector;)Lnet/oneplus/odm/insight/tracker/OSTracker;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 123
    :goto_0
    return-void
.end method
