.class Lcom/android/server/am/OemQuickReply$7;
.super Ljava/lang/Object;
.source "OemQuickReply.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OemQuickReply;->addIMEcontrolsButton(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private initialTouchX:F

.field private initialX:I

.field final synthetic this$0:Lcom/android/server/am/OemQuickReply;


# direct methods
.method constructor <init>(Lcom/android/server/am/OemQuickReply;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OemQuickReply;

    .line 740
    iput-object p1, p0, Lcom/android/server/am/OemQuickReply$7;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 745
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 772
    const/4 v0, 0x0

    return v0

    .line 753
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$7;->this$0:Lcom/android/server/am/OemQuickReply;

    iget v1, p0, Lcom/android/server/am/OemQuickReply$7;->initialX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcom/android/server/am/OemQuickReply$7;->initialTouchX:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/android/server/am/OemQuickReply;->access$602(Lcom/android/server/am/OemQuickReply;I)I

    .line 754
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$7;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->access$600(Lcom/android/server/am/OemQuickReply;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply$7;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-static {v1}, Lcom/android/server/am/OemQuickReply;->access$700(Lcom/android/server/am/OemQuickReply;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 755
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$7;->this$0:Lcom/android/server/am/OemQuickReply;

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply$7;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-static {v1}, Lcom/android/server/am/OemQuickReply;->access$700(Lcom/android/server/am/OemQuickReply;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/am/OemQuickReply;->access$602(Lcom/android/server/am/OemQuickReply;I)I

    goto :goto_0

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$7;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->access$600(Lcom/android/server/am/OemQuickReply;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply$7;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-static {v1}, Lcom/android/server/am/OemQuickReply;->access$800(Lcom/android/server/am/OemQuickReply;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 757
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$7;->this$0:Lcom/android/server/am/OemQuickReply;

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply$7;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-static {v1}, Lcom/android/server/am/OemQuickReply;->access$800(Lcom/android/server/am/OemQuickReply;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/am/OemQuickReply;->access$602(Lcom/android/server/am/OemQuickReply;I)I

    .line 759
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$7;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->access$900(Lcom/android/server/am/OemQuickReply;)V

    .line 760
    return v2

    .line 763
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$7;->this$0:Lcom/android/server/am/OemQuickReply;

    iget-object v3, p0, Lcom/android/server/am/OemQuickReply$7;->this$0:Lcom/android/server/am/OemQuickReply;

    iget-object v3, v3, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v0, v3}, Lcom/android/server/am/OemQuickReply;->access$602(Lcom/android/server/am/OemQuickReply;I)I

    .line 764
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$7;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->access$000(Lcom/android/server/am/OemQuickReply;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "quickreply_imbutton_x"

    iget-object v4, p0, Lcom/android/server/am/OemQuickReply$7;->this$0:Lcom/android/server/am/OemQuickReply;

    .line 765
    invoke-static {v4}, Lcom/android/server/am/OemQuickReply;->access$600(Lcom/android/server/am/OemQuickReply;)I

    move-result v4

    .line 764
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 767
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$7;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->access$500(Lcom/android/server/am/OemQuickReply;)Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->removeMessages(I)V

    .line 768
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$7;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->access$500(Lcom/android/server/am/OemQuickReply;)Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    move-result-object v0

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 770
    return v2

    .line 747
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$7;->this$0:Lcom/android/server/am/OemQuickReply;

    iget-object v0, v0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 748
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$7;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->access$500(Lcom/android/server/am/OemQuickReply;)Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->removeMessages(I)V

    .line 749
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$7;->this$0:Lcom/android/server/am/OemQuickReply;

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply$7;->this$0:Lcom/android/server/am/OemQuickReply;

    iget-object v1, v1, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v0, v1}, Lcom/android/server/am/OemQuickReply;->access$602(Lcom/android/server/am/OemQuickReply;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/OemQuickReply$7;->initialX:I

    .line 750
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/server/am/OemQuickReply$7;->initialTouchX:F

    .line 751
    return v2

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
