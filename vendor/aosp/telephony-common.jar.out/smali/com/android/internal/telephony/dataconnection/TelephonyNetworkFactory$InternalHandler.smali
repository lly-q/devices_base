.class Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;
.super Landroid/os/Handler;
.source "TelephonyNetworkFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 133
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    .line 134
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 135
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 139
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 157
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->access$400(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;Landroid/os/Message;)V

    goto :goto_0

    .line 153
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->access$300(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;Landroid/os/Message;)V

    .line 154
    goto :goto_0

    .line 149
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->access$200(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;)V

    .line 150
    goto :goto_0

    .line 145
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->access$100(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;)V

    .line 146
    goto :goto_0

    .line 141
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->access$000(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;)V

    .line 142
    nop

    .line 161
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
