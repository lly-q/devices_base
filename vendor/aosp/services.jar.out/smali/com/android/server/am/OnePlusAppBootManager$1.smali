.class Lcom/android/server/am/OnePlusAppBootManager$1;
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

    .line 2130
    iput-object p1, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2132
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_0

    .line 2133
    return-void

    .line 2136
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2137
    .local v0, "action":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# mGeneralReceiver # onReceive # action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2139
    :cond_1
    const-string v1, "com.haha.action.test"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_10

    .line 2140
    const-string v1, "code"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2141
    .local v1, "code":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "# mGeneralReceiver # onReceive # code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2142
    const-string/jumbo v6, "persist"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2143
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v4, v2, v3}, Lcom/android/server/am/OnePlusAppBootManager;->access$400(Lcom/android/server/am/OnePlusAppBootManager;J)V

    goto/16 :goto_1

    .line 2144
    :cond_2
    const-string/jumbo v2, "prop_using_on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2145
    sput-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    .line 2146
    const-string/jumbo v2, "persist.sys.appboot.using"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2147
    :cond_3
    const-string/jumbo v2, "prop_using_off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2148
    sput-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    .line 2149
    const-string/jumbo v2, "persist.sys.appboot.using"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2150
    :cond_4
    const-string/jumbo v2, "prop_debug_on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2151
    sput-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    .line 2152
    const-string/jumbo v2, "persist.sys.appboot.debug"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2153
    :cond_5
    const-string/jumbo v2, "prop_debug_off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2154
    sput-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    .line 2155
    const-string/jumbo v2, "persist.sys.appboot.debug"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2156
    :cond_6
    const-string/jumbo v2, "prop_blacklist_on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2157
    sput-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    .line 2158
    const-string/jumbo v2, "persist.sys.appboot.blacklist"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2159
    :cond_7
    const-string/jumbo v2, "prop_blacklist_off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2160
    sput-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    .line 2161
    const-string/jumbo v2, "persist.sys.appboot.blacklist"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2162
    :cond_8
    const-string v2, "dump"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2163
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->access$500(Lcom/android/server/am/OnePlusAppBootManager;)V

    .line 2164
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->access$600(Lcom/android/server/am/OnePlusAppBootManager;)V

    goto/16 :goto_1

    .line 2165
    :cond_9
    const-string v2, "dumplist"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2166
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->access$700(Lcom/android/server/am/OnePlusAppBootManager;)V

    goto/16 :goto_1

    .line 2167
    :cond_a
    const-string v2, "dump_widget"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2168
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->access$800(Lcom/android/server/am/OnePlusAppBootManager;)Ljava/util/HashSet;

    move-result-object v2

    monitor-enter v2

    .line 2169
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->access$800(Lcom/android/server/am/OnePlusAppBootManager;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2170
    .local v4, "pkg":Ljava/lang/String;
    const-string v5, "OnePlusAppBootManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "widgetpkg : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    .end local v4    # "pkg":Ljava/lang/String;
    goto :goto_0

    .line 2172
    :cond_b
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2173
    :cond_c
    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2174
    const-string v2, "@huge@dump"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2175
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->access$900(Lcom/android/server/am/OnePlusAppBootManager;)V

    goto :goto_1

    .line 2176
    :cond_d
    const-string v2, "@huge@add@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2177
    const-string v2, "@huge@add@"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2178
    .local v2, "pkg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    const/4 v4, 0x2

    invoke-static {v3, v2, v5, v4}, Lcom/android/server/am/OnePlusAppBootManager;->access$1000(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;ZI)V

    .line 2179
    .end local v2    # "pkg":Ljava/lang/String;
    goto :goto_1

    :cond_e
    const-string v2, "@huge@start@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2180
    const-string v2, "@huge@start@"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2181
    .restart local v2    # "pkg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    const/4 v5, 0x4

    invoke-static {v3, v2, v4, v5}, Lcom/android/server/am/OnePlusAppBootManager;->access$1000(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;ZI)V

    .line 2184
    .end local v1    # "code":Ljava/lang/String;
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_f
    :goto_1
    goto :goto_2

    :cond_10
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v6, 0x1f

    if-eqz v1, :cond_12

    .line 2185
    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->access$1102(Z)Z

    .line 2187
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-static {v1, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 2188
    .local v1, "msg":Landroid/os/Message;
    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 2189
    iget-object v6, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v6, v6, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v6, v1}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2192
    invoke-static {}, Lcom/android/server/am/OnePlusAppBootManager;->access$1200()Z

    move-result v6

    if-eqz v6, :cond_11

    new-array v5, v5, [I

    const/16 v6, 0x22

    aput v6, v5, v4

    .line 2193
    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2194
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v4, v4, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    const/16 v5, 0x21

    invoke-virtual {v4, v5}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->sendEmptyMessage(I)Z

    .line 2197
    :cond_11
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v4, v2, v3}, Lcom/android/server/am/OnePlusAppBootManager;->access$400(Lcom/android/server/am/OnePlusAppBootManager;J)V

    .line 2198
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_2

    :cond_12
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2199
    invoke-static {v5}, Lcom/android/server/am/OnePlusAppBootManager;->access$1102(Z)Z

    .line 2201
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-static {v1, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 2202
    .restart local v1    # "msg":Landroid/os/Message;
    iput v5, v1, Landroid/os/Message;->arg1:I

    .line 2203
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v2, v2, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v2, v1}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2204
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_2

    :cond_13
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2205
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->access$1300(Lcom/android/server/am/OnePlusAppBootManager;)Z

    .line 2207
    :cond_14
    :goto_2
    return-void
.end method
