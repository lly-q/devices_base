.class Lcom/android/internal/telephony/uicc/UiccSlot$1;
.super Ljava/lang/Object;
.source "UiccSlot.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/UiccSlot;->promptForRestart(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccSlot;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccSlot;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/UiccSlot;

    .line 297
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot$1;->this$0:Lcom/android/internal/telephony/uicc/UiccSlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 300
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot$1;->this$0:Lcom/android/internal/telephony/uicc/UiccSlot;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->access$000(Lcom/android/internal/telephony/uicc/UiccSlot;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 301
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 302
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot$1;->this$0:Lcom/android/internal/telephony/uicc/UiccSlot;

    const-string v2, "Reboot due to SIM swap"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->access$100(Lcom/android/internal/telephony/uicc/UiccSlot;Ljava/lang/String;)V

    .line 303
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot$1;->this$0:Lcom/android/internal/telephony/uicc/UiccSlot;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->access$200(Lcom/android/internal/telephony/uicc/UiccSlot;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    .line 304
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 305
    .local v1, "pm":Landroid/os/PowerManager;
    const-string v2, "SIM is added."

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .end local v1    # "pm":Landroid/os/PowerManager;
    goto :goto_0

    .line 307
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 308
    return-void

    .line 307
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
