.class public final enum Landroid/renderscript/Sampler$Value;
.super Ljava/lang/Enum;
.source "Sampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Sampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/renderscript/Sampler$Value;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/Sampler$Value;

.field public static final enum CLAMP:Landroid/renderscript/Sampler$Value;

.field public static final enum LINEAR:Landroid/renderscript/Sampler$Value;

.field public static final enum LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler$Value;

.field public static final enum LINEAR_MIP_NEAREST:Landroid/renderscript/Sampler$Value;

.field public static final enum MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

.field public static final enum NEAREST:Landroid/renderscript/Sampler$Value;

.field public static final enum WRAP:Landroid/renderscript/Sampler$Value;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 31
    new-instance v0, Landroid/renderscript/Sampler$Value;

    const-string v1, "NEAREST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    .line 32
    new-instance v0, Landroid/renderscript/Sampler$Value;

    const-string v1, "LINEAR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Landroid/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    .line 33
    new-instance v0, Landroid/renderscript/Sampler$Value;

    const-string v1, "LINEAR_MIP_LINEAR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Landroid/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler$Value;

    .line 34
    new-instance v0, Landroid/renderscript/Sampler$Value;

    const-string v1, "LINEAR_MIP_NEAREST"

    const/4 v5, 0x5

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v5}, Landroid/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_NEAREST:Landroid/renderscript/Sampler$Value;

    .line 35
    new-instance v0, Landroid/renderscript/Sampler$Value;

    const-string v1, "WRAP"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v6}, Landroid/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    .line 36
    new-instance v0, Landroid/renderscript/Sampler$Value;

    const-string v1, "CLAMP"

    invoke-direct {v0, v1, v5, v7}, Landroid/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    .line 37
    new-instance v0, Landroid/renderscript/Sampler$Value;

    const-string v1, "MIRRORED_REPEAT"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Landroid/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

    .line 30
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/renderscript/Sampler$Value;

    sget-object v1, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    aput-object v1, v0, v2

    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    aput-object v1, v0, v3

    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler$Value;

    aput-object v1, v0, v4

    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_NEAREST:Landroid/renderscript/Sampler$Value;

    aput-object v1, v0, v6

    sget-object v1, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    aput-object v1, v0, v7

    sget-object v1, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    aput-object v1, v0, v5

    sget-object v1, Landroid/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

    aput-object v1, v0, v8

    sput-object v0, Landroid/renderscript/Sampler$Value;->$VALUES:[Landroid/renderscript/Sampler$Value;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Landroid/renderscript/Sampler$Value;->mID:I

    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/Sampler$Value;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 30
    const-class v0, Landroid/renderscript/Sampler$Value;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Sampler$Value;

    return-object v0
.end method

.method public static values()[Landroid/renderscript/Sampler$Value;
    .locals 1

    .line 30
    sget-object v0, Landroid/renderscript/Sampler$Value;->$VALUES:[Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0}, [Landroid/renderscript/Sampler$Value;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/Sampler$Value;

    return-object v0
.end method
