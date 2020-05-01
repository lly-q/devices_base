.class public Lcom/android/server/OemSceneAutoBrightnessController$AutoBackLightSettingsContentObserver;
.super Landroid/database/ContentObserver;
.source "OemSceneAutoBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemSceneAutoBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutoBackLightSettingsContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneAutoBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/server/OemSceneAutoBrightnessController;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OemSceneAutoBrightnessController;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 118
    iput-object p1, p0, Lcom/android/server/OemSceneAutoBrightnessController$AutoBackLightSettingsContentObserver;->this$0:Lcom/android/server/OemSceneAutoBrightnessController;

    .line 119
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 120
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 123
    invoke-static {}, Lcom/android/server/OemSceneAutoBrightnessController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemSceneAutoBrightnessController"

    const-string v1, "[scene] Auto backlight Settings changed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneAutoBrightnessController$AutoBackLightSettingsContentObserver;->this$0:Lcom/android/server/OemSceneAutoBrightnessController;

    invoke-static {v0}, Lcom/android/server/OemSceneAutoBrightnessController;->access$200(Lcom/android/server/OemSceneAutoBrightnessController;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/android/server/OemSceneAutoBrightnessController$AutoBackLightSettingsContentObserver;->this$0:Lcom/android/server/OemSceneAutoBrightnessController;

    invoke-static {v0, v1}, Lcom/android/server/OemSceneAutoBrightnessController;->access$202(Lcom/android/server/OemSceneAutoBrightnessController;Z)Z

    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/android/server/OemSceneAutoBrightnessController$AutoBackLightSettingsContentObserver;->this$0:Lcom/android/server/OemSceneAutoBrightnessController;

    invoke-static {v0}, Lcom/android/server/OemSceneAutoBrightnessController;->access$300(Lcom/android/server/OemSceneAutoBrightnessController;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/android/server/OemSceneAutoBrightnessController$AutoBackLightSettingsContentObserver;->this$0:Lcom/android/server/OemSceneAutoBrightnessController;

    invoke-static {v0}, Lcom/android/server/OemSceneAutoBrightnessController;->access$400(Lcom/android/server/OemSceneAutoBrightnessController;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    iget-object v0, p0, Lcom/android/server/OemSceneAutoBrightnessController$AutoBackLightSettingsContentObserver;->this$0:Lcom/android/server/OemSceneAutoBrightnessController;

    invoke-static {v0, v1}, Lcom/android/server/OemSceneAutoBrightnessController;->access$500(Lcom/android/server/OemSceneAutoBrightnessController;Z)V

    goto :goto_0

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/android/server/OemSceneAutoBrightnessController$AutoBackLightSettingsContentObserver;->this$0:Lcom/android/server/OemSceneAutoBrightnessController;

    invoke-static {v0, v1}, Lcom/android/server/OemSceneAutoBrightnessController;->access$302(Lcom/android/server/OemSceneAutoBrightnessController;Z)Z

    .line 137
    :cond_3
    :goto_0
    return-void
.end method
