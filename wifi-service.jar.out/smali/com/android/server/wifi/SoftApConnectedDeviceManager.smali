.class public Lcom/android/server/wifi/SoftApConnectedDeviceManager;
.super Ljava/lang/Object;
.source "SoftApConnectedDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/SoftApConnectedDeviceManager$DnsmasqThread;
    }
.end annotation


# static fields
.field private static final BLACKED_LIST:I = 0x0

.field private static final DBG:Z = true

.field private static final DNSMASQ_POLLING_INTERVAL:I = 0x3e8

.field private static final DNSMASQ_POLLING_MAX_TIMES:I = 0xa

.field private static final TAG:Ljava/lang/String; = "SoftApConnectedDeviceManager"

.field private static final UNBLACKED_LIST:I = 0x1

.field private static final dhcpLocation:Ljava/lang/String; = "/data/misc/dhcp/dnsmasq.leases"

.field private static mContext:Landroid/content/Context;

.field private static mSoftApDeviceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static mSoftApManager:Lcom/android/server/wifi/SoftApManager;


# instance fields
.field private mConnectedDeviceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mL2ConnectedDeviceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->mSoftApDeviceMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/SoftApManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "softApManager"    # Lcom/android/server/wifi/SoftApManager;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->mL2ConnectedDeviceMap:Ljava/util/HashMap;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->mConnectedDeviceMap:Ljava/util/HashMap;

    .line 56
    sput-object p1, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->mContext:Landroid/content/Context;

    .line 57
    sput-object p2, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->mSoftApManager:Lcom/android/server/wifi/SoftApManager;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/SoftApConnectedDeviceManager;Landroid/net/wifi/WifiDevice;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApConnectedDeviceManager;
    .param p1, "x1"    # Landroid/net/wifi/WifiDevice;

    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->readDeviceInfoFromDnsmasq(Landroid/net/wifi/WifiDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/SoftApConnectedDeviceManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApConnectedDeviceManager;

    .line 34
    iget-object v0, p0, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->mL2ConnectedDeviceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .line 34
    sget-object v0, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->mSoftApDeviceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/SoftApConnectedDeviceManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApConnectedDeviceManager;

    .line 34
    iget-object v0, p0, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->mConnectedDeviceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/SoftApConnectedDeviceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApConnectedDeviceManager;

    .line 34
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->sendConnectDevicesStateChangedBroadcast()V

    return-void
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .line 61
    sget-object v0, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private interfaceMessageRecevied(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "isConnected"    # Z

    .line 165
    const-string v0, "SoftApConnectedDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interfaceMessageRecevied: message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v0, Landroid/net/wifi/WifiDevice;

    invoke-direct {v0, p1, p2}, Landroid/net/wifi/WifiDevice;-><init>(Ljava/lang/String;Z)V

    .line 168
    .local v0, "device":Landroid/net/wifi/WifiDevice;
    iget v1, v0, Landroid/net/wifi/WifiDevice;->deviceState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 169
    iget-object v1, p0, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->mL2ConnectedDeviceMap:Ljava/util/HashMap;

    iget-object v2, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v1, "SoftApConnectedDeviceManager"

    const-string v2, "device: connected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/wifi/WifiDevice;->connectedTime:J

    .line 177
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->readDeviceInfoFromDnsmasq(Landroid/net/wifi/WifiDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    const-string v1, "SoftApConnectedDeviceManager"

    const-string v2, "readDeviceInfoFromDnsmasq"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    sget-object v1, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->mSoftApDeviceMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 180
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->mSoftApDeviceMap:Ljava/util/HashMap;

    iget-object v3, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    iget-object v1, p0, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->mConnectedDeviceMap:Ljava/util/HashMap;

    iget-object v2, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->sendConnectDevicesStateChangedBroadcast()V

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 185
    :cond_0
    const-string v1, "SoftApConnectedDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting poll device info for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v1, Lcom/android/server/wifi/SoftApConnectedDeviceManager$DnsmasqThread;

    const/16 v2, 0x3e8

    const/16 v3, 0xa

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/android/server/wifi/SoftApConnectedDeviceManager$DnsmasqThread;-><init>(Lcom/android/server/wifi/SoftApConnectedDeviceManager;Landroid/net/wifi/WifiDevice;II)V

    .line 187
    invoke-virtual {v1}, Lcom/android/server/wifi/SoftApConnectedDeviceManager$DnsmasqThread;->start()V

    goto :goto_0

    .line 189
    :cond_1
    iget v1, v0, Landroid/net/wifi/WifiDevice;->deviceState:I

    if-nez v1, :cond_3

    .line 190
    const-string v1, "SoftApConnectedDeviceManager"

    const-string v2, "device: disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v1, p0, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->mL2ConnectedDeviceMap:Ljava/util/HashMap;

    iget-object v2, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiDevice;

    .line 192
    .local v1, "removedDevice":Landroid/net/wifi/WifiDevice;
    iget-object v2, p0, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->mConnectedDeviceMap:Ljava/util/HashMap;

    iget-object v3, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v2, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->mSoftApDeviceMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 194
    :try_start_2
    sget-object v3, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->mSoftApDeviceMap:Ljava/util/HashMap;

    iget-object v4, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 195
    sget-object v3, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->mSoftApDeviceMap:Ljava/util/HashMap;

    iget-object v4, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiDevice;

    .line 196
    .local v3, "dev":Landroid/net/wifi/WifiDevice;
    if-eqz v3, :cond_2

    iget v4, v3, Landroid/net/wifi/WifiDevice;->deviceState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 197
    sget-object v4, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->mSoftApDeviceMap:Ljava/util/HashMap;

    iget-object v5, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .end local v3    # "dev":Landroid/net/wifi/WifiDevice;
    :cond_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 201
    if-eqz v1, :cond_3

    .line 202
    invoke-direct {p0}, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->sendConnectDevicesStateChangedBroadcast()V

    .end local v1    # "removedDevice":Landroid/net/wifi/WifiDevice;
    goto :goto_0

    .line 200
    .restart local v1    # "removedDevice":Landroid/net/wifi/WifiDevice;
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 206
    .end local v1    # "removedDevice":Landroid/net/wifi/WifiDevice;
    :cond_3
    :goto_0
    return-void
.end method

.method private readDeviceInfoFromDnsmasq(Landroid/net/wifi/WifiDevice;)Z
    .locals 11
    .param p1, "device"    # Landroid/net/wifi/WifiDevice;

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "result":Z
    const/4 v1, 0x0

    .line 74
    .local v1, "fstream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "/data/misc/dhcp/dnsmasq.leases"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 75
    const-string v2, "SoftApConnectedDeviceManager"

    const-string v3, "dhcpLocation path location/data/misc/dhcp/dnsmasq.leases"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 77
    .local v2, "in":Ljava/io/DataInputStream;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 78
    .local v3, "br":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "line":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 79
    const-string v4, " "

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "fields":[Ljava/lang/String;
    const-string v6, "SoftApConnectedDeviceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lease file data"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    array-length v6, v4

    const/4 v7, 0x3

    if-le v6, v7, :cond_0

    .line 84
    const/4 v6, 0x1

    aget-object v6, v4, v6

    .line 85
    .local v6, "addr":Ljava/lang/String;
    aget-object v7, v4, v7

    .line 86
    .local v7, "name":Ljava/lang/String;
    iget-object v8, p1, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 87
    const-string v8, "SoftApConnectedDeviceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Successfully poll device info for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p1, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iput-object v7, p1, Landroid/net/wifi/WifiDevice;->deviceName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    const/4 v0, 0x1

    .line 90
    goto :goto_1

    .line 93
    .end local v4    # "fields":[Ljava/lang/String;
    .end local v6    # "addr":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 97
    .end local v2    # "in":Ljava/io/DataInputStream;
    .end local v3    # "br":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    nop

    .line 99
    :goto_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_3

    .line 97
    .end local v5    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 94
    :catch_1
    move-exception v2

    .line 95
    .local v2, "ex":Ljava/io/IOException;
    :try_start_2
    const-string v3, "SoftApConnectedDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readDeviceNameFromDnsmasq: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    .end local v2    # "ex":Ljava/io/IOException;
    if-eqz v1, :cond_2

    goto :goto_2

    .line 104
    :cond_2
    :goto_3
    return v0

    .line 97
    :goto_4
    if-eqz v1, :cond_3

    .line 99
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 100
    goto :goto_5

    :catch_2
    move-exception v3

    :cond_3
    :goto_5
    throw v2
.end method

.method private sendConnectDevicesStateChangedBroadcast()V
    .locals 2

    .line 65
    sget-object v0, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->mSoftApManager:Lcom/android/server/wifi/SoftApManager;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->getTetherSoftApSta(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/SoftApManager;->sendNumAssociatedStationsChanged(I)V

    .line 66
    return-void
.end method


# virtual methods
.method public declared-synchronized blackListWifiDevice(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    monitor-enter p0

    .line 223
    :try_start_0
    sget-object v0, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->mSoftApDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    sget-object v0, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->mSoftApDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    .local v0, "device":Landroid/net/wifi/WifiDevice;
    if-nez v0, :cond_0

    .line 226
    monitor-exit p0

    return-void

    .line 228
    :cond_0
    const/4 v1, 0x2

    if-eqz p2, :cond_1

    .line 229
    :try_start_1
    iget v2, v0, Landroid/net/wifi/WifiDevice;->deviceState:I

    if-eq v2, v1, :cond_2

    .line 230
    iput v1, v0, Landroid/net/wifi/WifiDevice;->deviceState:I

    goto :goto_0

    .line 233
    :cond_1
    iget v2, v0, Landroid/net/wifi/WifiDevice;->deviceState:I

    if-ne v2, v1, :cond_2

    .line 234
    sget-object v1, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->mSoftApDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    .end local v0    # "device":Landroid/net/wifi/WifiDevice;
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 222
    .end local p1    # "address":Ljava/lang/String;
    .end local p2    # "enabled":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/SoftApConnectedDeviceManager;
    throw p1
.end method

.method public clearConnectedDevice()V
    .locals 2

    .line 214
    sget-object v0, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->mSoftApDeviceMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 215
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->mSoftApDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 216
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    iget-object v0, p0, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->mConnectedDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 218
    iget-object v0, p0, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->mL2ConnectedDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 219
    return-void

    .line 216
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public connectionStatusChange(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .line 209
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 210
    .local v0, "isConnected":Z
    const-string v1, "SoftApConnectedDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "devices status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->interfaceMessageRecevied(Ljava/lang/String;Z)V

    .line 212
    return-void
.end method

.method public declared-synchronized getTetherSoftApSta(I)Ljava/util/List;
    .locals 7
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiDevice;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 242
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v0, "TetherSoftApStaList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiDevice;>;"
    sget-object v1, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->mSoftApDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 245
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 246
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 247
    .local v2, "key":Ljava/lang/String;
    sget-object v3, Lcom/android/server/wifi/SoftApConnectedDeviceManager;->mSoftApDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiDevice;

    .line 249
    .local v3, "device":Landroid/net/wifi/WifiDevice;
    const-string v4, "SoftApConnectedDeviceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTetherSoftApSta: addr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/net/wifi/WifiDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/net/wifi/WifiDevice;->deviceState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v4, 0x2

    packed-switch p1, :pswitch_data_0

    .line 264
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 259
    :pswitch_0
    iget v5, v3, Landroid/net/wifi/WifiDevice;->deviceState:I

    if-eq v5, v4, :cond_0

    .line 260
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 254
    :pswitch_1
    iget v5, v3, Landroid/net/wifi/WifiDevice;->deviceState:I

    if-ne v5, v4, :cond_0

    .line 255
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 264
    :goto_1
    nop

    .line 267
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "device":Landroid/net/wifi/WifiDevice;
    :cond_0
    :goto_2
    goto :goto_0

    .line 268
    :cond_1
    monitor-exit p0

    return-object v0

    .line 241
    .end local v0    # "TetherSoftApStaList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiDevice;>;"
    .end local v1    # "it":Ljava/util/Iterator;
    .end local p1    # "type":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/SoftApConnectedDeviceManager;
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
