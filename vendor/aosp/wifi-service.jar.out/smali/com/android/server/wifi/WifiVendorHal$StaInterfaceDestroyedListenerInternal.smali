.class Lcom/android/server/wifi/WifiVendorHal$StaInterfaceDestroyedListenerInternal;
.super Ljava/lang/Object;
.source "WifiVendorHal.java"

# interfaces
.implements Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiVendorHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StaInterfaceDestroyedListenerInternal"
.end annotation


# instance fields
.field private final mExternalListener:Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;

.field final synthetic this$0:Lcom/android/server/wifi/WifiVendorHal;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;)V
    .locals 0
    .param p2, "externalListener"    # Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;

    .line 424
    iput-object p1, p0, Lcom/android/server/wifi/WifiVendorHal$StaInterfaceDestroyedListenerInternal;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    iput-object p2, p0, Lcom/android/server/wifi/WifiVendorHal$StaInterfaceDestroyedListenerInternal;->mExternalListener:Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;

    .line 426
    return-void
.end method


# virtual methods
.method public onDestroyed(Ljava/lang/String;)V
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 430
    sget-object v0, Lcom/android/server/wifi/WifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 431
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiVendorHal$StaInterfaceDestroyedListenerInternal;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v1}, Lcom/android/server/wifi/WifiVendorHal;->access$700(Lcom/android/server/wifi/WifiVendorHal;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$StaInterfaceDestroyedListenerInternal;->mExternalListener:Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$StaInterfaceDestroyedListenerInternal;->mExternalListener:Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;

    invoke-interface {v0, p1}, Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;->onDestroyed(Ljava/lang/String;)V

    .line 436
    :cond_0
    return-void

    .line 432
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
