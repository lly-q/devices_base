.class Lcom/android/server/wifi/SoftApConnectedDeviceManager$DnsmasqThread;
.super Ljava/lang/Thread;
.source "SoftApConnectedDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SoftApConnectedDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DnsmasqThread"
.end annotation


# instance fields
.field private mDevice:Landroid/net/wifi/WifiDevice;

.field private mInterval:I

.field private mMaxTimes:I

.field private final mSoftApConnectedDeviceManager:Lcom/android/server/wifi/SoftApConnectedDeviceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/SoftApConnectedDeviceManager;Landroid/net/wifi/WifiDevice;II)V
    .locals 1
    .param p1, "softap"    # Lcom/android/server/wifi/SoftApConnectedDeviceManager;
    .param p2, "device"    # Landroid/net/wifi/WifiDevice;
    .param p3, "interval"    # I
    .param p4, "maxTimes"    # I

    .line 115
    const-string v0, "SoftAp"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 116
    iput-object p1, p0, Lcom/android/server/wifi/SoftApConnectedDeviceManager$DnsmasqThread;->mSoftApConnectedDeviceManager:Lcom/android/server/wifi/SoftApConnectedDeviceManager;

    .line 117
    iput p3, p0, Lcom/android/server/wifi/SoftApConnectedDeviceManager$DnsmasqThread;->mInterval:I

    .line 118
    iput p4, p0, Lcom/android/server/wifi/SoftApConnectedDeviceManager$DnsmasqThread;->mMaxTimes:I

    .line 119
    iput-object p2, p0, Lcom/android/server/wifi/SoftApConnectedDeviceManager$DnsmasqThread;->mDevice:Landroid/net/wifi/WifiDevice;

    .line 120
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 123
    const/4 v0, 0x0

    .line 125
    .local v0, "result":Z
    :goto_0
    const/4 v1, 0x1

    :try_start_0
    iget v2, p0, Lcom/android/server/wifi/SoftApConnectedDeviceManager$DnsmasqThread;->mMaxTimes:I

    if-lez v2, :cond_1

    .line 126
    iget-object v2, p0, Lcom/android/server/wifi/SoftApConnectedDeviceManager$DnsmasqThread;->mSoftApConnectedDeviceManager:Lcom/android/server/wifi/SoftApConnectedDeviceManager;

    iget-object v3, p0, Lcom/android/server/wifi/SoftApConnectedDeviceManager$DnsmasqThread;->mDevice:Landroid/net/wifi/WifiDevice;

    invoke-static {v2, v3}, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->access$000(Lcom/android/server/wifi/SoftApConnectedDeviceManager;Landroid/net/wifi/WifiDevice;)Z

    move-result v2

    move v0, v2

    .line 127
    const-string v2, "SoftApConnectedDeviceManager"

    const-string v3, "Thread Running"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    if-eqz v0, :cond_0

    .line 129
    const-string v2, "SoftApConnectedDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully poll device info for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/SoftApConnectedDeviceManager$DnsmasqThread;->mDevice:Landroid/net/wifi/WifiDevice;

    iget-object v4, v4, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    goto :goto_1

    .line 133
    :cond_0
    iget v2, p0, Lcom/android/server/wifi/SoftApConnectedDeviceManager$DnsmasqThread;->mMaxTimes:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/wifi/SoftApConnectedDeviceManager$DnsmasqThread;->mMaxTimes:I

    .line 134
    iget v2, p0, Lcom/android/server/wifi/SoftApConnectedDeviceManager$DnsmasqThread;->mInterval:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :cond_1
    :goto_1
    goto :goto_2

    .line 136
    :catch_0
    move-exception v2

    .line 137
    .local v2, "ex":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 138
    const-string v3, "SoftApConnectedDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Polling "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wifi/SoftApConnectedDeviceManager$DnsmasqThread;->mDevice:Landroid/net/wifi/WifiDevice;

    iget-object v5, v5, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_2
    if-nez v0, :cond_2

    .line 142
    const-string v2, "SoftApConnectedDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Polling timeout, suppose STA uses static ip "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/SoftApConnectedDeviceManager$DnsmasqThread;->mDevice:Landroid/net/wifi/WifiDevice;

    iget-object v4, v4, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/SoftApConnectedDeviceManager$DnsmasqThread;->mSoftApConnectedDeviceManager:Lcom/android/server/wifi/SoftApConnectedDeviceManager;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->access$100(Lcom/android/server/wifi/SoftApConnectedDeviceManager;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SoftApConnectedDeviceManager$DnsmasqThread;->mDevice:Landroid/net/wifi/WifiDevice;

    iget-object v3, v3, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiDevice;

    .line 151
    .local v2, "other":Landroid/net/wifi/WifiDevice;
    if-eqz v2, :cond_3

    iget v3, v2, Landroid/net/wifi/WifiDevice;->deviceState:I

    if-ne v3, v1, :cond_3

    .line 152
    invoke-static {}, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->access$200()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 153
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->access$200()Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/SoftApConnectedDeviceManager$DnsmasqThread;->mDevice:Landroid/net/wifi/WifiDevice;

    iget-object v4, v4, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/wifi/SoftApConnectedDeviceManager$DnsmasqThread;->mDevice:Landroid/net/wifi/WifiDevice;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    iget-object v1, p0, Lcom/android/server/wifi/SoftApConnectedDeviceManager$DnsmasqThread;->mSoftApConnectedDeviceManager:Lcom/android/server/wifi/SoftApConnectedDeviceManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->access$300(Lcom/android/server/wifi/SoftApConnectedDeviceManager;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wifi/SoftApConnectedDeviceManager$DnsmasqThread;->mDevice:Landroid/net/wifi/WifiDevice;

    iget-object v3, v3, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wifi/SoftApConnectedDeviceManager$DnsmasqThread;->mDevice:Landroid/net/wifi/WifiDevice;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v1, p0, Lcom/android/server/wifi/SoftApConnectedDeviceManager$DnsmasqThread;->mSoftApConnectedDeviceManager:Lcom/android/server/wifi/SoftApConnectedDeviceManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->access$400(Lcom/android/server/wifi/SoftApConnectedDeviceManager;)V

    goto :goto_3

    .line 154
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 158
    :cond_3
    const-string v1, "SoftApConnectedDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/SoftApConnectedDeviceManager$DnsmasqThread;->mDevice:Landroid/net/wifi/WifiDevice;

    iget-object v4, v4, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "already disconnected, ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_3
    return-void
.end method
