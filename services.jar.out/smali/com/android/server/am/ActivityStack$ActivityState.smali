.class final enum Lcom/android/server/am/ActivityStack$ActivityState;
.super Ljava/lang/Enum;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ActivityState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/ActivityStack$ActivityState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/am/ActivityStack$ActivityState;

.field public static final enum DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

.field public static final enum DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

.field public static final enum FINISHING:Lcom/android/server/am/ActivityStack$ActivityState;

.field public static final enum INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

.field public static final enum PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

.field public static final enum PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

.field public static final enum RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

.field public static final enum STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

.field public static final enum STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 254
    new-instance v0, Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v1, "INITIALIZING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 255
    new-instance v0, Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v1, "RESUMED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/ActivityStack$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 256
    new-instance v0, Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v1, "PAUSING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/am/ActivityStack$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 257
    new-instance v0, Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v1, "PAUSED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/am/ActivityStack$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 258
    new-instance v0, Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v1, "STOPPING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/server/am/ActivityStack$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 259
    new-instance v0, Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v1, "STOPPED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/server/am/ActivityStack$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 260
    new-instance v0, Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v1, "FINISHING"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/server/am/ActivityStack$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 261
    new-instance v0, Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v1, "DESTROYING"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/server/am/ActivityStack$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 262
    new-instance v0, Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v1, "DESTROYED"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/android/server/am/ActivityStack$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 253
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/am/ActivityStack$ActivityState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    aput-object v1, v0, v10

    sput-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->$VALUES:[Lcom/android/server/am/ActivityStack$ActivityState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 253
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/ActivityStack$ActivityState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 253
    const-class v0, Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack$ActivityState;

    return-object v0
.end method

.method public static values()[Lcom/android/server/am/ActivityStack$ActivityState;
    .locals 1

    .line 253
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->$VALUES:[Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v0}, [Lcom/android/server/am/ActivityStack$ActivityState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/ActivityStack$ActivityState;

    return-object v0
.end method
