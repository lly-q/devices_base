.class public Lcom/android/server/OnePlusStandbyAnalyzer$AudioInfo;
.super Ljava/lang/Object;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioInfo"
.end annotation


# instance fields
.field public mPkg:Ljava/lang/String;

.field public mPlaying:J

.field public mTurning_End:J

.field public mTurning_Start:J

.field public mUid:I


# direct methods
.method public constructor <init>(IJJJ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "holding"    # J
    .param p4, "start"    # J
    .param p6, "end"    # J

    .line 4234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4230
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$AudioInfo;->mTurning_End:J

    .line 4231
    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$AudioInfo;->mTurning_Start:J

    .line 4232
    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$AudioInfo;->mPlaying:J

    .line 4235
    iput p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$AudioInfo;->mUid:I

    .line 4236
    iput-wide p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$AudioInfo;->mPlaying:J

    .line 4237
    iput-wide p4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$AudioInfo;->mTurning_Start:J

    .line 4238
    iput-wide p6, p0, Lcom/android/server/OnePlusStandbyAnalyzer$AudioInfo;->mTurning_End:J

    .line 4239
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 4242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# AudioInfo ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$AudioInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$AudioInfo;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$AudioInfo;->mTurning_Start:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$AudioInfo;->mTurning_End:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$AudioInfo;->mPlaying:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
