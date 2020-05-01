.class Lcom/android/internal/telephony/IccProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "IccProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccProvider;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/IccProvider;

    .line 114
    iput-object p1, p0, Lcom/android/internal/telephony/IccProvider$1;->this$0:Lcom/android/internal/telephony/IccProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 117
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "action":Ljava/lang/String;
    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "simStatus":Ljava/lang/String;
    const-string v2, "phone"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 121
    .local v2, "slotId":I
    if-ne v2, v3, :cond_0

    .line 122
    return-void

    .line 124
    :cond_0
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 125
    const-string v3, "ABSENT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "NOT_READY"

    .line 126
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 127
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccProvider$1;->this$0:Lcom/android/internal/telephony/IccProvider;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/internal/telephony/IccProvider;->access$002(Lcom/android/internal/telephony/IccProvider;I)I

    .line 128
    iget-object v3, p0, Lcom/android/internal/telephony/IccProvider$1;->this$0:Lcom/android/internal/telephony/IccProvider;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get slotId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , SimStatus "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , mCrazyCount set to 0 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/IccProvider;->access$100(Lcom/android/internal/telephony/IccProvider;Ljava/lang/String;)V

    .line 131
    :cond_2
    return-void
.end method
