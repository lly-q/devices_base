.class public Lcom/android/server/CarkitConfig;
.super Ljava/lang/Object;
.source "CarkitConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CarkitConfig"


# instance fields
.field private CARKIT_CONFIG_PATH:Ljava/lang/String;

.field private USER_CARKIT_BACKUP_PATH:Ljava/lang/String;

.field private ch_names:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private en_names:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOpCarAddr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mjsonArray:Lorg/json/JSONArray;

.field private mroot:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/CarkitConfig;->ch_names:Ljava/util/Set;

    .line 19
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/CarkitConfig;->en_names:Ljava/util/Set;

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/CarkitConfig;->mroot:Lorg/json/JSONObject;

    .line 21
    iput-object v0, p0, Lcom/android/server/CarkitConfig;->mjsonArray:Lorg/json/JSONArray;

    .line 22
    iput-object v0, p0, Lcom/android/server/CarkitConfig;->mOpCarAddr:Ljava/util/List;

    .line 24
    const-string v0, "/system/etc/bluetooth/carkit.json"

    iput-object v0, p0, Lcom/android/server/CarkitConfig;->CARKIT_CONFIG_PATH:Ljava/lang/String;

    .line 25
    const-string v0, "/data/misc/user_carkit.json"

    iput-object v0, p0, Lcom/android/server/CarkitConfig;->USER_CARKIT_BACKUP_PATH:Ljava/lang/String;

    .line 29
    const-string v0, "CarkitConfig"

    const-string v1, "CarkitConfig constructer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/CarkitConfig;->mjsonArray:Lorg/json/JSONArray;

    .line 32
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/android/server/CarkitConfig;->mroot:Lorg/json/JSONObject;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/CarkitConfig;->mOpCarAddr:Ljava/util/List;

    .line 34
    invoke-direct {p0}, Lcom/android/server/CarkitConfig;->readlocalconfig()V

    .line 35
    invoke-direct {p0}, Lcom/android/server/CarkitConfig;->readuserconfig()V

    .line 37
    return-void
.end method

.method private readlocalconfig()V
    .locals 8

    .line 41
    :try_start_0
    const-string v0, "CarkitConfig"

    const-string v1, "CarkitConfig constructer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_7

    .line 45
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    :try_start_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/CarkitConfig;->CARKIT_CONFIG_PATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    .line 64
    if-eqz v0, :cond_0

    .line 65
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_7

    goto :goto_0

    .line 67
    :catch_0
    move-exception v3

    .line 68
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_7

    .line 68
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 69
    :cond_0
    :goto_0
    nop

    .line 47
    :goto_1
    return-void

    .line 50
    :cond_1
    :try_start_4
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v3

    .line 53
    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 53
    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 55
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 64
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "line":Ljava/lang/String;
    :cond_2
    nop

    .line 65
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_4

    .line 67
    :catch_1
    move-exception v2

    .line 68
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_7

    .line 70
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 69
    :cond_3
    :goto_4
    goto :goto_5

    .line 63
    :catchall_0
    move-exception v2

    goto :goto_7

    .line 60
    :catch_2
    move-exception v2

    .line 61
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 64
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_3

    .line 65
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_4

    .line 67
    :catch_3
    move-exception v2

    goto :goto_3

    .line 57
    :catch_4
    move-exception v2

    .line 58
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_9
    const-string v3, "CarkitConfig"

    const-string v4, "carkit config file not find"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 64
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_3

    .line 65
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_4

    .line 67
    :catch_5
    move-exception v2

    goto :goto_3

    .line 71
    :goto_5
    :try_start_b
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 74
    .local v2, "root":Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 76
    .local v3, "object":Lorg/json/JSONObject;
    const-string v4, "bluetooth_name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 77
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .line 77
    .local v5, "i":I
    :goto_6
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 78
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    move-object v3, v6

    .line 80
    iget-object v6, p0, Lcom/android/server/CarkitConfig;->ch_names:Ljava/util/Set;

    const-string/jumbo v7, "name_cn"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v6, p0, Lcom/android/server/CarkitConfig;->en_names:Ljava/util/Set;

    const-string/jumbo v7, "name_eng"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_7

    .line 77
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 85
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v1    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v2    # "root":Lorg/json/JSONObject;
    .end local v3    # "object":Lorg/json/JSONObject;
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "i":I
    :cond_4
    goto :goto_9

    .line 63
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "stringBuilder":Ljava/lang/StringBuilder;
    :goto_7
    nop

    .line 64
    if-eqz v0, :cond_5

    .line 65
    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_8

    .line 67
    :catch_6
    move-exception v3

    .line 68
    .local v3, "e":Ljava/io/IOException;
    :try_start_d
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 68
    .end local v3    # "e":Ljava/io/IOException;
    nop

    .line 69
    :cond_5
    :goto_8
    throw v2
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_7

    .line 83
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v1    # "stringBuilder":Ljava/lang/StringBuilder;
    :catch_7
    move-exception v0

    .line 84
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 86
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_9
    const-string v0, "CarkitConfig"

    const-string v1, "carkt file read succeed!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method private readuserconfig()V
    .locals 6

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_7

    .line 97
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    :try_start_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/CarkitConfig;->USER_CARKIT_BACKUP_PATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    .line 114
    if-eqz v0, :cond_0

    .line 115
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_7

    goto :goto_0

    .line 117
    :catch_0
    move-exception v3

    .line 118
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_7

    .line 118
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 119
    :cond_0
    :goto_0
    nop

    .line 99
    :goto_1
    return-void

    .line 101
    :cond_1
    :try_start_4
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v3

    .line 104
    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 104
    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 106
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 114
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "line":Ljava/lang/String;
    :cond_2
    nop

    .line 115
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_4

    .line 117
    :catch_1
    move-exception v2

    .line 118
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_7

    .line 120
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 119
    :cond_3
    :goto_4
    goto :goto_5

    .line 113
    :catchall_0
    move-exception v2

    goto :goto_6

    .line 110
    :catch_2
    move-exception v2

    .line 111
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 114
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_3

    .line 115
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_4

    .line 117
    :catch_3
    move-exception v2

    goto :goto_3

    .line 108
    :catch_4
    move-exception v2

    .line 109
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 114
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_3

    .line 115
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_4

    .line 117
    :catch_5
    move-exception v2

    goto :goto_3

    .line 121
    :goto_5
    :try_start_b
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 123
    .local v2, "root":Lorg/json/JSONObject;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 125
    const-string/jumbo v3, "op_carkit"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/CarkitConfig;->mjsonArray:Lorg/json/JSONArray;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_7

    .line 128
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v1    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v2    # "root":Lorg/json/JSONObject;
    goto :goto_8

    .line 113
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "stringBuilder":Ljava/lang/StringBuilder;
    :goto_6
    nop

    .line 114
    if-eqz v0, :cond_4

    .line 115
    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_7

    .line 117
    :catch_6
    move-exception v3

    .line 118
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_d
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 118
    .end local v3    # "e":Ljava/io/IOException;
    nop

    .line 119
    :cond_4
    :goto_7
    throw v2
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_7

    .line 126
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v1    # "stringBuilder":Ljava/lang/StringBuilder;
    :catch_7
    move-exception v0

    .line 127
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 130
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_8
    return-void
.end method

.method private saveCarkitConfig()V
    .locals 6

    .line 219
    const/4 v0, 0x0

    .line 221
    .local v0, "bufferedWriter":Ljava/io/BufferedWriter;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/CarkitConfig;->mroot:Lorg/json/JSONObject;

    const-string/jumbo v2, "op_carkit"

    iget-object v3, p0, Lcom/android/server/CarkitConfig;->mjsonArray:Lorg/json/JSONArray;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/CarkitConfig;->USER_CARKIT_BACKUP_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 226
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 228
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v0, v2

    .line 230
    iget-object v2, p0, Lcom/android/server/CarkitConfig;->mroot:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    .end local v1    # "file":Ljava/io/File;
    nop

    .line 243
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 245
    :catch_0
    move-exception v1

    .line 246
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 248
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 247
    :cond_1
    :goto_0
    goto :goto_1

    .line 241
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 238
    :catch_1
    move-exception v1

    .line 239
    .local v1, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 242
    .end local v1    # "e":Lorg/json/JSONException;
    if-eqz v0, :cond_1

    .line 243
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 236
    :catch_2
    move-exception v1

    .line 237
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 242
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_1

    .line 243
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 234
    :catch_3
    move-exception v1

    .line 235
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 242
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_1

    .line 243
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    .line 249
    :goto_1
    return-void

    .line 241
    :goto_2
    nop

    .line 242
    if-eqz v0, :cond_2

    .line 243
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    .line 245
    :catch_4
    move-exception v2

    .line 246
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 246
    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 247
    :cond_2
    :goto_3
    throw v1
.end method


# virtual methods
.method public addCarkit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "addr"    # Ljava/lang/String;

    .line 165
    const-string v0, "CarkitConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addcarkit name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " add:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v0, "list":Ljava/util/List;
    const/4 v1, 0x0

    .line 169
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/CarkitConfig;->mjsonArray:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/android/server/CarkitConfig;->mjsonArray:Lorg/json/JSONArray;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    .end local v1    # "i":I
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 175
    .local v1, "iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 176
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string v3, "addr"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 180
    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 181
    .local v2, "object":Lorg/json/JSONObject;
    const-string/jumbo v3, "name_cn"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "addr"

    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "iscarkit"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 182
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/android/server/CarkitConfig;->mjsonArray:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v0    # "list":Ljava/util/List;
    .end local v1    # "iterator":Ljava/util/Iterator;
    .end local v2    # "object":Lorg/json/JSONObject;
    goto :goto_2

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 187
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2
    invoke-direct {p0}, Lcom/android/server/CarkitConfig;->saveCarkitConfig()V

    .line 189
    return-void
.end method

.method public close()V
    .locals 6

    .line 253
    const/4 v0, 0x0

    .line 255
    .local v0, "bufferedWriter":Ljava/io/BufferedWriter;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/CarkitConfig;->mroot:Lorg/json/JSONObject;

    const-string/jumbo v2, "op_carkit"

    iget-object v3, p0, Lcom/android/server/CarkitConfig;->mjsonArray:Lorg/json/JSONArray;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/CarkitConfig;->USER_CARKIT_BACKUP_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 260
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 262
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v0, v2

    .line 264
    iget-object v2, p0, Lcom/android/server/CarkitConfig;->mroot:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    .end local v1    # "file":Ljava/io/File;
    nop

    .line 277
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 279
    :catch_0
    move-exception v1

    .line 280
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 282
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 281
    :cond_1
    :goto_0
    goto :goto_1

    .line 275
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 272
    :catch_1
    move-exception v1

    .line 273
    .local v1, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    .end local v1    # "e":Lorg/json/JSONException;
    if-eqz v0, :cond_1

    .line 277
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 270
    :catch_2
    move-exception v1

    .line 271
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 276
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_1

    .line 277
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 268
    :catch_3
    move-exception v1

    .line 269
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 276
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_1

    .line 277
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    .line 283
    :goto_1
    return-void

    .line 275
    :goto_2
    nop

    .line 276
    if-eqz v0, :cond_2

    .line 277
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    .line 279
    :catch_4
    move-exception v2

    .line 280
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 280
    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 281
    :cond_2
    :goto_3
    throw v1
.end method

.method public isCarkit(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "addr"    # Ljava/lang/String;

    .line 134
    const-string v0, "CarkitConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "iscarkit name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " add:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v2, "list":Ljava/util/List;
    move v3, v1

    .line 138
    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/CarkitConfig;->mjsonArray:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 139
    iget-object v4, p0, Lcom/android/server/CarkitConfig;->mjsonArray:Lorg/json/JSONArray;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 142
    .end local v3    # "i":I
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 143
    .local v3, "iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 144
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 146
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "addr"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 147
    const-string/jumbo v5, "iscarkit"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    .line 148
    return v0

    .line 150
    :cond_1
    return v1

    .line 153
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    goto :goto_1

    .line 156
    .end local v2    # "list":Ljava/util/List;
    .end local v3    # "iterator":Ljava/util/Iterator;
    :cond_3
    goto :goto_2

    .line 154
    :catch_0
    move-exception v2

    .line 155
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 158
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_2
    iget-object v2, p0, Lcom/android/server/CarkitConfig;->ch_names:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/server/CarkitConfig;->en_names:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    .line 161
    :cond_4
    return v1

    .line 159
    :cond_5
    :goto_3
    return v0
.end method

.method public removeCarkit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "addr"    # Ljava/lang/String;

    .line 192
    const-string v0, "CarkitConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removecarkit name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " add:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v0, "list":Ljava/util/List;
    const/4 v1, 0x0

    move v2, v1

    .line 197
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/CarkitConfig;->mjsonArray:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 198
    iget-object v3, p0, Lcom/android/server/CarkitConfig;->mjsonArray:Lorg/json/JSONArray;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    .end local v2    # "i":I
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 202
    .local v2, "iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 203
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "addr"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 204
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 207
    :cond_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 208
    .local v3, "object":Lorg/json/JSONObject;
    const-string/jumbo v4, "name_cn"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "addr"

    invoke-virtual {v4, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "iscarkit"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 209
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/server/CarkitConfig;->mjsonArray:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v0    # "list":Ljava/util/List;
    .end local v2    # "iterator":Ljava/util/Iterator;
    .end local v3    # "object":Lorg/json/JSONObject;
    goto :goto_2

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 214
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2
    invoke-direct {p0}, Lcom/android/server/CarkitConfig;->saveCarkitConfig()V

    .line 216
    return-void
.end method
