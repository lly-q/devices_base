.class Landroid/view/AbsSavedState$2;
.super Ljava/lang/Object;
.source "AbsSavedState.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AbsSavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroid/view/AbsSavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/AbsSavedState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/AbsSavedState$2;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/view/AbsSavedState;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/view/AbsSavedState;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 93
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    .line 94
    .local v0, "superState":Landroid/os/Parcelable;
    if-nez v0, :cond_0

    .line 97
    sget-object v1, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v1

    .line 95
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "superState must be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Landroid/view/AbsSavedState$2;->createFromParcel(Landroid/os/Parcel;)Landroid/view/AbsSavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 84
    invoke-virtual {p0, p1, p2}, Landroid/view/AbsSavedState$2;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/view/AbsSavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/view/AbsSavedState;
    .locals 1
    .param p1, "size"    # I

    .line 102
    new-array v0, p1, [Landroid/view/AbsSavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Landroid/view/AbsSavedState$2;->newArray(I)[Landroid/view/AbsSavedState;

    move-result-object p1

    return-object p1
.end method
