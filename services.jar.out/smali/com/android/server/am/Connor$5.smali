.class Lcom/android/server/am/Connor$5;
.super Ljava/lang/Object;
.source "Connor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Connor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/Connor;


# direct methods
.method constructor <init>(Lcom/android/server/am/Connor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/Connor;

    .line 314
    iput-object p1, p0, Lcom/android/server/am/Connor$5;->this$0:Lcom/android/server/am/Connor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 317
    invoke-static {}, Lcom/android/server/am/Connor;->nativeCluster()Ljava/util/HashMap;

    move-result-object v0

    .line 318
    .local v0, "predicts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/Connor$5;->this$0:Lcom/android/server/am/Connor;

    monitor-enter v1

    .line 319
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/Connor$5;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v2, v0}, Lcom/android/server/am/Connor;->access$1202(Lcom/android/server/am/Connor;Ljava/util/Map;)Ljava/util/Map;

    .line 320
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    iget-object v1, p0, Lcom/android/server/am/Connor$5;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v1}, Lcom/android/server/am/Connor;->access$1300(Lcom/android/server/am/Connor;)Landroid/app/usage/UsageStatsManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/android/server/am/Connor$5;->this$0:Lcom/android/server/am/Connor;

    iget-object v2, p0, Lcom/android/server/am/Connor$5;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v2}, Lcom/android/server/am/Connor;->access$500(Lcom/android/server/am/Connor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "usagestats"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManager;

    invoke-static {v1, v2}, Lcom/android/server/am/Connor;->access$1302(Lcom/android/server/am/Connor;Landroid/app/usage/UsageStatsManager;)Landroid/app/usage/UsageStatsManager;

    .line 325
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 326
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/am/Connor$5;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v2}, Lcom/android/server/am/Connor;->access$1200(Lcom/android/server/am/Connor;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 327
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/Connor$5;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v4}, Lcom/android/server/am/Connor;->access$1200(Lcom/android/server/am/Connor;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 328
    .local v4, "apps":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 328
    .local v7, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/am/Connor$5;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v8, v3}, Lcom/android/server/am/Connor;->access$1400(Lcom/android/server/am/Connor;Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .end local v7    # "name":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 329
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "apps":[Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 330
    :cond_2
    const-string v2, "android"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 335
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_2

    .line 333
    :catch_0
    move-exception v1

    .line 334
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 336
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    iget-object v1, p0, Lcom/android/server/am/Connor$5;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v1}, Lcom/android/server/am/Connor;->access$500(Lcom/android/server/am/Connor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/Connor$5;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v2}, Lcom/android/server/am/Connor;->access$1500(Lcom/android/server/am/Connor;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/32 v3, 0x36ee80

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 337
    return-void

    .line 320
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
