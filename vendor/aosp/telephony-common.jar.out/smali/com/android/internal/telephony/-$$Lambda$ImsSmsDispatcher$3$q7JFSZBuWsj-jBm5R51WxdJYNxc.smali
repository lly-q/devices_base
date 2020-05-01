.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$ImsSmsDispatcher$3$q7JFSZBuWsj-jBm5R51WxdJYNxc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/telephony/ImsSmsDispatcher$3;

.field private final synthetic f$1:Landroid/telephony/SmsMessage;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/telephony/ImsSmsDispatcher$3;Landroid/telephony/SmsMessage;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/-$$Lambda$ImsSmsDispatcher$3$q7JFSZBuWsj-jBm5R51WxdJYNxc;->f$0:Lcom/android/internal/telephony/ImsSmsDispatcher$3;

    iput-object p2, p0, Lcom/android/internal/telephony/-$$Lambda$ImsSmsDispatcher$3$q7JFSZBuWsj-jBm5R51WxdJYNxc;->f$1:Landroid/telephony/SmsMessage;

    iput p3, p0, Lcom/android/internal/telephony/-$$Lambda$ImsSmsDispatcher$3$q7JFSZBuWsj-jBm5R51WxdJYNxc;->f$2:I

    return-void
.end method


# virtual methods
.method public final onSmsInjectedResult(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/-$$Lambda$ImsSmsDispatcher$3$q7JFSZBuWsj-jBm5R51WxdJYNxc;->f$0:Lcom/android/internal/telephony/ImsSmsDispatcher$3;

    iget-object v1, p0, Lcom/android/internal/telephony/-$$Lambda$ImsSmsDispatcher$3$q7JFSZBuWsj-jBm5R51WxdJYNxc;->f$1:Landroid/telephony/SmsMessage;

    iget v2, p0, Lcom/android/internal/telephony/-$$Lambda$ImsSmsDispatcher$3$q7JFSZBuWsj-jBm5R51WxdJYNxc;->f$2:I

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->lambda$onSmsReceived$0(Lcom/android/internal/telephony/ImsSmsDispatcher$3;Landroid/telephony/SmsMessage;II)V

    return-void
.end method
