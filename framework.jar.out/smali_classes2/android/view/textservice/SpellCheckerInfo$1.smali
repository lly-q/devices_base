.class Landroid/view/textservice/SpellCheckerInfo$1;
.super Ljava/lang/Object;
.source "SpellCheckerInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textservice/SpellCheckerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/textservice/SpellCheckerInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/textservice/SpellCheckerInfo;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 199
    new-instance v0, Landroid/view/textservice/SpellCheckerInfo;

    invoke-direct {v0, p1}, Landroid/view/textservice/SpellCheckerInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 196
    invoke-virtual {p0, p1}, Landroid/view/textservice/SpellCheckerInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/view/textservice/SpellCheckerInfo;
    .locals 1
    .param p1, "size"    # I

    .line 204
    new-array v0, p1, [Landroid/view/textservice/SpellCheckerInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 196
    invoke-virtual {p0, p1}, Landroid/view/textservice/SpellCheckerInfo$1;->newArray(I)[Landroid/view/textservice/SpellCheckerInfo;

    move-result-object p1

    return-object p1
.end method
