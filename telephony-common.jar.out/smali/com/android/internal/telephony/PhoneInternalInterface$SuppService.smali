.class public final enum Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;
.super Ljava/lang/Enum;
.source "PhoneInternalInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneInternalInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SuppService"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

.field public static final enum CONFERENCE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

.field public static final enum HANGUP:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

.field public static final enum HOLD:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

.field public static final enum REJECT:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

.field public static final enum RESUME:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

.field public static final enum SEPARATE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

.field public static final enum SWITCH:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

.field public static final enum TRANSFER:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

.field public static final enum UNKNOWN:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 64
    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->UNKNOWN:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    const-string v1, "SWITCH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SWITCH:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    const-string v1, "SEPARATE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SEPARATE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    const-string v1, "TRANSFER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->TRANSFER:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    const-string v1, "CONFERENCE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->CONFERENCE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    const-string v1, "REJECT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->REJECT:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    const-string v1, "HANGUP"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->HANGUP:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    const-string v1, "RESUME"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->RESUME:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    const-string v1, "HOLD"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->HOLD:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    .line 63
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    sget-object v1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->UNKNOWN:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SWITCH:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SEPARATE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->TRANSFER:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->CONFERENCE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->REJECT:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->HANGUP:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->RESUME:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->HOLD:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    aput-object v1, v0, v10

    sput-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->$VALUES:[Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 63
    const-class v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;
    .locals 1

    .line 63
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->$VALUES:[Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    return-object v0
.end method
