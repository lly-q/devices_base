.class Landroid/media/AudioManager$OnAmPortUpdateListener;
.super Ljava/lang/Object;
.source "AudioManager.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioPortUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnAmPortUpdateListener"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "OnAmPortUpdateListener"


# instance fields
.field final synthetic this$0:Landroid/media/AudioManager;


# direct methods
.method private constructor <init>(Landroid/media/AudioManager;)V
    .locals 0

    .line 5046
    iput-object p1, p0, Landroid/media/AudioManager$OnAmPortUpdateListener;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioManager;Landroid/media/AudioManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/AudioManager;
    .param p2, "x1"    # Landroid/media/AudioManager$1;

    .line 5046
    invoke-direct {p0, p1}, Landroid/media/AudioManager$OnAmPortUpdateListener;-><init>(Landroid/media/AudioManager;)V

    return-void
.end method


# virtual methods
.method public onAudioPatchListUpdate([Landroid/media/AudioPatch;)V
    .locals 0
    .param p1, "patchList"    # [Landroid/media/AudioPatch;

    .line 5059
    return-void
.end method

.method public onAudioPortListUpdate([Landroid/media/AudioPort;)V
    .locals 3
    .param p1, "portList"    # [Landroid/media/AudioPort;

    .line 5049
    iget-object v0, p0, Landroid/media/AudioManager$OnAmPortUpdateListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->access$1000(Landroid/media/AudioManager;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 5050
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager$OnAmPortUpdateListener;->this$0:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/AudioManager;->access$1100(Landroid/media/AudioManager;Landroid/os/Handler;)V

    .line 5051
    monitor-exit v0

    .line 5052
    return-void

    .line 5051
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDied()V
    .locals 3

    .line 5065
    iget-object v0, p0, Landroid/media/AudioManager$OnAmPortUpdateListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->access$1000(Landroid/media/AudioManager;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 5066
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager$OnAmPortUpdateListener;->this$0:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/AudioManager;->access$1100(Landroid/media/AudioManager;Landroid/os/Handler;)V

    .line 5067
    monitor-exit v0

    .line 5068
    return-void

    .line 5067
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
