.class public Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;
.super Ljava/lang/Object;
.source "WifiVendorHal.java"

# interfaces
.implements Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiVendorHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HalDeviceManagerStatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiVendorHal;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiVendorHal;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiVendorHal;

    .line 3065
    iput-object p1, p0, Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged()V
    .locals 2

    .line 3069
    iget-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$HalDeviceManagerStatusListener;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-static {v0}, Lcom/android/server/wifi/WifiVendorHal;->access$2100(Lcom/android/server/wifi/WifiVendorHal;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3087
    return-void
.end method
