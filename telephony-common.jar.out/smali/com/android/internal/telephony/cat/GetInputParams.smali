.class Lcom/android/internal/telephony/cat/GetInputParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mInput:Lcom/android/internal/telephony/cat/Input;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Input;)V
    .locals 1
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "input"    # Lcom/android/internal/telephony/cat/Input;

    .line 196
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/GetInputParams;->mInput:Lcom/android/internal/telephony/cat/Input;

    .line 197
    iput-object p2, p0, Lcom/android/internal/telephony/cat/GetInputParams;->mInput:Lcom/android/internal/telephony/cat/Input;

    .line 198
    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .line 202
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/GetInputParams;->mInput:Lcom/android/internal/telephony/cat/Input;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/cat/GetInputParams;->mInput:Lcom/android/internal/telephony/cat/Input;

    iput-object p1, v0, Lcom/android/internal/telephony/cat/Input;->icon:Landroid/graphics/Bitmap;

    .line 205
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
