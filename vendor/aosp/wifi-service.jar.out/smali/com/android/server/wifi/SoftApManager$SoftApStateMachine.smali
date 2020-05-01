.class Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "SoftApManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SoftApManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoftApStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;,
        Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;
    }
.end annotation


# static fields
.field public static final CMD_CONNECTED_STATIONS:I = 0xa

.field public static final CMD_DISCONNECTED_STATIONS:I = 0xb

.field public static final CMD_INTERFACE_DESTROYED:I = 0x7

.field public static final CMD_INTERFACE_DOWN:I = 0x8

.field public static final CMD_INTERFACE_STATUS_CHANGED:I = 0x3

.field public static final CMD_NO_ASSOCIATED_STATIONS_TIMEOUT:I = 0x5

.field public static final CMD_NUM_ASSOCIATED_STATIONS_CHANGED:I = 0x4

.field public static final CMD_SOFTAP_CLIENT_CONNECT_STATUS_CHANGED:I = 0xc

.field public static final CMD_SOFT_AP_CHANNEL_SWITCHED:I = 0x9

.field public static final CMD_START:I = 0x0

.field public static final CMD_TIMEOUT_TOGGLE_CHANGED:I = 0x6


# instance fields
.field private final mIdleState:Lcom/android/internal/util/State;

.field private mInterfaceEventHandler:Lcom/android/server/wifi/SoftApManager$InterfaceEventHandler;

.field private final mStartedState:Lcom/android/internal/util/State;

.field private mWifiInjector:Lcom/android/server/wifi/WifiInjector;

.field private final mWifiNativeDualIfaceCallback:Lcom/android/server/wifi/WifiNative$InterfaceCallback;

.field private final mWifiNativeInterfaceCallback:Lcom/android/server/wifi/WifiNative$InterfaceCallback;

.field private mWificond:Landroid/net/wifi/IWificond;

.field final synthetic this$0:Lcom/android/server/wifi/SoftApManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SoftApManager;Landroid/os/Looper;Lcom/android/server/wifi/WifiInjector;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "wifiInjector"    # Lcom/android/server/wifi/WifiInjector;

    .line 544
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 546
    const-string p1, "SoftApManager"

    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 437
    new-instance p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;-><init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/server/wifi/SoftApManager$1;)V

    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mIdleState:Lcom/android/internal/util/State;

    .line 438
    new-instance p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;

    invoke-direct {p1, p0, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;-><init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/server/wifi/SoftApManager$1;)V

    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mStartedState:Lcom/android/internal/util/State;

    .line 446
    new-instance p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$1;

    invoke-direct {p1, p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$1;-><init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)V

    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mWifiNativeInterfaceCallback:Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    .line 469
    new-instance p1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$2;

    invoke-direct {p1, p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$2;-><init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)V

    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mWifiNativeDualIfaceCallback:Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    .line 548
    iput-object p3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    .line 549
    new-instance p1, Lcom/android/server/wifi/SoftApManager$InterfaceEventHandler;

    invoke-direct {p1, p0}, Lcom/android/server/wifi/SoftApManager$InterfaceEventHandler;-><init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)V

    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mInterfaceEventHandler:Lcom/android/server/wifi/SoftApManager$InterfaceEventHandler;

    .line 552
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mIdleState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 553
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 555
    iget-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mIdleState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 556
    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->start()V

    .line 557
    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .line 420
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->setupForDualSoftApMode(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    .line 420
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mStartedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/server/wifi/WifiNative$InterfaceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    .line 420
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mWifiNativeInterfaceCallback:Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Landroid/net/wifi/IWificond;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    .line 420
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mWificond:Landroid/net/wifi/IWificond;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Landroid/net/wifi/IWificond;)Landroid/net/wifi/IWificond;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/IWificond;

    .line 420
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mWificond:Landroid/net/wifi/IWificond;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/server/wifi/WifiInjector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    .line 420
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/server/wifi/SoftApManager$InterfaceEventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    .line 420
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mInterfaceEventHandler:Lcom/android/server/wifi/SoftApManager$InterfaceEventHandler;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/server/wifi/SoftApManager$InterfaceEventHandler;)Lcom/android/server/wifi/SoftApManager$InterfaceEventHandler;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;
    .param p1, "x1"    # Lcom/android/server/wifi/SoftApManager$InterfaceEventHandler;

    .line 420
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mInterfaceEventHandler:Lcom/android/server/wifi/SoftApManager$InterfaceEventHandler;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    .line 420
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mIdleState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method private setupForDualSoftApMode(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 9
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 484
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$400(Lcom/android/server/wifi/SoftApManager;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$500(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mWifiNativeDualIfaceCallback:Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setupInterfaceForSoftApMode(Lcom/android/server/wifi/WifiNative$InterfaceCallback;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 486
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$400(Lcom/android/server/wifi/SoftApManager;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$500(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mWifiNativeDualIfaceCallback:Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/WifiNative;->setupInterfaceForSoftApMode(Lcom/android/server/wifi/WifiNative$InterfaceCallback;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 489
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApManager;->access$500(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mWifiNativeInterfaceCallback:Lcom/android/server/wifi/WifiNative$InterfaceCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setupInterfaceForBridgeMode(Lcom/android/server/wifi/WifiNative$InterfaceCallback;)Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, "bridgeIfacename":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1, v0}, Lcom/android/server/wifi/SoftApManager;->access$602(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;)Ljava/lang/String;

    .line 493
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$400(Lcom/android/server/wifi/SoftApManager;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v4, 0xe

    const/16 v5, 0xb

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 494
    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$400(Lcom/android/server/wifi/SoftApManager;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    .line 495
    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$600(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 504
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v6, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v6}, Lcom/android/server/wifi/SoftApManager;->access$500(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiNative;->getFstDataInterfaceName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/server/wifi/SoftApManager;->access$302(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;)Ljava/lang/String;

    .line 505
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$300(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 506
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v6, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v6}, Lcom/android/server/wifi/SoftApManager;->access$600(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/server/wifi/SoftApManager;->access$302(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;)Ljava/lang/String;

    .line 508
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/16 v6, 0xc

    invoke-static {v1, v6, v5, v2}, Lcom/android/server/wifi/SoftApManager;->access$700(Lcom/android/server/wifi/SoftApManager;III)V

    .line 511
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, p1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 512
    .local v1, "localConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v7, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v7}, Lcom/android/server/wifi/SoftApManager;->access$400(Lcom/android/server/wifi/SoftApManager;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-static {v5, v7}, Lcom/android/server/wifi/SoftApManager;->access$602(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;)Ljava/lang/String;

    .line 513
    iput v2, v1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 514
    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v5, v1}, Lcom/android/server/wifi/SoftApManager;->access$900(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    .line 515
    .local v5, "result":I
    if-nez v5, :cond_2

    .line 516
    iput v3, v1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 517
    iget-object v7, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v8, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v8}, Lcom/android/server/wifi/SoftApManager;->access$400(Lcom/android/server/wifi/SoftApManager;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v3

    invoke-static {v7, v8}, Lcom/android/server/wifi/SoftApManager;->access$602(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;)Ljava/lang/String;

    .line 518
    iget-object v7, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v7, v1}, Lcom/android/server/wifi/SoftApManager;->access$900(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    .line 521
    :cond_2
    iget-object v7, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v7, v0}, Lcom/android/server/wifi/SoftApManager;->access$602(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;)Ljava/lang/String;

    .line 522
    if-eqz v5, :cond_4

    .line 523
    const/4 v7, 0x0

    .line 524
    .local v7, "failureReason":I
    if-ne v5, v3, :cond_3

    .line 525
    const/4 v7, 0x1

    .line 527
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v3, v4, v6, v7}, Lcom/android/server/wifi/SoftApManager;->access$700(Lcom/android/server/wifi/SoftApManager;III)V

    .line 530
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->access$1000(Lcom/android/server/wifi/SoftApManager;)V

    .line 531
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager;->access$800(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v3

    invoke-virtual {v3, v2, v7}, Lcom/android/server/wifi/WifiMetrics;->incrementSoftApStartResult(ZI)V

    .line 532
    return v2

    .line 534
    .end local v7    # "failureReason":I
    :cond_4
    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApManager;->access$500(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiNative;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "softap bridge up "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v7}, Lcom/android/server/wifi/SoftApManager;->access$600(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/wifi/WifiNative;->setHostapdParams(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 535
    const-string v3, "SoftApManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to set interface up "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v6}, Lcom/android/server/wifi/SoftApManager;->access$600(Lcom/android/server/wifi/SoftApManager;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    return v2

    .line 539
    :cond_5
    return v3

    .line 496
    .end local v1    # "localConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "result":I
    :cond_6
    :goto_0
    const-string v1, "SoftApManager"

    const-string v3, "setup failure when creating dual ap interface(s)."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1, v4, v5, v2}, Lcom/android/server/wifi/SoftApManager;->access$700(Lcom/android/server/wifi/SoftApManager;III)V

    .line 500
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->access$800(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lcom/android/server/wifi/WifiMetrics;->incrementSoftApStartResult(ZI)V

    .line 502
    return v2
.end method
