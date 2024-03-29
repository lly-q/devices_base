.class public Landroid/media/JetPlayer;
.super Ljava/lang/Object;
.source "JetPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/JetPlayer$OnJetEventListener;,
        Landroid/media/JetPlayer$NativeEventHandler;
    }
.end annotation


# static fields
.field private static final JET_EVENT:I = 0x1

.field private static final JET_EVENT_CHAN_MASK:I = 0x3c000

.field private static final JET_EVENT_CHAN_SHIFT:I = 0xe

.field private static final JET_EVENT_CTRL_MASK:I = 0x3f80

.field private static final JET_EVENT_CTRL_SHIFT:I = 0x7

.field private static final JET_EVENT_SEG_MASK:I = -0x1000000

.field private static final JET_EVENT_SEG_SHIFT:I = 0x18

.field private static final JET_EVENT_TRACK_MASK:I = 0xfc0000

.field private static final JET_EVENT_TRACK_SHIFT:I = 0x12

.field private static final JET_EVENT_VAL_MASK:I = 0x7f

.field private static final JET_NUMQUEUEDSEGMENT_UPDATE:I = 0x3

.field private static final JET_OUTPUT_CHANNEL_CONFIG:I = 0xc

.field private static final JET_OUTPUT_RATE:I = 0x5622

.field private static final JET_PAUSE_UPDATE:I = 0x4

.field private static final JET_USERID_UPDATE:I = 0x2

.field private static MAXTRACKS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "JetPlayer-J"

.field private static singletonRef:Landroid/media/JetPlayer;


# instance fields
.field private mEventHandler:Landroid/media/JetPlayer$NativeEventHandler;

.field private final mEventListenerLock:Ljava/lang/Object;

.field private mInitializationLooper:Landroid/os/Looper;

.field private mJetEventListener:Landroid/media/JetPlayer$OnJetEventListener;

.field private mNativePlayerInJavaObj:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    const/16 v0, 0x20

    sput v0, Landroid/media/JetPlayer;->MAXTRACKS:I

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/JetPlayer;->mEventHandler:Landroid/media/JetPlayer$NativeEventHandler;

    .line 111
    iput-object v0, p0, Landroid/media/JetPlayer;->mInitializationLooper:Landroid/os/Looper;

    .line 116
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/JetPlayer;->mEventListenerLock:Ljava/lang/Object;

    .line 118
    iput-object v0, p0, Landroid/media/JetPlayer;->mJetEventListener:Landroid/media/JetPlayer$OnJetEventListener;

    .line 160
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/media/JetPlayer;->mInitializationLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 161
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/media/JetPlayer;->mInitializationLooper:Landroid/os/Looper;

    .line 164
    :cond_0
    const/16 v0, 0x5622

    const/16 v1, 0xc

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    .line 167
    .local v0, "buffSizeInBytes":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    .line 170
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 171
    invoke-static {}, Landroid/media/JetPlayer;->getMaxTracks()I

    move-result v3

    const/16 v4, 0x4b0

    .line 175
    invoke-static {v2}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v5

    mul-int/2addr v5, v2

    div-int v2, v0, v5

    .line 174
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 170
    invoke-direct {p0, v1, v3, v2}, Landroid/media/JetPlayer;->native_setup(Ljava/lang/Object;II)Z

    .line 178
    :cond_1
    return-void
.end method

.method static synthetic access$000(Landroid/media/JetPlayer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/JetPlayer;

    .line 63
    iget-object v0, p0, Landroid/media/JetPlayer;->mEventListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/JetPlayer;)Landroid/media/JetPlayer$OnJetEventListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/JetPlayer;

    .line 63
    iget-object v0, p0, Landroid/media/JetPlayer;->mJetEventListener:Landroid/media/JetPlayer$OnJetEventListener;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 63
    invoke-static {p0}, Landroid/media/JetPlayer;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static getJetPlayer()Landroid/media/JetPlayer;
    .locals 1

    .line 141
    sget-object v0, Landroid/media/JetPlayer;->singletonRef:Landroid/media/JetPlayer;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Landroid/media/JetPlayer;

    invoke-direct {v0}, Landroid/media/JetPlayer;-><init>()V

    sput-object v0, Landroid/media/JetPlayer;->singletonRef:Landroid/media/JetPlayer;

    .line 144
    :cond_0
    sget-object v0, Landroid/media/JetPlayer;->singletonRef:Landroid/media/JetPlayer;

    return-object v0
.end method

.method public static getMaxTracks()I
    .locals 1

    .line 204
    sget v0, Landroid/media/JetPlayer;->MAXTRACKS:I

    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 583
    const-string v0, "JetPlayer-J"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ android.media.JetPlayer ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 587
    const-string v0, "JetPlayer-J"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ android.media.JetPlayer ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    return-void
.end method

.method private final native native_clearQueue()Z
.end method

.method private final native native_closeJetFile()Z
.end method

.method private final native native_finalize()V
.end method

.method private final native native_loadJetFromFile(Ljava/lang/String;)Z
.end method

.method private final native native_loadJetFromFileD(Ljava/io/FileDescriptor;JJ)Z
.end method

.method private final native native_pauseJet()Z
.end method

.method private final native native_playJet()Z
.end method

.method private final native native_queueJetSegment(IIIIIB)Z
.end method

.method private final native native_queueJetSegmentMuteArray(IIII[ZB)Z
.end method

.method private final native native_release()V
.end method

.method private final native native_setMuteArray([ZZ)Z
.end method

.method private final native native_setMuteFlag(IZZ)Z
.end method

.method private final native native_setMuteFlags(IZ)Z
.end method

.method private final native native_setup(Ljava/lang/Object;II)Z
.end method

.method private final native native_triggerClip(I)Z
.end method

.method private static postEventFromNative(Ljava/lang/Object;III)V
    .locals 3
    .param p0, "jetplayer_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 566
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/JetPlayer;

    .line 568
    .local v0, "jet":Landroid/media/JetPlayer;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/media/JetPlayer;->mEventHandler:Landroid/media/JetPlayer$NativeEventHandler;

    if-eqz v1, :cond_0

    .line 569
    iget-object v1, v0, Landroid/media/JetPlayer;->mEventHandler:Landroid/media/JetPlayer$NativeEventHandler;

    const/4 v2, 0x0

    .line 570
    invoke-virtual {v1, p1, p2, p3, v2}, Landroid/media/JetPlayer$NativeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 571
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Landroid/media/JetPlayer;->mEventHandler:Landroid/media/JetPlayer$NativeEventHandler;

    invoke-virtual {v2, v1}, Landroid/media/JetPlayer$NativeEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 574
    .end local v1    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public clearQueue()Z
    .locals 1

    .line 391
    invoke-direct {p0}, Landroid/media/JetPlayer;->native_clearQueue()Z

    move-result v0

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public closeJetFile()Z
    .locals 1

    .line 240
    invoke-direct {p0}, Landroid/media/JetPlayer;->native_closeJetFile()Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0

    .line 182
    invoke-direct {p0}, Landroid/media/JetPlayer;->native_finalize()V

    .line 183
    return-void
.end method

.method public loadJetFile(Landroid/content/res/AssetFileDescriptor;)Z
    .locals 8
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;

    .line 227
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    .line 228
    .local v6, "len":J
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-ltz v0, :cond_0

    .line 231
    nop

    .line 232
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    .line 231
    move-object v0, p0

    move-wide v4, v6

    invoke-direct/range {v0 .. v5}, Landroid/media/JetPlayer;->native_loadJetFromFileD(Ljava/io/FileDescriptor;JJ)Z

    move-result v0

    return v0

    .line 229
    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v1, "no length for fd"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public loadJetFile(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 217
    invoke-direct {p0, p1}, Landroid/media/JetPlayer;->native_loadJetFromFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public pause()Z
    .locals 1

    .line 258
    invoke-direct {p0}, Landroid/media/JetPlayer;->native_pauseJet()Z

    move-result v0

    return v0
.end method

.method public play()Z
    .locals 1

    .line 249
    invoke-direct {p0}, Landroid/media/JetPlayer;->native_playJet()Z

    move-result v0

    return v0
.end method

.method public queueJetSegment(IIIIIB)Z
    .locals 1
    .param p1, "segmentNum"    # I
    .param p2, "libNum"    # I
    .param p3, "repeatCount"    # I
    .param p4, "transpose"    # I
    .param p5, "muteFlags"    # I
    .param p6, "userID"    # B

    .line 285
    invoke-direct/range {p0 .. p6}, Landroid/media/JetPlayer;->native_queueJetSegment(IIIIIB)Z

    move-result v0

    return v0
.end method

.method public queueJetSegmentMuteArray(IIII[ZB)Z
    .locals 2
    .param p1, "segmentNum"    # I
    .param p2, "libNum"    # I
    .param p3, "repeatCount"    # I
    .param p4, "transpose"    # I
    .param p5, "muteArray"    # [Z
    .param p6, "userID"    # B

    .line 314
    array-length v0, p5

    invoke-static {}, Landroid/media/JetPlayer;->getMaxTracks()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 315
    const/4 v0, 0x0

    return v0

    .line 317
    :cond_0
    invoke-direct/range {p0 .. p6}, Landroid/media/JetPlayer;->native_queueJetSegmentMuteArray(IIII[ZB)Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .line 192
    invoke-direct {p0}, Landroid/media/JetPlayer;->native_release()V

    .line 193
    const/4 v0, 0x0

    sput-object v0, Landroid/media/JetPlayer;->singletonRef:Landroid/media/JetPlayer;

    .line 194
    return-void
.end method

.method public setEventListener(Landroid/media/JetPlayer$OnJetEventListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/JetPlayer$OnJetEventListener;

    .line 463
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/JetPlayer;->setEventListener(Landroid/media/JetPlayer$OnJetEventListener;Landroid/os/Handler;)V

    .line 464
    return-void
.end method

.method public setEventListener(Landroid/media/JetPlayer$OnJetEventListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Landroid/media/JetPlayer$OnJetEventListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 475
    iget-object v0, p0, Landroid/media/JetPlayer;->mEventListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 477
    :try_start_0
    iput-object p1, p0, Landroid/media/JetPlayer;->mJetEventListener:Landroid/media/JetPlayer$OnJetEventListener;

    .line 479
    if-eqz p1, :cond_1

    .line 480
    if-eqz p2, :cond_0

    .line 481
    new-instance v1, Landroid/media/JetPlayer$NativeEventHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, p0, v2}, Landroid/media/JetPlayer$NativeEventHandler;-><init>(Landroid/media/JetPlayer;Landroid/media/JetPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/JetPlayer;->mEventHandler:Landroid/media/JetPlayer$NativeEventHandler;

    goto :goto_0

    .line 484
    :cond_0
    new-instance v1, Landroid/media/JetPlayer$NativeEventHandler;

    iget-object v2, p0, Landroid/media/JetPlayer;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, p0, v2}, Landroid/media/JetPlayer$NativeEventHandler;-><init>(Landroid/media/JetPlayer;Landroid/media/JetPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/JetPlayer;->mEventHandler:Landroid/media/JetPlayer$NativeEventHandler;

    goto :goto_0

    .line 487
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/JetPlayer;->mEventHandler:Landroid/media/JetPlayer$NativeEventHandler;

    .line 490
    :goto_0
    monitor-exit v0

    .line 491
    return-void

    .line 490
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMuteArray([ZZ)Z
    .locals 2
    .param p1, "muteArray"    # [Z
    .param p2, "sync"    # Z

    .line 349
    array-length v0, p1

    invoke-static {}, Landroid/media/JetPlayer;->getMaxTracks()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 350
    const/4 v0, 0x0

    return v0

    .line 351
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/media/JetPlayer;->native_setMuteArray([ZZ)Z

    move-result v0

    return v0
.end method

.method public setMuteFlag(IZZ)Z
    .locals 1
    .param p1, "trackId"    # I
    .param p2, "muteFlag"    # Z
    .param p3, "sync"    # Z

    .line 366
    invoke-direct {p0, p1, p2, p3}, Landroid/media/JetPlayer;->native_setMuteFlag(IZZ)Z

    move-result v0

    return v0
.end method

.method public setMuteFlags(IZ)Z
    .locals 1
    .param p1, "muteFlags"    # I
    .param p2, "sync"    # Z

    .line 333
    invoke-direct {p0, p1, p2}, Landroid/media/JetPlayer;->native_setMuteFlags(IZ)Z

    move-result v0

    return v0
.end method

.method public triggerClip(I)Z
    .locals 1
    .param p1, "clipId"    # I

    .line 382
    invoke-direct {p0, p1}, Landroid/media/JetPlayer;->native_triggerClip(I)Z

    move-result v0

    return v0
.end method
