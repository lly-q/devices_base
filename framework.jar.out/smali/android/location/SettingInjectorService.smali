.class public abstract Landroid/location/SettingInjectorService;
.super Landroid/app/Service;
.source "SettingInjectorService.java"


# static fields
.field public static final ACTION_INJECTED_SETTING_CHANGED:Ljava/lang/String; = "android.location.InjectedSettingChanged"

.field public static final ACTION_SERVICE_INTENT:Ljava/lang/String; = "android.location.SettingInjectorService"

.field public static final ATTRIBUTES_NAME:Ljava/lang/String; = "injected-location-setting"

.field public static final ENABLED_KEY:Ljava/lang/String; = "enabled"

.field public static final MESSENGER_KEY:Ljava/lang/String; = "messenger"

.field public static final META_DATA_NAME:Ljava/lang/String; = "android.location.SettingInjectorService"

.field private static final TAG:Ljava/lang/String; = "SettingInjectorService"


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 131
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 132
    iput-object p1, p0, Landroid/location/SettingInjectorService;->mName:Ljava/lang/String;

    .line 133
    return-void
.end method

.method private onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 156
    :try_start_0
    invoke-virtual {p0}, Landroid/location/SettingInjectorService;->onGetEnabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .local v0, "enabled":Z
    nop

    .line 161
    nop

    .line 164
    invoke-direct {p0, p1, v0}, Landroid/location/SettingInjectorService;->sendStatus(Landroid/content/Intent;Z)V

    .line 165
    return-void

    .line 157
    .end local v0    # "enabled":Z
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/location/SettingInjectorService;->sendStatus(Landroid/content/Intent;Z)V

    .line 161
    throw v0
.end method

.method private sendStatus(Landroid/content/Intent;Z)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "enabled"    # Z

    .line 172
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 173
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 174
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "enabled"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 175
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 177
    const-string v2, "SettingInjectorService"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    const-string v2, "SettingInjectorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/location/SettingInjectorService;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", sending message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    const-string/jumbo v2, "messenger"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 184
    .local v2, "messenger":Landroid/os/Messenger;
    :try_start_0
    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    goto :goto_0

    .line 185
    :catch_0
    move-exception v3

    .line 186
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "SettingInjectorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/location/SettingInjectorService;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": sending dynamic status failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract onGetEnabled()Z
.end method

.method protected abstract onGetSummary()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public final onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .line 142
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 143
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 147
    invoke-direct {p0, p1}, Landroid/location/SettingInjectorService;->onHandleIntent(Landroid/content/Intent;)V

    .line 148
    invoke-virtual {p0, p3}, Landroid/location/SettingInjectorService;->stopSelf(I)V

    .line 149
    const/4 v0, 0x2

    return v0
.end method