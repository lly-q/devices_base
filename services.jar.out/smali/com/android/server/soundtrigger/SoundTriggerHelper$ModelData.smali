.class Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
.super Ljava/lang/Object;
.source "SoundTriggerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger/SoundTriggerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModelData"
.end annotation


# static fields
.field static final MODEL_LOADED:I = 0x1

.field static final MODEL_NOTLOADED:I = 0x0

.field static final MODEL_STARTED:I = 0x2


# instance fields
.field private mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

.field private mModelHandle:I

.field private mModelId:Ljava/util/UUID;

.field private mModelState:I

.field private mModelType:I

.field private mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

.field private mRequested:Z

.field private mSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;


# direct methods
.method private constructor <init>(Ljava/util/UUID;I)V
    .locals 2
    .param p1, "modelId"    # Ljava/util/UUID;
    .param p2, "modelType"    # I

    .line 1242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRequested:Z

    .line 1230
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelType:I

    .line 1232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 1233
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 1237
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelHandle:I

    .line 1240
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 1243
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelId:Ljava/util/UUID;

    .line 1246
    iput p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelType:I

    .line 1247
    return-void
.end method

.method static createGenericModelData(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .locals 2
    .param p0, "modelId"    # Ljava/util/UUID;

    .line 1254
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;-><init>(Ljava/util/UUID;I)V

    return-object v0
.end method

.method static createKeyphraseModelData(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .locals 2
    .param p0, "modelId"    # Ljava/util/UUID;

    .line 1250
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;-><init>(Ljava/util/UUID;I)V

    return-object v0
.end method

.method static createModelDataOfUnknownType(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .locals 2
    .param p0, "modelId"    # Ljava/util/UUID;

    .line 1260
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;-><init>(Ljava/util/UUID;I)V

    return-object v0
.end method


# virtual methods
.method declared-synchronized callbackToString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1370
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    invoke-interface {v1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized clearCallback()V
    .locals 1

    monitor-enter p0

    .line 1304
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1305
    monitor-exit p0

    return-void

    .line 1303
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized clearState()V
    .locals 2

    monitor-enter p0

    .line 1296
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I

    .line 1297
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelHandle:I

    .line 1298
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 1299
    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRequested:Z

    .line 1300
    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1301
    monitor-exit p0

    return-void

    .line 1295
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .locals 1

    monitor-enter p0

    .line 1268
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized getHandle()I
    .locals 1

    monitor-enter p0

    .line 1316
    :try_start_0
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelHandle:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized getModelId()Ljava/util/UUID;
    .locals 1

    monitor-enter p0

    .line 1320
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelId:Ljava/util/UUID;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized getModelType()I
    .locals 1

    monitor-enter p0

    .line 1345
    :try_start_0
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized getRecognitionConfig()Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .locals 1

    monitor-enter p0

    .line 1324
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized getSoundModel()Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .locals 1

    monitor-enter p0

    .line 1341
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized isGenericModel()Z
    .locals 2

    monitor-enter p0

    .line 1353
    :try_start_0
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized isKeyphraseModel()Z
    .locals 1

    monitor-enter p0

    .line 1349
    :try_start_0
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized isModelLoaded()Z
    .locals 3

    monitor-enter p0

    .line 1272
    :try_start_0
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized isModelNotLoaded()Z
    .locals 1

    monitor-enter p0

    .line 1276
    :try_start_0
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized isModelStarted()Z
    .locals 2

    monitor-enter p0

    .line 1292
    :try_start_0
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized isRequested()Z
    .locals 1

    monitor-enter p0

    .line 1329
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized modelTypeToString()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 1386
    const/4 v0, 0x0

    .line 1387
    .local v0, "type":Ljava/lang/String;
    :try_start_0
    iget v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1388
    :pswitch_0
    const-string v1, "Generic"

    move-object v0, v1

    goto :goto_0

    .line 1390
    :pswitch_1
    const-string v1, "Keyphrase"

    move-object v0, v1

    goto :goto_0

    .line 1389
    :pswitch_2
    const-string v1, "Unknown"

    move-object v0, v1

    .line 1392
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Model type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 1385
    .end local v0    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method declared-synchronized requestedToString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1366
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRequested:Z

    if-eqz v1, :cond_0

    const-string v1, "Yes"

    goto :goto_0

    :cond_0
    const-string v1, "No"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized setCallback(Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    monitor-enter p0

    .line 1264
    :try_start_0
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1265
    monitor-exit p0

    return-void

    .line 1263
    .end local p1    # "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw p1
.end method

.method declared-synchronized setHandle(I)V
    .locals 0
    .param p1, "handle"    # I

    monitor-enter p0

    .line 1308
    :try_start_0
    iput p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelHandle:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1309
    monitor-exit p0

    return-void

    .line 1307
    .end local p1    # "handle":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw p1
.end method

.method declared-synchronized setLoaded()V
    .locals 1

    monitor-enter p0

    .line 1288
    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1289
    monitor-exit p0

    return-void

    .line 1287
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized setRecognitionConfig(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)V
    .locals 0
    .param p1, "config"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    monitor-enter p0

    .line 1312
    :try_start_0
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1313
    monitor-exit p0

    return-void

    .line 1311
    .end local p1    # "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw p1
.end method

.method declared-synchronized setRequested(Z)V
    .locals 0
    .param p1, "requested"    # Z

    monitor-enter p0

    .line 1333
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1334
    monitor-exit p0

    return-void

    .line 1332
    .end local p1    # "requested":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw p1
.end method

.method declared-synchronized setSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)V
    .locals 0
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    monitor-enter p0

    .line 1337
    :try_start_0
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1338
    monitor-exit p0

    return-void

    .line 1336
    .end local p1    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw p1
.end method

.method declared-synchronized setStarted()V
    .locals 1

    monitor-enter p0

    .line 1280
    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1281
    monitor-exit p0

    return-void

    .line 1279
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized setStopped()V
    .locals 1

    monitor-enter p0

    .line 1284
    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1285
    monitor-exit p0

    return-void

    .line 1283
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized stateToString()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1357
    :try_start_0
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I

    packed-switch v0, :pswitch_data_0

    .line 1362
    const-string v0, "Unknown state"

    goto :goto_0

    .line 1360
    :pswitch_0
    const-string v0, "STARTED"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1359
    :pswitch_1
    :try_start_1
    const-string v0, "LOADED"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1358
    :pswitch_2
    :try_start_2
    const-string v0, "NOT_LOADED"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1362
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1356
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1378
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nModelState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1379
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->stateToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1380
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->requestedToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1381
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->callbackToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1382
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->uuidToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->modelTypeToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1378
    monitor-exit p0

    return-object v0

    .line 1377
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method

.method declared-synchronized uuidToString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1374
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UUID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    throw v0
.end method
