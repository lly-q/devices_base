.class Lcom/android/internal/telephony/PhoneSwitcher$1;
.super Landroid/content/BroadcastReceiver;
.source "PhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/PhoneSwitcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PhoneSwitcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/PhoneSwitcher;

    .line 163
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSwitcher$1;->this$0:Lcom/android/internal/telephony/PhoneSwitcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher$1;->this$0:Lcom/android/internal/telephony/PhoneSwitcher;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 167
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 168
    return-void
.end method
