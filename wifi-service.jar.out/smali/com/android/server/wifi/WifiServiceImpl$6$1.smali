.class Lcom/android/server/wifi/WifiServiceImpl$6$1;
.super Ljava/lang/Object;
.source "WifiServiceImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 1047
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$6$1;->this$1:Lcom/android/server/wifi/WifiServiceImpl$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 1049
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$6$1;->this$1:Lcom/android/server/wifi/WifiServiceImpl$6;

    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$300(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tether_checkbox_not_show_again"

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$6$1;->this$1:Lcom/android/server/wifi/WifiServiceImpl$6;

    iget-object v2, v2, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$1400(Lcom/android/server/wifi/WifiServiceImpl;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1050
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$6$1;->this$1:Lcom/android/server/wifi/WifiServiceImpl$6;

    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$1000(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->setTetherEnabled(Z)V

    .line 1051
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$6$1;->this$1:Lcom/android/server/wifi/WifiServiceImpl$6;

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiServiceImpl$6;->val$usbTetherEnabled:Z

    if-eqz v0, :cond_0

    .line 1052
    const-string v0, "usb"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v0

    .line 1055
    .local v0, "usbMgr":Landroid/hardware/usb/IUsbManager;
    const-wide/16 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1, v2}, Landroid/hardware/usb/IUsbManager;->setCurrentFunctions(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1058
    goto :goto_0

    .line 1056
    :catch_0
    move-exception v1

    .line 1057
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error communicating with UsbManager: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    .end local v0    # "usbMgr":Landroid/hardware/usb/IUsbManager;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$6$1;->this$1:Lcom/android/server/wifi/WifiServiceImpl$6;

    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$1000(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v0

    const v1, 0x26008

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    .line 1061
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$6$1;->this$1:Lcom/android/server/wifi/WifiServiceImpl$6;

    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wifi/WifiServiceImpl;->mDialog:Landroid/app/AlertDialog;

    .line 1062
    return-void
.end method
