.class public final enum Lcom/android/internal/telephony/cat/TextAlignment;
.super Ljava/lang/Enum;
.source "TextAlignment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/cat/TextAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cat/TextAlignment;

.field public static final enum CENTER:Lcom/android/internal/telephony/cat/TextAlignment;

.field public static final enum DEFAULT:Lcom/android/internal/telephony/cat/TextAlignment;

.field public static final enum LEFT:Lcom/android/internal/telephony/cat/TextAlignment;

.field public static final enum RIGHT:Lcom/android/internal/telephony/cat/TextAlignment;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 26
    new-instance v0, Lcom/android/internal/telephony/cat/TextAlignment;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/TextAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextAlignment;->LEFT:Lcom/android/internal/telephony/cat/TextAlignment;

    .line 27
    new-instance v0, Lcom/android/internal/telephony/cat/TextAlignment;

    const-string v1, "CENTER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/internal/telephony/cat/TextAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextAlignment;->CENTER:Lcom/android/internal/telephony/cat/TextAlignment;

    .line 28
    new-instance v0, Lcom/android/internal/telephony/cat/TextAlignment;

    const-string v1, "RIGHT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/android/internal/telephony/cat/TextAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextAlignment;->RIGHT:Lcom/android/internal/telephony/cat/TextAlignment;

    .line 30
    new-instance v0, Lcom/android/internal/telephony/cat/TextAlignment;

    const-string v1, "DEFAULT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/android/internal/telephony/cat/TextAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextAlignment;->DEFAULT:Lcom/android/internal/telephony/cat/TextAlignment;

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/telephony/cat/TextAlignment;

    sget-object v1, Lcom/android/internal/telephony/cat/TextAlignment;->LEFT:Lcom/android/internal/telephony/cat/TextAlignment;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/TextAlignment;->CENTER:Lcom/android/internal/telephony/cat/TextAlignment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/cat/TextAlignment;->RIGHT:Lcom/android/internal/telephony/cat/TextAlignment;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/cat/TextAlignment;->DEFAULT:Lcom/android/internal/telephony/cat/TextAlignment;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/cat/TextAlignment;->$VALUES:[Lcom/android/internal/telephony/cat/TextAlignment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/android/internal/telephony/cat/TextAlignment;->mValue:I

    .line 36
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/cat/TextAlignment;
    .locals 5
    .param p0, "value"    # I

    .line 45
    invoke-static {}, Lcom/android/internal/telephony/cat/TextAlignment;->values()[Lcom/android/internal/telephony/cat/TextAlignment;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 46
    .local v3, "e":Lcom/android/internal/telephony/cat/TextAlignment;
    iget v4, v3, Lcom/android/internal/telephony/cat/TextAlignment;->mValue:I

    if-ne v4, p0, :cond_0

    .line 47
    return-object v3

    .line 45
    .end local v3    # "e":Lcom/android/internal/telephony/cat/TextAlignment;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/TextAlignment;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lcom/android/internal/telephony/cat/TextAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/TextAlignment;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cat/TextAlignment;
    .locals 1

    .line 25
    sget-object v0, Lcom/android/internal/telephony/cat/TextAlignment;->$VALUES:[Lcom/android/internal/telephony/cat/TextAlignment;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cat/TextAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cat/TextAlignment;

    return-object v0
.end method
