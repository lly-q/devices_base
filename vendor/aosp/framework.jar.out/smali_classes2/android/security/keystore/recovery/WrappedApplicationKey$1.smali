.class Landroid/security/keystore/recovery/WrappedApplicationKey$1;
.super Ljava/lang/Object;
.source "WrappedApplicationKey.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/recovery/WrappedApplicationKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/security/keystore/recovery/WrappedApplicationKey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/security/keystore/recovery/WrappedApplicationKey;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 148
    new-instance v0, Landroid/security/keystore/recovery/WrappedApplicationKey;

    invoke-direct {v0, p1}, Landroid/security/keystore/recovery/WrappedApplicationKey;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Landroid/security/keystore/recovery/WrappedApplicationKey$1;->createFromParcel(Landroid/os/Parcel;)Landroid/security/keystore/recovery/WrappedApplicationKey;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/security/keystore/recovery/WrappedApplicationKey;
    .locals 1
    .param p1, "length"    # I

    .line 152
    new-array v0, p1, [Landroid/security/keystore/recovery/WrappedApplicationKey;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Landroid/security/keystore/recovery/WrappedApplicationKey$1;->newArray(I)[Landroid/security/keystore/recovery/WrappedApplicationKey;

    move-result-object p1

    return-object p1
.end method
