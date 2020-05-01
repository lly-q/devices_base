.class public Lcom/android/server/wifi/p2p/WifiP2pMonitor;
.super Ljava/lang/Object;
.source "WifiP2pMonitor.java"


# static fields
.field public static final AP_STA_CONNECTED_EVENT:I = 0x2402a

.field public static final AP_STA_DISCONNECTED_EVENT:I = 0x24029

.field private static final BASE:I = 0x24000

.field public static final P2P_DEVICE_FOUND_EVENT:I = 0x24015

.field public static final P2P_DEVICE_LOST_EVENT:I = 0x24016

.field public static final P2P_FIND_STOPPED_EVENT:I = 0x24025

.field public static final P2P_GO_NEGOTIATION_FAILURE_EVENT:I = 0x2401a

.field public static final P2P_GO_NEGOTIATION_REQUEST_EVENT:I = 0x24017

.field public static final P2P_GO_NEGOTIATION_SUCCESS_EVENT:I = 0x24019

.field public static final P2P_GROUP_FORMATION_FAILURE_EVENT:I = 0x2401c

.field public static final P2P_GROUP_FORMATION_SUCCESS_EVENT:I = 0x2401b

.field public static final P2P_GROUP_REMOVED_EVENT:I = 0x2401e

.field public static final P2P_GROUP_STARTED_EVENT:I = 0x2401d

.field public static final P2P_INVITATION_RECEIVED_EVENT:I = 0x2401f

.field public static final P2P_INVITATION_RESULT_EVENT:I = 0x24020

.field public static final P2P_PROV_DISC_ENTER_PIN_EVENT:I = 0x24023

.field public static final P2P_PROV_DISC_FAILURE_EVENT:I = 0x24027

.field public static final P2P_PROV_DISC_PBC_REQ_EVENT:I = 0x24021

.field public static final P2P_PROV_DISC_PBC_RSP_EVENT:I = 0x24022

.field public static final P2P_PROV_DISC_SHOW_PIN_EVENT:I = 0x24024

.field public static final P2P_SERV_DISC_RESP_EVENT:I = 0x24026

.field public static final SUP_CONNECTION_EVENT:I = 0x24001

.field public static final SUP_DISCONNECTION_EVENT:I = 0x24002

.field private static final TAG:Ljava/lang/String; = "WifiP2pMonitor"


# instance fields
.field private mConnected:Z

.field private final mHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Landroid/os/Handler;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mMonitoringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mVerboseLoggingEnabled:Z

.field private final mWifiInjector:Lcom/android/server/wifi/WifiInjector;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiInjector;)V
    .locals 1
    .param p1, "wifiInjector"    # Lcom/android/server/wifi/WifiInjector;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mVerboseLoggingEnabled:Z

    .line 84
    iput-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mConnected:Z

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mHandlerMap:Ljava/util/Map;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mMonitoringMap:Ljava/util/Map;

    .line 87
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    .line 88
    return-void
.end method

.method private isMonitoring(Ljava/lang/String;)Z
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mMonitoringMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 121
    .local v0, "val":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 122
    const/4 v1, 0x0

    return v1

    .line 124
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private sendMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "message"    # Landroid/os/Message;

    .line 241
    invoke-virtual {p2, p1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 242
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 243
    return-void
.end method

.method private sendMessage(Ljava/lang/String;I)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "what"    # I

    .line 185
    const/4 v0, 0x0

    invoke-static {v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    .line 186
    return-void
.end method

.method private sendMessage(Ljava/lang/String;II)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "what"    # I
    .param p3, "arg1"    # I

    .line 193
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p2, p3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    .line 194
    return-void
.end method

.method private sendMessage(Ljava/lang/String;III)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "what"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    .line 197
    const/4 v0, 0x0

    invoke-static {v0, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    .line 198
    return-void
.end method

.method private sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "what"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;

    .line 201
    const/4 v0, 0x0

    invoke-static {v0, p2, p3, p4, p5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    .line 202
    return-void
.end method

.method private sendMessage(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 189
    const/4 v0, 0x0

    invoke-static {v0, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    .line 190
    return-void
.end method

.method private sendMessage(Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "message"    # Landroid/os/Message;

    .line 205
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 206
    .local v0, "ifaceHandlers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Landroid/os/Handler;>;>;"
    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 207
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->isMonitoring(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    iget v1, p2, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 209
    .local v1, "ifaceWhatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    if-eqz v1, :cond_1

    .line 210
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    .line 211
    .local v3, "handler":Landroid/os/Handler;
    if-eqz v3, :cond_0

    .line 212
    invoke-static {p2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    .line 214
    .end local v3    # "handler":Landroid/os/Handler;
    :cond_0
    goto :goto_0

    .line 216
    .end local v1    # "ifaceWhatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    :cond_1
    goto/16 :goto_3

    .line 217
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_7

    .line 218
    const-string v1, "WifiP2pMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropping event because ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") is stopped"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 222
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_4

    .line 223
    const-string v1, "WifiP2pMonitor"

    const-string v2, "Sending to all monitors because there\'s no matching iface"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 226
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseArray<Ljava/util/Set<Landroid/os/Handler;>;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->isMonitoring(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 227
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    iget v4, p2, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 228
    .local v3, "ifaceWhatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    .line 229
    .local v5, "handler":Landroid/os/Handler;
    if-eqz v5, :cond_5

    .line 230
    invoke-static {p2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    .line 232
    .end local v5    # "handler":Landroid/os/Handler;
    :cond_5
    goto :goto_2

    .line 234
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseArray<Ljava/util/Set<Landroid/os/Handler;>;>;>;"
    .end local v3    # "ifaceWhatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    :cond_6
    goto :goto_1

    .line 237
    :cond_7
    :goto_3
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    .line 238
    return-void
.end method

.method private setMonitoringNone()V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mMonitoringMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 141
    .local v1, "iface":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->setMonitoring(Ljava/lang/String;Z)V

    .line 142
    .end local v1    # "iface":Ljava/lang/String;
    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method


# virtual methods
.method public broadcastP2pApStaConnected(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 473
    const v0, 0x2402a

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 474
    return-void
.end method

.method public broadcastP2pApStaDisconnected(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 482
    const v0, 0x24029

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 483
    return-void
.end method

.method public broadcastP2pDeviceFound(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 272
    if-eqz p2, :cond_0

    .line 273
    const v0, 0x24015

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 275
    :cond_0
    return-void
.end method

.method public broadcastP2pDeviceLost(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 284
    if-eqz p2, :cond_0

    .line 285
    const v0, 0x24016

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 287
    :cond_0
    return-void
.end method

.method public broadcastP2pFindStopped(Ljava/lang/String;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .line 295
    const v0, 0x24025

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;I)V

    .line 296
    return-void
.end method

.method public broadcastP2pGoNegotiationFailure(Ljava/lang/String;Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "reason"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 326
    const v0, 0x2401a

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 327
    return-void
.end method

.method public broadcastP2pGoNegotiationRequest(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 305
    if-eqz p2, :cond_0

    .line 306
    const v0, 0x24017

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 308
    :cond_0
    return-void
.end method

.method public broadcastP2pGoNegotiationSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .line 316
    const v0, 0x24019

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;I)V

    .line 317
    return-void
.end method

.method public broadcastP2pGroupFormationFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .line 345
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 346
    .local v0, "err":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    const-string v1, "FREQ_CONFLICT"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->NO_COMMON_CHANNEL:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 349
    :cond_0
    const v1, 0x2401c

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 350
    return-void
.end method

.method public broadcastP2pGroupFormationSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .line 335
    const v0, 0x2401b

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;I)V

    .line 336
    return-void
.end method

.method public broadcastP2pGroupRemoved(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 371
    if-eqz p2, :cond_0

    .line 372
    const v0, 0x2401e

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 374
    :cond_0
    return-void
.end method

.method public broadcastP2pGroupStarted(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 359
    if-eqz p2, :cond_0

    .line 360
    const v0, 0x2401d

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 362
    :cond_0
    return-void
.end method

.method public broadcastP2pInvitationReceived(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 383
    if-eqz p2, :cond_0

    .line 384
    const v0, 0x2401f

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 386
    :cond_0
    return-void
.end method

.method public broadcastP2pInvitationResult(Ljava/lang/String;Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 395
    const v0, 0x24020

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 396
    return-void
.end method

.method public broadcastP2pProvisionDiscoveryEnterPin(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "event"    # Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    .line 430
    if-eqz p2, :cond_0

    .line 431
    const v0, 0x24023

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 433
    :cond_0
    return-void
.end method

.method public broadcastP2pProvisionDiscoveryFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .line 453
    const v0, 0x24027

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;I)V

    .line 454
    return-void
.end method

.method public broadcastP2pProvisionDiscoveryPbcRequest(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "event"    # Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    .line 405
    if-eqz p2, :cond_0

    .line 406
    const v0, 0x24021

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 408
    :cond_0
    return-void
.end method

.method public broadcastP2pProvisionDiscoveryPbcResponse(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "event"    # Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    .line 418
    if-eqz p2, :cond_0

    .line 419
    const v0, 0x24022

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 421
    :cond_0
    return-void
.end method

.method public broadcastP2pProvisionDiscoveryShowPin(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "event"    # Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    .line 442
    if-eqz p2, :cond_0

    .line 443
    const v0, 0x24024

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 445
    :cond_0
    return-void
.end method

.method public broadcastP2pServiceDiscoveryResponse(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;",
            ">;)V"
        }
    .end annotation

    .line 464
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    const v0, 0x24026

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 465
    return-void
.end method

.method public broadcastSupplicantConnectionEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .line 252
    const v0, 0x24001

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;I)V

    .line 253
    return-void
.end method

.method public broadcastSupplicantDisconnectionEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .line 262
    const v0, 0x24002

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->sendMessage(Ljava/lang/String;I)V

    .line 263
    return-void
.end method

.method enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .line 91
    if-lez p1, :cond_0

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mVerboseLoggingEnabled:Z

    goto :goto_0

    .line 94
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mVerboseLoggingEnabled:Z

    .line 96
    :goto_0
    return-void
.end method

.method public declared-synchronized registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "what"    # I
    .param p3, "handler"    # Landroid/os/Handler;

    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 106
    .local v0, "ifaceHandlers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Landroid/os/Handler;>;>;"
    if-nez v0, :cond_0

    .line 107
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move-object v0, v1

    .line 108
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 111
    .local v1, "ifaceWhatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    if-nez v1, :cond_1

    .line 112
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 113
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    :cond_1
    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    .line 104
    .end local v0    # "ifaceHandlers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Landroid/os/Handler;>;>;"
    .end local v1    # "ifaceWhatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    .end local p1    # "iface":Ljava/lang/String;
    .end local p2    # "what":I
    .end local p3    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/p2p/WifiP2pMonitor;
    throw p1
.end method

.method public setMonitoring(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mMonitoringMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    return-void
.end method

.method public declared-synchronized startMonitoring(Ljava/lang/String;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    monitor-enter p0

    .line 152
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->setMonitoring(Ljava/lang/String;Z)V

    .line 153
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastSupplicantConnectionEvent(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    .line 151
    .end local p1    # "iface":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/p2p/WifiP2pMonitor;
    throw p1
.end method

.method public declared-synchronized stopAllMonitoring()V
    .locals 1

    monitor-enter p0

    .line 175
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mConnected:Z

    .line 176
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->setMonitoringNone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/p2p/WifiP2pMonitor;
    throw v0
.end method

.method public declared-synchronized stopMonitoring(Ljava/lang/String;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    monitor-enter p0

    .line 163
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiP2pMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopMonitoring("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->setMonitoring(Ljava/lang/String;Z)V

    .line 165
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastSupplicantDisconnectionEvent(Ljava/lang/String;)V

    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->setMonitoring(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return-void

    .line 162
    .end local p1    # "iface":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/p2p/WifiP2pMonitor;
    throw p1
.end method
