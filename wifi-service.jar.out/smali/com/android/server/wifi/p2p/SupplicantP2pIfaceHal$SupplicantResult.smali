.class Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;
.super Ljava/lang/Object;
.source "SupplicantP2pIfaceHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SupplicantResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mMethodName:Ljava/lang/String;

.field private mStatus:Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

.field private mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;

    .line 2357
    .local p0, "this":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2358
    iput-object p1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->mMethodName:Ljava/lang/String;

    .line 2359
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->mStatus:Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 2360
    iput-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->mValue:Ljava/lang/Object;

    .line 2361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "entering "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->mMethodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->logd(Ljava/lang/String;)V

    .line 2362
    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 2384
    .local p0, "this":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->mValue:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isSuccess()Z
    .locals 2

    .line 2378
    .local p0, "this":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<TE;>;"
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->mStatus:Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->mStatus:Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    iget v0, v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->mStatus:Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    iget v0, v0, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    .locals 2
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 2372
    .local p0, "this":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<TE;>;"
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->mMethodName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->logCompletion(Ljava/lang/String;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V

    .line 2373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "leaving "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->mMethodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->logd(Ljava/lang/String;)V

    .line 2374
    iput-object p1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->mStatus:Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 2375
    return-void
.end method

.method public setResult(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V
    .locals 2
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;",
            "TE;)V"
        }
    .end annotation

    .line 2365
    .local p0, "this":Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;, "Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->mMethodName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->logCompletion(Ljava/lang/String;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V

    .line 2366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "leaving "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->mMethodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->logd(Ljava/lang/String;)V

    .line 2367
    iput-object p1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->mStatus:Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 2368
    iput-object p2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;->mValue:Ljava/lang/Object;

    .line 2369
    return-void
.end method
