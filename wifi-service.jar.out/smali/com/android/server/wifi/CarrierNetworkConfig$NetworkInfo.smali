.class Lcom/android/server/wifi/CarrierNetworkConfig$NetworkInfo;
.super Ljava/lang/Object;
.source "CarrierNetworkConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/CarrierNetworkConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkInfo"
.end annotation


# instance fields
.field final mCarrierConfigNid:I

.field final mCarrierName:Ljava/lang/String;

.field final mEapType:I


# direct methods
.method constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .param p1, "eapType"    # I
    .param p2, "carrierName"    # Ljava/lang/String;
    .param p3, "carrierConfigNid"    # I

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput p1, p0, Lcom/android/server/wifi/CarrierNetworkConfig$NetworkInfo;->mEapType:I

    .line 191
    iput-object p2, p0, Lcom/android/server/wifi/CarrierNetworkConfig$NetworkInfo;->mCarrierName:Ljava/lang/String;

    .line 193
    iput p3, p0, Lcom/android/server/wifi/CarrierNetworkConfig$NetworkInfo;->mCarrierConfigNid:I

    .line 195
    return-void
.end method
