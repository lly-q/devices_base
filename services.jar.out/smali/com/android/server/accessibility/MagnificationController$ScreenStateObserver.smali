.class Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;
.super Landroid/content/BroadcastReceiver;
.source "MagnificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenStateObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/server/accessibility/MagnificationController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/MagnificationController;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/server/accessibility/MagnificationController;

    .line 949
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 950
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->mContext:Landroid/content/Context;

    .line 951
    iput-object p2, p0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->mController:Lcom/android/server/accessibility/MagnificationController;

    .line 952
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 964
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->mController:Lcom/android/server/accessibility/MagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController;->access$400(Lcom/android/server/accessibility/MagnificationController;)V

    .line 965
    return-void
.end method

.method public register()V
    .locals 3

    .line 955
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 956
    return-void
.end method

.method public unregister()V
    .locals 1

    .line 959
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 960
    return-void
.end method
