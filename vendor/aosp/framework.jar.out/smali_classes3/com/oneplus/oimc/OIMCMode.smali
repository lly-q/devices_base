.class public Lcom/oneplus/oimc/OIMCMode;
.super Ljava/lang/Object;
.source "OIMCMode.java"


# static fields
.field public static final BreathMode:Ljava/lang/String; = "ZenMode"

.field public static final FingerPrintMode:Ljava/lang/String; = "FingerPrintMode"

.field public static final GameMode:Ljava/lang/String; = "GameMode"

.field public static final MODE_ENTER:I = 0x1

.field public static final MODE_EXIT:I = 0x2

.field public static final NightMode:Ljava/lang/String; = "NightMode"

.field public static final ReadMode:Ljava/lang/String; = "ReadMode"

.field public static final SceneModes:[Ljava/lang/String;

.field public static final SystemMode:Ljava/lang/String; = "SystemMode"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 34
    const-string v0, "GameMode"

    const-string v1, "ReadMode"

    const-string v2, "NightMode"

    const-string v3, "ZenMode"

    const-string v4, "FingerPrintMode"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/oimc/OIMCMode;->SceneModes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
