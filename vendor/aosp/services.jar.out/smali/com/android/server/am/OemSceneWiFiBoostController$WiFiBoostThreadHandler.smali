.class Lcom/android/server/am/OemSceneWiFiBoostController$WiFiBoostThreadHandler;
.super Landroid/os/Handler;
.source "OemSceneWiFiBoostController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OemSceneWiFiBoostController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WiFiBoostThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OemSceneWiFiBoostController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OemSceneWiFiBoostController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 248
    iput-object p1, p0, Lcom/android/server/am/OemSceneWiFiBoostController$WiFiBoostThreadHandler;->this$0:Lcom/android/server/am/OemSceneWiFiBoostController;

    .line 249
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 250
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 253
    invoke-static {}, Lcom/android/server/am/OemSceneWiFiBoostController;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemSceneWiFiBoostController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WiFiBoostThreadHandler msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 268
    :pswitch_0
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController$WiFiBoostThreadHandler;->this$0:Lcom/android/server/am/OemSceneWiFiBoostController;

    invoke-static {v1}, Lcom/android/server/am/OemSceneWiFiBoostController;->access$1100(Lcom/android/server/am/OemSceneWiFiBoostController;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "WifiBoost"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 269
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    iget-object v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController$WiFiBoostThreadHandler;->this$0:Lcom/android/server/am/OemSceneWiFiBoostController;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/am/OemSceneWiFiBoostController;->access$000(Lcom/android/server/am/OemSceneWiFiBoostController;Lorg/json/JSONArray;)V

    .line 270
    goto :goto_0

    .line 265
    .end local v0    # "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController$WiFiBoostThreadHandler;->this$0:Lcom/android/server/am/OemSceneWiFiBoostController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/am/OemSceneWiFiBoostController;->access$1000(Lcom/android/server/am/OemSceneWiFiBoostController;I)V

    .line 266
    goto :goto_0

    .line 262
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController$WiFiBoostThreadHandler;->this$0:Lcom/android/server/am/OemSceneWiFiBoostController;

    invoke-static {v0}, Lcom/android/server/am/OemSceneWiFiBoostController;->access$900(Lcom/android/server/am/OemSceneWiFiBoostController;)V

    .line 263
    goto :goto_0

    .line 259
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController$WiFiBoostThreadHandler;->this$0:Lcom/android/server/am/OemSceneWiFiBoostController;

    invoke-static {v0}, Lcom/android/server/am/OemSceneWiFiBoostController;->access$800(Lcom/android/server/am/OemSceneWiFiBoostController;)V

    .line 260
    goto :goto_0

    .line 256
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController$WiFiBoostThreadHandler;->this$0:Lcom/android/server/am/OemSceneWiFiBoostController;

    invoke-static {v0}, Lcom/android/server/am/OemSceneWiFiBoostController;->access$700(Lcom/android/server/am/OemSceneWiFiBoostController;)V

    .line 257
    nop

    .line 274
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
