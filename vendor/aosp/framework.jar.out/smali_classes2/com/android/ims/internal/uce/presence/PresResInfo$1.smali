.class Lcom/android/ims/internal/uce/presence/PresResInfo$1;
.super Ljava/lang/Object;
.source "PresResInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/presence/PresResInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/ims/internal/uce/presence/PresResInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/internal/uce/presence/PresResInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 102
    new-instance v0, Lcom/android/ims/internal/uce/presence/PresResInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/ims/internal/uce/presence/PresResInfo;-><init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresResInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresResInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/internal/uce/presence/PresResInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/ims/internal/uce/presence/PresResInfo;
    .locals 1
    .param p1, "size"    # I

    .line 106
    new-array v0, p1, [Lcom/android/ims/internal/uce/presence/PresResInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresResInfo$1;->newArray(I)[Lcom/android/ims/internal/uce/presence/PresResInfo;

    move-result-object p1

    return-object p1
.end method