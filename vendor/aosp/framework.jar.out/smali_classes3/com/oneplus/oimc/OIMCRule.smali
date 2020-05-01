.class public Lcom/oneplus/oimc/OIMCRule;
.super Ljava/lang/Object;
.source "OIMCRule.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oneplus/oimc/OIMCRule;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_LEVEL:I = 0x32

.field public static final Rule_AllowWhiteActivity:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_AllowWhiteVibration:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_AudioProcessesController:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_BreathModeLedController:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_Brick_Mode_Observer:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_Disable_AutoBacklight:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_Disable_FingerprintGesture:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_Disable_GrayColor:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_Disable_HeadsUpNotification:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_Disable_HeadsUpNotification_Breath:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_ESportMode:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_Enable_AnswerWithoutUI:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_Enable_OnePlusRamBoost:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_FingerPrintMode_ColorDisable:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_FingerPrintMode_Disable_ColorBalance:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_FingerPrintMode_Disable_GrayColor:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_FloatWindowController:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_KeyBlocking:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_NightMode_ColorBalance:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_NotifyFor3PtyCallsBlocking:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_ReadMode_Disable_ColorBalance:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_ReadMode_GrayColor:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_WiFiBackgroudNetLimit:Lcom/oneplus/oimc/OIMCRule;


# instance fields
.field private action:I

.field private differenceSwitch:[Ljava/lang/String;

.field private funcName:Ljava/lang/String;

.field private level:I

.field private reserved:I

.field private triggerModes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 91
    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "HeadsUpNotification"

    const-string v2, "GameMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_Disable_HeadsUpNotification:Lcom/oneplus/oimc/OIMCRule;

    .line 98
    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "HeadsUpNotificationBreath"

    const-string v2, "ZenMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_Disable_HeadsUpNotification_Breath:Lcom/oneplus/oimc/OIMCRule;

    .line 115
    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "WiFiBackgroudNetLimit"

    const-string v2, "GameMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_WiFiBackgroudNetLimit:Lcom/oneplus/oimc/OIMCRule;

    .line 125
    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v6, "NotifyFor3PtyCallsBlocking"

    const-string v1, "GameMode"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v1, "popNotify"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v11

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x32

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_NotifyFor3PtyCallsBlocking:Lcom/oneplus/oimc/OIMCRule;

    .line 134
    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "TurnOffAutoBacklight"

    const-string v2, "GameMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_Disable_AutoBacklight:Lcom/oneplus/oimc/OIMCRule;

    .line 143
    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "KeyBlocking"

    const-string v2, "GameMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_KeyBlocking:Lcom/oneplus/oimc/OIMCRule;

    .line 152
    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "ColorBalance"

    const-string v2, "NightMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_NightMode_ColorBalance:Lcom/oneplus/oimc/OIMCRule;

    .line 161
    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "GrayColor"

    const-string v2, "ReadMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_ReadMode_GrayColor:Lcom/oneplus/oimc/OIMCRule;

    .line 168
    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "ColorBalance"

    const-string v2, "ReadMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_ReadMode_Disable_ColorBalance:Lcom/oneplus/oimc/OIMCRule;

    .line 175
    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "GrayColor"

    const-string v2, "SystemMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_Disable_GrayColor:Lcom/oneplus/oimc/OIMCRule;

    .line 189
    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "ColorDisable"

    const-string v2, "FingerPrintMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_FingerPrintMode_ColorDisable:Lcom/oneplus/oimc/OIMCRule;

    .line 196
    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v6, "GrayColor"

    const-string v1, "FingerPrintMode"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v1, "fast"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v11

    const/4 v7, 0x2

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_FingerPrintMode_Disable_GrayColor:Lcom/oneplus/oimc/OIMCRule;

    .line 203
    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v13, "ColorBalance"

    const-string v1, "FingerPrintMode"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v15

    const-string v1, "fast"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v18

    const/4 v14, 0x2

    const/16 v16, 0x0

    const/16 v17, 0x32

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_FingerPrintMode_Disable_ColorBalance:Lcom/oneplus/oimc/OIMCRule;

    .line 212
    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "AnswerWithoutUI"

    const-string v2, "GameMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_Enable_AnswerWithoutUI:Lcom/oneplus/oimc/OIMCRule;

    .line 221
    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "FingerprintGestureLimit"

    const-string v2, "GameMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_Disable_FingerprintGesture:Lcom/oneplus/oimc/OIMCRule;

    .line 230
    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "OnePlusRamboost"

    const-string v2, "SystemMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_Enable_OnePlusRamBoost:Lcom/oneplus/oimc/OIMCRule;

    .line 239
    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "ESportMode"

    const-string v2, "GameMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_ESportMode:Lcom/oneplus/oimc/OIMCRule;

    .line 248
    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "BrickModeObserver"

    const-string v2, "ZenMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_Brick_Mode_Observer:Lcom/oneplus/oimc/OIMCRule;

    .line 257
    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "AllowWhiteVibration"

    const-string v2, "ZenMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_AllowWhiteVibration:Lcom/oneplus/oimc/OIMCRule;

    .line 266
    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "AllowWhiteActivity"

    const-string v2, "ZenMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_AllowWhiteActivity:Lcom/oneplus/oimc/OIMCRule;

    .line 275
    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "BreathModeLedController"

    const-string v2, "ZenMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_BreathModeLedController:Lcom/oneplus/oimc/OIMCRule;

    .line 284
    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "FloatWindowController"

    const-string v2, "ZenMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_FloatWindowController:Lcom/oneplus/oimc/OIMCRule;

    .line 293
    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "AudioProcessesController"

    const-string v2, "ZenMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_AudioProcessesController:Lcom/oneplus/oimc/OIMCRule;

    .line 329
    new-instance v0, Lcom/oneplus/oimc/OIMCRule$1;

    invoke-direct {v0}, Lcom/oneplus/oimc/OIMCRule$1;-><init>()V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x32

    iput v0, p0, Lcom/oneplus/oimc/OIMCRule;->level:I

    .line 307
    invoke-virtual {p0, p1}, Lcom/oneplus/oimc/OIMCRule;->readFromParcel(Landroid/os/Parcel;)V

    .line 308
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oneplus/oimc/OIMCRule$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/oneplus/oimc/OIMCRule$1;

    .line 25
    invoke-direct {p0, p1}, Lcom/oneplus/oimc/OIMCRule;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[Ljava/lang/String;I)V
    .locals 1
    .param p1, "_funcName"    # Ljava/lang/String;
    .param p2, "_action"    # I
    .param p3, "_triggerModes"    # [Ljava/lang/String;
    .param p4, "_reserved"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x32

    iput v0, p0, Lcom/oneplus/oimc/OIMCRule;->level:I

    .line 37
    iput-object p1, p0, Lcom/oneplus/oimc/OIMCRule;->funcName:Ljava/lang/String;

    .line 38
    iput p2, p0, Lcom/oneplus/oimc/OIMCRule;->action:I

    .line 39
    iput-object p3, p0, Lcom/oneplus/oimc/OIMCRule;->triggerModes:[Ljava/lang/String;

    .line 40
    iput p4, p0, Lcom/oneplus/oimc/OIMCRule;->reserved:I

    .line 41
    iput v0, p0, Lcom/oneplus/oimc/OIMCRule;->level:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->differenceSwitch:[Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 1
    .param p1, "_funcName"    # Ljava/lang/String;
    .param p2, "_action"    # I
    .param p3, "_triggerModes"    # [Ljava/lang/String;
    .param p4, "_reserved"    # I
    .param p5, "_level"    # I
    .param p6, "_differenceSwitch"    # [Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x32

    iput v0, p0, Lcom/oneplus/oimc/OIMCRule;->level:I

    .line 46
    iput-object p1, p0, Lcom/oneplus/oimc/OIMCRule;->funcName:Ljava/lang/String;

    .line 47
    iput p2, p0, Lcom/oneplus/oimc/OIMCRule;->action:I

    .line 48
    iput-object p3, p0, Lcom/oneplus/oimc/OIMCRule;->triggerModes:[Ljava/lang/String;

    .line 49
    iput p4, p0, Lcom/oneplus/oimc/OIMCRule;->reserved:I

    .line 50
    iput p5, p0, Lcom/oneplus/oimc/OIMCRule;->level:I

    .line 51
    iput-object p6, p0, Lcom/oneplus/oimc/OIMCRule;->differenceSwitch:[Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/oneplus/oimc/OIMCRule;->action:I

    return v0
.end method

.method public getDifferenceSwitch()[Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->differenceSwitch:[Ljava/lang/String;

    return-object v0
.end method

.method public getFuncName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->funcName:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/oneplus/oimc/OIMCRule;->level:I

    return v0
.end method

.method public getReservedInt()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/oneplus/oimc/OIMCRule;->reserved:I

    return v0
.end method

.method public getTriggerModes()[Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->triggerModes:[Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->funcName:Ljava/lang/String;

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/oimc/OIMCRule;->action:I

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->triggerModes:[Ljava/lang/String;

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/oimc/OIMCRule;->reserved:I

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/oimc/OIMCRule;->level:I

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->differenceSwitch:[Ljava/lang/String;

    .line 327
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 312
    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->funcName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 313
    iget v0, p0, Lcom/oneplus/oimc/OIMCRule;->action:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->triggerModes:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 315
    iget v0, p0, Lcom/oneplus/oimc/OIMCRule;->reserved:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    iget v0, p0, Lcom/oneplus/oimc/OIMCRule;->level:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->differenceSwitch:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 318
    return-void
.end method
