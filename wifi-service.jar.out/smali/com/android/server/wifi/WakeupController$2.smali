.class Lcom/android/server/wifi/WakeupController$2;
.super Landroid/database/ContentObserver;
.source "WakeupController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WakeupController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/WakeupLock;Lcom/android/server/wifi/WakeupEvaluator;Lcom/android/server/wifi/WakeupOnboarding;Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/WifiConfigStore;Lcom/android/server/wifi/WifiWakeMetrics;Lcom/android/server/wifi/WifiInjector;Lcom/android/server/wifi/FrameworkFacade;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WakeupController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WakeupController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WakeupController;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 127
    iput-object p1, p0, Lcom/android/server/wifi/WakeupController$2;->this$0:Lcom/android/server/wifi/WakeupController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 130
    iget-object v0, p0, Lcom/android/server/wifi/WakeupController$2;->this$0:Lcom/android/server/wifi/WakeupController;

    invoke-static {v0}, Lcom/android/server/wifi/WakeupController;->access$200(Lcom/android/server/wifi/WakeupController;)V

    .line 131
    iget-object v0, p0, Lcom/android/server/wifi/WakeupController$2;->this$0:Lcom/android/server/wifi/WakeupController;

    invoke-static {v0}, Lcom/android/server/wifi/WakeupController;->access$300(Lcom/android/server/wifi/WakeupController;)Lcom/android/server/wifi/WakeupOnboarding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WakeupOnboarding;->setOnboarded()V

    .line 132
    return-void
.end method
