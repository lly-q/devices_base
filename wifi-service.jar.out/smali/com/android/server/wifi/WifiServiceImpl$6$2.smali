.class Lcom/android/server/wifi/WifiServiceImpl$6$2;
.super Ljava/lang/Object;
.source "WifiServiceImpl.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiServiceImpl$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/WifiServiceImpl$6;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/WifiServiceImpl$6;

    .line 1070
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$6$2;->this$1:Lcom/android/server/wifi/WifiServiceImpl$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 1074
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$6$2;->this$1:Lcom/android/server/wifi/WifiServiceImpl$6;

    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0, p2}, Lcom/android/server/wifi/WifiServiceImpl;->access$1402(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    .line 1075
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkBoxListener notShowAgain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$6$2;->this$1:Lcom/android/server/wifi/WifiServiceImpl$6;

    iget-object v2, v2, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$1400(Lcom/android/server/wifi/WifiServiceImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    return-void
.end method
