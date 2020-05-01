.class Lcom/android/server/OnePlusPowerController$5;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/OnePlusPowerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OnePlusPowerController;

    .line 1210
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1213
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1215
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1216
    const-string v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$2100(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1219
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1400()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "OnePlusPowerController"

    const-string v2, "In light device idle mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    :cond_0
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$2200(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->disableExclusiveWakeLocks()V

    goto/16 :goto_1

    .line 1225
    :cond_1
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1400()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "OnePlusPowerController"

    const-string v2, "Leave light device idle mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    :cond_2
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$2100(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v1

    if-nez v1, :cond_16

    .line 1229
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$2200(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->enableExclusiveWakeLocks()V

    goto/16 :goto_1

    .line 1232
    :cond_3
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1233
    const-string v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$2100(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v1

    if-nez v1, :cond_16

    .line 1236
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1400()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "OnePlusPowerController"

    const-string v2, "Leave device idle mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    :cond_4
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$2200(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->enableExclusiveWakeLocks()V

    goto/16 :goto_1

    .line 1243
    :cond_5
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 1244
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_0

    .line 1254
    :cond_6
    const-string/jumbo v1, "net.oneplus.powercontroller.intent.OPSM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_8

    .line 1255
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$000(Lcom/android/server/OnePlusPowerController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1256
    :try_start_0
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v3}, Lcom/android/server/OnePlusPowerController;->access$600(Lcom/android/server/OnePlusPowerController;)I

    move-result v3

    if-lez v3, :cond_7

    iget-object v3, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v3}, Lcom/android/server/OnePlusPowerController;->access$700(Lcom/android/server/OnePlusPowerController;)I

    move-result v3

    if-ne v3, v2, :cond_7

    .line 1257
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$800(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;

    move-result-object v2

    const/16 v3, 0x15be

    invoke-virtual {v2, v3}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1259
    :cond_7
    monitor-exit v1

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1260
    :cond_8
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    .line 1261
    const-string/jumbo v1, "plugged"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1262
    .local v1, "plugged":I
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    and-int/lit8 v4, v1, 0x7

    if-eqz v4, :cond_9

    const/4 v3, 0x1

    nop

    :cond_9
    invoke-static {v2, v3}, Lcom/android/server/OnePlusPowerController;->access$302(Lcom/android/server/OnePlusPowerController;Z)Z

    .line 1263
    .end local v1    # "plugged":I
    goto/16 :goto_1

    :cond_a
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1400()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1264
    const-string/jumbo v1, "net.oneplus.powercontroller.action.RECORD_IDLE_ITEM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1265
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$800(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1268
    :cond_b
    const-string/jumbo v1, "net.oneplus.powercontroller.action.RESTORE_IDLE_ITEM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1269
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$800(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1272
    :cond_c
    const-string/jumbo v1, "net.oneplus.powercontroller.action.PROCESS_KMEANS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1273
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$800(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1276
    :cond_d
    const-string/jumbo v1, "net.oneplus.powercontroller.action.IDLE_STATS_CONFIG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1277
    const-string/jumbo v1, "seed"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1278
    .local v1, "seed":I
    const-string v2, "cluster"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1279
    .local v2, "cluster":I
    const-string/jumbo v4, "min_rec"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1280
    .local v4, "min_rec":I
    const-string/jumbo v5, "min_idle"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1281
    .local v5, "min_idle":I
    const-string/jumbo v6, "max_idle"

    invoke-virtual {p2, v6, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1282
    .local v6, "max_idle":I
    const-string/jumbo v7, "min_len"

    invoke-virtual {p2, v7, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1283
    .local v7, "min_len":I
    const-string/jumbo v8, "max_len"

    invoke-virtual {p2, v8, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 1284
    .local v8, "max_len":I
    const-string/jumbo v9, "tolerance"

    invoke-virtual {p2, v9, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1286
    .local v3, "tolerance":I
    if-lez v1, :cond_e

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$2302(I)I

    .line 1287
    :cond_e
    if-lez v2, :cond_f

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$2402(I)I

    .line 1288
    :cond_f
    if-lez v4, :cond_10

    invoke-static {v4}, Lcom/android/server/OnePlusPowerController;->access$2502(I)I

    .line 1289
    :cond_10
    if-lez v5, :cond_11

    invoke-static {v5}, Lcom/android/server/OnePlusPowerController;->access$2602(I)I

    .line 1290
    :cond_11
    if-lez v6, :cond_12

    invoke-static {v6}, Lcom/android/server/OnePlusPowerController;->access$2702(I)I

    .line 1291
    :cond_12
    if-lez v7, :cond_13

    invoke-static {v7}, Lcom/android/server/OnePlusPowerController;->access$2802(I)I

    .line 1292
    :cond_13
    if-lez v8, :cond_14

    invoke-static {v8}, Lcom/android/server/OnePlusPowerController;->access$2902(I)I

    .line 1293
    :cond_14
    if-lez v3, :cond_16

    invoke-static {v3}, Lcom/android/server/OnePlusPowerController;->access$3002(I)I

    .line 1293
    .end local v1    # "seed":I
    .end local v2    # "cluster":I
    .end local v3    # "tolerance":I
    .end local v4    # "min_rec":I
    .end local v5    # "min_idle":I
    .end local v6    # "max_idle":I
    .end local v7    # "min_len":I
    .end local v8    # "max_len":I
    goto :goto_1

    .line 1245
    :cond_15
    :goto_0
    const-string v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$000(Lcom/android/server/OnePlusPowerController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1252
    :try_start_1
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v2}, Lcom/android/server/OnePlusPowerController;->scheduleNextAlarmIfNeededLocked()V

    .line 1253
    monitor-exit v1

    .line 1296
    :cond_16
    :goto_1
    return-void

    .line 1253
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2
.end method
