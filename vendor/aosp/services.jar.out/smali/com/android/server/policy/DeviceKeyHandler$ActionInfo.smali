.class Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;
.super Ljava/lang/Object;
.source "DeviceKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/DeviceKeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionInfo"
.end annotation


# instance fields
.field mActionName:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field mShortcutId:Ljava/lang/String;

.field mUid:I

.field final synthetic this$0:Lcom/android/server/policy/DeviceKeyHandler;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/DeviceKeyHandler;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/DeviceKeyHandler;Lcom/android/server/policy/DeviceKeyHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;
    .param p2, "x1"    # Lcom/android/server/policy/DeviceKeyHandler$1;

    .line 358
    invoke-direct {p0, p1}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;-><init>(Lcom/android/server/policy/DeviceKeyHandler;)V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->mActionName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getShortcutId()Ljava/lang/String;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->mShortcutId:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 397
    iget v0, p0, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->mUid:I

    return v0
.end method

.method public setActionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "actionName"    # Ljava/lang/String;

    .line 365
    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->mActionName:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public setPackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 369
    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->mPackageName:Ljava/lang/String;

    .line 370
    return-void
.end method

.method public setShortcutId(Ljava/lang/String;)V
    .locals 0
    .param p1, "shortcutId"    # Ljava/lang/String;

    .line 373
    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->mShortcutId:Ljava/lang/String;

    .line 374
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;

    .line 378
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->mUid:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    goto :goto_0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->mUid:I

    .line 382
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->mActionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ShortcutId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->mShortcutId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
