.class Landroid/graphics/drawable/RippleForeground$4;
.super Landroid/util/FloatProperty;
.source "RippleForeground.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/RippleForeground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Landroid/graphics/drawable/RippleForeground;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .line 457
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/graphics/drawable/RippleForeground;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Landroid/graphics/drawable/RippleForeground;

    .line 466
    invoke-static {p1}, Landroid/graphics/drawable/RippleForeground;->access$900(Landroid/graphics/drawable/RippleForeground;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 457
    check-cast p1, Landroid/graphics/drawable/RippleForeground;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleForeground$4;->get(Landroid/graphics/drawable/RippleForeground;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Landroid/graphics/drawable/RippleForeground;F)V
    .locals 0
    .param p1, "object"    # Landroid/graphics/drawable/RippleForeground;
    .param p2, "value"    # F

    .line 460
    invoke-static {p1, p2}, Landroid/graphics/drawable/RippleForeground;->access$902(Landroid/graphics/drawable/RippleForeground;F)F

    .line 461
    invoke-static {p1}, Landroid/graphics/drawable/RippleForeground;->access$600(Landroid/graphics/drawable/RippleForeground;)V

    .line 462
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 457
    check-cast p1, Landroid/graphics/drawable/RippleForeground;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/RippleForeground$4;->setValue(Landroid/graphics/drawable/RippleForeground;F)V

    return-void
.end method
