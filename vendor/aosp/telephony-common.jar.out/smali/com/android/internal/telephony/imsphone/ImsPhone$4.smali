.class Lcom/android/internal/telephony/imsphone/ImsPhone$4;
.super Landroid/content/BroadcastReceiver;
.source "ImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1943
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1946
    const-string v0, "org.codeaurora.intent.action.send.rtt.text"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1947
    const-string v0, "ImsPhone"

    const-string v1, "RTT: Received ACTION_SEND_RTT_TEXT"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    const-string v0, "org.codeaurora.intent.action.rtt.textvalue"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1949
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendRttMessage(Ljava/lang/String;)V

    .line 1950
    .end local v0    # "data":Ljava/lang/String;
    goto :goto_0

    :cond_0
    const-string v0, "org.codeaurora.intent.action.send.rtt.operation"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1951
    const-string v0, "ImsPhone"

    const-string v1, "RTT: Received ACTION_RTT_OPERATION"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    const-string v0, "org.codeaurora.intent.action.rtt.operation.type"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1953
    .local v0, "data":I
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->access$800(Lcom/android/internal/telephony/imsphone/ImsPhone;I)V

    .line 1954
    .end local v0    # "data":I
    goto :goto_0

    .line 1955
    :cond_1
    const-string v0, "ImsPhone"

    const-string v1, "RTT: unknown intent"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    :goto_0
    return-void
.end method
