.class public abstract Landroid/service/voice/VoiceInteractionSessionService;
.super Landroid/app/Service;
.source "VoiceInteractionSessionService.java"


# static fields
.field static final MSG_NEW_SESSION:I = 0x1


# instance fields
.field mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

.field final mHandlerCallerCallback:Lcom/android/internal/os/HandlerCaller$Callback;

.field mInterface:Landroid/service/voice/IVoiceInteractionSessionService;

.field mSession:Landroid/service/voice/VoiceInteractionSession;

.field mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 46
    new-instance v0, Landroid/service/voice/VoiceInteractionSessionService$1;

    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionSessionService$1;-><init>(Landroid/service/voice/VoiceInteractionSessionService;)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mInterface:Landroid/service/voice/IVoiceInteractionSessionService;

    .line 55
    new-instance v0, Landroid/service/voice/VoiceInteractionSessionService$2;

    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionSessionService$2;-><init>(Landroid/service/voice/VoiceInteractionSessionService;)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mHandlerCallerCallback:Lcom/android/internal/os/HandlerCaller$Callback;

    return-void
.end method


# virtual methods
.method doNewSession(Landroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "startFlags"    # I

    .line 118
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionSession;->doDestroy()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    .line 122
    :cond_0
    invoke-virtual {p0, p2}, Landroid/service/voice/VoiceInteractionSessionService;->onNewSession(Landroid/os/Bundle;)Landroid/service/voice/VoiceInteractionSession;

    move-result-object v0

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    .line 124
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, v2, Landroid/service/voice/VoiceInteractionSession;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->deliverNewSession(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z

    .line 125
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-virtual {v0, v1, p1}, Landroid/service/voice/VoiceInteractionSession;->doCreate(Lcom/android/internal/app/IVoiceInteractionManagerService;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 128
    :goto_0
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 109
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    if-nez v0, :cond_0

    .line 110
    const-string v0, "(no active session)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_0
    const-string v0, "VoiceInteractionSession:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    const-string v1, "  "

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/service/voice/VoiceInteractionSession;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 115
    :goto_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 80
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mInterface:Landroid/service/voice/IVoiceInteractionSessionService;

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSessionService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 85
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 86
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v0, p1}, Landroid/service/voice/VoiceInteractionSession;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 89
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 4

    .line 69
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 70
    const-string/jumbo v0, "voiceinteraction"

    .line 71
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 70
    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionManagerService;

    move-result-object v0

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 72
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSessionService;->mHandlerCallerCallback:Lcom/android/internal/os/HandlerCaller$Callback;

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    .line 74
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 93
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 94
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionSession;->onLowMemory()V

    .line 97
    :cond_0
    return-void
.end method

.method public abstract onNewSession(Landroid/os/Bundle;)Landroid/service/voice/VoiceInteractionSession;
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .line 101
    invoke-super {p0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    .line 102
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v0, p1}, Landroid/service/voice/VoiceInteractionSession;->onTrimMemory(I)V

    .line 105
    :cond_0
    return-void
.end method
