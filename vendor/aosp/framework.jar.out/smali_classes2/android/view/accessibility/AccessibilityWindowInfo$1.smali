.class Landroid/view/accessibility/AccessibilityWindowInfo$1;
.super Ljava/lang/Object;
.source "AccessibilityWindowInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityWindowInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/accessibility/AccessibilityWindowInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 777
    invoke-static {}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    .line 778
    .local v0, "info":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-static {v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->access$000(Landroid/view/accessibility/AccessibilityWindowInfo;Landroid/os/Parcel;)V

    .line 779
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 774
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 1
    .param p1, "size"    # I

    .line 784
    new-array v0, p1, [Landroid/view/accessibility/AccessibilityWindowInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 774
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo$1;->newArray(I)[Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object p1

    return-object p1
.end method
