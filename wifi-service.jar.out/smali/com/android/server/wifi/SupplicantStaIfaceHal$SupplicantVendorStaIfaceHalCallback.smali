.class Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;
.super Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback$Stub;
.source "SupplicantStaIfaceHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SupplicantStaIfaceHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SupplicantVendorStaIfaceHalCallback"
.end annotation


# instance fields
.field private mIfaceName:Ljava/lang/String;

.field private mSupplicantStaIfacecallback:Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;

.field final synthetic this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;)V
    .locals 0
    .param p2, "ifaceName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;

    .line 2786
    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-direct {p0}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIfaceCallback$Stub;-><init>()V

    .line 2787
    iput-object p2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    .line 2788
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->mSupplicantStaIfacecallback:Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;

    .line 2789
    return-void
.end method


# virtual methods
.method public onDppAuthSuccess(Z)V
    .locals 5
    .param p1, "initiator"    # Z

    .line 2819
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string v1, "onDppAuthSuccess"

    invoke-static {v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$400(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    .line 2820
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$000(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2821
    :try_start_0
    new-instance v1, Landroid/net/wifi/WifiDppConfig$DppResult;

    invoke-direct {v1}, Landroid/net/wifi/WifiDppConfig$DppResult;-><init>()V

    .line 2822
    .local v1, "result":Landroid/net/wifi/WifiDppConfig$DppResult;
    iput-boolean p1, v1, Landroid/net/wifi/WifiDppConfig$DppResult;->initiator:Z

    .line 2823
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/wifi/WifiMonitor;->broadcastDppEvent(Ljava/lang/String;ILandroid/net/wifi/WifiDppConfig$DppResult;)V

    .line 2824
    .end local v1    # "result":Landroid/net/wifi/WifiDppConfig$DppResult;
    monitor-exit v0

    .line 2825
    return-void

    .line 2824
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDppConf(BLjava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "type"    # B
    .param p3, "connector"    # Ljava/lang/String;
    .param p6, "netAccessExpiry"    # I
    .param p7, "passphrase"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 2862
    .local p2, "ssid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .local p4, "cSignKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .local p5, "netAccessKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .local p8, "psk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string v1, "onDppConf"

    invoke-static {v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$400(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    .line 2863
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$000(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2864
    :try_start_0
    new-instance v1, Landroid/net/wifi/WifiDppConfig$DppResult;

    invoke-direct {v1}, Landroid/net/wifi/WifiDppConfig$DppResult;-><init>()V

    .line 2865
    .local v1, "result":Landroid/net/wifi/WifiDppConfig$DppResult;
    iput-byte p1, v1, Landroid/net/wifi/WifiDppConfig$DppResult;->configEventType:B

    .line 2866
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->stringFromByteArrayList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiDppConfig$DppResult;->ssid:Ljava/lang/String;

    .line 2867
    iput-object p3, v1, Landroid/net/wifi/WifiDppConfig$DppResult;->connector:Ljava/lang/String;

    .line 2868
    invoke-static {p4}, Lcom/android/server/wifi/util/NativeUtil;->bytesToHexOrQuotedString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiDppConfig$DppResult;->cSignKey:Ljava/lang/String;

    .line 2869
    invoke-static {p5}, Lcom/android/server/wifi/util/NativeUtil;->bytesToHexOrQuotedString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiDppConfig$DppResult;->netAccessKey:Ljava/lang/String;

    .line 2870
    iput p6, v1, Landroid/net/wifi/WifiDppConfig$DppResult;->netAccessKeyExpiry:I

    .line 2871
    iput-object p7, v1, Landroid/net/wifi/WifiDppConfig$DppResult;->passphrase:Ljava/lang/String;

    .line 2872
    invoke-static {p8}, Lcom/android/server/wifi/util/NativeUtil;->stringFromByteArrayList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiDppConfig$DppResult;->psk:Ljava/lang/String;

    .line 2873
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/wifi/WifiMonitor;->broadcastDppEvent(Ljava/lang/String;ILandroid/net/wifi/WifiDppConfig$DppResult;)V

    .line 2874
    .end local v1    # "result":Landroid/net/wifi/WifiDppConfig$DppResult;
    monitor-exit v0

    .line 2875
    return-void

    .line 2874
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDppMissingAuth(B)V
    .locals 5
    .param p1, "dppAuthParam"    # B

    .line 2879
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string v1, "onDppMissingAuth"

    invoke-static {v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$400(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    .line 2880
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$000(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2881
    :try_start_0
    new-instance v1, Landroid/net/wifi/WifiDppConfig$DppResult;

    invoke-direct {v1}, Landroid/net/wifi/WifiDppConfig$DppResult;-><init>()V

    .line 2882
    .local v1, "result":Landroid/net/wifi/WifiDppConfig$DppResult;
    iput-byte p1, v1, Landroid/net/wifi/WifiDppConfig$DppResult;->authMissingParam:B

    .line 2883
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/wifi/WifiMonitor;->broadcastDppEvent(Ljava/lang/String;ILandroid/net/wifi/WifiDppConfig$DppResult;)V

    .line 2884
    .end local v1    # "result":Landroid/net/wifi/WifiDppConfig$DppResult;
    monitor-exit v0

    .line 2885
    return-void

    .line 2884
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDppNetworkId(I)V
    .locals 5
    .param p1, "netID"    # I

    .line 2889
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string v1, "onDppNetworkId"

    invoke-static {v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$400(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    .line 2890
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$000(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2891
    :try_start_0
    new-instance v1, Landroid/net/wifi/WifiDppConfig$DppResult;

    invoke-direct {v1}, Landroid/net/wifi/WifiDppConfig$DppResult;-><init>()V

    .line 2892
    .local v1, "result":Landroid/net/wifi/WifiDppConfig$DppResult;
    iput p1, v1, Landroid/net/wifi/WifiDppConfig$DppResult;->netID:I

    .line 2893
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/wifi/WifiMonitor;->broadcastDppEvent(Ljava/lang/String;ILandroid/net/wifi/WifiDppConfig$DppResult;)V

    .line 2894
    .end local v1    # "result":Landroid/net/wifi/WifiDppConfig$DppResult;
    monitor-exit v0

    .line 2895
    return-void

    .line 2894
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDppNotCompatible(BZ)V
    .locals 5
    .param p1, "capab"    # B
    .param p2, "initiator"    # Z

    .line 2829
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string v1, "onDppNotCompatible"

    invoke-static {v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$400(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    .line 2830
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$000(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2831
    :try_start_0
    new-instance v1, Landroid/net/wifi/WifiDppConfig$DppResult;

    invoke-direct {v1}, Landroid/net/wifi/WifiDppConfig$DppResult;-><init>()V

    .line 2832
    .local v1, "result":Landroid/net/wifi/WifiDppConfig$DppResult;
    iput-byte p1, v1, Landroid/net/wifi/WifiDppConfig$DppResult;->capab:B

    .line 2833
    iput-boolean p2, v1, Landroid/net/wifi/WifiDppConfig$DppResult;->initiator:Z

    .line 2834
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/wifi/WifiMonitor;->broadcastDppEvent(Ljava/lang/String;ILandroid/net/wifi/WifiDppConfig$DppResult;)V

    .line 2835
    .end local v1    # "result":Landroid/net/wifi/WifiDppConfig$DppResult;
    monitor-exit v0

    .line 2836
    return-void

    .line 2835
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDppResponsePending()V
    .locals 5

    .line 2840
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string v1, "onDppResponsePending"

    invoke-static {v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$400(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    .line 2841
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$000(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2843
    :try_start_0
    new-instance v1, Landroid/net/wifi/WifiDppConfig$DppResult;

    invoke-direct {v1}, Landroid/net/wifi/WifiDppConfig$DppResult;-><init>()V

    .line 2844
    .local v1, "result":Landroid/net/wifi/WifiDppConfig$DppResult;
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/wifi/WifiMonitor;->broadcastDppEvent(Ljava/lang/String;ILandroid/net/wifi/WifiDppConfig$DppResult;)V

    .line 2845
    .end local v1    # "result":Landroid/net/wifi/WifiDppConfig$DppResult;
    monitor-exit v0

    .line 2846
    return-void

    .line 2845
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDppScanPeerQrCode(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 2850
    .local p1, "bootstrapData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string v1, "onDppScanPeerQrCode"

    invoke-static {v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$400(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    .line 2851
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$000(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2852
    :try_start_0
    new-instance v1, Landroid/net/wifi/WifiDppConfig$DppResult;

    invoke-direct {v1}, Landroid/net/wifi/WifiDppConfig$DppResult;-><init>()V

    .line 2853
    .local v1, "result":Landroid/net/wifi/WifiDppConfig$DppResult;
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->stringFromByteArrayList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiDppConfig$DppResult;->iBootstrapData:Ljava/lang/String;

    .line 2854
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/wifi/WifiMonitor;->broadcastDppEvent(Ljava/lang/String;ILandroid/net/wifi/WifiDppConfig$DppResult;)V

    .line 2855
    .end local v1    # "result":Landroid/net/wifi/WifiDppConfig$DppResult;
    monitor-exit v0

    .line 2856
    return-void

    .line 2855
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onVendorStateChanged(I[BILjava/util/ArrayList;Z)V
    .locals 9
    .param p1, "newState"    # I
    .param p2, "bssid"    # [B
    .param p3, "id"    # I
    .param p5, "filsHlpSent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BI",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;Z)V"
        }
    .end annotation

    .line 2794
    .local p4, "ssid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$000(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2795
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVendorStateChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$400(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V

    .line 2796
    invoke-static {p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$500(I)Landroid/net/wifi/SupplicantState;

    move-result-object v1

    .line 2797
    .local v1, "newSupplicantState":Landroid/net/wifi/SupplicantState;
    nop

    .line 2798
    invoke-static {p4}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/WifiGbk;->createWifiSsidFromByteArray([B)Landroid/net/wifi/WifiSsid;

    move-result-object v5

    .line 2799
    .local v5, "wifiSsid":Landroid/net/wifi/WifiSsid;
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 2800
    .local v8, "bssidStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->mSupplicantStaIfacecallback:Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;

    const/4 v3, 0x7

    if-ne p1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;->updateStateIsFourway(Z)V

    .line 2802
    sget-object v2, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v1, v2, :cond_2

    .line 2803
    if-nez p5, :cond_1

    .line 2804
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    iget-object v6, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    .line 2805
    invoke-static {v4, v6}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$600(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)I

    move-result v4

    .line 2804
    invoke-virtual {v2, v3, v4, v8}, Lcom/android/server/wifi/WifiMonitor;->broadcastNetworkConnectionEvent(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 2807
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    iget-object v6, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    .line 2808
    invoke-static {v4, v6}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$600(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)I

    move-result v4

    .line 2807
    invoke-virtual {v2, v3, v4, v8}, Lcom/android/server/wifi/WifiMonitor;->broadcastFilsNetworkConnectionEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 2811
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$700(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->this$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    iget-object v6, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantVendorStaIfaceHalCallback;->mIfaceName:Ljava/lang/String;

    .line 2812
    invoke-static {v4, v6}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->access$600(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)I

    move-result v4

    .line 2811
    move-object v6, v8

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wifi/WifiMonitor;->broadcastSupplicantStateChangeEvent(Ljava/lang/String;ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    .line 2813
    .end local v1    # "newSupplicantState":Landroid/net/wifi/SupplicantState;
    .end local v5    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    .end local v8    # "bssidStr":Ljava/lang/String;
    monitor-exit v0

    .line 2814
    return-void

    .line 2813
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
