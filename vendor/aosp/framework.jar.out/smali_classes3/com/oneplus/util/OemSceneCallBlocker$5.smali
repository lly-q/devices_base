.class Lcom/oneplus/util/OemSceneCallBlocker$5;
.super Landroid/os/Handler;
.source "OemSceneCallBlocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/util/OemSceneCallBlocker;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Looper;

    .line 1022
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1025
    const/4 v0, 0x0

    .line 1026
    .local v0, "pkgName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 1027
    .local v1, "arguments":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 1028
    const-string v2, "PKG"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1031
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1044
    :pswitch_0
    const-string v2, "CONFIG_NAME"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1045
    .local v2, "cfgName":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1046
    invoke-static {v2}, Lcom/oneplus/util/OemSceneCallBlocker;->access$700(Ljava/lang/String;)V

    .line 1049
    .end local v2    # "cfgName":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 1039
    :pswitch_1
    invoke-static {v0}, Lcom/oneplus/util/OemSceneCallBlocker;->access$100(Ljava/lang/String;)V

    .line 1041
    goto :goto_0

    .line 1034
    :pswitch_2
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/oneplus/util/OemSceneCallBlocker;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 1035
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v2}, Lcom/oneplus/util/OemSceneCallBlocker;->access$600(Ljava/lang/String;I)V

    .line 1037
    nop

    .line 1053
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
