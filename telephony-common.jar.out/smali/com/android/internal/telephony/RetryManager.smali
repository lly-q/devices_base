.class public Lcom/android/internal/telephony/RetryManager;
.super Ljava/lang/Object;
.source "RetryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/RetryManager$RetryRec;
    }
.end annotation


# static fields
.field public static final DBG:Z = true

.field private static final DEFAULT_APN_RETRY_AFTER_DISCONNECT_DELAY:J = 0x2710L

.field private static final DEFAULT_DATA_RETRY_CONFIG:Ljava/lang/String; = "max_retries=3, 5000, 5000, 5000"

.field private static final DEFAULT_INTER_APN_DELAY:J = 0x4e20L

.field private static final DEFAULT_INTER_APN_DELAY_FOR_PROVISIONING:J = 0x1770L

.field public static final LOG_TAG:Ljava/lang/String; = "RetryManager"

.field private static final MAX_SAME_APN_RETRY:I = 0x3

.field public static final NO_RETRY:J = -0x1L

.field public static final NO_SUGGESTED_RETRY_DELAY:J = -0x2L

.field private static final OTHERS_APN_TYPE:Ljava/lang/String; = "others"

.field public static final VDBG:Z = false


# instance fields
.field private mApnRetryAfterDisconnectDelay:J

.field private mApnType:Ljava/lang/String;

.field private mConfig:Ljava/lang/String;

.field private mCurrentApnIndex:I

.field private mFailFastInterApnDelay:J

.field private mInterApnDelay:J

.field private mMaxRetryCount:I

.field private mModemSuggestedDelay:J

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRetryArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/RetryManager$RetryRec;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryCount:I

.field private mRetryForever:Z

.field private mRng:Ljava/util/Random;

.field private mSameApnRetryCount:I

.field private mWaitingApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "apnType"    # Ljava/lang/String;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    .line 162
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    .line 180
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    .line 187
    iput-boolean v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    .line 197
    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    .line 203
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRng:Ljava/util/Random;

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    .line 219
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    .line 232
    iput-object p1, p0, Lcom/android/internal/telephony/RetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 233
    iput-object p2, p0, Lcom/android/internal/telephony/RetryManager;->mApnType:Ljava/lang/String;

    .line 234
    return-void
.end method

.method private configure(Ljava/lang/String;)Z
    .locals 10
    .param p1, "configStr"    # Ljava/lang/String;

    .line 245
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 250
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/RetryManager;->reset()V

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configure: \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    .line 253
    iput-object p1, p0, Lcom/android/internal/telephony/RetryManager;->mConfig:Ljava/lang/String;

    .line 255
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 256
    const/4 v0, 0x0

    .line 260
    .local v0, "defaultRandomization":I
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "strArray":[Ljava/lang/String;
    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    .local v0, "i":I
    .local v4, "defaultRandomization":I
    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_a

    .line 264
    aget-object v5, v2, v0

    const-string v6, "="

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 265
    .local v5, "splitStr":[Ljava/lang/String;
    aget-object v6, v5, v3

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 267
    array-length v6, v5

    if-le v6, v1, :cond_6

    .line 268
    aget-object v6, v5, v1

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 270
    aget-object v6, v5, v3

    const-string v7, "default_randomization"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 271
    aget-object v6, v5, v3

    aget-object v7, v5, v1

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v6

    .line 272
    .local v6, "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_1

    return v3

    .line 273
    :cond_1
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto/16 :goto_2

    .line 274
    .end local v6    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :cond_2
    aget-object v6, v5, v3

    const-string v7, "max_retries"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 275
    const-string v6, "infinite"

    aget-object v7, v5, v1

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 276
    iput-boolean v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    goto/16 :goto_2

    .line 278
    :cond_3
    aget-object v6, v5, v3

    aget-object v7, v5, v1

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v6

    .line 279
    .restart local v6    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_4

    return v3

    .line 280
    :cond_4
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    goto/16 :goto_2

    .line 283
    .end local v6    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :cond_5
    const-string v1, "RetryManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized configuration name value pair: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v2, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return v3

    .line 292
    :cond_6
    aget-object v6, v2, v0

    const-string v8, ":"

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 293
    aget-object v6, v5, v3

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 294
    new-instance v6, Lcom/android/internal/telephony/RetryManager$RetryRec;

    invoke-direct {v6, v3, v3}, Lcom/android/internal/telephony/RetryManager$RetryRec;-><init>(II)V

    .line 295
    .local v6, "rr":Lcom/android/internal/telephony/RetryManager$RetryRec;
    const-string v7, "delayTime"

    aget-object v8, v5, v3

    invoke-direct {p0, v7, v8}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v7

    .line 296
    .local v7, "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_7

    return v3

    .line 297
    :cond_7
    iget-object v8, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v6, Lcom/android/internal/telephony/RetryManager$RetryRec;->mDelayTime:I

    .line 300
    array-length v8, v5

    if-le v8, v1, :cond_9

    .line 301
    aget-object v8, v5, v1

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v1

    .line 303
    const-string v8, "randomizationTime"

    aget-object v9, v5, v1

    invoke-direct {p0, v8, v9}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v7

    .line 304
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_8

    return v3

    .line 305
    :cond_8
    iget-object v8, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v6, Lcom/android/internal/telephony/RetryManager$RetryRec;->mRandomizationTime:I

    goto :goto_1

    .line 307
    :cond_9
    iput v4, v6, Lcom/android/internal/telephony/RetryManager$RetryRec;->mRandomizationTime:I

    .line 309
    :goto_1
    iget-object v8, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    .end local v5    # "splitStr":[Ljava/lang/String;
    .end local v6    # "rr":Lcom/android/internal/telephony/RetryManager$RetryRec;
    .end local v7    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 312
    .end local v0    # "i":I
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    if-le v0, v3, :cond_b

    .line 313
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    .line 316
    .end local v2    # "strArray":[Ljava/lang/String;
    .end local v4    # "defaultRandomization":I
    :cond_b
    goto :goto_3

    .line 317
    :cond_c
    const-string v0, "configure: cleared"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    .line 321
    :goto_3
    return v1
.end method

.method private configureRetry()V
    .locals 17

    .line 328
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 329
    .local v2, "configString":Ljava/lang/String;
    const/4 v0, 0x0

    move-object v3, v0

    .line 332
    .local v3, "otherConfigString":Ljava/lang/String;
    const-wide/16 v4, 0x1770

    const-wide/16 v6, 0x4e20

    :try_start_0
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 334
    const-string v0, "test.data_retry_config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "config":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 336
    invoke-direct {v1, v0}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    .line 337
    return-void

    .line 341
    .end local v0    # "config":Ljava/lang/String;
    :cond_0
    iget-object v0, v1, Lcom/android/internal/telephony/RetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 342
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v8, "carrier_config"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 343
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    iget-object v8, v1, Lcom/android/internal/telephony/RetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v8

    .line 345
    .local v8, "b":Landroid/os/PersistableBundle;
    const-string v9, "carrier_data_call_apn_delay_default_long"

    invoke-virtual {v8, v9, v6, v7}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/internal/telephony/RetryManager;->mInterApnDelay:J

    .line 348
    const-string v9, "carrier_data_call_apn_delay_faster_long"

    invoke-virtual {v8, v9, v4, v5}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/internal/telephony/RetryManager;->mFailFastInterApnDelay:J

    .line 351
    const-string v9, "carrier_data_call_apn_retry_after_disconnect_long"

    const-wide/16 v10, 0x2710

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/internal/telephony/RetryManager;->mApnRetryAfterDisconnectDelay:J

    .line 356
    const-string v9, "carrier_data_call_retry_config_strings"

    invoke-virtual {v8, v9}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 358
    .local v9, "allConfigStrings":[Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 359
    array-length v10, v9
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v11, 0x0

    move-object v12, v3

    move v3, v11

    .end local v3    # "otherConfigString":Ljava/lang/String;
    .local v12, "otherConfigString":Ljava/lang/String;
    :goto_0
    if-ge v3, v10, :cond_3

    :try_start_1
    aget-object v13, v9, v3

    .line 360
    .local v13, "s":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 361
    const-string v14, ":"

    const/4 v15, 0x2

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v14

    .line 362
    .local v14, "splitStr":[Ljava/lang/String;
    array-length v4, v14

    if-ne v4, v15, :cond_2

    .line 363
    aget-object v4, v14, v11

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 365
    .local v4, "apnType":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/internal/telephony/RetryManager;->mApnType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v15, 0x1

    if-eqz v5, :cond_1

    .line 368
    aget-object v3, v14, v15

    move-object v2, v3

    .line 369
    goto :goto_1

    .line 370
    :cond_1
    const-string v5, "others"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 373
    aget-object v5, v14, v15
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v12, v5

    .line 359
    .end local v4    # "apnType":Ljava/lang/String;
    .end local v13    # "s":Ljava/lang/String;
    .end local v14    # "splitStr":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    const-wide/16 v4, 0x1770

    goto :goto_0

    .line 390
    .end local v0    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v8    # "b":Landroid/os/PersistableBundle;
    .end local v9    # "allConfigStrings":[Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v3, v12

    goto :goto_3

    .line 380
    .end local v12    # "otherConfigString":Ljava/lang/String;
    .restart local v0    # "configManager":Landroid/telephony/CarrierConfigManager;
    .restart local v3    # "otherConfigString":Ljava/lang/String;
    .restart local v8    # "b":Landroid/os/PersistableBundle;
    .restart local v9    # "allConfigStrings":[Ljava/lang/String;
    :cond_3
    :goto_1
    move-object v3, v12

    :cond_4
    if-nez v2, :cond_6

    .line 381
    if-eqz v3, :cond_5

    .line 382
    move-object v2, v3

    goto :goto_2

    .line 386
    :cond_5
    :try_start_2
    const-string v4, "Invalid APN retry configuration!. Use the default one now."

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    .line 387
    const-string v4, "max_retries=3, 5000, 5000, 5000"
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v2, v4

    .line 397
    .end local v0    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v8    # "b":Landroid/os/PersistableBundle;
    .end local v9    # "allConfigStrings":[Ljava/lang/String;
    :cond_6
    :goto_2
    goto :goto_4

    .line 390
    :catch_1
    move-exception v0

    .line 392
    .local v0, "ex":Ljava/lang/NullPointerException;
    :goto_3
    const-string v4, "Failed to read configuration! Use the hardcoded default value."

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    .line 394
    iput-wide v6, v1, Lcom/android/internal/telephony/RetryManager;->mInterApnDelay:J

    .line 395
    const-wide/16 v4, 0x1770

    iput-wide v4, v1, Lcom/android/internal/telephony/RetryManager;->mFailFastInterApnDelay:J

    .line 396
    const-string v2, "max_retries=3, 5000, 5000, 5000"

    .line 404
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :goto_4
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    .line 405
    return-void
.end method

.method private getRetryTimer()I
    .locals 4

    .line 412
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 413
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    .local v0, "index":I
    goto :goto_0

    .line 415
    .end local v0    # "index":I
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 419
    .restart local v0    # "index":I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 420
    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RetryManager$RetryRec;

    iget v1, v1, Lcom/android/internal/telephony/RetryManager$RetryRec;->mDelayTime:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RetryManager;->nextRandomizationTime(I)I

    move-result v2

    add-int/2addr v1, v2

    .local v1, "retVal":I
    goto :goto_1

    .line 422
    .end local v1    # "retVal":I
    :cond_1
    const/4 v1, 0x0

    .line 425
    .restart local v1    # "retVal":I
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRetryTimer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    .line 426
    return v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 680
    const-string v0, "RetryManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/RetryManager;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    return-void
.end method

.method private nextRandomizationTime(I)I
    .locals 2
    .param p1, "index"    # I

    .line 475
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RetryManager$RetryRec;

    iget v0, v0, Lcom/android/internal/telephony/RetryManager$RetryRec;->mRandomizationTime:I

    .line 476
    .local v0, "randomTime":I
    if-nez v0, :cond_0

    .line 477
    const/4 v1, 0x0

    return v1

    .line 479
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mRng:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    return v1
.end method

.method private parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "stringValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 439
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 440
    .local v0, "value":I
    new-instance v1, Landroid/util/Pair;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RetryManager;->validateNonNegativeInt(Ljava/lang/String;I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    .local v1, "retVal":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 441
    .end local v0    # "value":I
    .end local v1    # "retVal":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 442
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "RetryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " bad value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 443
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "retVal":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :goto_0
    move-object v0, v1

    .line 449
    .end local v1    # "retVal":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    .local v0, "retVal":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    return-object v0
.end method

.method private reset()V
    .locals 2

    .line 607
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    .line 608
    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    .line 609
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    .line 610
    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    .line 611
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    .line 612
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 613
    return-void
.end method

.method private validateNonNegativeInt(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 460
    if-gez p2, :cond_0

    .line 461
    const-string v0, "RetryManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " bad value: is < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const/4 v0, 0x0

    .local v0, "retVal":Z
    goto :goto_0

    .line 464
    .end local v0    # "retVal":Z
    :cond_0
    const/4 v0, 0x1

    .line 467
    .restart local v0    # "retVal":Z
    :goto_0
    return v0
.end method


# virtual methods
.method public getDelayForNextApn(Z)J
    .locals 7
    .param p1, "failFastEnabled"    # Z

    .line 529
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 534
    :cond_0
    iget-wide v3, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    .line 535
    const-string v0, "Modem suggested not retrying."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    .line 536
    return-wide v1

    .line 539
    :cond_1
    iget-wide v3, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    const-wide/16 v5, -0x2

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    const/4 v3, 0x3

    if-ge v0, v3, :cond_2

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Modem suggested retry in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    .line 544
    iget-wide v0, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    return-wide v0

    .line 553
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    .line 555
    .local v0, "index":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_4

    const/4 v0, 0x0

    .line 558
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-boolean v3, v3, Lcom/android/internal/telephony/dataconnection/ApnSetting;->permanentFailed:Z

    if-nez v3, :cond_8

    .line 569
    iget v3, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    if-gt v0, v3, :cond_6

    .line 571
    iget-boolean v3, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    if-nez v3, :cond_5

    iget v3, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    if-le v3, v4, :cond_5

    .line 572
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reached maximum retry count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    .line 573
    return-wide v1

    .line 575
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    move-result v1

    int-to-long v1, v1

    .line 576
    .local v1, "delay":J
    iget v3, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    goto :goto_0

    .line 579
    .end local v1    # "delay":J
    :cond_6
    iget-wide v1, p0, Lcom/android/internal/telephony/RetryManager;->mInterApnDelay:J

    .line 582
    .restart local v1    # "delay":J
    :goto_0
    if-eqz p1, :cond_7

    iget-wide v3, p0, Lcom/android/internal/telephony/RetryManager;->mFailFastInterApnDelay:J

    cmp-long v3, v1, v3

    if-lez v3, :cond_7

    .line 587
    iget-wide v1, p0, Lcom/android/internal/telephony/RetryManager;->mFailFastInterApnDelay:J

    .line 590
    :cond_7
    return-wide v1

    .line 562
    .end local v1    # "delay":J
    :cond_8
    iget v3, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    if-ne v0, v3, :cond_3

    .line 563
    const-string v3, "All APNs have permanently failed."

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    .line 564
    return-wide v1

    .line 530
    .end local v0    # "index":I
    :cond_9
    :goto_1
    const-string v0, "Waiting APN list is null or empty."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    .line 531
    return-wide v1
.end method

.method public getNextApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 6

    .line 489
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 497
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    const-wide/16 v4, -0x2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 499
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    .line 500
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    return-object v0

    .line 503
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    .line 505
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    .line 508
    .local v0, "index":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_3

    const/4 v0, 0x0

    .line 511
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-boolean v2, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->permanentFailed:Z

    if-nez v2, :cond_4

    .line 517
    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    .line 518
    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    return-object v1

    .line 514
    :cond_4
    iget v2, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    if-ne v0, v2, :cond_2

    return-object v1

    .line 490
    .end local v0    # "index":I
    :cond_5
    :goto_0
    const-string v0, "Waiting APN list is null or empty."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    .line 491
    return-object v1
.end method

.method public getRetryAfterDisconnectDelay()J
    .locals 2

    .line 666
    iget-wide v0, p0, Lcom/android/internal/telephony/RetryManager;->mApnRetryAfterDisconnectDelay:J

    return-wide v0
.end method

.method public getWaitingApns()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation

    .line 649
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    return-object v0
.end method

.method public markApnPermanentFailed(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V
    .locals 1
    .param p1, "apn"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 598
    if-eqz p1, :cond_0

    .line 599
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->permanentFailed:Z

    .line 601
    :cond_0
    return-void
.end method

.method public setModemSuggestedDelay(J)V
    .locals 0
    .param p1, "delay"    # J

    .line 658
    iput-wide p1, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    .line 659
    return-void
.end method

.method public setWaitingApns(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;)V"
        }
    .end annotation

    .line 621
    .local p1, "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    if-nez p1, :cond_0

    .line 622
    const-string v0, "No waiting APNs provided"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    .line 623
    return-void

    .line 626
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    .line 629
    invoke-direct {p0}, Lcom/android/internal/telephony/RetryManager;->configureRetry()V

    .line 631
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 632
    .local v1, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->permanentFailed:Z

    .line 633
    .end local v1    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    goto :goto_0

    .line 635
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " waiting APNs."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    .line 642
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 670
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mConfig:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 671
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RetryManager: mApnType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mApnType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mMaxRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCurrentApnIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mSameApnRtryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mModemSuggestedDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mRetryForever="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mInterApnDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/RetryManager;->mInterApnDelay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mApnRetryAfterDisconnectDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/RetryManager;->mApnRetryAfterDisconnectDelay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mConfig={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mConfig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
