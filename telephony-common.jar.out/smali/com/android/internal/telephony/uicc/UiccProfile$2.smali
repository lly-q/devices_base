.class Lcom/android/internal/telephony/uicc/UiccProfile$2;
.super Landroid/content/BroadcastReceiver;
.source "UiccProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccProfile;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 171
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$2;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 174
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$2;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$2;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 177
    :cond_0
    return-void
.end method
