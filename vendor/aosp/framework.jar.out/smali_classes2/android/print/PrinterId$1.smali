.class Landroid/print/PrinterId$1;
.super Ljava/lang/Object;
.source "PrinterId.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrinterId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/print/PrinterId;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/print/PrinterId;
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 129
    new-instance v0, Landroid/print/PrinterId;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/print/PrinterId;-><init>(Landroid/os/Parcel;Landroid/print/PrinterId$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Landroid/print/PrinterId$1;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrinterId;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/print/PrinterId;
    .locals 1
    .param p1, "size"    # I

    .line 134
    new-array v0, p1, [Landroid/print/PrinterId;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Landroid/print/PrinterId$1;->newArray(I)[Landroid/print/PrinterId;

    move-result-object p1

    return-object p1
.end method
