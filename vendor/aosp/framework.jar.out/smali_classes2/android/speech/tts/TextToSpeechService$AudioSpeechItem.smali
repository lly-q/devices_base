.class Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;
.super Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioSpeechItem"
.end annotation


# instance fields
.field private final mItem:Landroid/speech/tts/AudioPlaybackQueueItem;

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 7
    .param p2, "callerIdentity"    # Ljava/lang/Object;
    .param p3, "callerUid"    # I
    .param p4, "callerPid"    # I
    .param p5, "params"    # Landroid/os/Bundle;
    .param p6, "utteranceId"    # Ljava/lang/String;
    .param p7, "uri"    # Landroid/net/Uri;

    .line 1134
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 1135
    invoke-direct/range {p0 .. p6}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;)V

    .line 1136
    new-instance v6, Landroid/speech/tts/AudioPlaybackQueueItem;

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v2

    .line 1137
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;->getAudioParams()Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    move-result-object v5

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p7

    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/AudioPlaybackQueueItem;-><init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/content/Context;Landroid/net/Uri;Landroid/speech/tts/TextToSpeechService$AudioOutputParams;)V

    iput-object v6, p0, Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;->mItem:Landroid/speech/tts/AudioPlaybackQueueItem;

    .line 1138
    return-void
.end method


# virtual methods
.method getAudioParams()Landroid/speech/tts/TextToSpeechService$AudioOutputParams;
    .locals 2

    .line 1162
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;->mParams:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->createFromParamsBundle(Landroid/os/Bundle;Z)Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    move-result-object v0

    return-object v0
.end method

.method public getUtteranceId()Ljava/lang/String;
    .locals 3

    .line 1157
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;->mParams:Landroid/os/Bundle;

    const-string/jumbo v1, "utteranceId"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;->getStringParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 1142
    const/4 v0, 0x1

    return v0
.end method

.method protected playImpl()V
    .locals 2

    .line 1147
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->access$300(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;->mItem:Landroid/speech/tts/AudioPlaybackQueueItem;

    invoke-virtual {v0, v1}, Landroid/speech/tts/AudioPlaybackHandler;->enqueue(Landroid/speech/tts/PlaybackQueueItem;)V

    .line 1148
    return-void
.end method

.method protected stopImpl()V
    .locals 0

    .line 1153
    return-void
.end method
