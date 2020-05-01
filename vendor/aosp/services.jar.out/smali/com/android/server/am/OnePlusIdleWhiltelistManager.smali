.class public Lcom/android/server/am/OnePlusIdleWhiltelistManager;
.super Ljava/lang/Object;
.source "OnePlusIdleWhiltelistManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusIdleWhiltelistManager$OnePlusIdleWhiltelistHandler;,
        Lcom/android/server/am/OnePlusIdleWhiltelistManager$IdleWhilteListConfigUpdater;
    }
.end annotation


# static fields
.field private static final IDLE_WHILTELIST_CONFIG_NAME:Ljava/lang/String; = "UidIdle"

.field private static final MSG_GET_ONLINECONFIG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OnePlusIdleWhiltelistService"

.field private static mIdleWhitePkgLock:Ljava/lang/Object;


# instance fields
.field private mBackgroundWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIsOOS:Z

.field private mOnePlusIdleWhiltelistConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mOnePlusIdleWhiltelistHandler:Landroid/os/Handler;

.field private mOnePlusIdleWhiltelistProject:I

.field private mSpecialIdleWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mIdleWhitePkgLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 2
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mOnePlusIdleWhiltelistHandler:Landroid/os/Handler;

    .line 46
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mOnePlusIdleWhiltelistProject:I

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mSpecialIdleWhiteList:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mBackgroundWhiteList:Ljava/util/List;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mIsOOS:Z

    .line 54
    new-instance v0, Lcom/android/server/am/OnePlusIdleWhiltelistManager$OnePlusIdleWhiltelistHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OnePlusIdleWhiltelistManager$OnePlusIdleWhiltelistHandler;-><init>(Lcom/android/server/am/OnePlusIdleWhiltelistManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mOnePlusIdleWhiltelistHandler:Landroid/os/Handler;

    .line 55
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/OnePlusIdleWhiltelistManager;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusIdleWhiltelistManager;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/OnePlusIdleWhiltelistManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusIdleWhiltelistManager;

    .line 39
    iget-object v0, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initSpecialIdleWhiteList()V
    .locals 4

    .line 153
    sget-object v0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mIdleWhitePkgLock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mSpecialIdleWhiteList:Ljava/util/List;

    const-string v2, "com.tencent.mm"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v1, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mBackgroundWhiteList:Ljava/util/List;

    const-string v2, "com.nearme.gamecenter"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    const-string v1, "OnePlusIdleWhiltelistService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSpecialIdleWhiteList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mSpecialIdleWhiteList:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    monitor-exit v0

    .line 158
    return-void

    .line 157
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 8
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 94
    if-nez p1, :cond_0

    .line 95
    const-string v0, "OnePlusIdleWhiltelistService"

    const-string v1, "[OnlineConfig] resolveConfigFromJSON jsonArray is null, return"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 101
    .local v1, "index":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 102
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 103
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "enableProject"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 104
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 105
    .local v3, "jArray":Lorg/json/JSONArray;
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mOnePlusIdleWhiltelistProject:I

    .line 101
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "jArray":Lorg/json/JSONArray;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .end local v1    # "index":I
    :cond_2
    move v1, v0

    .line 110
    .restart local v1    # "index":I
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 111
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 112
    .restart local v2    # "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mSpecialIdleWhiteList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 113
    iget-object v3, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mSpecialIdleWhiteList:Ljava/util/List;

    monitor-enter v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 114
    :try_start_1
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 115
    .local v4, "jArray":Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mSpecialIdleWhiteList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 116
    move v5, v0

    .line 116
    .local v5, "i":I
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 117
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 118
    .local v6, "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mSpecialIdleWhiteList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 119
    iget-object v7, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mSpecialIdleWhiteList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    .end local v6    # "value":Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 122
    .end local v4    # "jArray":Lorg/json/JSONArray;
    .end local v5    # "i":I
    :cond_4
    monitor-exit v3

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 123
    :cond_5
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mBackgroundWhiteList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 124
    iget-object v3, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mBackgroundWhiteList:Ljava/util/List;

    monitor-enter v3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 125
    :try_start_3
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 126
    .restart local v4    # "jArray":Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mBackgroundWhiteList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 127
    move v5, v0

    .line 127
    .restart local v5    # "i":I
    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 128
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 129
    .restart local v6    # "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mBackgroundWhiteList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 130
    iget-object v7, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mBackgroundWhiteList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .end local v6    # "value":Ljava/lang/String;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 133
    .end local v4    # "jArray":Lorg/json/JSONArray;
    .end local v5    # "i":I
    :cond_7
    monitor-exit v3

    goto :goto_4

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 110
    .end local v2    # "json":Lorg/json/JSONObject;
    :cond_8
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 145
    .end local v1    # "index":I
    :cond_9
    const-string v0, "OnePlusIdleWhiltelistService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON mOnePlusIdleWhiltelistProject:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mOnePlusIdleWhiltelistProject:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v0, "OnePlusIdleWhiltelistService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON mSpecialIdleWhiteList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mSpecialIdleWhiteList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v0, "OnePlusIdleWhiltelistService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    const-string v2, "[OnlineConfig] resolveConfigFromJSON mBackgroundWhiteList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mBackgroundWhiteList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    goto/16 :goto_6

    .line 145
    :catchall_2
    move-exception v0

    goto/16 :goto_7

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v1, "OnePlusIdleWhiltelistService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 145
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, "OnePlusIdleWhiltelistService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON mOnePlusIdleWhiltelistProject:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mOnePlusIdleWhiltelistProject:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v0, "OnePlusIdleWhiltelistService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON mSpecialIdleWhiteList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mSpecialIdleWhiteList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v0, "OnePlusIdleWhiltelistService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    .line 138
    :catch_1
    move-exception v0

    .line 139
    .local v0, "e":Lorg/json/JSONException;
    :try_start_6
    const-string v1, "OnePlusIdleWhiltelistService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] JSONException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 145
    .end local v0    # "e":Lorg/json/JSONException;
    const-string v0, "OnePlusIdleWhiltelistService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON mOnePlusIdleWhiltelistProject:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mOnePlusIdleWhiltelistProject:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v0, "OnePlusIdleWhiltelistService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON mSpecialIdleWhiteList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mSpecialIdleWhiteList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v0, "OnePlusIdleWhiltelistService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_5

    .line 150
    :goto_6
    return-void

    .line 145
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON mOnePlusIdleWhiltelistProject:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mOnePlusIdleWhiltelistProject:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OnePlusIdleWhiltelistService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON mSpecialIdleWhiteList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mSpecialIdleWhiteList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OnePlusIdleWhiltelistService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON mBackgroundWhiteList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mBackgroundWhiteList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OnePlusIdleWhiltelistService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method


# virtual methods
.method public init()V
    .locals 0

    .line 161
    invoke-direct {p0}, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->initSpecialIdleWhiteList()V

    .line 162
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->initOnlineConfig()V

    .line 163
    return-void
.end method

.method public initOnlineConfig()V
    .locals 5

    .line 59
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mOnePlusIdleWhiltelistHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/OnePlusIdleWhiltelistManager$IdleWhilteListConfigUpdater;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/am/OnePlusIdleWhiltelistManager$IdleWhilteListConfigUpdater;-><init>(Lcom/android/server/am/OnePlusIdleWhiltelistManager;Lcom/android/server/am/OnePlusIdleWhiltelistManager$1;)V

    const-string v4, "UidIdle"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mOnePlusIdleWhiltelistConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 61
    iget-object v0, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mOnePlusIdleWhiltelistConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 62
    iget-object v0, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mOnePlusIdleWhiltelistHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mOnePlusIdleWhiltelistHandler:Landroid/os/Handler;

    .line 63
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v3, 0x7530

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 64
    new-array v0, v2, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mIsOOS:Z

    .line 65
    return-void
.end method

.method public isBackgroundWhitelist(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 178
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 179
    const-string v0, "OnePlusIdleWhiltelistService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBackgroundWhiteList.contains("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mBackgroundWhiteList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mBackgroundWhiteList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mBackgroundWhiteList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    const/4 v0, 0x1

    return v0

    .line 185
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public shoudSkipIdle(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "skip":Z
    iget v1, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mOnePlusIdleWhiltelistProject:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mIsOOS:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mOnePlusIdleWhiltelistProject:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mIsOOS:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mOnePlusIdleWhiltelistProject:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->mSpecialIdleWhiteList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 170
    const/4 v0, 0x1

    .line 173
    :cond_2
    return v0
.end method
