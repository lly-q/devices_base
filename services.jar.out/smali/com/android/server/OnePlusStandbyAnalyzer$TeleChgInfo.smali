.class public Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
.super Ljava/lang/Object;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TeleChgInfo"
.end annotation


# instance fields
.field public mCurrent:I

.field public mOnAnomalyStatusChangeCount:I

.field public mSIM_ID_arr:[I

.field public mTotalAbn:I

.field public mType:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;


# direct methods
.method public constructor <init>(Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;)V
    .locals 1
    .param p1, "type"    # Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    .line 2135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2126
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mOnAnomalyStatusChangeCount:I

    .line 2129
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mTotalAbn:I

    .line 2131
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mCurrent:I

    .line 2133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mSIM_ID_arr:[I

    .line 2136
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    .line 2137
    invoke-static {}, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;->values()[Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mSIM_ID_arr:[I

    .line 2138
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .line 2141
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->RAT_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 2142
    iput v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mOnAnomalyStatusChangeCount:I

    .line 2143
    iput v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mTotalAbn:I

    goto :goto_0

    .line 2145
    :cond_0
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mSIM_ID_arr:[I

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;->SIM_0:Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;->ordinal()I

    move-result v1

    aput v2, v0, v1

    .line 2146
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mSIM_ID_arr:[I

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;->SIM_1:Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;->ordinal()I

    move-result v1

    aput v2, v0, v1

    .line 2147
    iput v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mTotalAbn:I

    .line 2149
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2190
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->RAT_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    if-eq v0, v1, :cond_0

    .line 2191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# TeleChgInfo ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mOnAnomalyStatusChangeCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mTotalAbn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2193
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# TeleChgInfo ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;->SIM_0:Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mSIM_ID_arr:[I

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;->SIM_0:Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;->ordinal()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;->SIM_1:Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mSIM_ID_arr:[I

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;->SIM_1:Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;->ordinal()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringForDump()Ljava/lang/String;
    .locals 3

    .line 2181
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->RAT_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    if-eq v0, v1, :cond_0

    .line 2182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# TeleChgInfo ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mCurrent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mOnAnomalyStatusChangeCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mTotalAbn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2184
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# TeleChgInfo ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;->SIM_0:Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mSIM_ID_arr:[I

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;->SIM_0:Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;->ordinal()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;->SIM_1:Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mSIM_ID_arr:[I

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;->SIM_1:Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;->ordinal()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCurrent(IZ)V
    .locals 4
    .param p1, "current"    # I
    .param p2, "underStandyPeriod"    # Z

    .line 2153
    if-eqz p2, :cond_1

    .line 2154
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->RAT_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    if-eq v0, v1, :cond_0

    .line 2155
    iput p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mCurrent:I

    .line 2158
    iget v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mOnAnomalyStatusChangeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mOnAnomalyStatusChangeCount:I

    .line 2160
    iget v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mTotalAbn:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mTotalAbn:I

    goto :goto_0

    .line 2163
    :cond_0
    invoke-static {p1}, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;->fromValue(I)Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;

    move-result-object v0

    .line 2164
    .local v0, "SIMtype":Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;
    if-eqz v0, :cond_1

    .line 2165
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$SIM_ID:[I

    invoke-virtual {v0}, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .end local v0    # "SIMtype":Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;
    goto :goto_0

    .line 2171
    .restart local v0    # "SIMtype":Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mSIM_ID_arr:[I

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;->SIM_1:Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;->ordinal()I

    move-result v2

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 2172
    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mTotalAbn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mTotalAbn:I

    .end local v0    # "SIMtype":Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;
    goto :goto_0

    .line 2167
    .restart local v0    # "SIMtype":Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mSIM_ID_arr:[I

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;->SIM_0:Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;->ordinal()I

    move-result v2

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 2168
    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mTotalAbn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mTotalAbn:I

    .line 2169
    nop

    .line 2178
    .end local v0    # "SIMtype":Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;
    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
