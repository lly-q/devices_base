.class public abstract Landroid/service/vr/VrListenerService;
.super Landroid/app/Service;
.source "VrListenerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/vr/VrListenerService$VrListenerHandler;
    }
.end annotation


# static fields
.field private static final MSG_ON_CURRENT_VR_ACTIVITY_CHANGED:I = 0x1

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.vr.VrListenerService"


# instance fields
.field private final mBinder:Landroid/service/vr/IVrListener$Stub;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 101
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 71
    new-instance v0, Landroid/service/vr/VrListenerService$1;

    invoke-direct {v0, p0}, Landroid/service/vr/VrListenerService$1;-><init>(Landroid/service/vr/VrListenerService;)V

    iput-object v0, p0, Landroid/service/vr/VrListenerService;->mBinder:Landroid/service/vr/IVrListener$Stub;

    .line 102
    new-instance v0, Landroid/service/vr/VrListenerService$VrListenerHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/service/vr/VrListenerService$VrListenerHandler;-><init>(Landroid/service/vr/VrListenerService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/vr/VrListenerService;->mHandler:Landroid/os/Handler;

    .line 103
    return-void
.end method

.method static synthetic access$000(Landroid/service/vr/VrListenerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/service/vr/VrListenerService;

    .line 59
    iget-object v0, p0, Landroid/service/vr/VrListenerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static final isVrModePackageEnabled(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestedComponent"    # Landroid/content/ComponentName;

    .line 166
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 167
    .local v0, "am":Landroid/app/ActivityManager;
    if-nez v0, :cond_0

    .line 168
    const/4 v1, 0x0

    return v1

    .line 170
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->isVrModePackageEnabled(Landroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 98
    iget-object v0, p0, Landroid/service/vr/VrListenerService;->mBinder:Landroid/service/vr/IVrListener$Stub;

    return-object v0
.end method

.method public onCurrentVrActivityChanged(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 123
    return-void
.end method

.method public onCurrentVrActivityChanged(Landroid/content/ComponentName;ZI)V
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "running2dInVr"    # Z
    .param p3, "pid"    # I

    .line 145
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/service/vr/VrListenerService;->onCurrentVrActivityChanged(Landroid/content/ComponentName;)V

    .line 146
    return-void
.end method
