.class public Lcom/android/server/wifi/aware/WifiAwareStateManager;
.super Ljava/lang/Object;
.source "WifiAwareStateManager.java"

# interfaces
.implements Lcom/android/server/wifi/aware/WifiAwareShellCommand$DelegatedShellCommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;
    }
.end annotation


# static fields
.field private static final ALL_ZERO_MAC:[B

.field private static final COMMAND_TYPE_CONNECT:I = 0x64

.field private static final COMMAND_TYPE_CREATE_ALL_DATA_PATH_INTERFACES:I = 0x70

.field private static final COMMAND_TYPE_CREATE_DATA_PATH_INTERFACE:I = 0x72

.field private static final COMMAND_TYPE_DELAYED_INITIALIZATION:I = 0x79

.field private static final COMMAND_TYPE_DELETE_ALL_DATA_PATH_INTERFACES:I = 0x71

.field private static final COMMAND_TYPE_DELETE_DATA_PATH_INTERFACE:I = 0x73

.field private static final COMMAND_TYPE_DISABLE_USAGE:I = 0x6d

.field private static final COMMAND_TYPE_DISCONNECT:I = 0x65

.field private static final COMMAND_TYPE_ENABLE_USAGE:I = 0x6c

.field private static final COMMAND_TYPE_END_DATA_PATH:I = 0x76

.field private static final COMMAND_TYPE_ENQUEUE_SEND_MESSAGE:I = 0x6b

.field private static final COMMAND_TYPE_GET_AWARE:I = 0x7a

.field private static final COMMAND_TYPE_GET_CAPABILITIES:I = 0x6f

.field private static final COMMAND_TYPE_INITIATE_DATA_PATH_SETUP:I = 0x74

.field private static final COMMAND_TYPE_PUBLISH:I = 0x67

.field private static final COMMAND_TYPE_RECONFIGURE:I = 0x78

.field private static final COMMAND_TYPE_RELEASE_AWARE:I = 0x7b

.field private static final COMMAND_TYPE_RESPOND_TO_DATA_PATH_SETUP_REQUEST:I = 0x75

.field private static final COMMAND_TYPE_SUBSCRIBE:I = 0x69

.field private static final COMMAND_TYPE_TERMINATE_SESSION:I = 0x66

.field private static final COMMAND_TYPE_TRANSMIT_NEXT_MESSAGE:I = 0x77

.field private static final COMMAND_TYPE_UPDATE_PUBLISH:I = 0x68

.field private static final COMMAND_TYPE_UPDATE_SUBSCRIBE:I = 0x6a

.field public static final HAL_COMMAND_TIMEOUT_TAG:Ljava/lang/String; = "WifiAwareStateManager HAL Command Timeout"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final HAL_DATA_PATH_CONFIRM_TIMEOUT_TAG:Ljava/lang/String; = "WifiAwareStateManager HAL Data Path Confirm Timeout"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final HAL_SEND_MESSAGE_TIMEOUT_TAG:Ljava/lang/String; = "WifiAwareStateManager HAL Send Message Timeout"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MESSAGE_BUNDLE_KEY_CALLING_PACKAGE:Ljava/lang/String; = "calling_package"

.field private static final MESSAGE_BUNDLE_KEY_CHANNEL:Ljava/lang/String; = "channel"

.field private static final MESSAGE_BUNDLE_KEY_CHANNEL_REQ_TYPE:Ljava/lang/String; = "channel_request_type"

.field private static final MESSAGE_BUNDLE_KEY_CONFIG:Ljava/lang/String; = "config"

.field private static final MESSAGE_BUNDLE_KEY_FILTER_DATA:Ljava/lang/String; = "filter_data"

.field private static final MESSAGE_BUNDLE_KEY_INTERFACE_NAME:Ljava/lang/String; = "interface_name"

.field private static final MESSAGE_BUNDLE_KEY_MAC_ADDRESS:Ljava/lang/String; = "mac_address"

.field private static final MESSAGE_BUNDLE_KEY_MESSAGE:Ljava/lang/String; = "message"

.field private static final MESSAGE_BUNDLE_KEY_MESSAGE_ARRIVAL_SEQ:Ljava/lang/String; = "message_arrival_seq"

.field private static final MESSAGE_BUNDLE_KEY_MESSAGE_DATA:Ljava/lang/String; = "message_data"

.field private static final MESSAGE_BUNDLE_KEY_MESSAGE_ID:Ljava/lang/String; = "message_id"

.field private static final MESSAGE_BUNDLE_KEY_MESSAGE_PEER_ID:Ljava/lang/String; = "message_peer_id"

.field private static final MESSAGE_BUNDLE_KEY_NDP_IDS:Ljava/lang/String; = "ndp_ids"

.field private static final MESSAGE_BUNDLE_KEY_NOTIFY_IDENTITY_CHANGE:Ljava/lang/String; = "notify_identity_chg"

.field private static final MESSAGE_BUNDLE_KEY_OOB:Ljava/lang/String; = "out_of_band"

.field private static final MESSAGE_BUNDLE_KEY_PASSPHRASE:Ljava/lang/String; = "passphrase"

.field private static final MESSAGE_BUNDLE_KEY_PEER_ID:Ljava/lang/String; = "peer_id"

.field private static final MESSAGE_BUNDLE_KEY_PID:Ljava/lang/String; = "pid"

.field private static final MESSAGE_BUNDLE_KEY_PMK:Ljava/lang/String; = "pmk"

.field private static final MESSAGE_BUNDLE_KEY_REQ_INSTANCE_ID:Ljava/lang/String; = "req_instance_id"

.field private static final MESSAGE_BUNDLE_KEY_RETRY_COUNT:Ljava/lang/String; = "retry_count"

.field private static final MESSAGE_BUNDLE_KEY_SEND_MESSAGE_ENQUEUE_TIME:Ljava/lang/String; = "message_queue_time"

.field private static final MESSAGE_BUNDLE_KEY_SENT_MESSAGE:Ljava/lang/String; = "send_message"

.field private static final MESSAGE_BUNDLE_KEY_SESSION_ID:Ljava/lang/String; = "session_id"

.field private static final MESSAGE_BUNDLE_KEY_SESSION_TYPE:Ljava/lang/String; = "session_type"

.field private static final MESSAGE_BUNDLE_KEY_SSI_DATA:Ljava/lang/String; = "ssi_data"

.field private static final MESSAGE_BUNDLE_KEY_STATUS_CODE:Ljava/lang/String; = "status_code"

.field private static final MESSAGE_BUNDLE_KEY_SUCCESS_FLAG:Ljava/lang/String; = "success_flag"

.field private static final MESSAGE_BUNDLE_KEY_UID:Ljava/lang/String; = "uid"

.field private static final MESSAGE_RANGE_MM:Ljava/lang/String; = "range_mm"

.field private static final MESSAGE_RANGING_INDICATION:Ljava/lang/String; = "ranging_indication"

.field private static final MESSAGE_TYPE_COMMAND:I = 0x1

.field private static final MESSAGE_TYPE_DATA_PATH_TIMEOUT:I = 0x6

.field private static final MESSAGE_TYPE_NOTIFICATION:I = 0x3

.field private static final MESSAGE_TYPE_RESPONSE:I = 0x2

.field private static final MESSAGE_TYPE_RESPONSE_TIMEOUT:I = 0x4

.field private static final MESSAGE_TYPE_SEND_MESSAGE_TIMEOUT:I = 0x5

.field private static final NOTIFICATION_TYPE_AWARE_DOWN:I = 0x132

.field private static final NOTIFICATION_TYPE_CLUSTER_CHANGE:I = 0x12e

.field private static final NOTIFICATION_TYPE_INTERFACE_CHANGE:I = 0x12d

.field private static final NOTIFICATION_TYPE_MATCH:I = 0x12f

.field private static final NOTIFICATION_TYPE_MESSAGE_RECEIVED:I = 0x131

.field private static final NOTIFICATION_TYPE_ON_DATA_PATH_CONFIRM:I = 0x136

.field private static final NOTIFICATION_TYPE_ON_DATA_PATH_END:I = 0x137

.field private static final NOTIFICATION_TYPE_ON_DATA_PATH_REQUEST:I = 0x135

.field private static final NOTIFICATION_TYPE_ON_DATA_PATH_SCHED_UPDATE:I = 0x138

.field private static final NOTIFICATION_TYPE_ON_MESSAGE_SEND_FAIL:I = 0x134

.field private static final NOTIFICATION_TYPE_ON_MESSAGE_SEND_SUCCESS:I = 0x133

.field private static final NOTIFICATION_TYPE_SESSION_TERMINATED:I = 0x130

.field public static final PARAM_ON_IDLE_DISABLE_AWARE:Ljava/lang/String; = "on_idle_disable_aware"

.field public static final PARAM_ON_IDLE_DISABLE_AWARE_DEFAULT:I = 0x1

.field private static final RESPONSE_TYPE_ON_CAPABILITIES_UPDATED:I = 0xce

.field private static final RESPONSE_TYPE_ON_CONFIG_FAIL:I = 0xc9

.field private static final RESPONSE_TYPE_ON_CONFIG_SUCCESS:I = 0xc8

.field private static final RESPONSE_TYPE_ON_CREATE_INTERFACE:I = 0xcf

.field private static final RESPONSE_TYPE_ON_DELETE_INTERFACE:I = 0xd0

.field private static final RESPONSE_TYPE_ON_DISABLE:I = 0xd5

.field private static final RESPONSE_TYPE_ON_END_DATA_PATH:I = 0xd4

.field private static final RESPONSE_TYPE_ON_INITIATE_DATA_PATH_FAIL:I = 0xd2

.field private static final RESPONSE_TYPE_ON_INITIATE_DATA_PATH_SUCCESS:I = 0xd1

.field private static final RESPONSE_TYPE_ON_MESSAGE_SEND_QUEUED_FAIL:I = 0xcd

.field private static final RESPONSE_TYPE_ON_MESSAGE_SEND_QUEUED_SUCCESS:I = 0xcc

.field private static final RESPONSE_TYPE_ON_RESPOND_TO_DATA_PATH_SETUP_REQUEST:I = 0xd3

.field private static final RESPONSE_TYPE_ON_SESSION_CONFIG_FAIL:I = 0xcb

.field private static final RESPONSE_TYPE_ON_SESSION_CONFIG_SUCCESS:I = 0xca

.field private static final TAG:Ljava/lang/String; = "WifiAwareStateManager"

.field private static final VDBG:Z = false

.field private static final VVDBG:Z = false

.field private static final sSmToString:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

.field private volatile mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

.field private volatile mCharacteristics:Landroid/net/wifi/aware/Characteristics;

.field private final mClients:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wifi/aware/WifiAwareClientState;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

.field private mCurrentDiscoveryInterfaceMac:[B

.field private mCurrentIdentityNotification:Z

.field public mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

.field mDbg:Z

.field private mLocationManager:Landroid/location/LocationManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSettableParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

.field private volatile mUsageEnabled:Z

.field private mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

.field private mWifiAwareNativeManager:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 160
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "MESSAGE_TYPE"

    const-string v2, "COMMAND_TYPE"

    const-string v3, "RESPONSE_TYPE"

    const-string v4, "NOTIFICATION_TYPE"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;[Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->sSmToString:Landroid/util/SparseArray;

    .line 226
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->ALL_ZERO_MAC:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDbg:Z

    .line 206
    iput-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mUsageEnabled:Z

    .line 215
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCharacteristics:Landroid/net/wifi/aware/Characteristics;

    .line 222
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    .line 223
    iput-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

    .line 224
    iput-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentIdentityNotification:Z

    .line 227
    sget-object v0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->ALL_ZERO_MAC:[B

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentDiscoveryInterfaceMac:[B

    .line 249
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSettableParameters:Ljava/util/Map;

    .line 230
    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onReset()V

    .line 231
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;

    .line 76
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSettableParameters:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;

    .line 76
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/wifi/aware/WifiAwareStateManager;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # [B

    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onInterfaceAddressChangeLocal([B)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/wifi/aware/WifiAwareStateManager;I[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onClusterChangeLocal(I[B)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/wifi/aware/WifiAwareStateManager;II[B[B[BII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # [B
    .param p4, "x4"    # [B
    .param p5, "x5"    # [B
    .param p6, "x6"    # I
    .param p7, "x7"    # I

    .line 76
    invoke-direct/range {p0 .. p7}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onMatchLocal(II[B[B[BII)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;

    .line 76
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/wifi/aware/WifiAwareStateManager;IZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onSessionTerminatedLocal(IZI)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/wifi/aware/WifiAwareStateManager;II[B[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # [B
    .param p4, "x4"    # [B

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onMessageReceivedLocal(II[B[B)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;

    .line 76
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onAwareDownLocal()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # Landroid/os/Message;

    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onMessageSendSuccessLocal(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;

    .line 76
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->transmitNextMessage()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onMessageSendFailLocal(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/wifi/aware/WifiAwareStateManager;SIIILjava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # S
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Landroid/net/wifi/aware/IWifiAwareEventCallback;
    .param p7, "x7"    # Landroid/net/wifi/aware/ConfigRequest;
    .param p8, "x8"    # Z

    .line 76
    invoke-direct/range {p0 .. p8}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->connectLocal(SIIILjava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/wifi/aware/WifiAwareStateManager;SI)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # S
    .param p2, "x2"    # I

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->disconnectLocal(SI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/wifi/aware/WifiAwareStateManager;S)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # S

    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->reconfigureLocal(S)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/wifi/aware/WifiAwareStateManager;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->terminateSessionLocal(II)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/wifi/aware/WifiAwareStateManager;SILandroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # S
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/net/wifi/aware/PublishConfig;
    .param p4, "x4"    # Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->publishLocal(SILandroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/wifi/aware/WifiAwareStateManager;SIILandroid/net/wifi/aware/PublishConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # S
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/net/wifi/aware/PublishConfig;

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->updatePublishLocal(SIILandroid/net/wifi/aware/PublishConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/wifi/aware/WifiAwareStateManager;SILandroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # S
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/net/wifi/aware/SubscribeConfig;
    .param p4, "x4"    # Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->subscribeLocal(SILandroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/wifi/aware/WifiAwareStateManager;SIILandroid/net/wifi/aware/SubscribeConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # S
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/net/wifi/aware/SubscribeConfig;

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->updateSubscribeLocal(SIILandroid/net/wifi/aware/SubscribeConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/wifi/aware/WifiAwareStateManager;SIII[BI)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # S
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # [B
    .param p6, "x6"    # I

    .line 76
    invoke-direct/range {p0 .. p6}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->sendFollowonMessageLocal(SIII[BI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;

    .line 76
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->enableUsageLocal()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/wifi/aware/WifiAwareStateManager;S)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # S

    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->disableUsageLocal(S)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Lcom/android/server/wifi/aware/Capabilities;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;

    .line 76
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Lcom/android/server/wifi/aware/WifiAwareNativeApi;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;

    .line 76
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/wifi/aware/WifiAwareStateManager;SLandroid/net/wifi/aware/WifiAwareNetworkSpecifier;III[BLjava/lang/String;[BLjava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # S
    .param p2, "x2"    # Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # [B
    .param p7, "x7"    # Ljava/lang/String;
    .param p8, "x8"    # [B
    .param p9, "x9"    # Ljava/lang/String;
    .param p10, "x10"    # Z

    .line 76
    invoke-direct/range {p0 .. p10}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->initiateDataPathSetupLocal(SLandroid/net/wifi/aware/WifiAwareNetworkSpecifier;III[BLjava/lang/String;[BLjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/wifi/aware/WifiAwareStateManager;SZILjava/lang/String;[BLjava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # S
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # [B
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Z

    .line 76
    invoke-direct/range {p0 .. p7}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->respondToDataPathRequestLocal(SZILjava/lang/String;[BLjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/wifi/aware/WifiAwareStateManager;SI)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # S
    .param p2, "x2"    # I

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->endDataPathLocal(SI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Lcom/android/server/wifi/aware/WifiAwareNativeManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;

    .line 76
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeManager:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # Landroid/os/Message;

    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onConfigCompletedLocal(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onConfigFailedLocal(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;BZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # B
    .param p3, "x3"    # Z

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onSessionConfigSuccessLocal(Landroid/os/Message;BZ)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onSessionConfigFailLocal(Landroid/os/Message;ZI)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/wifi/aware/WifiAwareStateManager;Lcom/android/server/wifi/aware/Capabilities;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # Lcom/android/server/wifi/aware/Capabilities;

    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onCapabilitiesUpdatedResponseLocal(Lcom/android/server/wifi/aware/Capabilities;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onCreateDataPathInterfaceResponseLocal(Landroid/os/Message;ZI)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onDeleteDataPathInterfaceResponseLocal(Landroid/os/Message;ZI)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onInitiateDataPathResponseSuccessLocal(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onInitiateDataPathResponseFailLocal(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onRespondToDataPathSetupRequestResponseLocal(Landroid/os/Message;ZI)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onEndPathEndResponseLocal(Landroid/os/Message;ZI)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onDisableResponseLocal(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$5500(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/os/Message;

    .line 76
    invoke-static {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->messageToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;

    .line 76
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private connectLocal(SIIILjava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;Z)Z
    .locals 20
    .param p1, "transactionId"    # S
    .param p2, "clientId"    # I
    .param p3, "uid"    # I
    .param p4, "pid"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;
    .param p6, "callback"    # Landroid/net/wifi/aware/IWifiAwareEventCallback;
    .param p7, "configRequest"    # Landroid/net/wifi/aware/ConfigRequest;
    .param p8, "notifyIdentityChange"    # Z

    move-object/from16 v1, p0

    move/from16 v13, p2

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    .line 2144
    move/from16 v11, p8

    iget-boolean v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mUsageEnabled:Z

    const/16 v16, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 2145
    const-string v0, "WifiAwareStateManager"

    const-string v3, "connect(): called with mUsageEnabled=false"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    :try_start_0
    invoke-interface {v14, v2}, Landroid/net/wifi/aware/IWifiAwareEventCallback;->onConnectFail(I)V

    .line 2148
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordAttachStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2151
    goto :goto_0

    .line 2149
    :catch_0
    move-exception v0

    .line 2150
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectLocal onConnectFail(): RemoteException (FYI): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return v16

    .line 2155
    :cond_0
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2156
    const-string v0, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectLocal: entry already exists for clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    :cond_1
    invoke-direct {v1, v15}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mergeConfigRequests(Landroid/net/wifi/aware/ConfigRequest;)Landroid/net/wifi/aware/ConfigRequest;

    move-result-object v12

    .line 2165
    .local v12, "merged":Landroid/net/wifi/aware/ConfigRequest;
    if-nez v12, :cond_2

    .line 2166
    const-string v0, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectLocal: requested configRequest="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", incompatible with current configurations"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    :try_start_1
    invoke-interface {v14, v2}, Landroid/net/wifi/aware/IWifiAwareEventCallback;->onConnectFail(I)V

    .line 2170
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordAttachStatus(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2173
    goto :goto_1

    .line 2171
    :catch_1
    move-exception v0

    .line 2172
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v2, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectLocal onConnectFail(): RemoteException (FYI): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return v16

    .line 2179
    :cond_2
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

    invoke-virtual {v0, v12}, Landroid/net/wifi/aware/ConfigRequest;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentIdentityNotification:Z

    if-nez v0, :cond_4

    if-nez v11, :cond_3

    goto :goto_2

    .line 2195
    :cond_3
    move v15, v11

    move-object/from16 v19, v12

    move/from16 v11, p3

    goto :goto_4

    .line 2182
    :cond_4
    :goto_2
    :try_start_2
    invoke-interface {v14, v13}, Landroid/net/wifi/aware/IWifiAwareEventCallback;->onConnectSuccess(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2185
    goto :goto_3

    .line 2183
    :catch_2
    move-exception v0

    move-object v2, v0

    .line 2184
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v2, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectLocal onConnectSuccess(): RemoteException (FYI): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3
    new-instance v0, Lcom/android/server/wifi/aware/WifiAwareClientState;

    iget-object v3, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mContext:Landroid/content/Context;

    .line 2188
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    move-object v2, v0

    move v4, v13

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object v8, v14

    move-object v9, v15

    move v10, v11

    move v15, v11

    move-object/from16 v19, v12

    move-wide/from16 v11, v17

    .end local v12    # "merged":Landroid/net/wifi/aware/ConfigRequest;
    .local v19, "merged":Landroid/net/wifi/aware/ConfigRequest;
    invoke-direct/range {v2 .. v12}, Lcom/android/server/wifi/aware/WifiAwareClientState;-><init>(Landroid/content/Context;IIILjava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;ZJ)V

    .line 2189
    .local v0, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    iget-boolean v2, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDbg:Z

    iput-boolean v2, v0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mDbg:Z

    .line 2190
    iget-object v2, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentDiscoveryInterfaceMac:[B

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/aware/WifiAwareClientState;->onInterfaceAddressChange([B)V

    .line 2191
    iget-object v2, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v2, v13, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2192
    iget-object v2, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    iget-object v3, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    move/from16 v11, p3

    invoke-virtual {v2, v11, v15, v3}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordAttachSession(IZLandroid/util/SparseArray;)V

    .line 2193
    return v16

    .line 2195
    .end local v0    # "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    .end local v19    # "merged":Landroid/net/wifi/aware/ConfigRequest;
    .restart local v12    # "merged":Landroid/net/wifi/aware/ConfigRequest;
    :cond_5
    move v15, v11

    move-object/from16 v19, v12

    move/from16 v11, p3

    .line 2196
    .end local v12    # "merged":Landroid/net/wifi/aware/ConfigRequest;
    .restart local v19    # "merged":Landroid/net/wifi/aware/ConfigRequest;
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->doesAnyClientNeedIdentityChangeNotifications()Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz v15, :cond_6

    goto :goto_5

    :cond_6
    move/from16 v7, v16

    goto :goto_6

    :cond_7
    :goto_5
    move v7, v2

    .line 2198
    .local v7, "notificationRequired":Z
    :goto_6
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

    if-nez v0, :cond_8

    .line 2199
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeManager:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->tryToGetAware()V

    .line 2202
    :cond_8
    iget-object v4, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

    if-nez v0, :cond_9

    move v8, v2

    goto :goto_7

    :cond_9
    move/from16 v8, v16

    :goto_7
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mPowerManager:Landroid/os/PowerManager;

    .line 2204
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v9

    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v10

    .line 2202
    move/from16 v5, p1

    move-object/from16 v6, v19

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->enableAndConfigure(SLandroid/net/wifi/aware/ConfigRequest;ZZZZ)Z

    move-result v3

    .line 2205
    .local v3, "success":Z
    if-nez v3, :cond_a

    .line 2207
    :try_start_3
    invoke-interface {v14, v2}, Landroid/net/wifi/aware/IWifiAwareEventCallback;->onConnectFail(I)V

    .line 2208
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordAttachStatus(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2211
    goto :goto_8

    .line 2209
    :catch_3
    move-exception v0

    .line 2210
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WifiAwareStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connectLocal onConnectFail(): RemoteException (FYI):  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_a
    :goto_8
    return v3
.end method

.method private disableUsageLocal(S)Z
    .locals 2
    .param p1, "transactionId"    # S

    .line 2453
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mUsageEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2454
    return v1

    .line 2457
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->onAwareDownLocal()V

    .line 2459
    iput-boolean v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mUsageEnabled:Z

    .line 2460
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->disable(S)Z

    move-result v0

    .line 2462
    .local v0, "callDispatched":Z
    invoke-direct {p0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->sendAwareStateChangedBroadcast(Z)V

    .line 2464
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v1}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordDisableUsage()V

    .line 2466
    return v0
.end method

.method private disconnectLocal(SI)Z
    .locals 12
    .param p1, "transactionId"    # S
    .param p2, "clientId"    # I

    .line 2223
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareClientState;

    .line 2224
    .local v0, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2225
    const-string v2, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnectLocal: no entry for clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    return v1

    .line 2228
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->delete(I)V

    .line 2229
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getCreationTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordAttachSessionDuration(J)V

    .line 2230
    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getSessions()Landroid/util/SparseArray;

    move-result-object v2

    .line 2231
    .local v2, "sessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;>;"
    move v3, v1

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 2232
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    invoke-virtual {v5}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->getCreationTime()J

    move-result-wide v5

    .line 2233
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    invoke-virtual {v7}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->isPublishSession()Z

    move-result v7

    .line 2232
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordDiscoverySessionDuration(JZ)V

    .line 2231
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2235
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareClientState;->destroy()V

    .line 2237
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 2238
    iput-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

    .line 2239
    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->deleteAllDataPathInterfaces()V

    .line 2240
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->disable(S)Z

    move-result v1

    return v1

    .line 2243
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mergeConfigRequests(Landroid/net/wifi/aware/ConfigRequest;)Landroid/net/wifi/aware/ConfigRequest;

    move-result-object v10

    .line 2244
    .local v10, "merged":Landroid/net/wifi/aware/ConfigRequest;
    if-nez v10, :cond_3

    .line 2245
    const-string v3, "WifiAwareStateManager"

    const-string v4, "disconnectLocal: got an incompatible merge on remaining configs!?"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    return v1

    .line 2248
    :cond_3
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->doesAnyClientNeedIdentityChangeNotifications()Z

    move-result v11

    .line 2249
    .local v11, "notificationReqs":Z
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

    invoke-virtual {v10, v3}, Landroid/net/wifi/aware/ConfigRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentIdentityNotification:Z

    if-ne v3, v11, :cond_4

    .line 2251
    return v1

    .line 2254
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mPowerManager:Landroid/os/PowerManager;

    .line 2255
    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v8

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v9

    .line 2254
    move v4, p1

    move-object v5, v10

    move v6, v11

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->enableAndConfigure(SLandroid/net/wifi/aware/ConfigRequest;ZZZZ)Z

    move-result v1

    return v1
.end method

.method private doesAnyClientNeedIdentityChangeNotifications()Z
    .locals 3

    .line 3166
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3167
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/aware/WifiAwareClientState;

    invoke-virtual {v2}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getNotifyIdentityChange()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3168
    const/4 v0, 0x1

    return v0

    .line 3166
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3171
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private enableUsageLocal()V
    .locals 1

    .line 2432
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    if-nez v0, :cond_0

    .line 2433
    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->getAwareInterface()V

    .line 2434
    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->queryCapabilities()V

    .line 2435
    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->releaseAwareInterface()V

    .line 2438
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mUsageEnabled:Z

    if-eqz v0, :cond_1

    .line 2439
    return-void

    .line 2441
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mUsageEnabled:Z

    .line 2442
    invoke-direct {p0, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->sendAwareStateChangedBroadcast(Z)V

    .line 2444
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordEnableUsage()V

    .line 2445
    return-void
.end method

.method private endDataPathLocal(SI)Z
    .locals 1
    .param p1, "transactionId"    # S
    .param p2, "ndpId"    # I

    .line 2518
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->endDataPath(SI)Z

    move-result v0

    return v0
.end method

.method private getClientSessionForPubSubId(I)Landroid/util/Pair;
    .locals 4
    .param p1, "pubSubId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Lcom/android/server/wifi/aware/WifiAwareClientState;",
            "Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;",
            ">;"
        }
    .end annotation

    .line 3068
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3069
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/aware/WifiAwareClientState;

    .line 3070
    .local v1, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getAwareSessionStateForPubSubId(I)Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    move-result-object v2

    .line 3072
    .local v2, "session":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    if-eqz v2, :cond_0

    .line 3073
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 3068
    .end local v1    # "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    .end local v2    # "session":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3077
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private initiateDataPathSetupLocal(SLandroid/net/wifi/aware/WifiAwareNetworkSpecifier;III[BLjava/lang/String;[BLjava/lang/String;Z)Z
    .locals 12
    .param p1, "transactionId"    # S
    .param p2, "networkSpecifier"    # Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    .param p3, "peerId"    # I
    .param p4, "channelRequestType"    # I
    .param p5, "channel"    # I
    .param p6, "peer"    # [B
    .param p7, "interfaceName"    # Ljava/lang/String;
    .param p8, "pmk"    # [B
    .param p9, "passphrase"    # Ljava/lang/String;
    .param p10, "isOutOfBand"    # Z

    move-object v0, p0

    .line 2484
    iget-object v1, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    iget-object v11, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    move v2, p1

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->initiateDataPath(SIII[BLjava/lang/String;[BLjava/lang/String;ZLcom/android/server/wifi/aware/Capabilities;)Z

    move-result v1

    .line 2487
    .local v1, "success":Z
    if-nez v1, :cond_0

    .line 2488
    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    const/4 v3, 0x1

    move-object v4, p2

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->onDataPathInitiateFail(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;I)V

    goto :goto_0

    .line 2491
    :cond_0
    move-object v4, p2

    :goto_0
    return v1
.end method

.method public static synthetic lambda$requestMacAddresses$0(Lcom/android/server/wifi/aware/WifiAwareStateManager;ILjava/util/List;Landroid/net/wifi/aware/IWifiAwareMacAddressProvider;)V
    .locals 12
    .param p1, "uid"    # I
    .param p2, "peerIds"    # Ljava/util/List;
    .param p3, "callback"    # Landroid/net/wifi/aware/IWifiAwareMacAddressProvider;

    .line 497
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 498
    .local v0, "peerIdToMacMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 499
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/aware/WifiAwareClientState;

    .line 500
    .local v3, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    invoke-virtual {v3}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getUid()I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 501
    goto :goto_3

    .line 504
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getSessions()Landroid/util/SparseArray;

    move-result-object v4

    .line 505
    .local v4, "sessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;>;"
    move v5, v1

    .local v5, "j":I
    :goto_1
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 506
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    .line 508
    .local v6, "session":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 509
    .local v8, "peerId":I
    invoke-virtual {v6, v8}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->getPeerInfo(I)Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState$PeerInfo;

    move-result-object v9

    .line 511
    .local v9, "peerInfo":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState$PeerInfo;
    if-eqz v9, :cond_1

    .line 512
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v9, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState$PeerInfo;->mMac:[B

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    .end local v8    # "peerId":I
    .end local v9    # "peerInfo":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState$PeerInfo;
    :cond_1
    goto :goto_2

    .line 505
    .end local v6    # "session":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 498
    .end local v3    # "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    .end local v4    # "sessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;>;"
    .end local v5    # "j":I
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 520
    .end local v2    # "i":I
    :cond_4
    :try_start_0
    invoke-interface {p3, v0}, Landroid/net/wifi/aware/IWifiAwareMacAddressProvider;->macAddress(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    goto :goto_4

    .line 521
    :catch_0
    move-exception v1

    .line 522
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestMacAddress (sync): exception on callback -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_4
    return-void
.end method

.method private mergeConfigRequests(Landroid/net/wifi/aware/ConfigRequest;)Landroid/net/wifi/aware/ConfigRequest;
    .locals 17
    .param p1, "configRequest"    # Landroid/net/wifi/aware/ConfigRequest;

    move-object/from16 v0, p0

    .line 3090
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    .line 3091
    const-string v2, "WifiAwareStateManager"

    const-string v4, "mergeConfigRequests: invalid state - called with 0 clients registered!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3092
    return-object v3

    .line 3101
    :cond_0
    const/4 v2, 0x0

    .line 3102
    .local v2, "support5gBand":Z
    const/4 v4, 0x0

    .line 3103
    .local v4, "masterPreference":I
    const/4 v5, 0x0

    .line 3104
    .local v5, "clusterIdValid":Z
    const/4 v6, 0x0

    .line 3105
    .local v6, "clusterLow":I
    const v7, 0xffff

    .line 3106
    .local v7, "clusterHigh":I
    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_0

    .line 3108
    .local v8, "discoveryWindowInterval":[I
    if-eqz v1, :cond_1

    .line 3109
    iget-boolean v2, v1, Landroid/net/wifi/aware/ConfigRequest;->mSupport5gBand:Z

    .line 3110
    iget v4, v1, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    .line 3111
    const/4 v5, 0x1

    .line 3112
    iget v6, v1, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    .line 3113
    iget v7, v1, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    .line 3114
    iget-object v8, v1, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    .line 3116
    :cond_1
    const/4 v9, 0x0

    move v10, v5

    move v5, v4

    move v4, v2

    move v2, v9

    .local v2, "i":I
    .local v4, "support5gBand":Z
    .local v5, "masterPreference":I
    .local v10, "clusterIdValid":Z
    :goto_0
    iget-object v11, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    const/4 v12, -0x1

    const/4 v13, 0x1

    if-ge v2, v11, :cond_b

    .line 3117
    iget-object v11, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wifi/aware/WifiAwareClientState;

    invoke-virtual {v11}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getConfigRequest()Landroid/net/wifi/aware/ConfigRequest;

    move-result-object v11

    .line 3120
    .local v11, "cr":Landroid/net/wifi/aware/ConfigRequest;
    iget-boolean v14, v11, Landroid/net/wifi/aware/ConfigRequest;->mSupport5gBand:Z

    if-eqz v14, :cond_2

    .line 3121
    const/4 v4, 0x1

    .line 3125
    :cond_2
    iget v14, v11, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 3128
    if-nez v10, :cond_3

    .line 3129
    const/4 v10, 0x1

    .line 3130
    iget v6, v11, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    .line 3131
    iget v7, v11, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    goto :goto_1

    .line 3133
    :cond_3
    iget v14, v11, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    if-eq v6, v14, :cond_4

    return-object v3

    .line 3134
    :cond_4
    iget v14, v11, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    if-eq v7, v14, :cond_5

    return-object v3

    .line 3137
    :cond_5
    :goto_1
    move v14, v9

    .local v14, "band":I
    :goto_2
    if-gt v14, v13, :cond_a

    .line 3139
    aget v15, v8, v14

    if-ne v15, v12, :cond_6

    .line 3140
    iget-object v15, v11, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    aget v15, v15, v14

    aput v15, v8, v14

    goto :goto_3

    .line 3141
    :cond_6
    iget-object v15, v11, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    aget v15, v15, v14

    if-ne v15, v12, :cond_7

    goto :goto_3

    .line 3144
    :cond_7
    aget v15, v8, v14

    if-nez v15, :cond_8

    .line 3145
    iget-object v15, v11, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    aget v15, v15, v14

    aput v15, v8, v14

    goto :goto_3

    .line 3146
    :cond_8
    iget-object v15, v11, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    aget v15, v15, v14

    if-nez v15, :cond_9

    goto :goto_3

    .line 3149
    :cond_9
    aget v15, v8, v14

    iget-object v3, v11, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    aget v3, v3, v14

    invoke-static {v15, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, v8, v14

    .line 3138
    :goto_3
    add-int/lit8 v14, v14, 0x1

    .line 3137
    const/4 v3, 0x0

    goto :goto_2

    .line 3116
    .end local v11    # "cr":Landroid/net/wifi/aware/ConfigRequest;
    .end local v14    # "band":I
    :cond_a
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    goto :goto_0

    .line 3154
    .end local v2    # "i":I
    :cond_b
    new-instance v2, Landroid/net/wifi/aware/ConfigRequest$Builder;

    invoke-direct {v2}, Landroid/net/wifi/aware/ConfigRequest$Builder;-><init>()V

    invoke-virtual {v2, v4}, Landroid/net/wifi/aware/ConfigRequest$Builder;->setSupport5gBand(Z)Landroid/net/wifi/aware/ConfigRequest$Builder;

    move-result-object v2

    .line 3155
    invoke-virtual {v2, v5}, Landroid/net/wifi/aware/ConfigRequest$Builder;->setMasterPreference(I)Landroid/net/wifi/aware/ConfigRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/net/wifi/aware/ConfigRequest$Builder;->setClusterLow(I)Landroid/net/wifi/aware/ConfigRequest$Builder;

    move-result-object v2

    .line 3156
    invoke-virtual {v2, v7}, Landroid/net/wifi/aware/ConfigRequest$Builder;->setClusterHigh(I)Landroid/net/wifi/aware/ConfigRequest$Builder;

    move-result-object v2

    .line 3157
    .local v2, "builder":Landroid/net/wifi/aware/ConfigRequest$Builder;
    nop

    .local v9, "band":I
    :goto_4
    move v3, v9

    .end local v9    # "band":I
    .local v3, "band":I
    if-gt v3, v13, :cond_d

    .line 3158
    aget v9, v8, v3

    if-eq v9, v12, :cond_c

    .line 3159
    aget v9, v8, v3

    invoke-virtual {v2, v3, v9}, Landroid/net/wifi/aware/ConfigRequest$Builder;->setDiscoveryWindowInterval(II)Landroid/net/wifi/aware/ConfigRequest$Builder;

    .line 3157
    :cond_c
    add-int/lit8 v9, v3, 0x1

    .end local v3    # "band":I
    .restart local v9    # "band":I
    goto :goto_4

    .line 3162
    .end local v9    # "band":I
    :cond_d
    invoke-virtual {v2}, Landroid/net/wifi/aware/ConfigRequest$Builder;->build()Landroid/net/wifi/aware/ConfigRequest;

    move-result-object v3

    return-object v3

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private static messageToString(Landroid/os/Message;)Ljava/lang/String;
    .locals 5
    .param p0, "msg"    # Landroid/os/Message;

    .line 3175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3177
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->sSmToString:Landroid/util/SparseArray;

    iget v2, p0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3178
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 3179
    const-string v1, "<unknown>"

    .line 3181
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3183
    iget v2, p0, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v2, v3, :cond_1

    iget v2, p0, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget v2, p0, Landroid/os/Message;->what:I

    if-ne v2, v4, :cond_3

    .line 3185
    :cond_1
    sget-object v2, Lcom/android/server/wifi/aware/WifiAwareStateManager;->sSmToString:Landroid/util/SparseArray;

    iget v3, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    .line 3186
    if-nez v1, :cond_2

    .line 3187
    const-string v1, "<unknown>"

    .line 3189
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3192
    :cond_3
    iget v2, p0, Landroid/os/Message;->what:I

    if-eq v2, v4, :cond_4

    iget v2, p0, Landroid/os/Message;->what:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 3193
    :cond_4
    const-string v2, " (Transaction ID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3196
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private onAwareDownLocal()V
    .locals 8

    .line 3039
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

    if-nez v0, :cond_0

    .line 3040
    return-void

    .line 3043
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3044
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/aware/WifiAwareClientState;

    invoke-virtual {v3}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getCreationTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordAttachSessionDuration(J)V

    .line 3045
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/aware/WifiAwareClientState;

    .line 3046
    invoke-virtual {v2}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getSessions()Landroid/util/SparseArray;

    move-result-object v2

    .line 3047
    .local v2, "sessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;>;"
    move v3, v0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 3048
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    invoke-virtual {v5}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->getCreationTime()J

    move-result-wide v5

    .line 3049
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    invoke-virtual {v7}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->isPublishSession()Z

    move-result v7

    .line 3048
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordDiscoverySessionDuration(JZ)V

    .line 3047
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3043
    .end local v2    # "sessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;>;"
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3052
    .end local v1    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordDisableAware()V

    .line 3054
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3055
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

    .line 3056
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->onAwareDownCleanupSendQueueState()V

    .line 3057
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->onAwareDownCleanupDataPaths()V

    .line 3058
    sget-object v0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->ALL_ZERO_MAC:[B

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentDiscoveryInterfaceMac:[B

    .line 3059
    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->deleteAllDataPathInterfaces()V

    .line 3060
    return-void
.end method

.method private onCapabilitiesUpdatedResponseLocal(Lcom/android/server/wifi/aware/Capabilities;)V
    .locals 1
    .param p1, "capabilities"    # Lcom/android/server/wifi/aware/Capabilities;

    .line 2851
    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    .line 2852
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCharacteristics:Landroid/net/wifi/aware/Characteristics;

    .line 2853
    return-void
.end method

.method private onClusterChangeLocal(I[B)V
    .locals 3
    .param p1, "flag"    # I
    .param p2, "clusterId"    # [B

    .line 2959
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2960
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/aware/WifiAwareClientState;

    .line 2961
    .local v1, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentDiscoveryInterfaceMac:[B

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/wifi/aware/WifiAwareClientState;->onClusterChange(I[B[B)V

    .line 2959
    .end local v1    # "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2964
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordEnableAware()V

    .line 2965
    return-void
.end method

.method private onConfigCompletedLocal(Landroid/os/Message;)V
    .locals 24
    .param p1, "completedCommand"    # Landroid/os/Message;

    move-object/from16 v1, p0

    .line 2530
    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->arg1:I

    const/16 v3, 0x64

    if-ne v0, v3, :cond_0

    .line 2531
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 2533
    .local v3, "data":Landroid/os/Bundle;
    iget v15, v2, Landroid/os/Message;->arg2:I

    .line 2534
    .local v15, "clientId":I
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Landroid/net/wifi/aware/IWifiAwareEventCallback;

    .line 2535
    .local v13, "callback":Landroid/net/wifi/aware/IWifiAwareEventCallback;
    const-string v0, "config"

    .line 2536
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/net/wifi/aware/ConfigRequest;

    .line 2537
    .local v16, "configRequest":Landroid/net/wifi/aware/ConfigRequest;
    const-string v0, "uid"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 2538
    .local v14, "uid":I
    const-string v0, "pid"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 2539
    .local v17, "pid":I
    const-string v0, "notify_identity_chg"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 2541
    .local v12, "notifyIdentityChange":Z
    const-string v0, "calling_package"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2543
    .local v18, "callingPackage":Ljava/lang/String;
    new-instance v0, Lcom/android/server/wifi/aware/WifiAwareClientState;

    iget-object v5, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mContext:Landroid/content/Context;

    .line 2545
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    move-object v4, v0

    move v6, v15

    move v7, v14

    move/from16 v8, v17

    move-object/from16 v9, v18

    move-object v10, v13

    move-object/from16 v11, v16

    move/from16 v21, v12

    .end local v12    # "notifyIdentityChange":Z
    .local v21, "notifyIdentityChange":Z
    move-object/from16 v22, v3

    move-object v3, v13

    move v2, v14

    move-wide/from16 v13, v19

    .end local v13    # "callback":Landroid/net/wifi/aware/IWifiAwareEventCallback;
    .end local v14    # "uid":I
    .local v2, "uid":I
    .local v3, "callback":Landroid/net/wifi/aware/IWifiAwareEventCallback;
    .local v22, "data":Landroid/os/Bundle;
    invoke-direct/range {v4 .. v14}, Lcom/android/server/wifi/aware/WifiAwareClientState;-><init>(Landroid/content/Context;IIILjava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;ZJ)V

    .line 2546
    .local v4, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    iget-boolean v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDbg:Z

    iput-boolean v0, v4, Lcom/android/server/wifi/aware/WifiAwareClientState;->mDbg:Z

    .line 2547
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v0, v15, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2548
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    iget-object v5, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    move/from16 v6, v21

    invoke-virtual {v0, v2, v6, v5}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordAttachSession(IZLandroid/util/SparseArray;)V

    .line 2550
    .end local v21    # "notifyIdentityChange":Z
    .local v6, "notifyIdentityChange":Z
    :try_start_0
    invoke-interface {v3, v15}, Landroid/net/wifi/aware/IWifiAwareEventCallback;->onConnectSuccess(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2554
    goto :goto_0

    .line 2551
    :catch_0
    move-exception v0

    move-object v5, v0

    .line 2552
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "WifiAwareStateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onConfigCompletedLocal onConnectSuccess(): RemoteException (FYI): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentDiscoveryInterfaceMac:[B

    invoke-virtual {v4, v0}, Lcom/android/server/wifi/aware/WifiAwareClientState;->onInterfaceAddressChange([B)V

    .line 2556
    .end local v2    # "uid":I
    .end local v3    # "callback":Landroid/net/wifi/aware/IWifiAwareEventCallback;
    .end local v4    # "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    .end local v6    # "notifyIdentityChange":Z
    .end local v15    # "clientId":I
    .end local v16    # "configRequest":Landroid/net/wifi/aware/ConfigRequest;
    .end local v17    # "pid":I
    .end local v18    # "callingPackage":Ljava/lang/String;
    .end local v22    # "data":Landroid/os/Bundle;
    nop

    .line 2569
    move-object/from16 v2, p1

    goto :goto_1

    .line 2556
    :cond_0
    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->arg1:I

    const/16 v3, 0x65

    if-ne v0, v3, :cond_1

    goto :goto_1

    .line 2560
    :cond_1
    iget v0, v2, Landroid/os/Message;->arg1:I

    const/16 v3, 0x78

    if-ne v0, v3, :cond_4

    .line 2569
    :goto_1
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

    if-nez v0, :cond_2

    .line 2570
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->createAllDataPathInterfaces()V

    .line 2572
    :cond_2
    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mergeConfigRequests(Landroid/net/wifi/aware/ConfigRequest;)Landroid/net/wifi/aware/ConfigRequest;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

    .line 2573
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

    if-nez v0, :cond_3

    .line 2574
    const-string v0, "WifiAwareStateManager"

    const-string v3, "onConfigCompletedLocal: got a null merged configuration after config!?"

    invoke-static {v0, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->doesAnyClientNeedIdentityChangeNotifications()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentIdentityNotification:Z

    .line 2577
    return-void

    .line 2565
    :cond_4
    const-string v0, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConfigCompletedLocal: unexpected completedCommand="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2566
    return-void
.end method

.method private onConfigFailedLocal(Landroid/os/Message;I)V
    .locals 5
    .param p1, "failedCommand"    # Landroid/os/Message;
    .param p2, "reason"    # I

    .line 2585
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 2586
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/aware/IWifiAwareEventCallback;

    .line 2589
    .local v0, "callback":Landroid/net/wifi/aware/IWifiAwareEventCallback;
    :try_start_0
    invoke-interface {v0, p2}, Landroid/net/wifi/aware/IWifiAwareEventCallback;->onConnectFail(I)V

    .line 2590
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v1, p2}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordAttachStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2593
    goto :goto_0

    .line 2591
    :catch_0
    move-exception v1

    .line 2592
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConfigFailedLocal onConnectFail(): RemoteException (FYI): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2594
    .end local v0    # "callback":Landroid/net/wifi/aware/IWifiAwareEventCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 2602
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x78

    if-ne v0, v1, :cond_2

    .line 2611
    :goto_1
    return-void

    .line 2608
    :cond_2
    const-string v0, "WifiAwareStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigFailedLocal: unexpected failedCommand="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2609
    return-void
.end method

.method private onCreateDataPathInterfaceResponseLocal(Landroid/os/Message;ZI)V
    .locals 3
    .param p1, "command"    # Landroid/os/Message;
    .param p2, "success"    # Z
    .param p3, "reasonOnFailure"    # I

    .line 2862
    if-eqz p2, :cond_0

    .line 2867
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->onInterfaceCreated(Ljava/lang/String;)V

    goto :goto_0

    .line 2869
    :cond_0
    const-string v0, "WifiAwareStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDataPathInterfaceResponseLocal: failed when trying to create interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Reason code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    :goto_0
    return-void
.end method

.method private onDeleteDataPathInterfaceResponseLocal(Landroid/os/Message;ZI)V
    .locals 3
    .param p1, "command"    # Landroid/os/Message;
    .param p2, "success"    # Z
    .param p3, "reasonOnFailure"    # I

    .line 2883
    if-eqz p2, :cond_0

    .line 2888
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->onInterfaceDeleted(Ljava/lang/String;)V

    goto :goto_0

    .line 2890
    :cond_0
    const-string v0, "WifiAwareStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeleteDataPathInterfaceResponseLocal: failed when trying to delete interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Reason code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2895
    :goto_0
    return-void
.end method

.method private onDisableResponseLocal(Landroid/os/Message;I)V
    .locals 3
    .param p1, "command"    # Landroid/os/Message;
    .param p2, "reason"    # I

    .line 2623
    if-eqz p2, :cond_0

    .line 2624
    const-string v0, "WifiAwareStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisableResponseLocal: FAILED!? command="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2628
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordDisableAware()V

    .line 2629
    return-void
.end method

.method private onEndPathEndResponseLocal(Landroid/os/Message;ZI)V
    .locals 0
    .param p1, "command"    # Landroid/os/Message;
    .param p2, "success"    # Z
    .param p3, "reasonOnFailure"    # I

    .line 2932
    return-void
.end method

.method private onInitiateDataPathResponseFailLocal(Landroid/os/Message;I)V
    .locals 2
    .param p1, "command"    # Landroid/os/Message;
    .param p2, "reason"    # I

    .line 2912
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->onDataPathInitiateFail(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;I)V

    .line 2913
    return-void
.end method

.method private onInitiateDataPathResponseSuccessLocal(Landroid/os/Message;I)V
    .locals 2
    .param p1, "command"    # Landroid/os/Message;
    .param p2, "ndpId"    # I

    .line 2903
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->onDataPathInitiateSuccess(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;I)V

    .line 2904
    return-void
.end method

.method private onInterfaceAddressChangeLocal([B)V
    .locals 2
    .param p1, "mac"    # [B

    .line 2943
    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentDiscoveryInterfaceMac:[B

    .line 2945
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2946
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/aware/WifiAwareClientState;

    .line 2947
    .local v1, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/aware/WifiAwareClientState;->onInterfaceAddressChange([B)V

    .line 2945
    .end local v1    # "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2950
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordEnableAware()V

    .line 2951
    return-void
.end method

.method private onMatchLocal(II[B[B[BII)V
    .locals 12
    .param p1, "pubSubId"    # I
    .param p2, "requestorInstanceId"    # I
    .param p3, "peerMac"    # [B
    .param p4, "serviceSpecificInfo"    # [B
    .param p5, "matchFilter"    # [B
    .param p6, "rangingIndication"    # I
    .param p7, "rangeMm"    # I

    .line 2978
    nop

    .line 2979
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->getClientSessionForPubSubId(I)Landroid/util/Pair;

    move-result-object v0

    .line 2980
    .local v0, "data":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/aware/WifiAwareClientState;Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;>;"
    if-nez v0, :cond_0

    .line 2981
    const-string v1, "WifiAwareStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMatch: no session found for pubSubId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2982
    return-void

    .line 2985
    :cond_0
    move v3, p1

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    invoke-virtual {v1}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->isRangingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2986
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    if-eqz p6, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2, v4}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordMatchIndicationForRangeEnabledSubscribe(Z)V

    goto :goto_1

    .line 2988
    :cond_2
    move-object v1, p0

    :goto_1
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    move v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->onMatch(I[B[B[BII)V

    .line 2990
    return-void
.end method

.method private onMessageReceivedLocal(II[B[B)V
    .locals 4
    .param p1, "pubSubId"    # I
    .param p2, "requestorInstanceId"    # I
    .param p3, "peerMac"    # [B
    .param p4, "message"    # [B

    .line 3025
    nop

    .line 3026
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->getClientSessionForPubSubId(I)Landroid/util/Pair;

    move-result-object v0

    .line 3027
    .local v0, "data":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/aware/WifiAwareClientState;Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;>;"
    if-nez v0, :cond_0

    .line 3028
    const-string v1, "WifiAwareStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMessageReceivedLocal: no session found for pubSubId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3029
    return-void

    .line 3032
    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->onMessageReceived(I[B[B)V

    .line 3033
    return-void
.end method

.method private onMessageSendFailLocal(Landroid/os/Message;I)V
    .locals 9
    .param p1, "failedCommand"    # Landroid/os/Message;
    .param p2, "reason"    # I

    .line 2822
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 2823
    .local v0, "clientId":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "session_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2824
    .local v1, "sessionId":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "message_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2826
    .local v2, "messageId":I
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/aware/WifiAwareClientState;

    .line 2827
    .local v3, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    if-nez v3, :cond_0

    .line 2828
    const-string v4, "WifiAwareStateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMessageSendFailLocal: no client exists for clientId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    return-void

    .line 2832
    :cond_0
    invoke-virtual {v3, v1}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getSession(I)Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    move-result-object v4

    .line 2833
    .local v4, "session":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    if-nez v4, :cond_1

    .line 2834
    const-string v5, "WifiAwareStateManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onMessageSendFailLocal: no session exists for clientId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", sessionId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2836
    return-void

    .line 2840
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->getCallback()Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    move-result-object v5

    invoke-interface {v5, v2, p2}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onMessageSendFail(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2843
    goto :goto_0

    .line 2841
    :catch_0
    move-exception v5

    .line 2842
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "WifiAwareStateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onMessageSendFailLocal: onMessageSendFail RemoteException="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2844
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private onMessageSendSuccessLocal(Landroid/os/Message;)V
    .locals 9
    .param p1, "completedCommand"    # Landroid/os/Message;

    .line 2793
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 2794
    .local v0, "clientId":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "session_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2795
    .local v1, "sessionId":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "message_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2797
    .local v2, "messageId":I
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/aware/WifiAwareClientState;

    .line 2798
    .local v3, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    if-nez v3, :cond_0

    .line 2799
    const-string v4, "WifiAwareStateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMessageSendSuccessLocal: no client exists for clientId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2800
    return-void

    .line 2803
    :cond_0
    invoke-virtual {v3, v1}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getSession(I)Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    move-result-object v4

    .line 2804
    .local v4, "session":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    if-nez v4, :cond_1

    .line 2805
    const-string v5, "WifiAwareStateManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onMessageSendSuccessLocal: no session exists for clientId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", sessionId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2807
    return-void

    .line 2811
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->getCallback()Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    move-result-object v5

    invoke-interface {v5, v2}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onMessageSendSuccess(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2814
    goto :goto_0

    .line 2812
    :catch_0
    move-exception v5

    .line 2813
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "WifiAwareStateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onMessageSendSuccessLocal: RemoteException (FYI): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2815
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private onRespondToDataPathSetupRequestResponseLocal(Landroid/os/Message;ZI)V
    .locals 2
    .param p1, "command"    # Landroid/os/Message;
    .param p2, "success"    # Z
    .param p3, "reasonOnFailure"    # I

    .line 2922
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->onRespondToDataPathRequest(IZI)V

    .line 2923
    return-void
.end method

.method private onSessionConfigFailLocal(Landroid/os/Message;ZI)V
    .locals 11
    .param p1, "failedCommand"    # Landroid/os/Message;
    .param p2, "isPublish"    # Z
    .param p3, "reason"    # I

    .line 2734
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x67

    if-eq v0, v3, :cond_7

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x69

    if-ne v0, v4, :cond_0

    goto/16 :goto_2

    .line 2754
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x68

    if-eq v0, v3, :cond_2

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x6a

    if-ne v0, v4, :cond_1

    goto :goto_0

    .line 2784
    :cond_1
    const-string v0, "WifiAwareStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionConfigFailLocal: unexpected failedCommand="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2756
    :cond_2
    :goto_0
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 2757
    .local v0, "clientId":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "session_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 2759
    .local v4, "sessionId":I
    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/aware/WifiAwareClientState;

    .line 2760
    .local v5, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    if-nez v5, :cond_3

    .line 2761
    const-string v1, "WifiAwareStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSessionConfigFailLocal: no client exists for clientId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    return-void

    .line 2765
    :cond_3
    invoke-virtual {v5, v4}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getSession(I)Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    move-result-object v6

    .line 2766
    .local v6, "session":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    if-nez v6, :cond_4

    .line 2767
    const-string v1, "WifiAwareStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSessionConfigFailLocal: no session exists for clientId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", sessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2769
    return-void

    .line 2773
    :cond_4
    :try_start_0
    invoke-virtual {v6}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->getCallback()Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    move-result-object v7

    invoke-interface {v7, p3}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onSessionConfigFail(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2776
    goto :goto_1

    .line 2774
    :catch_0
    move-exception v7

    .line 2775
    .local v7, "e":Landroid/os/RemoteException;
    const-string v8, "WifiAwareStateManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onSessionConfigFailLocal: onSessionConfigFail() RemoteException="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2777
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_1
    iget-object v7, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v5}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getUid()I

    move-result v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    if-ne v9, v3, :cond_5

    move v1, v2

    nop

    :cond_5
    invoke-virtual {v7, v8, p3, v1}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordDiscoveryStatus(IIZ)V

    .line 2780
    const/4 v1, 0x3

    if-ne p3, v1, :cond_6

    .line 2781
    invoke-virtual {v5, v4}, Lcom/android/server/wifi/aware/WifiAwareClientState;->removeSession(I)V

    .line 2783
    .end local v0    # "clientId":I
    .end local v4    # "sessionId":I
    .end local v5    # "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    .end local v6    # "session":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    :cond_6
    goto :goto_4

    .line 2736
    :cond_7
    :goto_2
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 2737
    .restart local v0    # "clientId":I
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    .line 2740
    .local v4, "callback":Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/aware/WifiAwareClientState;

    .line 2741
    .restart local v5    # "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    if-nez v5, :cond_8

    .line 2742
    const-string v1, "WifiAwareStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSessionConfigFailLocal: no client exists for clientId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2743
    return-void

    .line 2747
    :cond_8
    :try_start_1
    invoke-interface {v4, p3}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onSessionConfigFail(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2751
    goto :goto_3

    .line 2748
    :catch_1
    move-exception v6

    .line 2749
    .local v6, "e":Landroid/os/RemoteException;
    const-string v7, "WifiAwareStateManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onSessionConfigFailLocal onSessionConfigFail(): RemoteException (FYI): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_3
    iget-object v6, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v5}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getUid()I

    move-result v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v3, :cond_9

    move v1, v2

    nop

    :cond_9
    invoke-virtual {v6, v7, p3, v1}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordDiscoveryStatus(IIZ)V

    .line 2754
    .end local v0    # "clientId":I
    .end local v4    # "callback":Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    .end local v5    # "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    nop

    .line 2786
    :goto_4
    return-void
.end method

.method private onSessionConfigSuccessLocal(Landroid/os/Message;BZ)V
    .locals 24
    .param p1, "completedCommand"    # Landroid/os/Message;
    .param p2, "pubSubId"    # B
    .param p3, "isPublish"    # Z

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 2638
    iget v0, v2, Landroid/os/Message;->arg1:I

    const/16 v3, 0x67

    const/4 v5, 0x0

    if-eq v0, v3, :cond_6

    iget v0, v2, Landroid/os/Message;->arg1:I

    const/16 v6, 0x69

    if-ne v0, v6, :cond_0

    goto/16 :goto_3

    .line 2695
    :cond_0
    iget v0, v2, Landroid/os/Message;->arg1:I

    const/16 v3, 0x68

    if-eq v0, v3, :cond_2

    iget v0, v2, Landroid/os/Message;->arg1:I

    const/16 v6, 0x6a

    if-ne v0, v6, :cond_1

    goto :goto_0

    .line 2723
    :cond_1
    const-string v0, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSessionConfigSuccessLocal: unexpected completedCommand="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 2697
    :cond_2
    :goto_0
    iget v6, v2, Landroid/os/Message;->arg2:I

    .line 2698
    .local v6, "clientId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v7, "session_id"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 2700
    .local v7, "sessionId":I
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/server/wifi/aware/WifiAwareClientState;

    .line 2701
    .local v8, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    if-nez v8, :cond_3

    .line 2702
    const-string v0, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSessionConfigSuccessLocal: no client exists for clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2704
    return-void

    .line 2707
    :cond_3
    invoke-virtual {v8, v7}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getSession(I)Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    move-result-object v9

    .line 2708
    .local v9, "session":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    if-nez v9, :cond_4

    .line 2709
    const-string v0, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSessionConfigSuccessLocal: no session exists for clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", sessionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2711
    return-void

    .line 2715
    :cond_4
    :try_start_0
    invoke-virtual {v9}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->getCallback()Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onSessionConfigSuccess()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2719
    goto :goto_1

    .line 2716
    :catch_0
    move-exception v0

    .line 2717
    .local v0, "e":Landroid/os/RemoteException;
    const-string v10, "WifiAwareStateManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onSessionConfigSuccessLocal: onSessionConfigSuccess() RemoteException="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2720
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v8}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getUid()I

    move-result v10

    iget v11, v2, Landroid/os/Message;->arg1:I

    if-ne v11, v3, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    move v4, v5

    :goto_2
    invoke-virtual {v0, v10, v5, v4}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordDiscoveryStatus(IIZ)V

    .line 2722
    .end local v6    # "clientId":I
    .end local v7    # "sessionId":I
    .end local v8    # "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    .end local v9    # "session":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    goto/16 :goto_b

    .line 2640
    :cond_6
    :goto_3
    iget v6, v2, Landroid/os/Message;->arg2:I

    .line 2641
    .restart local v6    # "clientId":I
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    .line 2644
    .local v14, "callback":Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/server/wifi/aware/WifiAwareClientState;

    .line 2645
    .local v15, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    if-nez v15, :cond_7

    .line 2646
    const-string v0, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSessionConfigSuccessLocal: no client exists for clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    return-void

    .line 2651
    :cond_7
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    iget v7, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mNextSessionId:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mNextSessionId:I

    move v13, v7

    .line 2653
    .local v13, "sessionId":I
    :try_start_1
    invoke-interface {v14, v13}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onSessionStarted(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2657
    nop

    .line 2659
    const/4 v0, 0x0

    .line 2660
    .local v0, "isRangingEnabled":Z
    const/4 v7, -0x1

    .line 2661
    .local v7, "minRange":I
    const/4 v8, -0x1

    .line 2662
    .local v8, "maxRange":I
    iget v9, v2, Landroid/os/Message;->arg1:I

    if-ne v9, v3, :cond_9

    .line 2663
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "config"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/aware/PublishConfig;

    .line 2665
    .local v9, "publishConfig":Landroid/net/wifi/aware/PublishConfig;
    iget-boolean v0, v9, Landroid/net/wifi/aware/PublishConfig;->mEnableRanging:Z

    .line 2666
    .end local v9    # "publishConfig":Landroid/net/wifi/aware/PublishConfig;
    nop

    .line 2679
    .end local v7    # "minRange":I
    .end local v8    # "maxRange":I
    .local v16, "minRange":I
    .local v17, "maxRange":I
    :cond_8
    :goto_4
    move/from16 v16, v7

    move/from16 v17, v8

    goto :goto_7

    .line 2667
    .end local v16    # "minRange":I
    .end local v17    # "maxRange":I
    .restart local v7    # "minRange":I
    .restart local v8    # "maxRange":I
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "config"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/aware/SubscribeConfig;

    .line 2669
    .local v9, "subscribeConfig":Landroid/net/wifi/aware/SubscribeConfig;
    iget-boolean v10, v9, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    if-nez v10, :cond_b

    iget-boolean v10, v9, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    if-eqz v10, :cond_a

    goto :goto_5

    :cond_a
    move v10, v5

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v10, 0x1

    :goto_6
    move v0, v10

    .line 2671
    iget-boolean v10, v9, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    if-eqz v10, :cond_c

    .line 2672
    iget v7, v9, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMm:I

    .line 2674
    :cond_c
    iget-boolean v10, v9, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    if-eqz v10, :cond_8

    .line 2675
    iget v8, v9, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMm:I

    .end local v9    # "subscribeConfig":Landroid/net/wifi/aware/SubscribeConfig;
    goto :goto_4

    .line 2679
    .end local v7    # "minRange":I
    .end local v8    # "maxRange":I
    .restart local v16    # "minRange":I
    .restart local v17    # "maxRange":I
    :goto_7
    new-instance v18, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    iget-object v8, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    .line 2681
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    move-object/from16 v7, v18

    move v9, v13

    move/from16 v10, p2

    move-object v11, v14

    move/from16 v12, p3

    move/from16 v21, v13

    move v13, v0

    .end local v13    # "sessionId":I
    .local v21, "sessionId":I
    move-object/from16 v22, v14

    move-object v4, v15

    move-wide/from16 v14, v19

    .end local v14    # "callback":Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    .end local v15    # "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    .local v4, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    .local v22, "callback":Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    invoke-direct/range {v7 .. v15}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;-><init>(Lcom/android/server/wifi/aware/WifiAwareNativeApi;IBLandroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;ZZJ)V

    move-object/from16 v13, v18

    .line 2682
    .local v13, "session":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    iget-boolean v7, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDbg:Z

    iput-boolean v7, v13, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mDbg:Z

    .line 2683
    invoke-virtual {v4, v13}, Lcom/android/server/wifi/aware/WifiAwareClientState;->addSession(Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;)V

    .line 2685
    if-eqz v0, :cond_e

    .line 2686
    iget-object v7, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v4}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getUid()I

    move-result v8

    iget v9, v2, Landroid/os/Message;->arg1:I

    if-eq v9, v3, :cond_d

    const/4 v9, 0x1

    goto :goto_8

    :cond_d
    move v9, v5

    :goto_8
    iget-object v12, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    move/from16 v10, v16

    move/from16 v11, v17

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordDiscoverySessionWithRanging(IZIILandroid/util/SparseArray;)V

    goto :goto_9

    .line 2690
    :cond_e
    iget-object v7, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v4}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getUid()I

    move-result v8

    iget-object v9, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v7, v8, v9}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordDiscoverySession(ILandroid/util/SparseArray;)V

    .line 2692
    :goto_9
    iget-object v7, v1, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v4}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getUid()I

    move-result v8

    iget v9, v2, Landroid/os/Message;->arg1:I

    if-ne v9, v3, :cond_f

    const/4 v3, 0x1

    goto :goto_a

    :cond_f
    move v3, v5

    :goto_a
    invoke-virtual {v7, v8, v5, v3}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordDiscoveryStatus(IIZ)V

    .line 2695
    .end local v0    # "isRangingEnabled":Z
    .end local v4    # "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    .end local v6    # "clientId":I
    .end local v13    # "session":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    .end local v16    # "minRange":I
    .end local v17    # "maxRange":I
    .end local v21    # "sessionId":I
    .end local v22    # "callback":Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    nop

    .line 2726
    :goto_b
    return-void

    .line 2654
    .restart local v6    # "clientId":I
    .local v13, "sessionId":I
    .restart local v14    # "callback":Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    .restart local v15    # "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    :catch_1
    move-exception v0

    move/from16 v21, v13

    move-object/from16 v22, v14

    move-object v4, v15

    .end local v13    # "sessionId":I
    .end local v14    # "callback":Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    .end local v15    # "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    .restart local v4    # "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    .restart local v21    # "sessionId":I
    .restart local v22    # "callback":Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    move-object v3, v0

    .line 2655
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiAwareStateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSessionConfigSuccessLocal: onSessionStarted() RemoteException="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    return-void
.end method

.method private onSessionTerminatedLocal(IZI)V
    .locals 5
    .param p1, "pubSubId"    # I
    .param p2, "isPublish"    # Z
    .param p3, "reason"    # I

    .line 2998
    nop

    .line 2999
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->getClientSessionForPubSubId(I)Landroid/util/Pair;

    move-result-object v0

    .line 3000
    .local v0, "data":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/aware/WifiAwareClientState;Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;>;"
    if-nez v0, :cond_0

    .line 3001
    const-string v1, "WifiAwareStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSessionTerminatedLocal: no session found for pubSubId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3002
    return-void

    .line 3006
    :cond_0
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    invoke-virtual {v1}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->getCallback()Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onSessionTerminated(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3010
    goto :goto_0

    .line 3007
    :catch_0
    move-exception v1

    .line 3008
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSessionTerminatedLocal onSessionTerminated(): RemoteException (FYI): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3011
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wifi/aware/WifiAwareClientState;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    invoke-virtual {v2}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->getSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/aware/WifiAwareClientState;->removeSession(I)V

    .line 3012
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    invoke-virtual {v2}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->getCreationTime()J

    move-result-wide v2

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    .line 3013
    invoke-virtual {v4}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->isPublishSession()Z

    move-result v4

    .line 3012
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordDiscoverySessionDuration(JZ)V

    .line 3014
    return-void
.end method

.method private publishLocal(SILandroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)Z
    .locals 7
    .param p1, "transactionId"    # S
    .param p2, "clientId"    # I
    .param p3, "publishConfig"    # Landroid/net/wifi/aware/PublishConfig;
    .param p4, "callback"    # Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    .line 2299
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareClientState;

    .line 2300
    .local v0, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2301
    const-string v2, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "publishLocal: no client exists for clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2302
    return v1

    .line 2305
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    invoke-virtual {v2, p1, v1, p3}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->publish(SBLandroid/net/wifi/aware/PublishConfig;)Z

    move-result v1

    .line 2306
    .local v1, "success":Z
    if-nez v1, :cond_1

    .line 2308
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {p4, v2}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onSessionConfigFail(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2311
    goto :goto_0

    .line 2309
    :catch_0
    move-exception v3

    .line 2310
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "WifiAwareStateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "publishLocal onSessionConfigFail(): RemoteException (FYI): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getUid()I

    move-result v4

    invoke-virtual {v3, v4, v2, v2}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordDiscoveryStatus(IIZ)V

    .line 2316
    :cond_1
    return v1
.end method

.method private reconfigureLocal(S)Z
    .locals 8
    .param p1, "transactionId"    # S

    .line 2261
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2263
    const/4 v0, 0x0

    return v0

    .line 2266
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->doesAnyClientNeedIdentityChangeNotifications()Z

    move-result v0

    .line 2268
    .local v0, "notificationReqs":Z
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mPowerManager:Landroid/os/PowerManager;

    .line 2269
    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v6

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mPowerManager:Landroid/os/PowerManager;

    .line 2270
    invoke-virtual {v2}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v7

    .line 2268
    move v2, p1

    move v4, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->enableAndConfigure(SLandroid/net/wifi/aware/ConfigRequest;ZZZZ)Z

    move-result v1

    return v1
.end method

.method private respondToDataPathRequestLocal(SZILjava/lang/String;[BLjava/lang/String;Z)Z
    .locals 10
    .param p1, "transactionId"    # S
    .param p2, "accept"    # Z
    .param p3, "ndpId"    # I
    .param p4, "interfaceName"    # Ljava/lang/String;
    .param p5, "pmk"    # [B
    .param p6, "passphrase"    # Ljava/lang/String;
    .param p7, "isOutOfBand"    # Z

    move-object v0, p0

    .line 2504
    iget-object v1, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    iget-object v9, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->respondToDataPathRequest(SZILjava/lang/String;[BLjava/lang/String;ZLcom/android/server/wifi/aware/Capabilities;)Z

    move-result v1

    .line 2506
    .local v1, "success":Z
    if-nez v1, :cond_0

    .line 2507
    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, p3

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->onRespondToDataPathRequest(IZI)V

    goto :goto_0

    .line 2509
    :cond_0
    move v5, p3

    :goto_0
    return v1
.end method

.method private sendAwareStateChangedBroadcast(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 2125
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.aware.action.WIFI_AWARE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2126
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2127
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2128
    return-void
.end method

.method private sendFollowonMessageLocal(SIII[BI)Z
    .locals 6
    .param p1, "transactionId"    # S
    .param p2, "clientId"    # I
    .param p3, "sessionId"    # I
    .param p4, "peerId"    # I
    .param p5, "message"    # [B
    .param p6, "messageId"    # I

    .line 2413
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareClientState;

    .line 2414
    .local v0, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2415
    const-string v2, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendFollowonMessageLocal: no client exists for clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    return v1

    .line 2419
    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getSession(I)Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    move-result-object v2

    .line 2420
    .local v2, "session":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    if-nez v2, :cond_1

    .line 2421
    const-string v3, "WifiAwareStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendFollowonMessageLocal: no session exists for clientId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", sessionId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2423
    return v1

    .line 2426
    :cond_1
    invoke-virtual {v2, p1, p4, p5, p6}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->sendMessage(SI[BI)Z

    move-result v1

    return v1
.end method

.method private subscribeLocal(SILandroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)Z
    .locals 8
    .param p1, "transactionId"    # S
    .param p2, "clientId"    # I
    .param p3, "subscribeConfig"    # Landroid/net/wifi/aware/SubscribeConfig;
    .param p4, "callback"    # Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    .line 2354
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareClientState;

    .line 2355
    .local v0, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2356
    const-string v2, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subscribeLocal: no client exists for clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    return v1

    .line 2360
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    invoke-virtual {v2, p1, v1, p3}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->subscribe(SBLandroid/net/wifi/aware/SubscribeConfig;)Z

    move-result v2

    .line 2361
    .local v2, "success":Z
    if-nez v2, :cond_1

    .line 2363
    const/4 v3, 0x1

    :try_start_0
    invoke-interface {p4, v3}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onSessionConfigFail(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2366
    goto :goto_0

    .line 2364
    :catch_0
    move-exception v4

    .line 2365
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "WifiAwareStateManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "subscribeLocal onSessionConfigFail(): RemoteException (FYI): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getUid()I

    move-result v5

    invoke-virtual {v4, v5, v3, v1}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordDiscoveryStatus(IIZ)V

    .line 2371
    :cond_1
    return v2
.end method

.method private terminateSessionLocal(II)V
    .locals 6
    .param p1, "clientId"    # I
    .param p2, "sessionId"    # I

    .line 2279
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareClientState;

    .line 2280
    .local v0, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    if-nez v0, :cond_0

    .line 2281
    const-string v1, "WifiAwareStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "terminateSession: no client exists for clientId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    return-void

    .line 2285
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/wifi/aware/WifiAwareClientState;->terminateSession(I)Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    move-result-object v1

    .line 2286
    .local v1, "session":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    if-eqz v1, :cond_1

    .line 2287
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v1}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->getCreationTime()J

    move-result-wide v3

    .line 2288
    invoke-virtual {v1}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->isPublishSession()Z

    move-result v5

    .line 2287
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordDiscoverySessionDuration(JZ)V

    .line 2290
    :cond_1
    return-void
.end method

.method private transmitNextMessage()V
    .locals 2

    .line 829
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 830
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x77

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 831
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 832
    return-void
.end method

.method private updatePublishLocal(SIILandroid/net/wifi/aware/PublishConfig;)Z
    .locals 6
    .param p1, "transactionId"    # S
    .param p2, "clientId"    # I
    .param p3, "sessionId"    # I
    .param p4, "publishConfig"    # Landroid/net/wifi/aware/PublishConfig;

    .line 2326
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareClientState;

    .line 2327
    .local v0, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2328
    const-string v2, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePublishLocal: no client exists for clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    return v1

    .line 2332
    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getSession(I)Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    move-result-object v2

    .line 2333
    .local v2, "session":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    if-nez v2, :cond_1

    .line 2334
    const-string v3, "WifiAwareStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePublishLocal: no session exists for clientId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", sessionId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    return v1

    .line 2339
    :cond_1
    invoke-virtual {v2, p1, p4}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->updatePublish(SLandroid/net/wifi/aware/PublishConfig;)Z

    move-result v1

    .line 2340
    .local v1, "status":Z
    if-nez v1, :cond_2

    .line 2341
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getUid()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5, v5}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordDiscoveryStatus(IIZ)V

    .line 2344
    :cond_2
    return v1
.end method

.method private updateSubscribeLocal(SIILandroid/net/wifi/aware/SubscribeConfig;)Z
    .locals 7
    .param p1, "transactionId"    # S
    .param p2, "clientId"    # I
    .param p3, "sessionId"    # I
    .param p4, "subscribeConfig"    # Landroid/net/wifi/aware/SubscribeConfig;

    .line 2383
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareClientState;

    .line 2384
    .local v0, "client":Lcom/android/server/wifi/aware/WifiAwareClientState;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2385
    const-string v2, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSubscribeLocal: no client exists for clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    return v1

    .line 2389
    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getSession(I)Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    move-result-object v2

    .line 2390
    .local v2, "session":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    if-nez v2, :cond_1

    .line 2391
    const-string v3, "WifiAwareStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSubscribeLocal: no session exists for clientId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", sessionId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2393
    return v1

    .line 2396
    :cond_1
    invoke-virtual {v2, p1, p4}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->updateSubscribe(SLandroid/net/wifi/aware/SubscribeConfig;)Z

    move-result v3

    .line 2397
    .local v3, "status":Z
    if-nez v3, :cond_2

    .line 2398
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareClientState;->getUid()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6, v1}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->recordDiscoveryStatus(IIZ)V

    .line 2401
    :cond_2
    return v3
.end method


# virtual methods
.method public connect(IIILjava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;Z)V
    .locals 3
    .param p1, "clientId"    # I
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callback"    # Landroid/net/wifi/aware/IWifiAwareEventCallback;
    .param p6, "configRequest"    # Landroid/net/wifi/aware/ConfigRequest;
    .param p7, "notifyOnIdentityChanged"    # Z

    .line 567
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 568
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 569
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 570
    iput-object p5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 571
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "config"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 572
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "uid"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 573
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "pid"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 574
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "calling_package"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "notify_identity_chg"

    invoke-virtual {v1, v2, p7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 577
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 578
    return-void
.end method

.method public createAllDataPathInterfaces()V
    .locals 2

    .line 740
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 741
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x70

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 742
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 743
    return-void
.end method

.method public createDataPathInterface(Ljava/lang/String;)V
    .locals 2
    .param p1, "interfaceName"    # Ljava/lang/String;

    .line 758
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 759
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x72

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 760
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 761
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 762
    return-void
.end method

.method public delayedInitialization()V
    .locals 2

    .line 536
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 537
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x79

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 538
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 539
    return-void
.end method

.method public deleteAllDataPathInterfaces()V
    .locals 2

    .line 749
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 750
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x71

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 751
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 752
    return-void
.end method

.method public deleteDataPathInterface(Ljava/lang/String;)V
    .locals 2
    .param p1, "interfaceName"    # Ljava/lang/String;

    .line 768
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 769
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x73

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 770
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 771
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 772
    return-void
.end method

.method public disableUsage()V
    .locals 2

    .line 711
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 712
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x6d

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 713
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 714
    return-void
.end method

.method public disconnect(I)V
    .locals 2
    .param p1, "clientId"    # I

    .line 585
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 586
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 587
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 588
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 589
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3203
    const-string v0, "AwareStateManager:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mClients: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUsageEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mUsageEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCapabilities: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentAwareConfiguration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentAwareConfiguration:Landroid/net/wifi/aware/ConfigRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentIdentityNotification: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCurrentIdentityNotification:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3209
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3210
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/aware/WifiAwareClientState;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareClientState;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3209
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3212
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSettableParameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSettableParameters:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3213
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3214
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3215
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3216
    const-string v0, "mAwareMetrics:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3217
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareMetrics;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3218
    return-void
.end method

.method public enableUsage()V
    .locals 2

    .line 689
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSettableParameters:Ljava/util/Map;

    const-string v1, "on_idle_disable_aware"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mPowerManager:Landroid/os/PowerManager;

    .line 690
    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 691
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiAwareStateManager"

    const-string v1, "enableUsage(): while device is in IDLE mode - ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_0
    return-void

    .line 694
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 695
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDbg:Z

    if-eqz v0, :cond_2

    const-string v0, "WifiAwareStateManager"

    const-string v1, "enableUsage(): while location is disabled - ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_2
    return-void

    .line 698
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    .line 699
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDbg:Z

    if-eqz v0, :cond_4

    const-string v0, "WifiAwareStateManager"

    const-string v1, "enableUsage(): while Wi-Fi is disabled - ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_4
    return-void

    .line 702
    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 703
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x6c

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 704
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 705
    return-void
.end method

.method public endDataPath(I)V
    .locals 2
    .param p1, "ndpId"    # I

    .line 814
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 815
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x76

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 816
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 817
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 818
    return-void
.end method

.method public getAwareInterface()V
    .locals 2

    .line 546
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 547
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x7a

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 548
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 549
    return-void
.end method

.method public getCapabilities()Lcom/android/server/wifi/aware/Capabilities;
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    return-object v0
.end method

.method public getCharacteristics()Landroid/net/wifi/aware/Characteristics;
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCharacteristics:Landroid/net/wifi/aware/Characteristics;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/Capabilities;->toPublicCharacteristics()Landroid/net/wifi/aware/Characteristics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCharacteristics:Landroid/net/wifi/aware/Characteristics;

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCharacteristics:Landroid/net/wifi/aware/Characteristics;

    return-object v0
.end method

.method getClient(I)Lcom/android/server/wifi/aware/WifiAwareClientState;
    .locals 1
    .param p1, "clientId"    # I

    .line 465
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareClientState;

    return-object v0
.end method

.method public initiateDataPathSetup(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;III[BLjava/lang/String;[BLjava/lang/String;Z)V
    .locals 3
    .param p1, "networkSpecifier"    # Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    .param p2, "peerId"    # I
    .param p3, "channelRequestType"    # I
    .param p4, "channel"    # I
    .param p5, "peer"    # [B
    .param p6, "interfaceName"    # Ljava/lang/String;
    .param p7, "pmk"    # [B
    .param p8, "passphrase"    # Ljava/lang/String;
    .param p9, "isOutOfBand"    # Z

    .line 780
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 781
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x74

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 782
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 783
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "peer_id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 784
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "channel_request_type"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 785
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "channel"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 786
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "mac_address"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 787
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "interface_name"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "pmk"

    invoke-virtual {v1, v2, p7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 789
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "passphrase"

    invoke-virtual {v1, v2, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "out_of_band"

    invoke-virtual {v1, v2, p9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 791
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 792
    return-void
.end method

.method public isUsageEnabled()Z
    .locals 1

    .line 724
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mUsageEnabled:Z

    return v0
.end method

.method public onAwareDownNotification(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 1091
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1092
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x132

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1093
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 1094
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1095
    return-void
.end method

.method public onCapabilitiesUpdateResponse(SLcom/android/server/wifi/aware/Capabilities;)V
    .locals 2
    .param p1, "transactionId"    # S
    .param p2, "capabilities"    # Lcom/android/server/wifi/aware/Capabilities;

    .line 927
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 928
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xce

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 929
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 930
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 931
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 932
    return-void
.end method

.method public onClusterChangeNotification(I[B)V
    .locals 2
    .param p1, "flag"    # I
    .param p2, "clusterId"    # [B

    .line 1033
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1034
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x12e

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1035
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 1036
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1037
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1038
    return-void
.end method

.method public onCommand(Landroid/os/ShellCommand;)I
    .locals 9
    .param p1, "parentShell"    # Landroid/os/ShellCommand;

    .line 258
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 259
    .local v0, "pw_err":Ljava/io/PrintWriter;
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 261
    .local v1, "pw_out":Ljava/io/PrintWriter;
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "subCmd":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x484afa01

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-eq v3, v4, :cond_3

    const v4, 0x18f56

    if-eq v3, v4, :cond_2

    const v4, 0x1bc62

    if-eq v3, v4, :cond_1

    const v4, 0x3f32f6b1

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "allow_ndp_any"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x3

    goto :goto_1

    :cond_1
    const-string v3, "set"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v6

    goto :goto_1

    :cond_2
    const-string v3, "get"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v5

    goto :goto_1

    :cond_3
    const-string v3, "get_capabilities"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    goto :goto_1

    :cond_4
    :goto_0
    move v3, v7

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 324
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 326
    .local v3, "flag":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    if-nez v4, :cond_5

    .line 327
    const-string v4, "Null Aware data-path manager - can\'t configure"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    return v7

    .line 330
    :cond_5
    const-string v4, "true"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 331
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    iput-boolean v5, v4, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mAllowNdpResponderFromAnyOverride:Z

    goto/16 :goto_3

    .line 332
    :cond_6
    const-string v4, "false"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 333
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    iput-boolean v6, v4, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mAllowNdpResponderFromAnyOverride:Z

    goto/16 :goto_3

    .line 335
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown configuration flag for \'allow_ndp_any\' - true|false expected -- \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    return v7

    .line 296
    .end local v3    # "flag":Ljava/lang/String;
    :pswitch_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 297
    .local v3, "j":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    if-eqz v4, :cond_8

    .line 299
    :try_start_0
    const-string v4, "maxConcurrentAwareClusters"

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    iget v5, v5, Lcom/android/server/wifi/aware/Capabilities;->maxConcurrentAwareClusters:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 301
    const-string v4, "maxPublishes"

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    iget v5, v5, Lcom/android/server/wifi/aware/Capabilities;->maxPublishes:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 302
    const-string v4, "maxSubscribes"

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    iget v5, v5, Lcom/android/server/wifi/aware/Capabilities;->maxSubscribes:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 303
    const-string v4, "maxServiceNameLen"

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    iget v5, v5, Lcom/android/server/wifi/aware/Capabilities;->maxServiceNameLen:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 304
    const-string v4, "maxMatchFilterLen"

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    iget v5, v5, Lcom/android/server/wifi/aware/Capabilities;->maxMatchFilterLen:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 305
    const-string v4, "maxTotalMatchFilterLen"

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    iget v5, v5, Lcom/android/server/wifi/aware/Capabilities;->maxTotalMatchFilterLen:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 306
    const-string v4, "maxServiceSpecificInfoLen"

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    iget v5, v5, Lcom/android/server/wifi/aware/Capabilities;->maxServiceSpecificInfoLen:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 307
    const-string v4, "maxExtendedServiceSpecificInfoLen"

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    iget v5, v5, Lcom/android/server/wifi/aware/Capabilities;->maxExtendedServiceSpecificInfoLen:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 309
    const-string v4, "maxNdiInterfaces"

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    iget v5, v5, Lcom/android/server/wifi/aware/Capabilities;->maxNdiInterfaces:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 310
    const-string v4, "maxNdpSessions"

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    iget v5, v5, Lcom/android/server/wifi/aware/Capabilities;->maxNdpSessions:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 311
    const-string v4, "maxAppInfoLen"

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    iget v5, v5, Lcom/android/server/wifi/aware/Capabilities;->maxAppInfoLen:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 312
    const-string v4, "maxQueuedTransmitMessages"

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    iget v5, v5, Lcom/android/server/wifi/aware/Capabilities;->maxQueuedTransmitMessages:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 313
    const-string v4, "maxSubscribeInterfaceAddresses"

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    iget v5, v5, Lcom/android/server/wifi/aware/Capabilities;->maxSubscribeInterfaceAddresses:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 315
    const-string v4, "supportedCipherSuites"

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mCapabilities:Lcom/android/server/wifi/aware/Capabilities;

    iget v5, v5, Lcom/android/server/wifi/aware/Capabilities;->supportedCipherSuites:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    goto :goto_2

    .line 316
    :catch_0
    move-exception v4

    .line 317
    .local v4, "e":Lorg/json/JSONException;
    const-string v5, "WifiAwareStateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCommand: get_capabilities e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .end local v4    # "e":Lorg/json/JSONException;
    :cond_8
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    return v6

    .line 285
    .end local v3    # "j":Lorg/json/JSONObject;
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 287
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSettableParameters:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 288
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown parameter name -- \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    return v7

    .line 292
    :cond_9
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSettableParameters:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 293
    return v6

    .line 265
    .end local v3    # "name":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 267
    .restart local v3    # "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSettableParameters:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 268
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown parameter name -- \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 269
    return v7

    .line 272
    :cond_a
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 276
    .local v4, "valueStr":Ljava/lang/String;
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 280
    .local v5, "value":I
    nop

    .line 279
    nop

    .line 281
    iget-object v7, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSettableParameters:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    return v6

    .line 277
    .end local v5    # "value":I
    :catch_1
    move-exception v5

    .line 278
    .local v5, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t convert value to integer -- \'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 279
    return v7

    .line 343
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "valueStr":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :goto_3
    const-string v3, "Unknown \'wifiaware state_mgr <cmd>\'"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 346
    return v7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigFailedResponse(SI)V
    .locals 2
    .param p1, "transactionId"    # S
    .param p2, "reason"    # I

    .line 854
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 855
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xc9

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 856
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 857
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 858
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 859
    return-void
.end method

.method public onConfigSuccessResponse(S)V
    .locals 2
    .param p1, "transactionId"    # S

    .line 843
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 844
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xc8

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 845
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 846
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 847
    return-void
.end method

.method public onCreateDataPathInterfaceResponse(SZI)V
    .locals 3
    .param p1, "transactionId"    # S
    .param p2, "success"    # Z
    .param p3, "reasonOnFailure"    # I

    .line 940
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 941
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xcf

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 942
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 943
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "success_flag"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 944
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "status_code"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 945
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 946
    return-void
.end method

.method public onDataPathConfirmNotification(I[BZI[BLjava/util/List;)V
    .locals 3
    .param p1, "ndpId"    # I
    .param p2, "mac"    # [B
    .param p3, "accept"    # Z
    .param p4, "reason"    # I
    .param p5, "message"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BZI[B",
            "Ljava/util/List<",
            "Landroid/hardware/wifi/V1_2/NanDataPathChannelInfo;",
            ">;)V"
        }
    .end annotation

    .line 1137
    .local p6, "channelInfo":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/wifi/V1_2/NanDataPathChannelInfo;>;"
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1138
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x136

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1139
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 1140
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "mac_address"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1141
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "success_flag"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1142
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "status_code"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1143
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "message_data"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1144
    iput-object p6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1145
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1146
    return-void
.end method

.method public onDataPathEndNotification(I)V
    .locals 2
    .param p1, "ndpId"    # I

    .line 1153
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1154
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x137

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1155
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 1156
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1157
    return-void
.end method

.method public onDataPathRequestNotification(I[BI)V
    .locals 3
    .param p1, "pubSubId"    # I
    .param p2, "mac"    # [B
    .param p3, "ndpId"    # I

    .line 1123
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1124
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x135

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1125
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 1126
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1127
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "mac_address"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1128
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1129
    return-void
.end method

.method public onDataPathScheduleUpdateNotification([BLjava/util/ArrayList;Ljava/util/List;)V
    .locals 3
    .param p1, "peerMac"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/wifi/V1_2/NanDataPathChannelInfo;",
            ">;)V"
        }
    .end annotation

    .line 1165
    .local p2, "ndpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p3, "channelInfo":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/wifi/V1_2/NanDataPathChannelInfo;>;"
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1166
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x138

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1167
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "mac_address"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1168
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ndp_ids"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1169
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1170
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1171
    return-void
.end method

.method public onDeleteDataPathInterfaceResponse(SZI)V
    .locals 3
    .param p1, "transactionId"    # S
    .param p2, "success"    # Z
    .param p3, "reasonOnFailure"    # I

    .line 954
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 955
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xd0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 956
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 957
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "success_flag"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 958
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "status_code"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 959
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 960
    return-void
.end method

.method public onDisableResponse(SI)V
    .locals 2
    .param p1, "transactionId"    # S
    .param p2, "reason"    # I

    .line 866
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 867
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xd5

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 868
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 869
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 870
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 871
    return-void
.end method

.method public onEndDataPathResponse(SZI)V
    .locals 3
    .param p1, "transactionId"    # S
    .param p2, "success"    # Z
    .param p3, "reasonOnFailure"    # I

    .line 1004
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1005
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xd4

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1006
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 1007
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "success_flag"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1008
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "status_code"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1009
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1010
    return-void
.end method

.method public onHelp(Ljava/lang/String;Landroid/os/ShellCommand;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "parentShell"    # Landroid/os/ShellCommand;

    .line 359
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 361
    .local v0, "pw":Ljava/io/PrintWriter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    set <name> <value>: sets named parameter to value. Names: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSettableParameters:Ljava/util/Map;

    .line 363
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    get <name>: gets named parameter value. Names: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSettableParameters:Ljava/util/Map;

    .line 365
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 366
    const-string v1, "    get_capabilities: prints out the capabilities as a JSON string"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    const-string v1, "    allow_ndp_any true|false: configure whether Responders can be specified to accept requests from ANY requestor (null peer spec)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method public onInitiateDataPathResponseFail(SI)V
    .locals 2
    .param p1, "transactionId"    # S
    .param p2, "reason"    # I

    .line 979
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 980
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xd2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 981
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 982
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 983
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 984
    return-void
.end method

.method public onInitiateDataPathResponseSuccess(SI)V
    .locals 2
    .param p1, "transactionId"    # S
    .param p2, "ndpId"    # I

    .line 967
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 968
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xd1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 969
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 970
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 971
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 972
    return-void
.end method

.method public onInterfaceAddressChangeNotification([B)V
    .locals 2
    .param p1, "mac"    # [B

    .line 1021
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1022
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x12d

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1023
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1024
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1025
    return-void
.end method

.method public onMatchNotification(II[B[B[BII)V
    .locals 3
    .param p1, "pubSubId"    # I
    .param p2, "requestorInstanceId"    # I
    .param p3, "peerMac"    # [B
    .param p4, "serviceSpecificInfo"    # [B
    .param p5, "matchFilter"    # [B
    .param p6, "rangingIndication"    # I
    .param p7, "rangeMm"    # I

    .line 1047
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1048
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x12f

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1049
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 1050
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "req_instance_id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1051
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "mac_address"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1052
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ssi_data"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1053
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "filter_data"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1054
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ranging_indication"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1055
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "range_mm"

    invoke-virtual {v1, v2, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1056
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1057
    return-void
.end method

.method public onMessageReceivedNotification(II[B[B)V
    .locals 3
    .param p1, "pubSubId"    # I
    .param p2, "requestorInstanceId"    # I
    .param p3, "peerMac"    # [B
    .param p4, "message"    # [B

    .line 1078
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1079
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x131

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1080
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 1081
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1082
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "mac_address"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1083
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "message_data"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1084
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1085
    return-void
.end method

.method public onMessageSendFailNotification(SI)V
    .locals 2
    .param p1, "transactionId"    # S
    .param p2, "reason"    # I

    .line 1112
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1113
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x134

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1114
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 1115
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1116
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1117
    return-void
.end method

.method public onMessageSendQueuedFailResponse(SI)V
    .locals 2
    .param p1, "transactionId"    # S
    .param p2, "reason"    # I

    .line 914
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 915
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xcd

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 916
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 917
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 918
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 919
    return-void
.end method

.method public onMessageSendQueuedSuccessResponse(S)V
    .locals 2
    .param p1, "transactionId"    # S

    .line 904
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 905
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xcc

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 906
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 907
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 908
    return-void
.end method

.method public onMessageSendSuccessNotification(S)V
    .locals 2
    .param p1, "transactionId"    # S

    .line 1101
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1102
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x133

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1103
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 1104
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1105
    return-void
.end method

.method public onReset()V
    .locals 3

    .line 351
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSettableParameters:Ljava/util/Map;

    const-string v1, "on_idle_disable_aware"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mAllowNdpResponderFromAnyOverride:Z

    .line 355
    :cond_0
    return-void
.end method

.method public onRespondToDataPathSetupRequestResponse(SZI)V
    .locals 3
    .param p1, "transactionId"    # S
    .param p2, "success"    # Z
    .param p3, "reasonOnFailure"    # I

    .line 992
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 993
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xd3

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 994
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 995
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "success_flag"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 996
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "status_code"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 997
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 998
    return-void
.end method

.method public onSessionConfigFailResponse(SZI)V
    .locals 3
    .param p1, "transactionId"    # S
    .param p2, "isPublish"    # Z
    .param p3, "reason"    # I

    .line 892
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 893
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xcb

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 894
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 895
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 896
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "session_type"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 897
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 898
    return-void
.end method

.method public onSessionConfigSuccessResponse(SZB)V
    .locals 3
    .param p1, "transactionId"    # S
    .param p2, "isPublish"    # Z
    .param p3, "pubSubId"    # B

    .line 879
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 880
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xca

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 881
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 882
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 883
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "session_type"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 884
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 885
    return-void
.end method

.method public onSessionTerminatedNotification(IIZ)V
    .locals 3
    .param p1, "pubSubId"    # I
    .param p2, "reason"    # I
    .param p3, "isPublish"    # Z

    .line 1064
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1065
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x130

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1066
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 1067
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1068
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "session_type"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1069
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1070
    return-void
.end method

.method public publish(ILandroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)V
    .locals 3
    .param p1, "clientId"    # I
    .param p2, "publishConfig"    # Landroid/net/wifi/aware/PublishConfig;
    .param p3, "callback"    # Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    .line 619
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 620
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x67

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 621
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 622
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 623
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "config"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 624
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 625
    return-void
.end method

.method public queryCapabilities()V
    .locals 2

    .line 731
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 732
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x6f

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 733
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 734
    return-void
.end method

.method public reconfigure()V
    .locals 2

    .line 597
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 598
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x78

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 599
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 600
    return-void
.end method

.method public releaseAwareInterface()V
    .locals 2

    .line 556
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 557
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x7b

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 558
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 559
    return-void
.end method

.method public requestMacAddresses(ILjava/util/List;Landroid/net/wifi/aware/IWifiAwareMacAddressProvider;)V
    .locals 2
    .param p1, "uid"    # I
    .param p3, "callback"    # Landroid/net/wifi/aware/IWifiAwareMacAddressProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/net/wifi/aware/IWifiAwareMacAddressProvider;",
            ")V"
        }
    .end annotation

    .line 495
    .local p2, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wifi/aware/-$$Lambda$WifiAwareStateManager$k1e2sgI9ioQdd4UFKxciMG2eSr4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/wifi/aware/-$$Lambda$WifiAwareStateManager$k1e2sgI9ioQdd4UFKxciMG2eSr4;-><init>(Lcom/android/server/wifi/aware/WifiAwareStateManager;ILjava/util/List;Landroid/net/wifi/aware/IWifiAwareMacAddressProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 526
    return-void
.end method

.method public respondToDataPathRequest(ZILjava/lang/String;[BLjava/lang/String;Z)V
    .locals 3
    .param p1, "accept"    # Z
    .param p2, "ndpId"    # I
    .param p3, "interfaceName"    # Ljava/lang/String;
    .param p4, "pmk"    # [B
    .param p5, "passphrase"    # Ljava/lang/String;
    .param p6, "isOutOfBand"    # Z

    .line 799
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 800
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x75

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 801
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 802
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 803
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "interface_name"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "pmk"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 805
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "passphrase"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "out_of_band"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 807
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 808
    return-void
.end method

.method public sendMessage(III[BII)V
    .locals 3
    .param p1, "clientId"    # I
    .param p2, "sessionId"    # I
    .param p3, "peerId"    # I
    .param p4, "message"    # [B
    .param p5, "messageId"    # I
    .param p6, "retryCount"    # I

    .line 673
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 674
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x6b

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 675
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 676
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "session_id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 677
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "message_peer_id"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 678
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 679
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "message_id"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 680
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "retry_count"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 681
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 682
    return-void
.end method

.method public setNative(Lcom/android/server/wifi/aware/WifiAwareNativeManager;Lcom/android/server/wifi/aware/WifiAwareNativeApi;)V
    .locals 0
    .param p1, "wifiAwareNativeManager"    # Lcom/android/server/wifi/aware/WifiAwareNativeManager;
    .param p2, "wifiAwareNativeApi"    # Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    .line 239
    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeManager:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    .line 240
    iput-object p2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    .line 241
    return-void
.end method

.method public start(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/aware/WifiAwareMetrics;Lcom/android/server/wifi/util/WifiPermissionsUtil;Lcom/android/server/wifi/util/WifiPermissionsWrapper;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "awareMetrics"    # Lcom/android/server/wifi/aware/WifiAwareMetrics;
    .param p4, "wifiPermissionsUtil"    # Lcom/android/server/wifi/util/WifiPermissionsUtil;
    .param p5, "permissionsWrapper"    # Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    .line 380
    const-string v0, "WifiAwareStateManager"

    const-string v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mContext:Landroid/content/Context;

    .line 383
    iput-object p3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mAwareMetrics:Lcom/android/server/wifi/aware/WifiAwareMetrics;

    .line 384
    new-instance v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const-string v1, "WifiAwareStateManager"

    invoke-direct {v0, p0, v1, p2}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;-><init>(Lcom/android/server/wifi/aware/WifiAwareStateManager;Ljava/lang/String;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    .line 385
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->setDbg(Z)V

    .line 386
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->start()V

    .line 388
    new-instance v0, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;-><init>(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    .line 389
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->start(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/aware/WifiAwareMetrics;Lcom/android/server/wifi/util/WifiPermissionsUtil;Lcom/android/server/wifi/util/WifiPermissionsWrapper;)V

    .line 392
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mPowerManager:Landroid/os/PowerManager;

    .line 393
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mLocationManager:Landroid/location/LocationManager;

    .line 394
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 396
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 397
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 398
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 400
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/aware/WifiAwareStateManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$1;-><init>(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 424
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    .line 425
    const-string v1, "android.location.MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 426
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/aware/WifiAwareStateManager$2;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$2;-><init>(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 438
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    .line 439
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 440
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/aware/WifiAwareStateManager$3;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$3;-><init>(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 452
    return-void
.end method

.method public startLate()V
    .locals 0

    .line 458
    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->delayedInitialization()V

    .line 459
    return-void
.end method

.method public subscribe(ILandroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)V
    .locals 3
    .param p1, "clientId"    # I
    .param p2, "subscribeConfig"    # Landroid/net/wifi/aware/SubscribeConfig;
    .param p3, "callback"    # Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    .line 646
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 647
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x69

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 648
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 649
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 650
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "config"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 651
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 652
    return-void
.end method

.method public terminateSession(II)V
    .locals 2
    .param p1, "clientId"    # I
    .param p2, "sessionId"    # I

    .line 606
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 607
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x66

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 608
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 609
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 610
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 611
    return-void
.end method

.method public updatePublish(IILandroid/net/wifi/aware/PublishConfig;)V
    .locals 3
    .param p1, "clientId"    # I
    .param p2, "sessionId"    # I
    .param p3, "publishConfig"    # Landroid/net/wifi/aware/PublishConfig;

    .line 632
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 633
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x68

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 634
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 635
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 636
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "session_id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 637
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 638
    return-void
.end method

.method public updateSubscribe(IILandroid/net/wifi/aware/SubscribeConfig;)V
    .locals 3
    .param p1, "clientId"    # I
    .param p2, "sessionId"    # I
    .param p3, "subscribeConfig"    # Landroid/net/wifi/aware/SubscribeConfig;

    .line 659
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 660
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x6a

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 661
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 662
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 663
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "session_id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 664
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mSm:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 665
    return-void
.end method
