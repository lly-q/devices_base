.class Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$3;
.super Ljava/lang/Object;
.source "ISupplicantP2pNetwork.java"

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getTypeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;

    .line 821
    iput-object p1, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$3;->this$0:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;

    iput-object p2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 2
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "type"    # I

    .line 824
    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 825
    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 826
    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 827
    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 828
    return-void
.end method
