.class public Lcom/android/internal/telephony/uicc/euicc/apdu/ApduException;
.super Ljava/lang/Exception;
.source "ApduException.java"


# instance fields
.field private final mApduStatus:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "apduStatus"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 34
    iput p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduException;->mApduStatus:I

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduException;->mApduStatus:I

    .line 40
    return-void
.end method


# virtual methods
.method public getApduStatus()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduException;->mApduStatus:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (apduStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduException;->getStatusHex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusHex()Ljava/lang/String;
    .locals 1

    .line 56
    iget v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduException;->mApduStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
