.class Landroid/view/textclassifier/EntityConfidence$1;
.super Ljava/lang/Object;
.source "EntityConfidence.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/EntityConfidence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/textclassifier/EntityConfidence;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/EntityConfidence;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 115
    new-instance v0, Landroid/view/textclassifier/EntityConfidence;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/view/textclassifier/EntityConfidence;-><init>(Landroid/os/Parcel;Landroid/view/textclassifier/EntityConfidence$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Landroid/view/textclassifier/EntityConfidence$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/EntityConfidence;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/view/textclassifier/EntityConfidence;
    .locals 1
    .param p1, "size"    # I

    .line 120
    new-array v0, p1, [Landroid/view/textclassifier/EntityConfidence;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Landroid/view/textclassifier/EntityConfidence$1;->newArray(I)[Landroid/view/textclassifier/EntityConfidence;

    move-result-object p1

    return-object p1
.end method
