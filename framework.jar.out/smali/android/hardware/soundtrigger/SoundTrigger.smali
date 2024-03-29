.class public Landroid/hardware/soundtrigger/SoundTrigger;
.super Ljava/lang/Object;
.source "SoundTrigger.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;,
        Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;,
        Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;,
        Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;,
        Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;,
        Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;,
        Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;,
        Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;,
        Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;,
        Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;,
        Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;,
        Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;,
        Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    }
.end annotation


# static fields
.field public static final RECOGNITION_MODE_USER_AUTHENTICATION:I = 0x4

.field public static final RECOGNITION_MODE_USER_IDENTIFICATION:I = 0x2

.field public static final RECOGNITION_MODE_VOICE_TRIGGER:I = 0x1

.field public static final RECOGNITION_STATUS_ABORT:I = 0x1

.field public static final RECOGNITION_STATUS_FAILURE:I = 0x2

.field public static final RECOGNITION_STATUS_SUCCESS:I = 0x0

.field public static final SERVICE_STATE_DISABLED:I = 0x1

.field public static final SERVICE_STATE_ENABLED:I = 0x0

.field public static final SOUNDMODEL_STATUS_UPDATED:I = 0x0

.field public static final STATUS_BAD_VALUE:I

.field public static final STATUS_DEAD_OBJECT:I

.field public static final STATUS_ERROR:I = -0x80000000

.field public static final STATUS_INVALID_OPERATION:I

.field public static final STATUS_NO_INIT:I

.field public static final STATUS_OK:I

.field public static final STATUS_PERMISSION_DENIED:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    sget v0, Landroid/system/OsConstants;->EPERM:I

    neg-int v0, v0

    sput v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_PERMISSION_DENIED:I

    .line 57
    sget v0, Landroid/system/OsConstants;->ENODEV:I

    neg-int v0, v0

    sput v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_NO_INIT:I

    .line 59
    sget v0, Landroid/system/OsConstants;->EINVAL:I

    neg-int v0, v0

    sput v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_BAD_VALUE:I

    .line 61
    sget v0, Landroid/system/OsConstants;->EPIPE:I

    neg-int v0, v0

    sput v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_DEAD_OBJECT:I

    .line 63
    sget v0, Landroid/system/OsConstants;->ENOSYS:I

    neg-int v0, v0

    sput v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_INVALID_OPERATION:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static attachModule(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;)Landroid/hardware/soundtrigger/SoundTriggerModule;
    .locals 1
    .param p0, "moduleId"    # I
    .param p1, "listener"    # Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1424
    if-nez p1, :cond_0

    .line 1425
    const/4 v0, 0x0

    return-object v0

    .line 1427
    :cond_0
    new-instance v0, Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/soundtrigger/SoundTriggerModule;-><init>(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;)V

    .line 1428
    .local v0, "module":Landroid/hardware/soundtrigger/SoundTriggerModule;
    return-object v0
.end method

.method public static native listModules(Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;",
            ">;)I"
        }
    .end annotation
.end method
