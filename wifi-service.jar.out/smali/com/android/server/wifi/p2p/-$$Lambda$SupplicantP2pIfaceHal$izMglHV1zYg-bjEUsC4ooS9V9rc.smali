.class public final synthetic Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$izMglHV1zYg-bjEUsC4ooS9V9rc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$requestServiceDiscoveryCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$izMglHV1zYg-bjEUsC4ooS9V9rc;->f$0:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;J)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$izMglHV1zYg-bjEUsC4ooS9V9rc;->f$0:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->lambda$requestServiceDiscovery$10(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;J)V

    return-void
.end method
