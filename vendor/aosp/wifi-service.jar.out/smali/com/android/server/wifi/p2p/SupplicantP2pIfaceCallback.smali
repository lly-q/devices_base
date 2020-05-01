.class public Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;
.super Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;
.source "SupplicantP2pIfaceCallback.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "SupplicantP2pIfaceCallback"


# instance fields
.field private final mInterface:Ljava/lang/String;

.field private final mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/wifi/p2p/WifiP2pMonitor;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "monitor"    # Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    .line 47
    invoke-direct {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    .line 50
    return-void
.end method

.method private createStaEventDevice([B[B)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 5
    .param p1, "srcAddress"    # [B
    .param p2, "p2pDeviceAddress"    # [B

    .line 458
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 462
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    sget-object v1, Lcom/android/server/wifi/util/NativeUtil;->ANY_MAC_BYTES:[B

    invoke-static {v1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 463
    move-object v1, p2

    .local v1, "deviceAddressBytes":[B
    goto :goto_0

    .line 465
    .end local v1    # "deviceAddressBytes":[B
    :cond_0
    move-object v1, p1

    .line 468
    .restart local v1    # "deviceAddressBytes":[B
    :goto_0
    :try_start_0
    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    nop

    .line 473
    return-object v0

    .line 469
    :catch_0
    move-exception v2

    .line 470
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SupplicantP2pIfaceCallback"

    const-string v4, "Could not decode MAC address"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 471
    const/4 v3, 0x0

    return-object v3
.end method

.method private static halStatusToP2pStatus(I)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    .locals 1
    .param p0, "status"    # I

    .line 509
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 511
    .local v0, "result":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 558
    :pswitch_0
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->REJECTED_BY_USER:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    goto :goto_0

    .line 554
    :pswitch_1
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INCOMPATIBLE_PROVISIONING_METHOD:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 555
    goto :goto_0

    .line 550
    :pswitch_2
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->BOTH_GO_INTENT_15:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 551
    goto :goto_0

    .line 546
    :pswitch_3
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN_P2P_GROUP:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 547
    goto :goto_0

    .line 542
    :pswitch_4
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->NO_COMMON_CHANNEL:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 543
    goto :goto_0

    .line 538
    :pswitch_5
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->PREVIOUS_PROTOCOL_ERROR:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 539
    goto :goto_0

    .line 534
    :pswitch_6
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNABLE_TO_ACCOMMODATE_REQUEST:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 535
    goto :goto_0

    .line 530
    :pswitch_7
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INVALID_PARAMETER:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 531
    goto :goto_0

    .line 526
    :pswitch_8
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->LIMIT_REACHED:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 527
    goto :goto_0

    .line 522
    :pswitch_9
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INCOMPATIBLE_PARAMETERS:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 523
    goto :goto_0

    .line 518
    :pswitch_a
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INFORMATION_IS_CURRENTLY_UNAVAILABLE:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 519
    goto :goto_0

    .line 514
    :pswitch_b
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->SUCCESS:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 515
    nop

    .line 561
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method protected static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 54
    const-string v0, "SupplicantP2pIfaceCallback"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method


# virtual methods
.method public onDeviceFound([B[B[BLjava/lang/String;SBI[B)V
    .locals 6
    .param p1, "srcAddress"    # [B
    .param p2, "p2pDeviceAddress"    # [B
    .param p3, "primaryDeviceType"    # [B
    .param p4, "deviceName"    # Ljava/lang/String;
    .param p5, "configMethods"    # S
    .param p6, "deviceCapabilities"    # B
    .param p7, "groupCapabilities"    # I
    .param p8, "wfdDeviceInfo"    # [B

    .line 96
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 97
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    iput-object p4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 98
    if-nez p4, :cond_0

    .line 99
    const-string v1, "SupplicantP2pIfaceCallback"

    const-string v2, "Missing device name."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void

    .line 104
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 108
    nop

    .line 111
    :try_start_1
    invoke-static {p3}, Lcom/android/server/wifi/util/NativeUtil;->wpsDevTypeStringFromByteArray([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 115
    nop

    .line 117
    iput p6, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    .line 118
    iput p7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    .line 119
    iput p5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    .line 120
    const/4 v1, 0x3

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 122
    if-eqz p8, :cond_1

    array-length v2, p8

    const/4 v3, 0x6

    if-lt v2, v3, :cond_1

    .line 123
    new-instance v2, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    const/4 v3, 0x0

    aget-byte v3, p8, v3

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x1

    aget-byte v4, p8, v4

    add-int/2addr v3, v4

    const/4 v4, 0x2

    aget-byte v4, p8, v4

    shl-int/lit8 v4, v4, 0x8

    aget-byte v1, p8, v1

    add-int/2addr v4, v1

    const/4 v1, 0x4

    aget-byte v1, p8, v1

    shl-int/lit8 v1, v1, 0x8

    const/4 v5, 0x5

    aget-byte v5, p8, v5

    add-int/2addr v1, v5

    invoke-direct {v2, v3, v4, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>(III)V

    iput-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 129
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device discovered on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->logd(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pDeviceFound(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 131
    return-void

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SupplicantP2pIfaceCallback"

    const-string v3, "Could not encode device primary type."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    return-void

    .line 105
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 106
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v2, "SupplicantP2pIfaceCallback"

    const-string v3, "Could not decode device address."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    return-void
.end method

.method public onDeviceLost([B)V
    .locals 4
    .param p1, "p2pDeviceAddress"    # [B

    .line 139
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 142
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    nop

    .line 148
    const/4 v1, 0x4

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device lost on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->logd(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pDeviceLost(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 152
    return-void

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SupplicantP2pIfaceCallback"

    const-string v3, "Could not decode device address."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    return-void
.end method

.method public onFindStopped()V
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Search stopped on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->logd(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pFindStopped(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public onGoNegotiationCompleted(I)V
    .locals 3
    .param p1, "status"    # I

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Group Owner negotiation completed with status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->logd(Ljava/lang/String;)V

    .line 213
    invoke-static {p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->halStatusToP2pStatus(I)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    move-result-object v0

    .line 215
    .local v0, "result":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->SUCCESS:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    if-ne v0, v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pGoNegotiationSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pGoNegotiationFailure(Ljava/lang/String;Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;)V

    .line 220
    :goto_0
    return-void
.end method

.method public onGoNegotiationRequest([BS)V
    .locals 4
    .param p1, "srcAddress"    # [B
    .param p2, "passwordId"    # S

    .line 172
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 175
    .local v0, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    nop

    .line 181
    new-instance v1, Landroid/net/wifi/WpsInfo;

    invoke-direct {v1}, Landroid/net/wifi/WpsInfo;-><init>()V

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 183
    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    .line 197
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v1, v2, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 193
    :pswitch_0
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x2

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 194
    goto :goto_0

    .line 189
    :pswitch_1
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v1, v2, Landroid/net/wifi/WpsInfo;->setup:I

    .line 190
    goto :goto_0

    .line 185
    :cond_0
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v1, v2, Landroid/net/wifi/WpsInfo;->setup:I

    .line 186
    nop

    .line 201
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Group Owner negotiation initiated on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->logd(Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pGoNegotiationRequest(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pConfig;)V

    .line 203
    return-void

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SupplicantP2pIfaceCallback"

    const-string v3, "Could not decode device address."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onGroupFormationFailure(Ljava/lang/String;)V
    .locals 2
    .param p1, "failureReason"    # Ljava/lang/String;

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Group formation failed on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->logd(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pGroupFormationFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public onGroupFormationSuccess()V
    .locals 2

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Group formation successful on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->logd(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pGroupFormationSuccess(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public onGroupRemoved(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "groupIfName"    # Ljava/lang/String;
    .param p2, "isGo"    # Z

    .line 307
    if-nez p1, :cond_0

    .line 308
    const-string v0, "SupplicantP2pIfaceCallback"

    const-string v1, "Missing group name."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-void

    .line 312
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Group "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " removed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->logd(Ljava/lang/String;)V

    .line 313
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>()V

    .line 314
    .local v0, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0, p2}, Landroid/net/wifi/p2p/WifiP2pGroup;->setIsGroupOwner(Z)V

    .line 316
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pGroupRemoved(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 317
    return-void
.end method

.method public onGroupStarted(Ljava/lang/String;ZLjava/util/ArrayList;I[BLjava/lang/String;[BZ)V
    .locals 5
    .param p1, "groupIfName"    # Ljava/lang/String;
    .param p2, "isGo"    # Z
    .param p4, "frequency"    # I
    .param p5, "psk"    # [B
    .param p6, "passphrase"    # Ljava/lang/String;
    .param p7, "goDeviceAddress"    # [B
    .param p8, "isPersistent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;I[B",
            "Ljava/lang/String;",
            "[BZ)V"
        }
    .end annotation

    .line 259
    .local p3, "ssid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    if-nez p1, :cond_0

    .line 260
    const-string v0, "SupplicantP2pIfaceCallback"

    const-string v1, "Missing group interface name."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-void

    .line 264
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Group "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " started on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->logd(Ljava/lang/String;)V

    .line 266
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>()V

    .line 267
    .local v0, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setInterface(Ljava/lang/String;)V

    .line 270
    :try_start_0
    invoke-static {p3}, Lcom/android/server/wifi/util/NativeUtil;->encodeSsid(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "quotedSsid":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->removeEnclosingQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 275
    .end local v1    # "quotedSsid":Ljava/lang/String;
    nop

    .line 277
    invoke-virtual {v0, p2}, Landroid/net/wifi/p2p/WifiP2pGroup;->setIsGroupOwner(Z)V

    .line 278
    invoke-virtual {v0, p6}, Landroid/net/wifi/p2p/WifiP2pGroup;->setPassphrase(Ljava/lang/String;)V

    .line 280
    if-eqz p8, :cond_1

    .line 281
    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkId(I)V

    goto :goto_0

    .line 283
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkId(I)V

    .line 286
    :goto_0
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 289
    .local v1, "owner":Landroid/net/wifi/p2p/WifiP2pDevice;
    :try_start_1
    invoke-static {p7}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 293
    nop

    .line 295
    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setOwner(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 296
    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pGroupStarted(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 297
    return-void

    .line 290
    :catch_0
    move-exception v2

    .line 291
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SupplicantP2pIfaceCallback"

    const-string v4, "Could not decode Group Owner address."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    return-void

    .line 272
    .end local v1    # "owner":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 273
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SupplicantP2pIfaceCallback"

    const-string v3, "Could not encode SSID."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    return-void
.end method

.method public onInvitationReceived([B[B[BII)V
    .locals 6
    .param p1, "srcAddress"    # [B
    .param p2, "goDeviceAddress"    # [B
    .param p3, "bssid"    # [B
    .param p4, "persistentNetworkId"    # I
    .param p5, "operatingFrequency"    # I

    .line 331
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>()V

    .line 332
    .local v0, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v0, p4}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkId(I)V

    .line 334
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 337
    .local v1, "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 341
    nop

    .line 343
    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->addClient(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 345
    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 348
    .local v2, "owner":Landroid/net/wifi/p2p/WifiP2pDevice;
    :try_start_1
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 352
    nop

    .line 354
    invoke-virtual {v0, v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->setOwner(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 356
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invitation received on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->logd(Ljava/lang/String;)V

    .line 357
    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pInvitationReceived(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 358
    return-void

    .line 349
    :catch_0
    move-exception v3

    .line 350
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "SupplicantP2pIfaceCallback"

    const-string v5, "Could not decode Group Owner MAC address."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 351
    return-void

    .line 338
    .end local v2    # "owner":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 339
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SupplicantP2pIfaceCallback"

    const-string v4, "Could not decode MAC address."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    return-void
.end method

.method public onInvitationResult([BI)V
    .locals 3
    .param p1, "bssid"    # [B
    .param p2, "status"    # I

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invitation completed with status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->logd(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->halStatusToP2pStatus(I)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pInvitationResult(Ljava/lang/String;Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;)V

    .line 370
    return-void
.end method

.method public onNetworkAdded(I)V
    .locals 0
    .param p1, "networkId"    # I

    .line 63
    return-void
.end method

.method public onNetworkRemoved(I)V
    .locals 0
    .param p1, "networkId"    # I

    .line 72
    return-void
.end method

.method public onProvisionDiscoveryCompleted([BZBSLjava/lang/String;)V
    .locals 4
    .param p1, "p2pDeviceAddress"    # [B
    .param p2, "isRequest"    # Z
    .param p3, "status"    # B
    .param p4, "configMethods"    # S
    .param p5, "generatedPin"    # Ljava/lang/String;

    .line 385
    if-eqz p3, :cond_0

    .line 386
    const-string v0, "SupplicantP2pIfaceCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provision discovery failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pProvisionDiscoveryFailure(Ljava/lang/String;)V

    .line 388
    return-void

    .line 391
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provision discovery "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string v1, "request"

    goto :goto_0

    :cond_1
    const-string v1, "response"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for WPS Config method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->logd(Ljava/lang/String;)V

    .line 394
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>()V

    .line 395
    .local v0, "event":Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 398
    :try_start_0
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    nop

    .line 404
    and-int/lit16 v1, p4, 0x80

    if-eqz v1, :cond_3

    .line 405
    if-eqz p2, :cond_2

    .line 406
    const/4 v1, 0x1

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->event:I

    .line 407
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pProvisionDiscoveryPbcRequest(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;)V

    goto :goto_1

    .line 409
    :cond_2
    const/4 v1, 0x2

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->event:I

    .line 410
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pProvisionDiscoveryPbcResponse(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;)V

    goto :goto_1

    .line 412
    :cond_3
    const/4 v1, 0x4

    if-nez p2, :cond_4

    and-int/lit16 v2, p4, 0x100

    if-eqz v2, :cond_4

    .line 413
    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->event:I

    .line 414
    iput-object p5, v0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->pin:Ljava/lang/String;

    .line 415
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pProvisionDiscoveryShowPin(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;)V

    goto :goto_1

    .line 416
    :cond_4
    const/4 v2, 0x3

    if-nez p2, :cond_5

    and-int/lit8 v3, p4, 0x8

    if-eqz v3, :cond_5

    .line 417
    iput v2, v0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->event:I

    .line 418
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pProvisionDiscoveryEnterPin(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;)V

    goto :goto_1

    .line 419
    :cond_5
    if-eqz p2, :cond_6

    and-int/lit8 v3, p4, 0x8

    if-eqz v3, :cond_6

    .line 420
    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->event:I

    .line 421
    iput-object p5, v0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->pin:Ljava/lang/String;

    .line 422
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pProvisionDiscoveryShowPin(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;)V

    goto :goto_1

    .line 423
    :cond_6
    if-eqz p2, :cond_7

    and-int/lit16 v1, p4, 0x100

    if-eqz v1, :cond_7

    .line 424
    iput v2, v0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->event:I

    .line 425
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pProvisionDiscoveryEnterPin(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;)V

    goto :goto_1

    .line 427
    :cond_7
    const-string v1, "SupplicantP2pIfaceCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported config methods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :goto_1
    return-void

    .line 399
    :catch_0
    move-exception v1

    .line 400
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SupplicantP2pIfaceCallback"

    const-string v3, "Could not decode MAC address."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 401
    return-void
.end method

.method public onServiceDiscoveryResponse([BSLjava/util/ArrayList;)V
    .locals 4
    .param p1, "srcAddress"    # [B
    .param p2, "updateIndicator"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BS",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 442
    .local p3, "tlvs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v0, 0x0

    .line 444
    .local v0, "response":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service discovery response received on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->logd(Ljava/lang/String;)V

    .line 446
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, "srcAddressStr":Ljava/lang/String;
    nop

    .line 449
    invoke-static {p3}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v2

    .line 448
    invoke-static {v1, v2}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->newInstance(Ljava/lang/String;[B)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 453
    .end local v1    # "srcAddressStr":Ljava/lang/String;
    nop

    .line 454
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pServiceDiscoveryResponse(Ljava/lang/String;Ljava/util/List;)V

    .line 455
    return-void

    .line 450
    :catch_0
    move-exception v1

    .line 451
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SupplicantP2pIfaceCallback"

    const-string v3, "Could not process service discovery response."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 452
    return-void
.end method

.method public onStaAuthorized([B[B)V
    .locals 3
    .param p1, "srcAddress"    # [B
    .param p2, "p2pDeviceAddress"    # [B

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STA authorized on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->logd(Ljava/lang/String;)V

    .line 484
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->createStaEventDevice([B[B)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    .line 485
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-nez v0, :cond_0

    .line 486
    return-void

    .line 488
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pApStaConnected(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 489
    return-void
.end method

.method public onStaDeauthorized([B[B)V
    .locals 3
    .param p1, "srcAddress"    # [B
    .param p2, "p2pDeviceAddress"    # [B

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STA deauthorized on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->logd(Ljava/lang/String;)V

    .line 500
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->createStaEventDevice([B[B)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    .line 501
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-nez v0, :cond_0

    .line 502
    return-void

    .line 504
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pApStaDisconnected(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 505
    return-void
.end method
