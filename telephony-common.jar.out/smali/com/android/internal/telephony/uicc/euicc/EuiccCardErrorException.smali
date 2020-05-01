.class public Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;
.super Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;
.source "EuiccCardErrorException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException$OperationCode;
    }
.end annotation


# static fields
.field public static final OPERATION_AUTHENTICATE_SERVER:I = 0x3

.field public static final OPERATION_CANCEL_SESSION:I = 0x4

.field public static final OPERATION_DELETE_PROFILE:I = 0xc

.field public static final OPERATION_DISABLE_PROFILE:I = 0xb

.field public static final OPERATION_GET_PROFILE:I = 0x1

.field public static final OPERATION_LIST_NOTIFICATIONS:I = 0x6

.field public static final OPERATION_LOAD_BOUND_PROFILE_PACKAGE:I = 0x5

.field public static final OPERATION_PREPARE_DOWNLOAD:I = 0x2

.field public static final OPERATION_REMOVE_NOTIFICATION_FROM_LIST:I = 0x9

.field public static final OPERATION_RESET_MEMORY:I = 0xd

.field public static final OPERATION_RETRIEVE_NOTIFICATION:I = 0x8

.field public static final OPERATION_SET_DEFAULT_SMDP_ADDRESS:I = 0xe

.field public static final OPERATION_SET_NICKNAME:I = 0x7

.field public static final OPERATION_SWITCH_TO_PROFILE:I = 0xa

.field public static final OPERATION_UNKNOWN:I


# instance fields
.field private final mErrorCode:I

.field private final mErrorDetails:Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

.field private final mOperationCode:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "operationCode"    # I
    .param p2, "errorCode"    # I

    .line 81
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;-><init>()V

    .line 82
    iput p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;->mOperationCode:I

    .line 83
    iput p2, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;->mErrorCode:I

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;->mErrorDetails:Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    .line 85
    return-void
.end method

.method public constructor <init>(IILcom/android/internal/telephony/uicc/asn1/Asn1Node;)V
    .locals 0
    .param p1, "operationCode"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorDetails"    # Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    .line 96
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;-><init>()V

    .line 97
    iput p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;->mOperationCode:I

    .line 98
    iput p2, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;->mErrorCode:I

    .line 99
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;->mErrorDetails:Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    .line 100
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;->mErrorCode:I

    return v0
.end method

.method public getErrorDetails()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;->mErrorDetails:Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EuiccCardError: mOperatorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;->mOperationCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mErrorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;->mErrorDetails:Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;->mErrorDetails:Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    return-object v0
.end method

.method public getOperationCode()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;->mOperationCode:I

    return v0
.end method
