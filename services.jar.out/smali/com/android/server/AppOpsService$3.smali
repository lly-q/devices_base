.class Lcom/android/server/AppOpsService$3;
.super Landroid/content/BroadcastReceiver;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AppOpsService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AppOpsService;

    .line 962
    iput-object p1, p0, Lcom/android/server/AppOpsService$3;->this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 965
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 967
    .local v0, "changedPkgs":[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/AppOpsService;->access$300()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget v5, v1, v4

    .line 969
    .local v5, "code":I
    iget-object v6, p0, Lcom/android/server/AppOpsService$3;->this$0:Lcom/android/server/AppOpsService;

    monitor-enter v6

    .line 970
    :try_start_0
    iget-object v7, p0, Lcom/android/server/AppOpsService$3;->this$0:Lcom/android/server/AppOpsService;

    iget-object v7, v7, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    .line 971
    .local v7, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    if-nez v7, :cond_0

    .line 972
    monitor-exit v6

    goto :goto_2

    .line 974
    :cond_0
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8, v7}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    move-object v7, v8

    .line 975
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 976
    move v6, v3

    .local v6, "i":I
    :goto_1
    array-length v8, v0

    if-ge v6, v8, :cond_1

    .line 977
    aget-object v8, v0, v6

    .line 980
    .local v8, "changedPkg":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/AppOpsService$3;->this$0:Lcom/android/server/AppOpsService;

    const/4 v10, -0x1

    invoke-static {v9, v7, v5, v10, v8}, Lcom/android/server/AppOpsService;->access$400(Lcom/android/server/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;)V

    .line 976
    .end local v8    # "changedPkg":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 967
    .end local v5    # "code":I
    .end local v6    # "i":I
    .end local v7    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/AppOpsService$ModeCallback;>;"
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 975
    .restart local v5    # "code":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 983
    .end local v5    # "code":I
    :cond_2
    return-void
.end method
