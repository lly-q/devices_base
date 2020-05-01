.class public Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;
.super Landroid/os/Handler;
.source "OnePlusRamBoostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusRamBoostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RamBoostHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusRamBoostManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusRamBoostManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusRamBoostManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 331
    iput-object p1, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    .line 332
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 333
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 336
    invoke-static {}, Lcom/android/server/am/OnePlusRamBoostManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OnePlusSmartBoostManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/32 v1, 0x5265c00

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 390
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusRamBoostManager;->access$900(Lcom/android/server/am/OnePlusRamBoostManager;Z)V

    goto/16 :goto_0

    .line 386
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-static {v0}, Lcom/android/server/am/OnePlusRamBoostManager;->access$300(Lcom/android/server/am/OnePlusRamBoostManager;)I

    .line 387
    goto/16 :goto_0

    .line 380
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 381
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "pkgName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-static {v2, v1}, Lcom/android/server/am/OnePlusRamBoostManager;->access$1100(Lcom/android/server/am/OnePlusRamBoostManager;Ljava/lang/String;)I

    .line 383
    goto/16 :goto_0

    .line 372
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "pkgName":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 373
    .restart local v0    # "b":Landroid/os/Bundle;
    const-string/jumbo v1, "pid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 374
    .local v1, "pid":I
    const-string/jumbo v2, "pkgName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 375
    .local v2, "pkgName":Ljava/lang/String;
    const-string v3, "codePath"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 376
    .local v3, "codePath":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-static {v4, v1, v2, v3}, Lcom/android/server/am/OnePlusRamBoostManager;->access$1000(Lcom/android/server/am/OnePlusRamBoostManager;ILjava/lang/String;Ljava/lang/String;)I

    .line 377
    goto :goto_0

    .line 368
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "pid":I
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "codePath":Ljava/lang/String;
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-static {v0}, Lcom/android/server/am/OnePlusRamBoostManager;->access$800(Lcom/android/server/am/OnePlusRamBoostManager;)I

    .line 369
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusRamBoostManager;->access$900(Lcom/android/server/am/OnePlusRamBoostManager;Z)V

    .line 370
    goto :goto_0

    .line 365
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-static {v0}, Lcom/android/server/am/OnePlusRamBoostManager;->access$700(Lcom/android/server/am/OnePlusRamBoostManager;)V

    .line 366
    goto :goto_0

    .line 362
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusRamBoostManager;->access$400(Lcom/android/server/am/OnePlusRamBoostManager;J)V

    .line 363
    goto :goto_0

    .line 356
    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 357
    .restart local v0    # "b":Landroid/os/Bundle;
    const-string/jumbo v1, "pid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 358
    .restart local v1    # "pid":I
    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-static {v2, v1}, Lcom/android/server/am/OnePlusRamBoostManager;->access$600(Lcom/android/server/am/OnePlusRamBoostManager;I)Z

    .line 359
    goto :goto_0

    .line 348
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "pid":I
    :pswitch_9
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 349
    .restart local v0    # "b":Landroid/os/Bundle;
    const-string/jumbo v1, "pid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 350
    .restart local v1    # "pid":I
    const-string/jumbo v2, "pkgName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 351
    .restart local v2    # "pkgName":Ljava/lang/String;
    const-string/jumbo v3, "hotCount"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 352
    .local v3, "hotCount":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-static {v4, v2, v3, v1}, Lcom/android/server/am/OnePlusRamBoostManager;->access$500(Lcom/android/server/am/OnePlusRamBoostManager;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 353
    goto :goto_0

    .line 342
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "pid":I
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "hotCount":Ljava/lang/String;
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-static {v0}, Lcom/android/server/am/OnePlusRamBoostManager;->access$200(Lcom/android/server/am/OnePlusRamBoostManager;)V

    .line 344
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-static {v0}, Lcom/android/server/am/OnePlusRamBoostManager;->access$300(Lcom/android/server/am/OnePlusRamBoostManager;)I

    .line 345
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusRamBoostManager;->access$400(Lcom/android/server/am/OnePlusRamBoostManager;J)V

    .line 346
    goto :goto_0

    .line 339
    :pswitch_b
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-static {v0}, Lcom/android/server/am/OnePlusRamBoostManager;->access$200(Lcom/android/server/am/OnePlusRamBoostManager;)V

    .line 340
    nop

    .line 394
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
