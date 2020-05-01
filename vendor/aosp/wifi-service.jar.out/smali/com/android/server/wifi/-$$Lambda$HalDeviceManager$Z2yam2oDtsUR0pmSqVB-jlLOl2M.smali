.class public final synthetic Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$Z2yam2oDtsUR0pmSqVB-jlLOl2M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lvendor/oneplus/hardware/wifi/V1_1/IOneplusWifi$getWifiMacFromNvItemCallback;


# instance fields
.field private final synthetic f$0:Landroid/os/HidlSupport$Mutable;


# direct methods
.method public synthetic constructor <init>(Landroid/os/HidlSupport$Mutable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$Z2yam2oDtsUR0pmSqVB-jlLOl2M;->f$0:Landroid/os/HidlSupport$Mutable;

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$Z2yam2oDtsUR0pmSqVB-jlLOl2M;->f$0:Landroid/os/HidlSupport$Mutable;

    invoke-static {v0, p1, p2}, Lcom/android/server/wifi/HalDeviceManager;->lambda$getWifiMacFromNvItem$2(Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V

    return-void
.end method
