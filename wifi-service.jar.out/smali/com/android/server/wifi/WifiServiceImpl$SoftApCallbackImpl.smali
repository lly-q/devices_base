.class final Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;
.super Ljava/lang/Object;
.source "WifiServiceImpl.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$SoftApCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SoftApCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0

    .line 1332
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/server/wifi/WifiServiceImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p2, "x1"    # Lcom/android/server/wifi/WifiServiceImpl$1;

    .line 1332
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    return-void
.end method


# virtual methods
.method public onNumClientsChanged(I)V
    .locals 6
    .param p1, "numClients"    # I

    .line 1365
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->access$1702(Lcom/android/server/wifi/WifiServiceImpl;I)I

    .line 1367
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$1600(Lcom/android/server/wifi/WifiServiceImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1368
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/ISoftApCallback;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1369
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ISoftApCallback;

    .line 1371
    .local v1, "callback":Landroid/net/wifi/ISoftApCallback;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/net/wifi/ISoftApCallback;->onNumClientsChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1375
    goto :goto_1

    .line 1372
    :catch_0
    move-exception v2

    .line 1373
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNumClientsChanged: remote exception -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1376
    .end local v1    # "callback":Landroid/net/wifi/ISoftApCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 1377
    :cond_0
    return-void
.end method

.method public onStaConnected(Ljava/lang/String;I)V
    .locals 6
    .param p1, "Macaddr"    # Ljava/lang/String;
    .param p2, "numClients"    # I

    .line 1387
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0, p2}, Lcom/android/server/wifi/WifiServiceImpl;->access$1802(Lcom/android/server/wifi/WifiServiceImpl;I)I

    .line 1389
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$1600(Lcom/android/server/wifi/WifiServiceImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1390
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/ISoftApCallback;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1391
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ISoftApCallback;

    .line 1393
    .local v1, "callback":Landroid/net/wifi/ISoftApCallback;
    :try_start_0
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStaConnected Macaddr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with num of active client:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    .line 1394
    invoke-static {v4}, Lcom/android/server/wifi/WifiServiceImpl;->access$1800(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1393
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$1800(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/net/wifi/ISoftApCallback;->onStaConnected(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1399
    goto :goto_1

    .line 1396
    :catch_0
    move-exception v2

    .line 1397
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStaConnected: remote exception -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1400
    .end local v1    # "callback":Landroid/net/wifi/ISoftApCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 1401
    :cond_0
    return-void
.end method

.method public onStaDisconnected(Ljava/lang/String;I)V
    .locals 6
    .param p1, "Macaddr"    # Ljava/lang/String;
    .param p2, "numClients"    # I

    .line 1411
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0, p2}, Lcom/android/server/wifi/WifiServiceImpl;->access$1802(Lcom/android/server/wifi/WifiServiceImpl;I)I

    .line 1413
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$1600(Lcom/android/server/wifi/WifiServiceImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1414
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/ISoftApCallback;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1415
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ISoftApCallback;

    .line 1417
    .local v1, "callback":Landroid/net/wifi/ISoftApCallback;
    :try_start_0
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStaDisconnected Macaddr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with num of active client:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    .line 1418
    invoke-static {v4}, Lcom/android/server/wifi/WifiServiceImpl;->access$1800(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1417
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$1800(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/net/wifi/ISoftApCallback;->onStaDisconnected(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1423
    goto :goto_1

    .line 1420
    :catch_0
    move-exception v2

    .line 1421
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStaDisconnected: remote exception -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1424
    .end local v1    # "callback":Landroid/net/wifi/ISoftApCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 1425
    :cond_0
    return-void
.end method

.method public onStateChanged(II)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "failureReason"    # I

    .line 1344
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->access$1502(Lcom/android/server/wifi/WifiServiceImpl;I)I

    .line 1346
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$SoftApCallbackImpl;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$1600(Lcom/android/server/wifi/WifiServiceImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1347
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/ISoftApCallback;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1348
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ISoftApCallback;

    .line 1350
    .local v1, "callback":Landroid/net/wifi/ISoftApCallback;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/net/wifi/ISoftApCallback;->onStateChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1354
    goto :goto_1

    .line 1351
    :catch_0
    move-exception v2

    .line 1352
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStateChanged: remote exception -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1355
    .end local v1    # "callback":Landroid/net/wifi/ISoftApCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 1356
    :cond_0
    return-void
.end method
