.class public final synthetic Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$F9l5tGv94AyR0hUt-tUTCVoAniI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/wifi/V1_0/IWifiIface$getTypeCallback;


# instance fields
.field private final synthetic f$0:Landroid/util/MutableInt;


# direct methods
.method public synthetic constructor <init>(Landroid/util/MutableInt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$F9l5tGv94AyR0hUt-tUTCVoAniI;->f$0:Landroid/util/MutableInt;

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/wifi/V1_0/WifiStatus;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$F9l5tGv94AyR0hUt-tUTCVoAniI;->f$0:Landroid/util/MutableInt;

    invoke-static {v0, p1, p2}, Lcom/android/server/wifi/HalDeviceManager;->lambda$getType$25(Landroid/util/MutableInt;Landroid/hardware/wifi/V1_0/WifiStatus;I)V

    return-void
.end method
