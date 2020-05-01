.class final Lcom/android/internal/telephony/dataconnection/DcTracker$ScreenHandler;
.super Landroid/os/Handler;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ScreenHandler"
.end annotation


# static fields
.field static final MSG_BROADCAST_OFF:I = 0x2

.field static final MSG_BROADCAST_ON:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcTracker;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 5400
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScreenHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 5401
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 5402
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 5406
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScreenHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5407
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 5415
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScreenHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$802(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    .line 5416
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScreenHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$1900(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 5417
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScreenHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$2000(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 5418
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScreenHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$2100(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 5419
    goto :goto_0

    .line 5409
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScreenHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$802(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    .line 5410
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScreenHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$1900(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 5411
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScreenHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$2000(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 5412
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ScreenHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$2100(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 5413
    nop

    .line 5423
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
