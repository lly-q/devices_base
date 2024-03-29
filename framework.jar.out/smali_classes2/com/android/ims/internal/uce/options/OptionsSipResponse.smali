.class public Lcom/android/ims/internal/uce/options/OptionsSipResponse;
.super Ljava/lang/Object;
.source "OptionsSipResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/internal/uce/options/OptionsSipResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

.field private mReasonPhrase:Ljava/lang/String;

.field private mRequestId:I

.field private mRetryAfter:I

.field private mSipResponseCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 136
    new-instance v0, Lcom/android/ims/internal/uce/options/OptionsSipResponse$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/options/OptionsSipResponse$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRequestId:I

    .line 28
    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mSipResponseCode:I

    .line 29
    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRetryAfter:I

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mReasonPhrase:Ljava/lang/String;

    .line 117
    new-instance v0, Lcom/android/ims/internal/uce/options/OptionsCmdId;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/options/OptionsCmdId;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

    .line 118
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRequestId:I

    .line 28
    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mSipResponseCode:I

    .line 29
    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRetryAfter:I

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mReasonPhrase:Ljava/lang/String;

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->readFromParcel(Landroid/os/Parcel;)V

    .line 150
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/options/OptionsSipResponse$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/ims/internal/uce/options/OptionsSipResponse$1;

    .line 24
    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/options/OptionsSipResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public getCmdId()Lcom/android/ims/internal/uce/options/OptionsCmdId;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mReasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRequestId:I

    return v0
.end method

.method public getRetryAfter()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRetryAfter:I

    return v0
.end method

.method public getSipResponseCode()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mSipResponseCode:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRequestId:I

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mSipResponseCode:I

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mReasonPhrase:Ljava/lang/String;

    .line 157
    const-class v0, Lcom/android/ims/internal/uce/options/OptionsCmdId;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/uce/options/OptionsCmdId;

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRetryAfter:I

    .line 159
    return-void
.end method

.method public setCmdId(Lcom/android/ims/internal/uce/options/OptionsCmdId;)V
    .locals 0
    .param p1, "cmdId"    # Lcom/android/ims/internal/uce/options/OptionsCmdId;

    .line 45
    iput-object p1, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

    .line 46
    return-void
.end method

.method public setReasonPhrase(Ljava/lang/String;)V
    .locals 0
    .param p1, "reasonPhrase"    # Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mReasonPhrase:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setRequestId(I)V
    .locals 0
    .param p1, "requestId"    # I

    .line 61
    iput p1, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRequestId:I

    .line 62
    return-void
.end method

.method public setRetryAfter(I)V
    .locals 0
    .param p1, "retryAfter"    # I

    .line 109
    iput p1, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRetryAfter:I

    .line 110
    return-void
.end method

.method public setSipResponseCode(I)V
    .locals 0
    .param p1, "sipResponseCode"    # I

    .line 77
    iput p1, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mSipResponseCode:I

    .line 78
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 128
    iget v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRequestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mSipResponseCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mReasonPhrase:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 132
    iget v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRetryAfter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    return-void
.end method
