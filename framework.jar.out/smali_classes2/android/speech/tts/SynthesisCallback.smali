.class public interface abstract Landroid/speech/tts/SynthesisCallback;
.super Ljava/lang/Object;
.source "SynthesisCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/SynthesisCallback$SupportedAudioFormat;
    }
.end annotation


# virtual methods
.method public abstract audioAvailable([BII)I
.end method

.method public abstract done()I
.end method

.method public abstract error()V
.end method

.method public abstract error(I)V
.end method

.method public abstract getMaxBufferSize()I
.end method

.method public abstract hasFinished()Z
.end method

.method public abstract hasStarted()Z
.end method

.method public rangeStart(III)V
    .locals 0
    .param p1, "markerInFrames"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 169
    return-void
.end method

.method public abstract start(III)I
.end method
