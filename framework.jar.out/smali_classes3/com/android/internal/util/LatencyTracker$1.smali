.class Lcom/android/internal/util/LatencyTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "LatencyTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/util/LatencyTracker;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/util/LatencyTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/util/LatencyTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/util/LatencyTracker;

    .line 104
    iput-object p1, p0, Lcom/android/internal/util/LatencyTracker$1;->this$0:Lcom/android/internal/util/LatencyTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 107
    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker$1;->this$0:Lcom/android/internal/util/LatencyTracker;

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->access$000(Lcom/android/internal/util/LatencyTracker;)V

    .line 108
    return-void
.end method
