.class Landroid/widget/AdapterViewFlipper$1;
.super Landroid/content/BroadcastReceiver;
.source "AdapterViewFlipper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AdapterViewFlipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AdapterViewFlipper;


# direct methods
.method constructor <init>(Landroid/widget/AdapterViewFlipper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AdapterViewFlipper;

    .line 83
    iput-object p1, p0, Landroid/widget/AdapterViewFlipper$1;->this$0:Landroid/widget/AdapterViewFlipper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper$1;->this$0:Landroid/widget/AdapterViewFlipper;

    invoke-static {v1, v2}, Landroid/widget/AdapterViewFlipper;->access$002(Landroid/widget/AdapterViewFlipper;Z)Z

    .line 89
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper$1;->this$0:Landroid/widget/AdapterViewFlipper;

    invoke-static {v1}, Landroid/widget/AdapterViewFlipper;->access$100(Landroid/widget/AdapterViewFlipper;)V

    goto :goto_0

    .line 90
    :cond_0
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper$1;->this$0:Landroid/widget/AdapterViewFlipper;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Landroid/widget/AdapterViewFlipper;->access$002(Landroid/widget/AdapterViewFlipper;Z)Z

    .line 92
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper$1;->this$0:Landroid/widget/AdapterViewFlipper;

    invoke-static {v1, v2}, Landroid/widget/AdapterViewFlipper;->access$200(Landroid/widget/AdapterViewFlipper;Z)V

    .line 94
    :cond_1
    :goto_0
    return-void
.end method
