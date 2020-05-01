.class Lcom/android/server/wifi/WifiVendorHal$1;
.super Landroid/os/Handler;
.source "WifiVendorHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiVendorHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiVendorHal;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiVendorHal;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiVendorHal;

    .line 276
    iput-object p1, p0, Lcom/android/server/wifi/WifiVendorHal$1;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 278
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$1;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v0, v0, Lcom/android/server/wifi/WifiVendorHal;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "should not go here"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    goto :goto_0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$1;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v0}, Lcom/android/server/wifi/WifiVendorHal;->access$000(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/HalDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/HalDeviceManager;->isReady()Z

    move-result v0

    .line 282
    .local v0, "isReady":Z
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$1;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    iget-object v1, v1, Lcom/android/server/wifi/WifiVendorHal;->mVerboseLog:Lcom/android/server/wifi/WifiLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device Manager onStatusChanged. isReady(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->i(Ljava/lang/String;)V

    .line 283
    if-nez v0, :cond_2

    .line 286
    sget-object v1, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 287
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal$1;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v2}, Lcom/android/server/wifi/WifiVendorHal;->access$100(Lcom/android/server/wifi/WifiVendorHal;)V

    .line 288
    iget-object v2, p0, Lcom/android/server/wifi/WifiVendorHal$1;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v2}, Lcom/android/server/wifi/WifiVendorHal;->access$200(Lcom/android/server/wifi/WifiVendorHal;)Lcom/android/server/wifi/WifiNative$VendorHalDeathEventHandler;

    move-result-object v2

    .line 289
    .local v2, "handler":Lcom/android/server/wifi/WifiNative$VendorHalDeathEventHandler;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    if-eqz v2, :cond_1

    .line 291
    invoke-interface {v2}, Lcom/android/server/wifi/WifiNative$VendorHalDeathEventHandler;->onDeath()V

    .line 293
    .end local v2    # "handler":Lcom/android/server/wifi/WifiNative$VendorHalDeathEventHandler;
    :cond_1
    goto :goto_0

    .line 289
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 299
    .end local v0    # "isReady":Z
    :cond_2
    :goto_0
    return-void
.end method
