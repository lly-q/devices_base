.class Lcom/android/server/am/OnePlusAppBootManager$2;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusAppBootManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusAppBootManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusAppBootManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusAppBootManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusAppBootManager;

    .line 2255
    iput-object p1, p0, Lcom/android/server/am/OnePlusAppBootManager$2;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2257
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_0

    .line 2258
    return-void

    .line 2260
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2261
    .local v0, "action":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# mPackageReceiver # onReceive # action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2263
    :cond_1
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    .line 2264
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 2265
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_2

    .line 2266
    return-void

    .line 2268
    :cond_2
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 2269
    .local v5, "pkgName":Ljava/lang/String;
    sget-boolean v6, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "# mPackageReceiver # onReceive # mPkgMap replaced "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2270
    :cond_3
    iget-object v6, p0, Lcom/android/server/am/OnePlusAppBootManager$2;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v6, v6, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2271
    iget-object v6, p0, Lcom/android/server/am/OnePlusAppBootManager$2;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v6, v6, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->removeMessages(I)V

    .line 2273
    :cond_4
    iget-object v6, p0, Lcom/android/server/am/OnePlusAppBootManager$2;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v6, v6, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x15

    invoke-static {v6, v7, v8, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 2274
    .local v4, "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/server/am/OnePlusAppBootManager$2;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v6, v6, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v6, v4, v2, v3}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2275
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "pkgName":Ljava/lang/String;
    goto/16 :goto_0

    :cond_5
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2276
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 2277
    .restart local v1    # "uri":Landroid/net/Uri;
    if-nez v1, :cond_6

    .line 2278
    return-void

    .line 2280
    :cond_6
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 2281
    .restart local v5    # "pkgName":Ljava/lang/String;
    sget-boolean v6, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v6, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "# mPackageReceiver # onReceive # mPkgMap removed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2282
    :cond_7
    iget-object v6, p0, Lcom/android/server/am/OnePlusAppBootManager$2;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v6, v6, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x16

    invoke-static {v6, v7, v8, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 2283
    .restart local v4    # "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/server/am/OnePlusAppBootManager$2;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v6, v6, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v6, v4, v2, v3}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2284
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "pkgName":Ljava/lang/String;
    goto :goto_0

    :cond_8
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2285
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 2286
    .restart local v1    # "uri":Landroid/net/Uri;
    if-nez v1, :cond_9

    .line 2287
    return-void

    .line 2289
    :cond_9
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 2290
    .restart local v5    # "pkgName":Ljava/lang/String;
    sget-boolean v6, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v6, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "# mPackageReceiver # onReceive # mPkgMap added "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2291
    :cond_a
    iget-object v6, p0, Lcom/android/server/am/OnePlusAppBootManager$2;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v6, v6, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2292
    iget-object v6, p0, Lcom/android/server/am/OnePlusAppBootManager$2;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v6, v6, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->removeMessages(I)V

    .line 2294
    :cond_b
    iget-object v6, p0, Lcom/android/server/am/OnePlusAppBootManager$2;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v6, v6, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x17

    invoke-static {v6, v7, v8, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 2295
    .restart local v4    # "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/server/am/OnePlusAppBootManager$2;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v6, v6, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v6, v4, v2, v3}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2298
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_c
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager$2;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    const-wide/16 v2, 0x4e20

    invoke-static {v1, v2, v3}, Lcom/android/server/am/OnePlusAppBootManager;->access$400(Lcom/android/server/am/OnePlusAppBootManager;J)V

    .line 2299
    return-void
.end method
