.class public final enum Lcom/android/server/OemSceneButtonController$Param;
.super Ljava/lang/Enum;
.source "OemSceneButtonController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemSceneButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Param"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/OemSceneButtonController$Param;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/OemSceneButtonController$Param;

.field public static final enum ALL:Lcom/android/server/OemSceneButtonController$Param;

.field public static final enum FROM_NAVBAR_AND_HAS_NAVIGATIONBAR:Lcom/android/server/OemSceneButtonController$Param;

.field public static final enum FROM_NAVBAR_AND_NOT_HAS_NAVIGATIONBAR:Lcom/android/server/OemSceneButtonController$Param;

.field public static final enum NOT_FROM_NAVBAR:Lcom/android/server/OemSceneButtonController$Param;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 132
    new-instance v0, Lcom/android/server/OemSceneButtonController$Param;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/OemSceneButtonController$Param;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OemSceneButtonController$Param;->ALL:Lcom/android/server/OemSceneButtonController$Param;

    .line 133
    new-instance v0, Lcom/android/server/OemSceneButtonController$Param;

    const-string v1, "NOT_FROM_NAVBAR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/OemSceneButtonController$Param;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OemSceneButtonController$Param;->NOT_FROM_NAVBAR:Lcom/android/server/OemSceneButtonController$Param;

    .line 134
    new-instance v0, Lcom/android/server/OemSceneButtonController$Param;

    const-string v1, "FROM_NAVBAR_AND_NOT_HAS_NAVIGATIONBAR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/OemSceneButtonController$Param;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OemSceneButtonController$Param;->FROM_NAVBAR_AND_NOT_HAS_NAVIGATIONBAR:Lcom/android/server/OemSceneButtonController$Param;

    .line 135
    new-instance v0, Lcom/android/server/OemSceneButtonController$Param;

    const-string v1, "FROM_NAVBAR_AND_HAS_NAVIGATIONBAR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/OemSceneButtonController$Param;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OemSceneButtonController$Param;->FROM_NAVBAR_AND_HAS_NAVIGATIONBAR:Lcom/android/server/OemSceneButtonController$Param;

    .line 131
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/OemSceneButtonController$Param;

    sget-object v1, Lcom/android/server/OemSceneButtonController$Param;->ALL:Lcom/android/server/OemSceneButtonController$Param;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/OemSceneButtonController$Param;->NOT_FROM_NAVBAR:Lcom/android/server/OemSceneButtonController$Param;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/OemSceneButtonController$Param;->FROM_NAVBAR_AND_NOT_HAS_NAVIGATIONBAR:Lcom/android/server/OemSceneButtonController$Param;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/OemSceneButtonController$Param;->FROM_NAVBAR_AND_HAS_NAVIGATIONBAR:Lcom/android/server/OemSceneButtonController$Param;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/OemSceneButtonController$Param;->$VALUES:[Lcom/android/server/OemSceneButtonController$Param;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/OemSceneButtonController$Param;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 131
    const-class v0, Lcom/android/server/OemSceneButtonController$Param;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/OemSceneButtonController$Param;

    return-object v0
.end method

.method public static values()[Lcom/android/server/OemSceneButtonController$Param;
    .locals 1

    .line 131
    sget-object v0, Lcom/android/server/OemSceneButtonController$Param;->$VALUES:[Lcom/android/server/OemSceneButtonController$Param;

    invoke-virtual {v0}, [Lcom/android/server/OemSceneButtonController$Param;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/OemSceneButtonController$Param;

    return-object v0
.end method
