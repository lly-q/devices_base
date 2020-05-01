.class public Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;
.super Ljava/lang/Object;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KernelWakelockInfo"
.end annotation


# instance fields
.field public mCount:I

.field public mCount_End:I

.field public mCount_Start:I

.field public mHolding:J

.field public mHolding_End:J

.field public mHolding_Start:J

.field public mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    .line 4151
    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    .line 4152
    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    .line 4153
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount:I

    .line 4154
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_End:I

    .line 4155
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_Start:I

    .line 4156
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "holding"    # J

    .line 4157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    .line 4151
    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    .line 4152
    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    .line 4153
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount:I

    .line 4154
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_End:I

    .line 4155
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_Start:I

    .line 4158
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    .line 4159
    iput-wide p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    .line 4160
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "holding"    # J
    .param p4, "count"    # I

    .line 4167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    .line 4151
    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    .line 4152
    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    .line 4153
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount:I

    .line 4154
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_End:I

    .line 4155
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_Start:I

    .line 4168
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    .line 4169
    iput-wide p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    .line 4170
    iput p4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount:I

    .line 4171
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJII)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "holding_start"    # J
    .param p4, "holding_end"    # J
    .param p6, "count_start"    # I
    .param p7, "count_end"    # I

    .line 4172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    .line 4151
    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    .line 4152
    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    .line 4153
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount:I

    .line 4154
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_End:I

    .line 4155
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_Start:I

    .line 4173
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    .line 4174
    iput-wide p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    .line 4175
    iput-wide p4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    .line 4176
    iput p6, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_Start:I

    .line 4177
    iput p7, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_End:I

    .line 4178
    iget-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    iget-wide v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    .line 4179
    iget v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_End:I

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_Start:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount:I

    .line 4180
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJ)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "holding"    # J
    .param p4, "start"    # J
    .param p6, "end"    # J

    .line 4161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    .line 4151
    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    .line 4152
    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    .line 4153
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount:I

    .line 4154
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_End:I

    .line 4155
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_Start:I

    .line 4162
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    .line 4163
    iput-wide p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    .line 4164
    iput-wide p4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    .line 4165
    iput-wide p6, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    .line 4166
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 4183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# kwl ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
