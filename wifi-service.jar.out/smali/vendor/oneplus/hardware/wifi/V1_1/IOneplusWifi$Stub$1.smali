.class Lvendor/oneplus/hardware/wifi/V1_1/IOneplusWifi$Stub$1;
.super Ljava/lang/Object;
.source "IOneplusWifi.java"

# interfaces
.implements Lvendor/oneplus/hardware/wifi/V1_1/IOneplusWifi$getWifiMacFromNvItemCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/oneplus/hardware/wifi/V1_1/IOneplusWifi$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/oneplus/hardware/wifi/V1_1/IOneplusWifi$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lvendor/oneplus/hardware/wifi/V1_1/IOneplusWifi$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Lvendor/oneplus/hardware/wifi/V1_1/IOneplusWifi$Stub;

    .line 438
    iput-object p1, p0, Lvendor/oneplus/hardware/wifi/V1_1/IOneplusWifi$Stub$1;->this$0:Lvendor/oneplus/hardware/wifi/V1_1/IOneplusWifi$Stub;

    iput-object p2, p0, Lvendor/oneplus/hardware/wifi/V1_1/IOneplusWifi$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/wifi/V1_0/WifiStatus;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 441
    .local p2, "macs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lvendor/oneplus/hardware/wifi/V1_1/IOneplusWifi$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 442
    iget-object v0, p0, Lvendor/oneplus/hardware/wifi/V1_1/IOneplusWifi$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, v0}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 443
    iget-object v0, p0, Lvendor/oneplus/hardware/wifi/V1_1/IOneplusWifi$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 444
    iget-object v0, p0, Lvendor/oneplus/hardware/wifi/V1_1/IOneplusWifi$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 445
    return-void
.end method
