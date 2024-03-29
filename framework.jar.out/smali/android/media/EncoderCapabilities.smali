.class public Landroid/media/EncoderCapabilities;
.super Ljava/lang/Object;
.source "EncoderCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/EncoderCapabilities$AudioEncoderCap;,
        Landroid/media/EncoderCapabilities$VideoEncoderCap;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EncoderCapabilities"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 104
    invoke-static {}, Landroid/media/EncoderCapabilities;->native_init()V

    .line 105
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioEncoders()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/EncoderCapabilities$AudioEncoderCap;",
            ">;"
        }
    .end annotation

    .line 142
    invoke-static {}, Landroid/media/EncoderCapabilities;->native_get_num_audio_encoders()I

    move-result v0

    .line 143
    .local v0, "nEncoders":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 145
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v1, "encoderList":Ljava/util/List;, "Ljava/util/List<Landroid/media/EncoderCapabilities$AudioEncoderCap;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 147
    invoke-static {v2}, Landroid/media/EncoderCapabilities;->native_get_audio_encoder_cap(I)Landroid/media/EncoderCapabilities$AudioEncoderCap;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public static getOutputFileFormats()[I
    .locals 4

    .line 112
    invoke-static {}, Landroid/media/EncoderCapabilities;->native_get_num_file_formats()I

    move-result v0

    .line 113
    .local v0, "nFormats":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 115
    :cond_0
    new-array v1, v0, [I

    .line 116
    .local v1, "formats":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 117
    invoke-static {v2}, Landroid/media/EncoderCapabilities;->native_get_file_format(I)I

    move-result v3

    aput v3, v1, v2

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public static getVideoEncoders()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/EncoderCapabilities$VideoEncoderCap;",
            ">;"
        }
    .end annotation

    .line 127
    invoke-static {}, Landroid/media/EncoderCapabilities;->native_get_num_video_encoders()I

    move-result v0

    .line 128
    .local v0, "nEncoders":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 130
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v1, "encoderList":Ljava/util/List;, "Ljava/util/List<Landroid/media/EncoderCapabilities$VideoEncoderCap;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 132
    invoke-static {v2}, Landroid/media/EncoderCapabilities;->native_get_video_encoder_cap(I)Landroid/media/EncoderCapabilities$VideoEncoderCap;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method private static final native native_get_audio_encoder_cap(I)Landroid/media/EncoderCapabilities$AudioEncoderCap;
.end method

.method private static final native native_get_file_format(I)I
.end method

.method private static final native native_get_num_audio_encoders()I
.end method

.method private static final native native_get_num_file_formats()I
.end method

.method private static final native native_get_num_video_encoders()I
.end method

.method private static final native native_get_video_encoder_cap(I)Landroid/media/EncoderCapabilities$VideoEncoderCap;
.end method

.method private static final native native_init()V
.end method
