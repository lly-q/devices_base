.class Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$1;
.super Ljava/lang/Object;
.source "ScanOnlyModeManager.java"

# interfaces
.implements Lcom/android/server/wifi/WifiNative$InterfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    .line 149
    iput-object p1, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$1;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroyed(Ljava/lang/String;)V
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$1;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->this$0:Lcom/android/server/wifi/ScanOnlyModeManager;

    invoke-static {v0}, Lcom/android/server/wifi/ScanOnlyModeManager;->access$200(Lcom/android/server/wifi/ScanOnlyModeManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$1;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->this$0:Lcom/android/server/wifi/ScanOnlyModeManager;

    invoke-static {v0}, Lcom/android/server/wifi/ScanOnlyModeManager;->access$200(Lcom/android/server/wifi/ScanOnlyModeManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$1;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->sendMessage(I)V

    .line 155
    :cond_0
    return-void
.end method

.method public onDown(Ljava/lang/String;)V
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$1;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->this$0:Lcom/android/server/wifi/ScanOnlyModeManager;

    invoke-static {v0}, Lcom/android/server/wifi/ScanOnlyModeManager;->access$200(Lcom/android/server/wifi/ScanOnlyModeManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$1;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->this$0:Lcom/android/server/wifi/ScanOnlyModeManager;

    invoke-static {v0}, Lcom/android/server/wifi/ScanOnlyModeManager;->access$200(Lcom/android/server/wifi/ScanOnlyModeManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$1;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->sendMessage(II)V

    .line 169
    :cond_0
    return-void
.end method

.method public onUp(Ljava/lang/String;)V
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$1;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->this$0:Lcom/android/server/wifi/ScanOnlyModeManager;

    invoke-static {v0}, Lcom/android/server/wifi/ScanOnlyModeManager;->access$200(Lcom/android/server/wifi/ScanOnlyModeManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$1;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->this$0:Lcom/android/server/wifi/ScanOnlyModeManager;

    invoke-static {v0}, Lcom/android/server/wifi/ScanOnlyModeManager;->access$200(Lcom/android/server/wifi/ScanOnlyModeManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine$1;->this$1:Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/ScanOnlyModeManager$ScanOnlyModeStateMachine;->sendMessage(II)V

    .line 162
    :cond_0
    return-void
.end method
