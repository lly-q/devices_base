.class Lcom/oneplus/highpower/HighPowerApp$1;
.super Ljava/lang/Object;
.source "HighPowerApp.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/highpower/HighPowerApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oneplus/highpower/HighPowerApp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oneplus/highpower/HighPowerApp;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 74
    new-instance v0, Lcom/oneplus/highpower/HighPowerApp;

    invoke-direct {v0, p1}, Lcom/oneplus/highpower/HighPowerApp;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lcom/oneplus/highpower/HighPowerApp$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oneplus/highpower/HighPowerApp;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/oneplus/highpower/HighPowerApp;
    .locals 1
    .param p1, "size"    # I

    .line 78
    new-array v0, p1, [Lcom/oneplus/highpower/HighPowerApp;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lcom/oneplus/highpower/HighPowerApp$1;->newArray(I)[Lcom/oneplus/highpower/HighPowerApp;

    move-result-object p1

    return-object p1
.end method
