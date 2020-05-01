.class Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;
.super Ljava/lang/Thread;
.source "ImsRttTextHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallReaderThread"
.end annotation


# instance fields
.field private final mReaderThreadRttTextStream:Landroid/telecom/Connection$RttTextStream;

.field final synthetic this$0:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;Landroid/telecom/Connection$RttTextStream;)V
    .locals 0
    .param p2, "textStream"    # Landroid/telecom/Connection$RttTextStream;

    .line 72
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->this$0:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 73
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->mReaderThreadRttTextStream:Landroid/telecom/Connection$RttTextStream;

    .line 74
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 81
    :goto_0
    const/16 v0, 0x270f

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->mReaderThreadRttTextStream:Landroid/telecom/Connection$RttTextStream;

    invoke-virtual {v1}, Landroid/telecom/Connection$RttTextStream;->read()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .local v1, "charsReceived":Ljava/lang/String;
    nop

    .line 86
    nop

    .line 88
    if-nez v1, :cond_1

    .line 89
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    const-string v0, "ImsRttTextHandler"

    const-string v2, "RttReaderThread - Thread interrupted. Finishing."

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    goto :goto_1

    .line 93
    :cond_0
    const-string v2, "ImsRttTextHandler"

    const-string v3, "RttReaderThread - Stream closed unexpectedly. Attempt to reinitialize."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->this$0:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 96
    goto :goto_1

    .line 98
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 99
    goto :goto_0

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->this$0:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->this$0:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->access$000(Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->this$0:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->access$000(Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 106
    .end local v1    # "charsReceived":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "ImsRttTextHandler"

    const-string v3, "RttReaderThread - IOException encountered reading from in-call: %s"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->this$0:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 86
    nop

    .line 107
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method
