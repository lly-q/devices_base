.class public Lcom/android/internal/telephony/gsm/SuppServiceNotification;
.super Ljava/lang/Object;
.source "SuppServiceNotification.java"


# static fields
.field public static final CODE_1_CALL_DEFLECTED:I = 0x8

.field public static final CODE_1_CALL_FORWARDED:I = 0x2

.field public static final CODE_1_CALL_IS_WAITING:I = 0x3

.field public static final CODE_1_CLIR_SUPPRESSION_REJECTED:I = 0x7

.field public static final CODE_1_CUG_CALL:I = 0x4

.field public static final CODE_1_INCOMING_CALLS_BARRED:I = 0x6

.field public static final CODE_1_OUTGOING_CALLS_BARRED:I = 0x5

.field public static final CODE_1_SOME_CF_ACTIVE:I = 0x1

.field public static final CODE_1_UNCONDITIONAL_CF_ACTIVE:I = 0x0

.field public static final CODE_2_ADDITIONAL_CALL_FORWARDED:I = 0xa

.field public static final CODE_2_CALL_CONNECTED_ECT:I = 0x8

.field public static final CODE_2_CALL_CONNECTING_ECT:I = 0x7

.field public static final CODE_2_CALL_ON_HOLD:I = 0x2

.field public static final CODE_2_CALL_RETRIEVED:I = 0x3

.field public static final CODE_2_CUG_CALL:I = 0x1

.field public static final CODE_2_DEFLECTED_CALL:I = 0x9

.field public static final CODE_2_FORWARDED_CALL:I = 0x0

.field public static final CODE_2_FORWARD_CHECK_RECEIVED:I = 0x6

.field public static final CODE_2_MULTI_PARTY_CALL:I = 0x4

.field public static final CODE_2_ON_HOLD_CALL_RELEASED:I = 0x5

.field public static final NOTIFICATION_TYPE_CODE_1:I = 0x0

.field public static final NOTIFICATION_TYPE_CODE_2:I = 0x1


# instance fields
.field public code:I

.field public history:[Ljava/lang/String;

.field public index:I

.field public notificationType:I

.field public number:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mobile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget v1, p0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    if-nez v1, :cond_0

    const-string v1, " originated "

    goto :goto_0

    :cond_0
    const-string v1, " terminated "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " history: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->history:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->type:I

    .line 205
    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    return-object v0
.end method
