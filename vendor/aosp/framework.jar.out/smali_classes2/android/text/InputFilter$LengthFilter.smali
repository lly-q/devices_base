.class public Landroid/text/InputFilter$LengthFilter;
.super Ljava/lang/Object;
.source "InputFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LengthFilter"
.end annotation


# instance fields
.field private final mMax:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "max"    # I

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput p1, p0, Landroid/text/InputFilter$LengthFilter;->mMax:I

    .line 171
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .line 175
    iget v0, p0, Landroid/text/InputFilter$LengthFilter;->mMax:I

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v1

    sub-int v2, p6, p5

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 176
    .local v0, "keep":I
    if-gtz v0, :cond_0

    .line 177
    const-string v1, ""

    return-object v1

    .line 178
    :cond_0
    sub-int v1, p3, p2

    if-lt v0, v1, :cond_1

    .line 179
    const/4 v1, 0x0

    return-object v1

    .line 181
    :cond_1
    add-int/2addr v0, p2

    .line 182
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    add-int/lit8 v0, v0, -0x1

    .line 184
    if-ne v0, p2, :cond_2

    .line 185
    const-string v1, ""

    return-object v1

    .line 188
    :cond_2
    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public getMax()I
    .locals 1

    .line 196
    iget v0, p0, Landroid/text/InputFilter$LengthFilter;->mMax:I

    return v0
.end method
