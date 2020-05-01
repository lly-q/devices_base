.class public Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;
.super Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;
.source "ImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder<",
        "Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private mClirMode:I

.field private mRttTextStream:Landroid/telecom/Connection$RttTextStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 143
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->mClirMode:I

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;)Landroid/telecom/Connection$RttTextStream;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    .line 143
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->mClirMode:I

    return v0
.end method

.method public static from(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;
    .locals 2
    .param p0, "dialArgs"    # Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    .line 148
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 149
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setUusInfo(Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    iget v1, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->videoState:I

    .line 150
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setVideoState(I)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    .line 151
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setIntentExtras(Landroid/os/Bundle;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    .line 148
    return-object v0
.end method

.method public static from(Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;
    .locals 2
    .param p0, "dialArgs"    # Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    .line 155
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 156
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setUusInfo(Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->videoState:I

    .line 157
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setVideoState(I)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->intentExtras:Landroid/os/Bundle;

    .line 158
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setIntentExtras(Landroid/os/Bundle;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->rttTextStream:Landroid/telecom/Connection$RttTextStream;

    .line 159
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setRttTextStream(Landroid/telecom/Connection$RttTextStream;)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->clirMode:I

    .line 160
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setClirMode(I)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    move-result-object v0

    .line 155
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    .locals 1

    .line 143
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;
    .locals 2

    .line 175
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;Lcom/android/internal/telephony/imsphone/ImsPhone$1;)V

    return-object v0
.end method

.method public setClirMode(I)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;
    .locals 0
    .param p1, "clirMode"    # I

    .line 170
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->mClirMode:I

    .line 171
    return-object p0
.end method

.method public setRttTextStream(Landroid/telecom/Connection$RttTextStream;)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;
    .locals 0
    .param p1, "s"    # Landroid/telecom/Connection$RttTextStream;

    .line 165
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    .line 166
    return-object p0
.end method
