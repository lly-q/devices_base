.class public Lcom/android/internal/telephony/LocaleTracker;
.super Landroid/os/Handler;
.source "LocaleTracker.java"


# static fields
.field private static final CELL_INFO_MAX_DELAY_MS:J = 0x927c0L

.field private static final CELL_INFO_MIN_DELAY_MS:J = 0x7d0L

.field private static final CELL_INFO_PERIODIC_POLLING_DELAY_MS:J = 0x927c0L

.field private static final DBG:Z = true

.field private static final EVENT_GET_CELL_INFO:I = 0x1

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x3

.field private static final EVENT_UPDATE_OPERATOR_NUMERIC:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCellInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentCountryIso:Ljava/lang/String;

.field private mFailCellInfoCount:I

.field private mLastServiceState:I

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mOperatorNumeric:Ljava/lang/String;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private mSimState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lcom/android/internal/telephony/LocaleTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/LocaleTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 156
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mFailCellInfoCount:I

    .line 105
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mLastServiceState:I

    .line 107
    new-instance v1, Landroid/util/LocalLog;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mLocalLog:Landroid/util/LocalLog;

    .line 110
    new-instance v1, Lcom/android/internal/telephony/LocaleTracker$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/LocaleTracker$1;-><init>(Lcom/android/internal/telephony/LocaleTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 157
    iput-object p1, p0, Lcom/android/internal/telephony/LocaleTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 158
    iput v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mSimState:I

    .line 160
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 161
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/LocaleTracker;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/LocaleTracker;

    .line 56
    iget-object v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/LocaleTracker;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LocaleTracker;
    .param p1, "x1"    # I

    .line 56
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LocaleTracker;->onSimCardStateChanged(I)V

    return-void
.end method

.method private getCellInfo()V
    .locals 7

    .line 342
    iget-object v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 343
    const-string v0, "Radio is off. Stopped cell info retry. Cleared the previous cached cell info."

    .line 344
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfo:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 345
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LocaleTracker;->log(Ljava/lang/String;)V

    .line 346
    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 347
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->stopCellInfoRetry()V

    .line 348
    return-void

    .line 353
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->getAllCellInfo(Landroid/os/WorkSource;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfo:Ljava/util/List;

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCellInfo: cell info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfo:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    .restart local v0    # "msg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LocaleTracker;->log(Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfo:Ljava/util/List;

    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 359
    iget v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mFailCellInfoCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mFailCellInfoCount:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LocaleTracker;->getCellInfoDelayTime(I)J

    move-result-wide v3

    .line 360
    .local v3, "delay":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t get cell info. mFailCellInfoCount="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/internal/telephony/LocaleTracker;->mFailCellInfoCount:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Try again in "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x3e8

    div-long v5, v3, v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " secs."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LocaleTracker;->log(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/LocaleTracker;->removeMessages(I)V

    .line 362
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/LocaleTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/telephony/LocaleTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 363
    .end local v3    # "delay":J
    goto :goto_0

    .line 365
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->stopCellInfoRetry()V

    .line 369
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/LocaleTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x927c0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/LocaleTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 372
    :goto_0
    return-void
.end method

.method private getCellInfoDelayTime(I)J
    .locals 6
    .param p1, "failCount"    # I

    .line 314
    const-wide/32 v0, 0x927c0

    const/16 v2, 0xa

    if-le p1, v2, :cond_0

    .line 315
    return-wide v0

    .line 319
    :cond_0
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    add-int/lit8 v4, p1, -0x1

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-long v2, v2

    const-wide/16 v4, 0x7d0

    mul-long/2addr v2, v4

    .line 320
    .local v2, "delay":J
    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 321
    const-wide/16 v2, 0x7d0

    goto :goto_0

    .line 322
    :cond_1
    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    .line 323
    const-wide/32 v2, 0x927c0

    .line 325
    :cond_2
    :goto_0
    return-wide v2
.end method

.method private getMccFromCellInfo()Ljava/lang/String;
    .locals 8

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "selectedMcc":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfo:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 186
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 187
    .local v1, "countryCodeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 188
    .local v2, "maxCount":I
    iget-object v3, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CellInfo;

    .line 189
    .local v4, "cellInfo":Landroid/telephony/CellInfo;
    const/4 v5, 0x0

    .line 190
    .local v5, "mcc":Ljava/lang/String;
    instance-of v6, v4, Landroid/telephony/CellInfoGsm;

    if-eqz v6, :cond_0

    .line 191
    move-object v6, v4

    check-cast v6, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v6}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellIdentityGsm;->getMccString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 192
    :cond_0
    instance-of v6, v4, Landroid/telephony/CellInfoLte;

    if-eqz v6, :cond_1

    .line 193
    move-object v6, v4

    check-cast v6, Landroid/telephony/CellInfoLte;

    invoke-virtual {v6}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellIdentityLte;->getMccString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 194
    :cond_1
    instance-of v6, v4, Landroid/telephony/CellInfoWcdma;

    if-eqz v6, :cond_2

    .line 195
    move-object v6, v4

    check-cast v6, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v6}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellIdentityWcdma;->getMccString()Ljava/lang/String;

    move-result-object v5

    .line 197
    :cond_2
    :goto_1
    if-eqz v5, :cond_4

    .line 198
    const/4 v6, 0x1

    .line 199
    .local v6, "count":I
    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 200
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v6, v7, 0x1

    .line 202
    :cond_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    if-le v6, v2, :cond_4

    .line 206
    move v2, v6

    .line 207
    move-object v0, v5

    .line 210
    .end local v4    # "cellInfo":Landroid/telephony/CellInfo;
    .end local v5    # "mcc":Ljava/lang/String;
    .end local v6    # "count":I
    :cond_4
    goto :goto_0

    .line 212
    .end local v1    # "countryCodeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "maxCount":I
    :cond_5
    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 444
    sget-object v0, Lcom/android/internal/telephony/LocaleTracker;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 448
    sget-object v0, Lcom/android/internal/telephony/LocaleTracker;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return-void
.end method

.method private onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 237
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 238
    .local v0, "state":I
    iget v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mLastServiceState:I

    if-eq v0, v1, :cond_3

    .line 239
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mOperatorNumeric:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/telephony/ServiceState;->rilServiceStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Get cell info now."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "msg":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LocaleTracker;->log(Ljava/lang/String;)V

    .line 245
    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 246
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->getCellInfo()V

    .line 247
    .end local v1    # "msg":Ljava/lang/String;
    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_2

    .line 249
    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfo:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 250
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->stopCellInfoRetry()V

    .line 252
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->updateLocale()V

    .line 253
    iput v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mLastServiceState:I

    .line 255
    :cond_3
    return-void
.end method

.method private declared-synchronized onSimCardStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    monitor-enter p0

    .line 223
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mSimState:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 224
    const-string v0, "Sim absent. Get latest cell info from the modem."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LocaleTracker;->log(Ljava/lang/String;)V

    .line 225
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->getCellInfo()V

    .line 226
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->updateLocale()V

    .line 228
    :cond_0
    iput p1, p0, Lcom/android/internal/telephony/LocaleTracker;->mSimState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    monitor-exit p0

    return-void

    .line 222
    .end local p1    # "state":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/LocaleTracker;
    throw p1
.end method

.method private stopCellInfoRetry()V
    .locals 1

    .line 333
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mFailCellInfoCount:I

    .line 334
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LocaleTracker;->removeMessages(I)V

    .line 335
    return-void
.end method

.method private updateLocale()V
    .locals 6

    .line 379
    const/4 v0, 0x0

    .line 380
    .local v0, "mcc":Ljava/lang/String;
    const/4 v1, 0x0

    .line 384
    .local v1, "countryIso":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OPIpTime: updateLocale() mOperatorNumeric = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/LocaleTracker;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/LocaleTracker;->loge(Ljava/lang/String;)V

    .line 387
    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mOperatorNumeric:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 389
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mOperatorNumeric:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 390
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 394
    goto :goto_0

    .line 391
    :catch_0
    move-exception v2

    .line 392
    .local v2, "ex":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateLocale: Can\'t get country from operator numeric. mcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". ex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/LocaleTracker;->loge(Ljava/lang/String;)V

    .line 399
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OPIpTime: updateLocale() 1. mcc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", country = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/LocaleTracker;->loge(Ljava/lang/String;)V

    .line 404
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 405
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->getMccFromCellInfo()Ljava/lang/String;

    move-result-object v0

    .line 406
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 408
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 412
    goto :goto_1

    .line 409
    :catch_1
    move-exception v2

    .line 410
    .local v2, "ex":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateLocale: Can\'t get country from cell info. mcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". ex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/LocaleTracker;->loge(Ljava/lang/String;)V

    .line 418
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_1
    const/4 v2, 0x0

    .line 419
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OPIpTime: updateLocale() 2. mcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", country = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mCurrentCountryIso = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/LocaleTracker;->mCurrentCountryIso:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/LocaleTracker;->loge(Ljava/lang/String;)V

    .line 426
    iget-object v3, p0, Lcom/android/internal/telephony/LocaleTracker;->mCurrentCountryIso:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 427
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateLocale: Change the current country to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 428
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/LocaleTracker;->log(Ljava/lang/String;)V

    .line 429
    iget-object v3, p0, Lcom/android/internal/telephony/LocaleTracker;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v3, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 430
    iput-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mCurrentCountryIso:Ljava/lang/String;

    .line 432
    iget-object v3, p0, Lcom/android/internal/telephony/LocaleTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    const-string v4, "gsm.operator.iso-country"

    iget-object v5, p0, Lcom/android/internal/telephony/LocaleTracker;->mCurrentCountryIso:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v3, p0, Lcom/android/internal/telephony/LocaleTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 439
    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->setCountryCode(Ljava/lang/String;)V

    .line 441
    :cond_2
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 459
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 460
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string v1, "LocaleTracker:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 461
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOperatorNumeric = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mSimState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCellInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfo:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentCountryIso = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mCurrentCountryIso:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFailCellInfoCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/LocaleTracker;->mFailCellInfoCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 467
    const-string v1, "Local logs:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 469
    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v1, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 470
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 471
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 472
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    .line 473
    return-void
.end method

.method public declared-synchronized getCurrentCountry()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mCurrentCountryIso:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mCurrentCountryIso:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/LocaleTracker;
    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 130
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected message arrives. msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 142
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/ServiceState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LocaleTracker;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 143
    goto :goto_0

    .line 138
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LocaleTracker;->updateOperatorNumericSync(Ljava/lang/String;)V

    .line 139
    goto :goto_0

    .line 132
    :pswitch_2
    monitor-enter p0

    .line 133
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->getCellInfo()V

    .line 134
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->updateLocale()V

    .line 135
    monitor-exit p0

    .line 136
    nop

    .line 147
    :goto_0
    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateOperatorNumericAsync(Ljava/lang/String;)V
    .locals 2
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateOperatorNumericAsync. mcc/mnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LocaleTracker;->log(Ljava/lang/String;)V

    .line 301
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/LocaleTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LocaleTracker;->sendMessage(Landroid/os/Message;)Z

    .line 302
    return-void
.end method

.method public declared-synchronized updateOperatorNumericSync(Ljava/lang/String;)V
    .locals 2
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    monitor-enter p0

    .line 267
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateOperatorNumericSync. mcc/mnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LocaleTracker;->log(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/LocaleTracker;->mOperatorNumeric:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Operator numeric changes to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "msg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LocaleTracker;->log(Ljava/lang/String;)V

    .line 271
    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 272
    iput-object p1, p0, Lcom/android/internal/telephony/LocaleTracker;->mOperatorNumeric:Ljava/lang/String;

    .line 276
    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mOperatorNumeric:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    const-string v1, "Operator numeric unavailable. Get latest cell info from the modem."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LocaleTracker;->log(Ljava/lang/String;)V

    .line 280
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->getCellInfo()V

    goto :goto_0

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfo:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker;->mCellInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 285
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->stopCellInfoRetry()V

    .line 287
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/LocaleTracker;->updateLocale()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    .end local v0    # "msg":Ljava/lang/String;
    :cond_2
    monitor-exit p0

    return-void

    .line 266
    .end local p1    # "operatorNumeric":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/LocaleTracker;
    throw p1
.end method
