.class Lcom/android/internal/telephony/RatRatcheter$1;
.super Landroid/content/BroadcastReceiver;
.source "RatRatcheter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RatRatcheter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/RatRatcheter;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RatRatcheter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/RatRatcheter;

    .line 148
    iput-object p1, p0, Lcom/android/internal/telephony/RatRatcheter$1;->this$0:Lcom/android/internal/telephony/RatRatcheter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 151
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/android/internal/telephony/RatRatcheter$1;->this$0:Lcom/android/internal/telephony/RatRatcheter;

    invoke-static {v1}, Lcom/android/internal/telephony/RatRatcheter;->access$000(Lcom/android/internal/telephony/RatRatcheter;)V

    .line 155
    :cond_0
    return-void
.end method
