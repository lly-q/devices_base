.class public Lcom/android/server/wifi/WrongPasswordNotifier;
.super Ljava/lang/Object;
.source "WrongPasswordNotifier.java"


# static fields
.field private static final CANCEL_TIMEOUT_MILLISECONDS:J = 0x493e0L

.field public static final NOTIFICATION_ID:I = 0x2a
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private final mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mWrongPasswordDetected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/FrameworkFacade;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "frameworkFacade"    # Lcom/android/server/wifi/FrameworkFacade;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/server/wifi/WrongPasswordNotifier;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/android/server/wifi/WrongPasswordNotifier;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    .line 63
    iget-object v0, p0, Lcom/android/server/wifi/WrongPasswordNotifier;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/wifi/WrongPasswordNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    .line 65
    return-void
.end method

.method private checkAndSetAudioInstance()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/android/server/wifi/WrongPasswordNotifier;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/server/wifi/WrongPasswordNotifier;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/wifi/WrongPasswordNotifier;->mAudioManager:Landroid/media/AudioManager;

    .line 57
    :cond_0
    return-void
.end method

.method private dismissNotification()V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/android/server/wifi/WrongPasswordNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 129
    return-void
.end method

.method private showNotification(Ljava/lang/String;)V
    .locals 6
    .param p1, "ssid"    # Ljava/lang/String;

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "wifi_start_connect_ssid"

    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->removeEnclosingQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    iget-object v1, p0, Lcom/android/server/wifi/WrongPasswordNotifier;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v2, p0, Lcom/android/server/wifi/WrongPasswordNotifier;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/FrameworkFacade;->makeNotificationBuilder(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 97
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 98
    const-wide/32 v2, 0x493e0

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 100
    const v2, 0x108079a

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WrongPasswordNotifier;->mContext:Landroid/content/Context;

    .line 101
    const v3, 0x10406ff

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 103
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WrongPasswordNotifier;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v3, p0, Lcom/android/server/wifi/WrongPasswordNotifier;->mContext:Landroid/content/Context;

    .line 104
    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/android/server/wifi/FrameworkFacade;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WrongPasswordNotifier;->mContext:Landroid/content/Context;

    .line 106
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1060157

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 109
    .local v1, "builder":Landroid/app/Notification$Builder;
    invoke-direct {p0}, Lcom/android/server/wifi/WrongPasswordNotifier;->checkAndSetAudioInstance()V

    .line 110
    iget-object v2, p0, Lcom/android/server/wifi/WrongPasswordNotifier;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_1

    .line 111
    iget-object v2, p0, Lcom/android/server/wifi/WrongPasswordNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    .line 112
    .local v2, "mode":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 113
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 117
    .end local v2    # "mode":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WrongPasswordNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v3, 0x2a

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 118
    return-void
.end method


# virtual methods
.method public onNewConnectionAttempt()V
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/android/server/wifi/WrongPasswordNotifier;->mWrongPasswordDetected:Z

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/android/server/wifi/WrongPasswordNotifier;->dismissNotification()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WrongPasswordNotifier;->mWrongPasswordDetected:Z

    .line 85
    :cond_0
    return-void
.end method

.method public onWrongPasswordError(Ljava/lang/String;)V
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WrongPasswordNotifier;->showNotification(Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WrongPasswordNotifier;->mWrongPasswordDetected:Z

    .line 75
    return-void
.end method
