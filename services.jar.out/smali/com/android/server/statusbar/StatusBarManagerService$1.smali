.class Lcom/android/server/statusbar/StatusBarManagerService$1;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Lcom/android/server/statusbar/StatusBarManagerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/statusbar/StatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mNotificationLightOn:Z

.field final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/statusbar/StatusBarManagerService;

    .line 175
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appTransitionCancelled()V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->appTransitionCancelled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    goto :goto_0

    :catch_0
    move-exception v0

    .line 392
    :cond_0
    :goto_0
    return-void
.end method

.method public appTransitionFinished()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$400(Lcom/android/server/statusbar/StatusBarManagerService;)V

    .line 248
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->appTransitionFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    goto :goto_0

    :catch_0
    move-exception v0

    .line 253
    :cond_0
    :goto_0
    return-void
.end method

.method public appTransitionPending()V
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->appTransitionPending()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    goto :goto_0

    :catch_0
    move-exception v0

    .line 383
    :cond_0
    :goto_0
    return-void
.end method

.method public appTransitionStarting(JJ)V
    .locals 1
    .param p1, "statusBarAnimationsStartTime"    # J
    .param p3, "statusBarAnimationsDuration"    # J

    .line 397
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 399
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/statusbar/IStatusBar;->appTransitionStarting(JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    goto :goto_0

    :catch_0
    move-exception v0

    .line 403
    :cond_0
    :goto_0
    return-void
.end method

.method public cancelPreloadRecentApps()V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->cancelPreloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    goto :goto_0

    :catch_0
    move-exception v0

    .line 310
    :cond_0
    :goto_0
    return-void
.end method

.method public dismissKeyboardShortcutsMenu()V
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->dismissKeyboardShortcutsMenu()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    goto :goto_0

    :catch_0
    move-exception v0

    .line 337
    :cond_0
    :goto_0
    return-void
.end method

.method public hideRecentApps(ZZ)V
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .line 323
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->hideRecentApps(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    goto :goto_0

    :catch_0
    move-exception v0

    .line 328
    :cond_0
    :goto_0
    return-void
.end method

.method public onCameraLaunchGestureDetected(I)V
    .locals 1
    .param p1, "source"    # I

    .line 215
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->onCameraLaunchGestureDetected(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 221
    :cond_0
    :goto_0
    return-void
.end method

.method public onProposedRotationChanged(IZ)V
    .locals 1
    .param p1, "rotation"    # I
    .param p2, "isValid"    # Z

    .line 430
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->onProposedRotationChanged(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    goto :goto_0

    :catch_0
    move-exception v0

    .line 435
    :cond_0
    :goto_0
    return-void
.end method

.method public preloadRecentApps()V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->preloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    goto :goto_0

    :catch_0
    move-exception v0

    .line 301
    :cond_0
    :goto_0
    return-void
.end method

.method public sendGestureMotionEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 279
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->sendGestureMotionEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    goto :goto_0

    :catch_0
    move-exception v0

    .line 284
    :cond_0
    :goto_0
    return-void
.end method

.method public setCurrentUser(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .line 290
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->access$502(Lcom/android/server/statusbar/StatusBarManagerService;I)I

    .line 291
    return-void
.end method

.method public setNotificationDelegate(Lcom/android/server/notification/NotificationDelegate;)V
    .locals 1
    .param p1, "delegate"    # Lcom/android/server/notification/NotificationDelegate;

    .line 180
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->access$002(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/notification/NotificationDelegate;)Lcom/android/server/notification/NotificationDelegate;

    .line 181
    return-void
.end method

.method public setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 8
    .param p1, "vis"    # I
    .param p2, "fullscreenStackVis"    # I
    .param p3, "dockedStackVis"    # I
    .param p4, "mask"    # I
    .param p5, "fullscreenBounds"    # Landroid/graphics/Rect;
    .param p6, "dockedBounds"    # Landroid/graphics/Rect;
    .param p7, "cause"    # Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Lcom/android/server/statusbar/StatusBarManagerService;->access$300(Lcom/android/server/statusbar/StatusBarManagerService;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public setTopAppHidesStatusBar(Z)V
    .locals 1
    .param p1, "hidesStatusBar"    # Z

    .line 407
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->setTopAppHidesStatusBar(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    goto :goto_0

    :catch_0
    move-exception v0

    .line 412
    :cond_0
    :goto_0
    return-void
.end method

.method public setWindowState(II)V
    .locals 1
    .param p1, "window"    # I
    .param p2, "state"    # I

    .line 369
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 371
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->setWindowState(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    goto :goto_0

    :catch_0
    move-exception v0

    .line 374
    :cond_0
    :goto_0
    return-void
.end method

.method public showAssistDisclosure()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->showAssistDisclosure()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 201
    :cond_0
    :goto_0
    return-void
.end method

.method public showChargingAnimation(I)V
    .locals 1
    .param p1, "batteryLevel"    # I

    .line 350
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->showWirelessChargingAnimation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    goto :goto_0

    .line 353
    :catch_0
    move-exception v0

    .line 356
    :cond_0
    :goto_0
    return-void
.end method

.method public showPictureInPictureMenu()V
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->showPictureInPictureMenu()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    goto :goto_0

    :catch_0
    move-exception v0

    .line 365
    :cond_0
    :goto_0
    return-void
.end method

.method public showRecentApps(Z)V
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z

    .line 314
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->showRecentApps(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    goto :goto_0

    :catch_0
    move-exception v0

    .line 319
    :cond_0
    :goto_0
    return-void
.end method

.method public showScreenPinningRequest(I)V
    .locals 1
    .param p1, "taskId"    # I

    .line 185
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->showScreenPinningRequest(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 191
    :cond_0
    :goto_0
    return-void
.end method

.method public showShutdownUi(ZLjava/lang/String;)Z
    .locals 2
    .param p1, "isReboot"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 416
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$600(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 417
    return v1

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->showShutdownUi(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    const/4 v0, 0x1

    return v0

    .line 423
    :catch_0
    move-exception v0

    .line 425
    :cond_1
    return v1
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;

    .line 205
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->startAssist(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 211
    :cond_0
    :goto_0
    return-void
.end method

.method public toggleKeyboardShortcutsMenu(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .line 341
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->toggleKeyboardShortcutsMenu(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    goto :goto_0

    :catch_0
    move-exception v0

    .line 346
    :cond_0
    :goto_0
    return-void
.end method

.method public toggleRecentApps()V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    goto :goto_0

    :catch_0
    move-exception v0

    .line 262
    :cond_0
    :goto_0
    return-void
.end method

.method public toggleRecentAppsWithGesture(IIFF)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "scale"    # F
    .param p4, "alpha"    # F

    .line 268
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/statusbar/IStatusBar;->toggleRecentAppsWithGesture(IIFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    goto :goto_0

    :catch_0
    move-exception v0

    .line 273
    :cond_0
    :goto_0
    return-void
.end method

.method public toggleSplitScreen()V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$400(Lcom/android/server/statusbar/StatusBarManagerService;)V

    .line 239
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->toggleSplitScreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    goto :goto_0

    :catch_0
    move-exception v0

    .line 244
    :cond_0
    :goto_0
    return-void
.end method

.method public topAppWindowChanged(Z)V
    .locals 1
    .param p1, "menuVisible"    # Z

    .line 225
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->access$200(Lcom/android/server/statusbar/StatusBarManagerService;Z)V

    .line 226
    return-void
.end method
