.class Lcom/android/server/am/ActivityManagerService$27;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field final synthetic val$dataFile:Ljava/io/File;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$dropboxTag:Ljava/lang/String;

.field final synthetic val$report:Ljava/lang/String;

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Landroid/os/DropBoxManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "x0"    # Ljava/lang/String;

    .line 17738
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$27;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$27;->val$report:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$27;->val$sb:Ljava/lang/StringBuilder;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$27;->val$dropboxTag:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$27;->val$dataFile:Ljava/io/File;

    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$27;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iput-object p8, p0, Lcom/android/server/am/ActivityManagerService$27;->val$dbox:Landroid/os/DropBoxManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 17741
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$27;->val$report:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 17742
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$27;->val$sb:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$27;->val$report:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17747
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 17749
    .local v1, "lines":I
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "logcat_for_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$27;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 17750
    .local v2, "setting":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$27;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 17753
    .end local v2    # "setting":Ljava/lang/String;
    goto :goto_0

    .line 17751
    :catch_0
    move-exception v2

    .line 17752
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 17756
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    const/high16 v2, 0x30000

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$27;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v3, v1, 0x64

    sub-int/2addr v2, v3

    .line 17759
    .local v2, "maxDataFileSize":I
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$27;->val$dataFile:Ljava/io/File;

    if-eqz v3, :cond_1

    if-lez v2, :cond_1

    .line 17761
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$27;->val$sb:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$27;->val$dataFile:Ljava/io/File;

    const-string v5, "\n\n[[TRUNCATED]]"

    invoke-static {v4, v2, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 17765
    goto :goto_1

    .line 17763
    :catch_1
    move-exception v3

    .line 17764
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$27;->val$dataFile:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17767
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$27;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$27;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v3, v3, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 17768
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$27;->val$sb:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$27;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v4, v4, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17771
    :cond_2
    if-lez v1, :cond_5

    .line 17772
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$27;->val$sb:Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17775
    const/4 v3, 0x0

    .line 17777
    .local v3, "input":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v4, Ljava/lang/ProcessBuilder;

    const/16 v5, 0x11

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "/system/bin/timeout"

    aput-object v6, v5, v0

    const-string v6, "-k"

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    const-string v8, "15s"

    aput-object v8, v5, v6

    const/4 v6, 0x3

    const-string v8, "10s"

    aput-object v8, v5, v6

    const/4 v6, 0x4

    const-string v8, "/system/bin/logcat"

    aput-object v8, v5, v6

    const/4 v6, 0x5

    const-string v8, "-v"

    aput-object v8, v5, v6

    const/4 v6, 0x6

    const-string/jumbo v8, "threadtime"

    aput-object v8, v5, v6

    const/4 v6, 0x7

    const-string v8, "-b"

    aput-object v8, v5, v6

    const/16 v6, 0x8

    const-string v8, "events"

    aput-object v8, v5, v6

    const/16 v6, 0x9

    const-string v8, "-b"

    aput-object v8, v5, v6

    const/16 v6, 0xa

    const-string/jumbo v8, "system"

    aput-object v8, v5, v6

    const/16 v6, 0xb

    const-string v8, "-b"

    aput-object v8, v5, v6

    const/16 v6, 0xc

    const-string/jumbo v8, "main"

    aput-object v8, v5, v6

    const/16 v6, 0xd

    const-string v8, "-b"

    aput-object v8, v5, v6

    const/16 v6, 0xe

    const-string v8, "crash"

    aput-object v8, v5, v6

    const/16 v6, 0xf

    const-string v8, "-t"

    aput-object v8, v5, v6

    const/16 v6, 0x10

    .line 17780
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 17781
    invoke-virtual {v4, v7}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17783
    .local v4, "logcat":Ljava/lang/Process;
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v5

    .line 17784
    :goto_2
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catch_3
    move-exception v5

    .line 17785
    :goto_3
    :try_start_5
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v3, v5

    .line 17788
    const/16 v5, 0x2000

    new-array v5, v5, [C

    .line 17789
    .local v5, "buf":[C
    :goto_4
    invoke-virtual {v3, v5}, Ljava/io/InputStreamReader;->read([C)I

    move-result v6

    move v7, v6

    .line 17789
    .local v7, "num":I
    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$27;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5, v0, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 17793
    .end local v4    # "logcat":Ljava/lang/Process;
    .end local v5    # "buf":[C
    .end local v7    # "num":I
    :cond_3
    :goto_5
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_6

    .line 17790
    :catch_5
    move-exception v0

    .line 17791
    .local v0, "e":Ljava/io/IOException;
    :try_start_7
    const-string v4, "ActivityManager"

    const-string v5, "Error running logcat"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 17793
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_5

    goto :goto_5

    :goto_6
    if-eqz v3, :cond_4

    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_7

    :catch_6
    move-exception v4

    :cond_4
    :goto_7
    throw v0

    .line 17797
    .end local v3    # "input":Ljava/io/InputStreamReader;
    :cond_5
    :goto_8
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$27;->val$dbox:Landroid/os/DropBoxManager;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$27;->val$dropboxTag:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$27;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 17798
    return-void
.end method