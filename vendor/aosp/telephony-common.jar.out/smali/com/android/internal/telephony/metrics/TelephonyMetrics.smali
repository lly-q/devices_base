.class public Lcom/android/internal/telephony/metrics/TelephonyMetrics;
.super Ljava/lang/Object;
.source "TelephonyMetrics.java"


# static fields
.field private static final DBG:Z = true

.field private static final MAX_COMPLETED_CALL_SESSIONS:I = 0x32

.field private static final MAX_COMPLETED_SMS_SESSIONS:I = 0x1f4

.field private static final MAX_TELEPHONY_EVENTS:I = 0x3e8

.field private static final SESSION_START_PRECISION_MINUTES:I = 0x5

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z = false

.field private static sInstance:Lcom/android/internal/telephony/metrics/TelephonyMetrics;


# instance fields
.field private final mCompletedCallSessions:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mCompletedSmsSessions:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mInProgressCallSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/metrics/InProgressCallSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mInProgressSmsSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/metrics/InProgressSmsSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastImsCapabilities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastImsConnectionState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastServiceState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastSettings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;",
            ">;"
        }
    .end annotation
.end field

.field private mStartElapsedTimeMs:J

.field private mStartSystemTimeMs:J

.field private final mTelephonyEvents:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyEventsDropped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    const-class v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    .line 130
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    .line 133
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    .line 136
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    .line 139
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    .line 142
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    .line 148
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    .line 154
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    .line 159
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastSettings:Landroid/util/SparseArray;

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEventsDropped:Z

    .line 171
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->reset()V

    .line 172
    return-void
.end method

.method private declared-synchronized addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    monitor-enter p0

    .line 822
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    .line 823
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 824
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEventsDropped:Z

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 827
    monitor-exit p0

    return-void

    .line 821
    .end local p1    # "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    throw p1
.end method

.method private declared-synchronized annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V
    .locals 1
    .param p1, "timestamp"    # J
    .param p3, "phoneId"    # I
    .param p4, "eventBuilder"    # Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    monitor-enter p0

    .line 675
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 676
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {v0, p1, p2, p4}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    :cond_0
    monitor-exit p0

    return-void

    .line 674
    .end local v0    # "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    .end local p1    # "timestamp":J
    .end local p3    # "phoneId":I
    .end local p4    # "eventBuilder":Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    throw p1
.end method

.method private declared-synchronized annotateInProgressSmsSession(JILcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    .locals 1
    .param p1, "timestamp"    # J
    .param p3, "phoneId"    # I
    .param p4, "eventBuilder"    # Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    monitor-enter p0

    .line 690
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    .line 691
    .local v0, "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    if-eqz v0, :cond_0

    .line 692
    invoke-virtual {v0, p1, p2, p4}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(JLcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    :cond_0
    monitor-exit p0

    return-void

    .line 689
    .end local v0    # "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    .end local p1    # "timestamp":J
    .end local p3    # "phoneId":I
    .end local p4    # "eventBuilder":Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    throw p1
.end method

.method private declared-synchronized buildProto()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;
    .locals 6

    monitor-enter p0

    .line 494
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;-><init>()V

    .line 496
    .local v0, "log":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    .line 497
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    iget-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    invoke-interface {v1, v2}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 498
    iget-boolean v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEventsDropped:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->eventsDropped:Z

    .line 501
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    .line 502
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    iget-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    invoke-interface {v1, v2}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 505
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    .line 506
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    iget-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    invoke-interface {v1, v2}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 509
    invoke-static {}, Lcom/android/internal/telephony/RIL;->getTelephonyRILTimingHistograms()Ljava/util/List;

    move-result-object v1

    .line 510
    .local v1, "rilHistograms":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    iput-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    .line 511
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 512
    iget-object v3, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    new-instance v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    invoke-direct {v4}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;-><init>()V

    aput-object v4, v3, v2

    .line 513
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyHistogram;

    .line 514
    .local v3, "rilHistogram":Landroid/telephony/TelephonyHistogram;
    iget-object v4, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    aget-object v4, v4, v2

    .line 516
    .local v4, "histogramProto":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getCategory()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->category:I

    .line 517
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getId()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->id:I

    .line 518
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getMinTime()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->minTimeMillis:I

    .line 519
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getMaxTime()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->maxTimeMillis:I

    .line 520
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getAverageTime()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->avgTimeMillis:I

    .line 521
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getSampleCount()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->count:I

    .line 522
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getBucketCount()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketCount:I

    .line 523
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getBucketEndPoints()[I

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    .line 524
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getBucketCounters()[I

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    .line 511
    .end local v3    # "rilHistogram":Landroid/telephony/TelephonyHistogram;
    .end local v4    # "histogramProto":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 528
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/metrics/ModemPowerMetrics;

    invoke-direct {v2}, Lcom/android/internal/telephony/metrics/ModemPowerMetrics;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/ModemPowerMetrics;->buildProto()Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->modemPowerStats:Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    .line 531
    new-instance v2, Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    invoke-direct {v2}, Lcom/android/internal/telephony/nano/TelephonyProto$Time;-><init>()V

    iput-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    .line 532
    iget-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    iget-wide v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartSystemTimeMs:J

    iput-wide v3, v2, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->systemTimestampMillis:J

    .line 533
    iget-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    iget-wide v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    iput-wide v3, v2, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->elapsedTimestampMillis:J

    .line 535
    new-instance v2, Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    invoke-direct {v2}, Lcom/android/internal/telephony/nano/TelephonyProto$Time;-><init>()V

    iput-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    .line 536
    iget-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->systemTimestampMillis:J

    .line 537
    iget-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->elapsedTimestampMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    monitor-exit p0

    return-object v0

    .line 493
    .end local v0    # "log":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;
    .end local v1    # "rilHistograms":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    throw v0
.end method

.method private static callSessionEventToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "event"    # I

    .line 254
    packed-switch p0, :pswitch_data_0

    .line 300
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 298
    :pswitch_0
    const-string v0, "NITZ_TIME"

    return-object v0

    .line 296
    :pswitch_1
    const-string v0, "PHONE_STATE_CHANGED"

    return-object v0

    .line 294
    :pswitch_2
    const-string v0, "IMS_CALL_HANDOVER_FAILED"

    return-object v0

    .line 292
    :pswitch_3
    const-string v0, "IMS_CALL_HANDOVER"

    return-object v0

    .line 290
    :pswitch_4
    const-string v0, "IMS_CALL_TERMINATED"

    return-object v0

    .line 288
    :pswitch_5
    const-string v0, "IMS_CALL_STATE_CHANGED"

    return-object v0

    .line 286
    :pswitch_6
    const-string v0, "IMS_CALL_RECEIVE"

    return-object v0

    .line 284
    :pswitch_7
    const-string v0, "IMS_COMMAND_COMPLETE"

    return-object v0

    .line 282
    :pswitch_8
    const-string v0, "IMS_COMMAND_FAILED"

    return-object v0

    .line 280
    :pswitch_9
    const-string v0, "IMS_COMMAND_RECEIVED"

    return-object v0

    .line 278
    :pswitch_a
    const-string v0, "IMS_COMMAND"

    return-object v0

    .line 276
    :pswitch_b
    const-string v0, "RIL_CALL_LIST_CHANGED"

    return-object v0

    .line 274
    :pswitch_c
    const-string v0, "RIL_CALL_SRVCC"

    return-object v0

    .line 272
    :pswitch_d
    const-string v0, "RIL_CALL_RING"

    return-object v0

    .line 270
    :pswitch_e
    const-string v0, "RIL_RESPONSE"

    return-object v0

    .line 268
    :pswitch_f
    const-string v0, "RIL_REQUEST"

    return-object v0

    .line 266
    :pswitch_10
    const-string v0, "DATA_CALL_LIST_CHANGED"

    return-object v0

    .line 264
    :pswitch_11
    const-string v0, "IMS_CAPABILITIES_CHANGED"

    return-object v0

    .line 262
    :pswitch_12
    const-string v0, "IMS_CONNECTION_STATE_CHANGED"

    return-object v0

    .line 260
    :pswitch_13
    const-string v0, "RIL_SERVICE_STATE_CHANGED"

    return-object v0

    .line 258
    :pswitch_14
    const-string v0, "SETTINGS_CHANGED"

    return-object v0

    .line 256
    :pswitch_15
    const-string v0, "EVENT_UNKNOWN"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private convertConnectionToRilCall(Lcom/android/internal/telephony/GsmCdmaConnection;Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;)V
    .locals 4
    .param p1, "conn"    # Lcom/android/internal/telephony/GsmCdmaConnection;
    .param p2, "call"    # Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    .line 1188
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->isIncoming()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 1189
    iput v2, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->type:I

    goto :goto_0

    .line 1191
    :cond_0
    iput v1, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->type:I

    .line 1193
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 1222
    const/4 v0, 0x0

    iput v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    goto :goto_1

    .line 1219
    :pswitch_0
    const/16 v0, 0x9

    iput v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    .line 1220
    goto :goto_1

    .line 1216
    :pswitch_1
    const/16 v0, 0x8

    iput v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    .line 1217
    goto :goto_1

    .line 1213
    :pswitch_2
    const/4 v0, 0x7

    iput v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    .line 1214
    goto :goto_1

    .line 1210
    :pswitch_3
    const/4 v0, 0x6

    iput v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    .line 1211
    goto :goto_1

    .line 1207
    :pswitch_4
    const/4 v0, 0x5

    iput v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    .line 1208
    goto :goto_1

    .line 1204
    :pswitch_5
    const/4 v0, 0x4

    iput v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    .line 1205
    goto :goto_1

    .line 1201
    :pswitch_6
    const/4 v0, 0x3

    iput v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    .line 1202
    goto :goto_1

    .line 1198
    :pswitch_7
    iput v2, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    .line 1199
    goto :goto_1

    .line 1195
    :pswitch_8
    iput v1, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    .line 1196
    nop

    .line 1225
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getDisconnectCause()I

    move-result v0

    iput v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->callEndReason:I

    .line 1226
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->isMultiparty()Z

    move-result v0

    iput-boolean v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->isMultiparty:Z

    .line 1227
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private convertConnectionsToRilCalls(Ljava/util/ArrayList;)[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/GsmCdmaConnection;",
            ">;)[",
            "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;"
        }
    .end annotation

    .line 1178
    .local p1, "mConnections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/GsmCdmaConnection;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    .line 1179
    .local v0, "calls":[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1180
    new-instance v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    invoke-direct {v2}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;-><init>()V

    aput-object v2, v0, v1

    .line 1181
    aget-object v2, v0, v1

    iput v1, v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->index:I

    .line 1182
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v3, v0, v1

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertConnectionToRilCall(Lcom/android/internal/telephony/GsmCdmaConnection;Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;)V

    .line 1179
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1184
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static convertProtoToBase64String(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;)Ljava/lang/String;
    .locals 2
    .param p0, "proto"    # Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    .line 443
    nop

    .line 444
    invoke-static {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object v0

    .line 443
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private disconnectReasonsKnown([Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;)Z
    .locals 5
    .param p1, "calls"    # [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    .line 1171
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 1172
    .local v3, "call":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;
    iget v4, v3, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->callEndReason:I

    if-nez v4, :cond_0

    return v1

    .line 1171
    .end local v3    # "call":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1174
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private declared-synchronized finishCallSession(Lcom/android/internal/telephony/metrics/InProgressCallSession;)V
    .locals 3
    .param p1, "inProgressCallSession"    # Lcom/android/internal/telephony/metrics/InProgressCallSession;

    monitor-enter p0

    .line 780
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;-><init>()V

    .line 781
    .local v0, "callSession":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;
    iget-object v1, p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;->events:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    .line 782
    iget-object v1, p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;->events:Ljava/util/Deque;

    iget-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    invoke-interface {v1, v2}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 783
    iget v1, p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startSystemTimeMin:I

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->startTimeMinutes:I

    .line 784
    iget v1, p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;->phoneId:I

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->phoneId:I

    .line 785
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->isEventsDropped()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->eventsDropped:Z

    .line 786
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_0

    .line 787
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 789
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 790
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;->phoneId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 792
    monitor-exit p0

    return-void

    .line 779
    .end local v0    # "callSession":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;
    .end local p1    # "inProgressCallSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    throw p1
.end method

.method private declared-synchronized finishSmsSessionIfNeeded(Lcom/android/internal/telephony/metrics/InProgressSmsSession;)V
    .locals 3
    .param p1, "inProgressSmsSession"    # Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    monitor-enter p0

    .line 800
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->getNumExpectedResponses()I

    move-result v0

    if-nez v0, :cond_1

    .line 801
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;-><init>()V

    .line 802
    .local v0, "smsSession":Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;
    iget-object v1, p1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->events:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    .line 803
    iget-object v1, p1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->events:Ljava/util/Deque;

    iget-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    invoke-interface {v1, v2}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 804
    iget v1, p1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->startSystemTimeMin:I

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->startTimeMinutes:I

    .line 805
    iget v1, p1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->phoneId:I

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->phoneId:I

    .line 806
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->isEventsDropped()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->eventsDropped:Z

    .line 807
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_0

    .line 808
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 810
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 811
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->phoneId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 814
    .end local v0    # "smsSession":Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;
    :cond_1
    monitor-exit p0

    return-void

    .line 799
    .end local p1    # "inProgressSmsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    throw p1
.end method

.method private getCallId(Landroid/telephony/ims/ImsCallSession;)I
    .locals 2
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 1548
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 1549
    return v0

    .line 1553
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1554
    :catch_0
    move-exception v1

    .line 1555
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    .locals 2

    const-class v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    monitor-enter v0

    .line 180
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->sInstance:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    if-nez v1, :cond_0

    .line 181
    new-instance v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->sInstance:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 184
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->sInstance:Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 179
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized printAllMetrics(Ljava/io/PrintWriter;)V
    .locals 17
    .param p1, "rawWriter"    # Ljava/io/PrintWriter;

    move-object/from16 v1, p0

    monitor-enter p0

    .line 340
    :try_start_0
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "  "

    move-object/from16 v3, p1

    invoke-direct {v0, v3, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 342
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string v2, "Telephony metrics proto:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 343
    const-string v2, "------------------------------------------"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 344
    const-string v2, "Telephony events:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 346
    iget-object v2, v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    .line 347
    .local v4, "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    iget-wide v6, v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 348
    const-string v6, " ["

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 349
    iget v6, v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->phoneId:I

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 350
    const-string v6, "] "

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 352
    const-string v6, "T="

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 353
    iget v6, v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    if-ne v6, v5, :cond_0

    .line 354
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    invoke-static {v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->telephonyEventToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    iget v6, v6, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataRat:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 357
    :cond_0
    iget v5, v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    invoke-static {v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->telephonyEventToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 360
    :goto_1
    const-string v5, ""

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 361
    .end local v4    # "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    goto :goto_0

    .line 363
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 364
    const-string v2, "Call sessions:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 367
    iget-object v2, v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    .line 368
    .local v4, "callSession":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Start time in minutes: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->startTimeMinutes:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 369
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Events dropped: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->eventsDropped:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 371
    const-string v7, "Events: "

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 373
    iget-object v7, v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    array-length v8, v7

    move v9, v6

    :goto_3
    if-ge v9, v8, :cond_5

    aget-object v10, v7, v9

    .line 374
    .local v10, "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;
    iget v11, v10, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->delay:I

    invoke-virtual {v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 375
    const-string v11, " T="

    invoke-virtual {v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 376
    iget v11, v10, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->type:I

    if-ne v11, v5, :cond_2

    .line 377
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, v10, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->type:I

    invoke-static {v12}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->callSessionEventToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    iget v12, v12, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataRat:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 379
    :cond_2
    iget v11, v10, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->type:I

    const/16 v12, 0xa

    if-ne v11, v12, :cond_4

    .line 380
    iget v11, v10, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->type:I

    invoke-static {v11}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->callSessionEventToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 382
    iget-object v11, v10, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    array-length v12, v11

    move v13, v6

    :goto_4
    if-ge v13, v12, :cond_3

    aget-object v14, v11, v13

    .line 383
    .local v14, "call":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v14, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->index:I

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". Type = "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v14, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->type:I

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " State = "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v14, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " End Reason "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v14, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->callEndReason:I

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " isMultiparty = "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v14, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->isMultiparty:Z

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 382
    .end local v14    # "call":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;
    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x2

    goto :goto_4

    .line 387
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_5

    .line 389
    :cond_4
    iget v5, v10, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->type:I

    invoke-static {v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->callSessionEventToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 373
    .end local v10    # "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;
    :goto_5
    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x2

    goto/16 :goto_3

    .line 392
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 393
    .end local v4    # "callSession":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;
    nop

    .line 367
    const/4 v5, 0x2

    goto/16 :goto_2

    .line 395
    :cond_6
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 396
    const-string v2, "Sms sessions:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 399
    const/4 v2, 0x0

    .line 400
    .local v2, "count":I
    iget-object v4, v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    .line 401
    .local v5, "smsSession":Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;
    add-int/lit8 v2, v2, 0x1

    .line 402
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] Start time in minutes: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->startTimeMinutes:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 405
    iget-boolean v7, v5, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->eventsDropped:Z

    if-eqz v7, :cond_7

    .line 406
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ", events dropped: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v5, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->eventsDropped:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 408
    :cond_7
    const-string v7, "Events: "

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 410
    iget-object v7, v5, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    array-length v8, v7

    move v9, v6

    :goto_7
    if-ge v9, v8, :cond_8

    aget-object v10, v7, v9

    .line 411
    .local v10, "event":Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;
    iget v11, v10, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->delay:I

    invoke-virtual {v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 412
    const-string v11, " T="

    invoke-virtual {v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 413
    iget v11, v10, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->type:I

    invoke-static {v11}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->smsSessionEventToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 410
    .end local v10    # "event":Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 415
    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 416
    .end local v5    # "smsSession":Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;
    goto :goto_6

    .line 418
    :cond_9
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 419
    const-string v4, "Modem power stats:"

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 421
    new-instance v4, Lcom/android/internal/telephony/metrics/ModemPowerMetrics;

    invoke-direct {v4}, Lcom/android/internal/telephony/metrics/ModemPowerMetrics;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/metrics/ModemPowerMetrics;->buildProto()Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    move-result-object v4

    .line 422
    .local v4, "s":Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Power log duration (battery time) (ms): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->loggingDurationMs:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 423
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Energy consumed by modem (mAh): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->energyConsumedMah:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 424
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Number of packets sent (tx): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numPacketsTx:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 425
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Amount of time kernel is active because of cellular data (ms): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->cellularKernelActiveTimeMs:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 427
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Amount of time spent in very poor rx signal level (ms): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInVeryPoorRxSignalLevelMs:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 429
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Amount of time modem is in sleep (ms): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->sleepTimeMs:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 430
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Amount of time modem is in idle (ms): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->idleTimeMs:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 431
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Amount of time modem is in rx (ms): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->rxTimeMs:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 432
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Amount of time modem is in tx (ms): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->txTimeMs:[J

    invoke-static {v6}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    monitor-exit p0

    return-void

    .line 339
    .end local v0    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v2    # "count":I
    .end local v4    # "s":Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;
    .end local p1    # "rawWriter":Ljava/io/PrintWriter;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    throw v0
.end method

.method private declared-synchronized reset()V
    .locals 6

    monitor-enter p0

    .line 451
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 452
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 453
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 455
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEventsDropped:Z

    .line 457
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartSystemTimeMs:J

    .line 458
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    .line 462
    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 463
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 465
    .local v2, "key":I
    new-instance v3, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    iget-wide v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(JI)V

    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    .line 466
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setServiceState(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v3

    .line 467
    .local v3, "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 462
    .end local v2    # "key":I
    .end local v3    # "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 470
    .end local v1    # "i":I
    :cond_0
    move v1, v0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 471
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 473
    .restart local v2    # "key":I
    new-instance v3, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    iget-wide v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(JI)V

    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    .line 474
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v3

    .line 475
    .restart local v3    # "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 470
    .end local v2    # "key":I
    .end local v3    # "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 478
    .end local v1    # "i":I
    :cond_1
    nop

    .local v0, "i":I
    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 479
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 481
    .local v1, "key":I
    new-instance v2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    iget-wide v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    invoke-direct {v2, v3, v4, v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(JI)V

    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    .line 482
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v2

    .line 483
    .local v2, "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    .end local v1    # "key":I
    .end local v2    # "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 485
    .end local v0    # "i":I
    :cond_2
    monitor-exit p0

    return-void

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    throw v0
.end method

.method static roundSessionStart(J)I
    .locals 4
    .param p0, "timestamp"    # J

    .line 548
    const-wide/32 v0, 0x493e0

    div-long v0, p0, v0

    const-wide/16 v2, 0x5

    mul-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static smsSessionEventToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "event"    # I

    .line 310
    packed-switch p0, :pswitch_data_0

    .line 330
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 328
    :pswitch_0
    const-string v0, "SMS_RECEIVED"

    return-object v0

    .line 326
    :pswitch_1
    const-string v0, "SMS_SEND_RESULT"

    return-object v0

    .line 324
    :pswitch_2
    const-string v0, "SMS_SEND"

    return-object v0

    .line 322
    :pswitch_3
    const-string v0, "DATA_CALL_LIST_CHANGED"

    return-object v0

    .line 320
    :pswitch_4
    const-string v0, "IMS_CAPABILITIES_CHANGED"

    return-object v0

    .line 318
    :pswitch_5
    const-string v0, "IMS_CONNECTION_STATE_CHANGED"

    return-object v0

    .line 316
    :pswitch_6
    const-string v0, "RIL_SERVICE_STATE_CHANGED"

    return-object v0

    .line 314
    :pswitch_7
    const-string v0, "SETTINGS_CHANGED"

    return-object v0

    .line 312
    :pswitch_8
    const-string v0, "EVENT_UNKNOWN"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized startNewCallSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressCallSession;
    .locals 8
    .param p1, "phoneId"    # I

    monitor-enter p0

    .line 703
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 704
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_2

    .line 706
    new-instance v1, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;-><init>(I)V

    move-object v0, v1

    .line 707
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 711
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 712
    .local v1, "serviceState":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;
    if-eqz v1, :cond_0

    .line 713
    iget-wide v2, v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    new-instance v4, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 715
    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setServiceState(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v4

    .line 713
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 718
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    .line 719
    .local v2, "imsCapabilities":Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;
    if-eqz v2, :cond_1

    .line 720
    iget-wide v3, v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    new-instance v5, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 722
    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v5

    .line 720
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 725
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    .line 726
    .local v3, "imsConnectionState":Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;
    if-eqz v3, :cond_2

    .line 727
    iget-wide v4, v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    new-instance v6, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 729
    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v6

    .line 727
    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 732
    .end local v1    # "serviceState":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;
    .end local v2    # "imsCapabilities":Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;
    .end local v3    # "imsConnectionState":Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;
    :cond_2
    monitor-exit p0

    return-object v0

    .line 702
    .end local v0    # "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    .end local p1    # "phoneId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    throw p1
.end method

.method private declared-synchronized startNewSmsSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    .locals 8
    .param p1, "phoneId"    # I

    monitor-enter p0

    .line 742
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    .line 743
    .local v0, "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    if-nez v0, :cond_2

    .line 745
    new-instance v1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;-><init>(I)V

    move-object v0, v1

    .line 746
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 750
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 751
    .local v1, "serviceState":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;
    if-eqz v1, :cond_0

    .line 752
    iget-wide v2, v0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->startElapsedTimeMs:J

    new-instance v4, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 754
    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setServiceState(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v4

    .line 752
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(JLcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 757
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    .line 758
    .local v2, "imsCapabilities":Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;
    if-eqz v2, :cond_1

    .line 759
    iget-wide v3, v0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->startElapsedTimeMs:J

    new-instance v5, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 761
    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v5

    .line 759
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(JLcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 764
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    .line 765
    .local v3, "imsConnectionState":Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;
    if-eqz v3, :cond_2

    .line 766
    iget-wide v4, v0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->startElapsedTimeMs:J

    new-instance v6, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 768
    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v6

    .line 766
    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(JLcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    .end local v1    # "serviceState":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;
    .end local v2    # "imsCapabilities":Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;
    .end local v3    # "imsConnectionState":Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;
    :cond_2
    monitor-exit p0

    return-object v0

    .line 741
    .end local v0    # "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    .end local p1    # "phoneId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    throw p1
.end method

.method private static telephonyEventToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "event"    # I

    .line 215
    packed-switch p0, :pswitch_data_0

    .line 243
    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 241
    :pswitch_1
    const-string v0, "CARRIER_ID_MATCHING"

    return-object v0

    .line 239
    :pswitch_2
    const-string v0, "MODEM_RESTART"

    return-object v0

    .line 237
    :pswitch_3
    const-string v0, "DATA_STALL_ACTION"

    return-object v0

    .line 235
    :pswitch_4
    const-string v0, "DATA_CALL_DEACTIVATE_RESPONSE"

    return-object v0

    .line 233
    :pswitch_5
    const-string v0, "DATA_CALL_DEACTIVATE"

    return-object v0

    .line 231
    :pswitch_6
    const-string v0, "DATA_CALL_LIST_CHANGED"

    return-object v0

    .line 229
    :pswitch_7
    const-string v0, "DATA_CALL_SETUP_RESPONSE"

    return-object v0

    .line 227
    :pswitch_8
    const-string v0, "DATA_CALL_SETUP"

    return-object v0

    .line 225
    :pswitch_9
    const-string v0, "IMS_CAPABILITIES_CHANGED"

    return-object v0

    .line 223
    :pswitch_a
    const-string v0, "IMS_CONNECTION_STATE_CHANGED"

    return-object v0

    .line 221
    :pswitch_b
    const-string v0, "RIL_SERVICE_STATE_CHANGED"

    return-object v0

    .line 219
    :pswitch_c
    const-string v0, "SETTINGS_CHANGED"

    return-object v0

    .line 217
    :pswitch_d
    const-string v0, "UNKNOWN"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private toCallSessionRilRequest(I)I
    .locals 3
    .param p1, "r"    # I

    .line 1335
    const/16 v0, 0xa

    if-eq p1, v0, :cond_3

    const/16 v0, 0x24

    if-eq p1, v0, :cond_2

    const/16 v0, 0x28

    if-eq p1, v0, :cond_1

    const/16 v0, 0x54

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 1359
    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown RIL request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    const/4 v0, 0x0

    return v0

    .line 1357
    :pswitch_0
    const/4 v0, 0x7

    return v0

    .line 1351
    :pswitch_1
    const/4 v0, 0x5

    return v0

    .line 1345
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 1354
    :cond_0
    const/4 v0, 0x6

    return v0

    .line 1340
    :cond_1
    const/4 v0, 0x2

    return v0

    .line 1348
    :cond_2
    const/4 v0, 0x4

    return v0

    .line 1337
    :cond_3
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private toImsReasonInfoProto(Landroid/telephony/ims/ImsReasonInfo;)Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1659
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;-><init>()V

    .line 1660
    .local v0, "ri":Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;
    if-eqz p1, :cond_0

    .line 1661
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->reasonCode:I

    .line 1662
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->extraCode:I

    .line 1663
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v1

    .line 1664
    .local v1, "extraMessage":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1665
    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->extraMessage:Ljava/lang/String;

    .line 1668
    .end local v1    # "extraMessage":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private toPdpType(Ljava/lang/String;)I
    .locals 6
    .param p1, "type"    # Ljava/lang/String;

    .line 1049
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7edefc9b

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x927

    if-eq v0, v1, :cond_2

    const v1, 0x13650

    if-eq v0, v1, :cond_1

    const v1, 0x226607

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "IPV6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v5

    goto :goto_1

    :cond_1
    const-string v0, "PPP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_1

    :cond_2
    const-string v0, "IP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_1

    :cond_3
    const-string v0, "IPV4V6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 1059
    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    return v3

    .line 1057
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 1055
    :pswitch_1
    return v4

    .line 1053
    :pswitch_2
    return v2

    .line 1051
    :pswitch_3
    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static toPrivacyFuzzedTimeInterval(JJ)I
    .locals 4
    .param p0, "previousTimestamp"    # J
    .param p2, "currentTimestamp"    # J

    .line 577
    sub-long v0, p2, p0

    .line 578
    .local v0, "diff":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 579
    const/4 v2, 0x0

    return v2

    .line 580
    :cond_0
    const-wide/16 v2, 0xa

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 581
    const/4 v2, 0x1

    return v2

    .line 582
    :cond_1
    const-wide/16 v2, 0x14

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 583
    const/4 v2, 0x2

    return v2

    .line 584
    :cond_2
    const-wide/16 v2, 0x32

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    .line 585
    const/4 v2, 0x3

    return v2

    .line 586
    :cond_3
    const-wide/16 v2, 0x64

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4

    .line 587
    const/4 v2, 0x4

    return v2

    .line 588
    :cond_4
    const-wide/16 v2, 0xc8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_5

    .line 589
    const/4 v2, 0x5

    return v2

    .line 590
    :cond_5
    const-wide/16 v2, 0x1f4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_6

    .line 591
    const/4 v2, 0x6

    return v2

    .line 592
    :cond_6
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_7

    .line 593
    const/4 v2, 0x7

    return v2

    .line 594
    :cond_7
    const-wide/16 v2, 0x7d0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_8

    .line 595
    const/16 v2, 0x8

    return v2

    .line 596
    :cond_8
    const-wide/16 v2, 0x1388

    cmp-long v2, v0, v2

    if-gtz v2, :cond_9

    .line 597
    const/16 v2, 0x9

    return v2

    .line 598
    :cond_9
    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-gtz v2, :cond_a

    .line 599
    const/16 v2, 0xa

    return v2

    .line 600
    :cond_a
    const-wide/16 v2, 0x7530

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    .line 601
    const/16 v2, 0xb

    return v2

    .line 602
    :cond_b
    const-wide/32 v2, 0xea60

    cmp-long v2, v0, v2

    if-gtz v2, :cond_c

    .line 603
    const/16 v2, 0xc

    return v2

    .line 604
    :cond_c
    const-wide/32 v2, 0x2bf20

    cmp-long v2, v0, v2

    if-gtz v2, :cond_d

    .line 605
    const/16 v2, 0xd

    return v2

    .line 606
    :cond_d
    const-wide/32 v2, 0x927c0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_e

    .line 607
    const/16 v2, 0xe

    return v2

    .line 608
    :cond_e
    const-wide/32 v2, 0x1b7740

    cmp-long v2, v0, v2

    if-gtz v2, :cond_f

    .line 609
    const/16 v2, 0xf

    return v2

    .line 610
    :cond_f
    const-wide/32 v2, 0x36ee80

    cmp-long v2, v0, v2

    if-gtz v2, :cond_10

    .line 611
    const/16 v2, 0x10

    return v2

    .line 612
    :cond_10
    const-wide/32 v2, 0x6ddd00

    cmp-long v2, v0, v2

    if-gtz v2, :cond_11

    .line 613
    const/16 v2, 0x11

    return v2

    .line 614
    :cond_11
    const-wide/32 v2, 0xdbba00

    cmp-long v2, v0, v2

    if-gtz v2, :cond_12

    .line 615
    const/16 v2, 0x12

    return v2

    .line 617
    :cond_12
    const/16 v2, 0x13

    return v2
.end method

.method private toServiceStateProto(Landroid/telephony/ServiceState;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;
    .locals 3
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 628
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;-><init>()V

    .line 630
    .local v0, "ssProto":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceRoamingType:I

    .line 631
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataRoamingType:I

    .line 633
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;-><init>()V

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    .line 635
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 636
    iget-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaLong:Ljava/lang/String;

    .line 639
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 640
    iget-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorAlphaShort()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaShort:Ljava/lang/String;

    .line 643
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 644
    iget-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->numeric:Ljava/lang/String;

    .line 647
    :cond_2
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;-><init>()V

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    .line 649
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 650
    iget-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaLong:Ljava/lang/String;

    .line 653
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 654
    iget-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorAlphaShort()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaShort:Ljava/lang/String;

    .line 657
    :cond_4
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 658
    iget-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->numeric:Ljava/lang/String;

    .line 661
    :cond_5
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceRat:I

    .line 662
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataRat:I

    .line 663
    return-object v0
.end method

.method private writeOnCallSolicitedResponse(IIII)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "rilError"    # I
    .param p4, "rilRequest"    # I

    .line 1408
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 1409
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 1410
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string v2, "writeOnCallSolicitedResponse: Call session is missing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1412
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1414
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toCallSessionRilRequest(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequest(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1415
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequestId(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    add-int/lit8 v2, p3, 0x1

    .line 1416
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilError(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1412
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1418
    :goto_0
    return-void
.end method

.method private writeOnDeactivateDataCallResponse(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "rilError"    # I

    .line 1460
    new-instance v0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    add-int/lit8 v1, p2, 0x1

    .line 1461
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setDeactivateDataCallResponse(I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v0

    .line 1460
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 1462
    return-void
.end method

.method private writeOnSetupDataCallResponse(IIIILandroid/hardware/radio/V1_0/SetupDataCallResult;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "rilError"    # I
    .param p4, "rilRequest"    # I
    .param p5, "result"    # Landroid/hardware/radio/V1_0/SetupDataCallResult;

    .line 1375
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;-><init>()V

    .line 1376
    .local v0, "setupDataCallResponse":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;-><init>()V

    .line 1378
    .local v1, "dataCall":Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;
    if-eqz p5, :cond_2

    .line 1379
    nop

    .line 1380
    iget v2, p5, Landroid/hardware/radio/V1_0/SetupDataCallResult;->status:I

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    iget v2, p5, Landroid/hardware/radio/V1_0/SetupDataCallResult;->status:I

    :goto_0
    iput v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->status:I

    .line 1381
    iget v2, p5, Landroid/hardware/radio/V1_0/SetupDataCallResult;->suggestedRetryTime:I

    iput v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->suggestedRetryTimeMillis:I

    .line 1383
    iget v2, p5, Landroid/hardware/radio/V1_0/SetupDataCallResult;->cid:I

    iput v2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->cid:I

    .line 1384
    iget-object v2, p5, Landroid/hardware/radio/V1_0/SetupDataCallResult;->type:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1385
    iget-object v2, p5, Landroid/hardware/radio/V1_0/SetupDataCallResult;->type:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toPdpType(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->type:I

    .line 1388
    :cond_1
    iget-object v2, p5, Landroid/hardware/radio/V1_0/SetupDataCallResult;->ifname:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1389
    iget-object v2, p5, Landroid/hardware/radio/V1_0/SetupDataCallResult;->ifname:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->iframe:Ljava/lang/String;

    .line 1392
    :cond_2
    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->call:Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    .line 1394
    new-instance v2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    .line 1395
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setSetupDataCallResponse(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v2

    .line 1394
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 1396
    return-void
.end method

.method private declared-synchronized writeOnSmsSolicitedResponse(IIILcom/android/internal/telephony/SmsResponse;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "rilError"    # I
    .param p4, "response"    # Lcom/android/internal/telephony/SmsResponse;

    monitor-enter p0

    .line 1431
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    .line 1432
    .local v0, "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    if-nez v0, :cond_0

    .line 1433
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string v2, "SMS session is missing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1436
    :cond_0
    const/4 v1, 0x0

    .line 1437
    .local v1, "errorCode":I
    if-eqz p4, :cond_1

    .line 1438
    iget v2, p4, Lcom/android/internal/telephony/SmsResponse;->mErrorCode:I

    move v1, v2

    .line 1441
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 1443
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setErrorCode(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v2

    add-int/lit8 v3, p3, 0x1

    .line 1444
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setRilErrno(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v2

    .line 1445
    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setRilRequestId(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v2

    .line 1441
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 1448
    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->decreaseExpectedResponse()V

    .line 1449
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishSmsSessionIfNeeded(Lcom/android/internal/telephony/metrics/InProgressSmsSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1451
    .end local v1    # "errorCode":I
    :goto_0
    monitor-exit p0

    return-void

    .line 1430
    .end local v0    # "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    .end local p1    # "phoneId":I
    .end local p2    # "rilSerial":I
    .end local p3    # "rilError":I
    .end local p4    # "response":Lcom/android/internal/telephony/SmsResponse;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    throw p1
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 195
    if-eqz p3, :cond_3

    array-length v0, p3

    if-lez v0, :cond_3

    .line 196
    const/4 v0, 0x0

    aget-object v1, p3, v0

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x746ad8dd

    if-eq v3, v4, :cond_1

    const v0, 0x38a4a0a5

    if-eq v3, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "--metricsproto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v3, "--metrics"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 201
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->buildProto()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertProtoToBase64String(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 202
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->reset()V

    goto :goto_2

    .line 198
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->printAllMetrics(Ljava/io/PrintWriter;)V

    .line 199
    nop

    .line 206
    :cond_3
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeCarrierIdMatchingEvent(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "version"    # I
    .param p3, "cid"    # I
    .param p4, "mccmnc"    # Ljava/lang/String;
    .param p5, "gid1"    # Ljava/lang/String;

    .line 1834
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;-><init>()V

    .line 1835
    .local v0, "carrierIdMatching":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;-><init>()V

    .line 1837
    .local v1, "carrierIdMatchingResult":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;
    const/4 v2, -0x1

    if-eq p3, v2, :cond_0

    .line 1839
    iput p3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->carrierId:I

    .line 1841
    if-eqz p5, :cond_1

    .line 1842
    iput-object p4, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->mccmnc:Ljava/lang/String;

    .line 1843
    iput-object p5, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->gid1:Ljava/lang/String;

    goto :goto_0

    .line 1847
    :cond_0
    if-eqz p4, :cond_1

    .line 1848
    iput-object p4, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->mccmnc:Ljava/lang/String;

    .line 1852
    :cond_1
    :goto_0
    iput p2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;->cidTableVersion:I

    .line 1853
    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;->result:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;

    .line 1855
    new-instance v2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setCarrierIdMatching(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v2

    .line 1856
    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v2

    .line 1857
    .local v2, "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 1858
    return-void
.end method

.method public writeCarrierKeyEvent(IIZ)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "keyType"    # I
    .param p3, "isDownloadSuccessful"    # Z

    .line 560
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;-><init>()V

    .line 561
    .local v0, "carrierKeyChange":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;
    iput p2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->keyType:I

    .line 562
    iput-boolean p3, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->isDownloadSuccessful:Z

    .line 563
    new-instance v1, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setCarrierKeyChange(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v1

    .line 564
    invoke-virtual {v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v1

    .line 565
    .local v1, "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 566
    return-void
.end method

.method public writeDataStallEvent(II)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "recoveryAction"    # I

    .line 867
    new-instance v0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    .line 868
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setDataStallRecoveryAction(I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v0

    .line 867
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 869
    return-void
.end method

.method public writeImsCallState(ILandroid/telephony/ims/ImsCallSession;Lcom/android/internal/telephony/Call$State;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p3, "callState"    # Lcom/android/internal/telephony/Call$State;

    .line 1569
    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p3}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1589
    const/4 v0, 0x0

    goto :goto_0

    .line 1587
    :pswitch_0
    const/16 v0, 0x9

    goto :goto_0

    .line 1585
    :pswitch_1
    const/16 v0, 0x8

    goto :goto_0

    .line 1583
    :pswitch_2
    const/4 v0, 0x7

    goto :goto_0

    .line 1581
    :pswitch_3
    const/4 v0, 0x6

    goto :goto_0

    .line 1579
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 1577
    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    .line 1575
    :pswitch_6
    const/4 v0, 0x3

    goto :goto_0

    .line 1573
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_0

    .line 1571
    :pswitch_8
    const/4 v0, 0x1

    .line 1589
    .local v0, "state":I
    :goto_0
    nop

    .line 1592
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 1593
    .local v1, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v1, :cond_0

    .line 1594
    sget-object v2, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string v3, "Call session is missing"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1596
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1598
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Landroid/telephony/ims/ImsCallSession;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v2

    .line 1599
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallState(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v2

    .line 1596
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1601
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeImsSetFeatureValue(IIII)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "feature"    # I
    .param p3, "network"    # I
    .param p4, "value"    # I

    .line 880
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;-><init>()V

    .line 881
    .local v0, "s":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p3, :cond_2

    .line 882
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 887
    :pswitch_0
    if-eqz p4, :cond_0

    move v1, v2

    nop

    :cond_0
    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverLteEnabled:Z

    goto :goto_0

    .line 884
    :pswitch_1
    if-eqz p4, :cond_1

    move v1, v2

    nop

    :cond_1
    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled:Z

    .line 885
    nop

    .line 888
    :goto_0
    goto :goto_1

    .line 890
    :cond_2
    if-ne p3, v2, :cond_5

    .line 891
    packed-switch p2, :pswitch_data_1

    goto :goto_1

    .line 896
    :pswitch_2
    if-eqz p4, :cond_3

    move v1, v2

    nop

    :cond_3
    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled:Z

    goto :goto_1

    .line 893
    :pswitch_3
    if-eqz p4, :cond_4

    move v1, v2

    nop

    :cond_4
    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isWifiCallingEnabled:Z

    .line 894
    nop

    .line 903
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastSettings:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastSettings:Landroid/util/SparseArray;

    .line 904
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    invoke-static {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object v1

    .line 905
    invoke-static {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object v3

    .line 904
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 906
    return-void

    .line 909
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastSettings:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 911
    new-instance v1, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setSettings(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v1

    .line 912
    .local v1, "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 914
    iget-wide v3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    new-instance v5, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    invoke-direct {v5, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 916
    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setSettings(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v5

    .line 914
    invoke-direct {p0, v3, v4, p1, v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 917
    iget-wide v3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    new-instance v5, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    invoke-direct {v5, v2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 919
    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setSettings(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v2

    .line 917
    invoke-direct {p0, v3, v4, p1, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressSmsSession(JILcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 920
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public writeModemRestartEvent(ILjava/lang/String;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 1814
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;-><init>()V

    .line 1815
    .local v0, "modemRestart":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;
    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v1

    .line 1816
    .local v1, "basebandVersion":Ljava/lang/String;
    if-eqz v1, :cond_0

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;->basebandVersion:Ljava/lang/String;

    .line 1817
    :cond_0
    if-eqz p2, :cond_1

    iput-object p2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;->reason:Ljava/lang/String;

    .line 1818
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setModemRestart(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v2

    .line 1819
    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v2

    .line 1820
    .local v2, "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 1821
    return-void
.end method

.method public writeNITZEvent(IJ)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "timestamp"    # J

    .line 1798
    new-instance v0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setNITZ(J)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v0

    .line 1799
    .local v0, "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 1801
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    new-instance v3, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v4, 0x15

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1804
    invoke-virtual {v3, p2, p3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setNITZ(J)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v3

    .line 1801
    invoke-direct {p0, v1, v2, p1, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1805
    return-void
.end method

.method public declared-synchronized writeNewCBSms(IIIZZI)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "format"    # I
    .param p3, "priority"    # I
    .param p4, "isCMAS"    # Z
    .param p5, "isETWS"    # Z
    .param p6, "serviceCategory"    # I

    monitor-enter p0

    .line 1767
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewSmsSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    move-result-object v0

    .line 1770
    .local v0, "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    if-eqz p4, :cond_0

    .line 1771
    const/4 v1, 0x2

    .local v1, "type":I
    :goto_0
    goto :goto_1

    .line 1772
    .end local v1    # "type":I
    :cond_0
    if-eqz p5, :cond_1

    .line 1773
    const/4 v1, 0x1

    goto :goto_0

    .line 1775
    :cond_1
    const/4 v1, 0x3

    .line 1778
    .restart local v1    # "type":I
    :goto_1
    new-instance v2, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;-><init>()V

    .line 1779
    .local v2, "cbm":Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;
    iput p2, v2, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->msgFormat:I

    .line 1780
    add-int/lit8 v3, p3, 0x1

    iput v3, v2, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->msgPriority:I

    .line 1781
    iput v1, v2, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->msgType:I

    .line 1782
    iput p6, v2, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->serviceCategory:I

    .line 1784
    new-instance v3, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/16 v4, 0x9

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 1785
    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setCellBroadcastMessage(Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v3

    .line 1784
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 1788
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishSmsSessionIfNeeded(Lcom/android/internal/telephony/metrics/InProgressSmsSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1789
    monitor-exit p0

    return-void

    .line 1766
    .end local v0    # "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    .end local v1    # "type":I
    .end local v2    # "cbm":Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;
    .end local p1    # "phoneId":I
    .end local p2    # "format":I
    .end local p3    # "priority":I
    .end local p4    # "isCMAS":Z
    .end local p5    # "isETWS":Z
    .end local p6    # "serviceCategory":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    throw p1
.end method

.method public writeOnImsCallHandoverEvent(IILandroid/telephony/ims/ImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "eventType"    # I
    .param p3, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p4, "srcAccessTech"    # I
    .param p5, "targetAccessTech"    # I
    .param p6, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1704
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 1705
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 1706
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string v2, "Call session is missing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1708
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    invoke-direct {v1, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1710
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Landroid/telephony/ims/ImsCallSession;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1711
    invoke-virtual {v1, p4}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setSrcAccessTech(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1712
    invoke-virtual {v1, p5}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setTargetAccessTech(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1713
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toImsReasonInfoProto(Landroid/telephony/ims/ImsReasonInfo;)Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsReasonInfo(Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1708
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1715
    :goto_0
    return-void
.end method

.method public writeOnImsCallHeld(ILandroid/telephony/ims/ImsCallSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 1865
    return-void
.end method

.method public writeOnImsCallHoldFailed(ILandroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1868
    return-void
.end method

.method public writeOnImsCallHoldReceived(ILandroid/telephony/ims/ImsCallSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 1866
    return-void
.end method

.method public writeOnImsCallProgressing(ILandroid/telephony/ims/ImsCallSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 1861
    return-void
.end method

.method public writeOnImsCallReceive(ILandroid/telephony/ims/ImsCallSession;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 1625
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewCallSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressCallSession;

    move-result-object v0

    .line 1627
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1629
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Landroid/telephony/ims/ImsCallSession;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1627
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1630
    return-void
.end method

.method public writeOnImsCallResumeFailed(ILandroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1872
    return-void
.end method

.method public writeOnImsCallResumeReceived(ILandroid/telephony/ims/ImsCallSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 1870
    return-void
.end method

.method public writeOnImsCallResumed(ILandroid/telephony/ims/ImsCallSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 1869
    return-void
.end method

.method public writeOnImsCallStart(ILandroid/telephony/ims/ImsCallSession;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 1610
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewCallSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressCallSession;

    move-result-object v0

    .line 1612
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1614
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Landroid/telephony/ims/ImsCallSession;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1615
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsCommand(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1612
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1616
    return-void
.end method

.method public writeOnImsCallStartFailed(ILandroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1864
    return-void
.end method

.method public writeOnImsCallStarted(ILandroid/telephony/ims/ImsCallSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 1862
    return-void
.end method

.method public writeOnImsCallTerminated(ILandroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1680
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 1681
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 1682
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string v2, "Call session is missing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1684
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1686
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Landroid/telephony/ims/ImsCallSession;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1687
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toImsReasonInfoProto(Landroid/telephony/ims/ImsReasonInfo;)Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsReasonInfo(Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1684
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1689
    :goto_0
    return-void
.end method

.method public declared-synchronized writeOnImsCapabilities(IILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "radioTech"    # I
    .param p3, "capabilities"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    monitor-enter p0

    .line 1001
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;-><init>()V

    .line 1003
    .local v0, "cap":Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-nez p2, :cond_0

    .line 1004
    invoke-virtual {p3, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->voiceOverLte:Z

    .line 1006
    invoke-virtual {p3, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->videoOverLte:Z

    .line 1008
    invoke-virtual {p3, v3}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->utOverLte:Z

    goto :goto_0

    .line 1011
    :cond_0
    if-ne p2, v2, :cond_1

    .line 1012
    invoke-virtual {p3, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->voiceOverWifi:Z

    .line 1014
    invoke-virtual {p3, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->videoOverWifi:Z

    .line 1016
    invoke-virtual {p3, v3}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->utOverWifi:Z

    .line 1020
    :cond_1
    :goto_0
    new-instance v1, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v1

    .line 1023
    .local v1, "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    .line 1024
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    invoke-static {v2}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object v2

    .line 1025
    invoke-static {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object v4

    .line 1024
    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 1026
    monitor-exit p0

    return-void

    .line 1029
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1030
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 1032
    iget-wide v4, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    new-instance v2, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    iget-object v6, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    .line 1035
    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v2

    .line 1032
    invoke-direct {p0, v4, v5, p1, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1036
    iget-wide v4, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    new-instance v2, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    iget-object v3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    .line 1039
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v2

    .line 1036
    invoke-direct {p0, v4, v5, p1, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressSmsSession(JILcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1040
    monitor-exit p0

    return-void

    .line 1000
    .end local v0    # "cap":Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;
    .end local v1    # "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    .end local p1    # "phoneId":I
    .end local p2    # "radioTech":I
    .end local p3    # "capabilities":Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    throw p1
.end method

.method public writeOnImsCommand(ILandroid/telephony/ims/ImsCallSession;I)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p3, "command"    # I

    .line 1641
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 1642
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 1643
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string v2, "Call session is missing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1645
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1647
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Landroid/telephony/ims/ImsCallSession;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1648
    invoke-virtual {v1, p3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsCommand(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1645
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1650
    :goto_0
    return-void
.end method

.method public declared-synchronized writeOnImsConnectionState(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "state"    # I
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    monitor-enter p0

    .line 953
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;-><init>()V

    .line 954
    .local v0, "imsState":Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;
    iput p2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->state:I

    .line 956
    if-eqz p3, :cond_1

    .line 957
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;-><init>()V

    .line 959
    .local v1, "ri":Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;
    invoke-virtual {p3}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->reasonCode:I

    .line 960
    invoke-virtual {p3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->extraCode:I

    .line 961
    invoke-virtual {p3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v2

    .line 962
    .local v2, "extraMessage":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 963
    iput-object v2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->extraMessage:Ljava/lang/String;

    .line 966
    :cond_0
    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->reasonInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    .line 970
    .end local v1    # "ri":Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;
    .end local v2    # "extraMessage":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    .line 971
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    invoke-static {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object v1

    .line 972
    invoke-static {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object v2

    .line 971
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 973
    monitor-exit p0

    return-void

    .line 976
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 978
    new-instance v1, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    .line 979
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v1

    .line 980
    .local v1, "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 982
    iget-wide v2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    new-instance v4, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    iget-object v6, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    .line 985
    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v4

    .line 982
    invoke-direct {p0, v2, v3, p1, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 986
    iget-wide v2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    new-instance v4, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    iget-object v5, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    .line 989
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v4

    .line 986
    invoke-direct {p0, v2, v3, p1, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressSmsSession(JILcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 990
    monitor-exit p0

    return-void

    .line 952
    .end local v0    # "imsState":Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;
    .end local v1    # "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    .end local p1    # "phoneId":I
    .end local p2    # "state":I
    .end local p3    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    throw p1
.end method

.method public writeOnRilSolicitedResponse(IIIILjava/lang/Object;)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "rilError"    # I
    .param p4, "rilRequest"    # I
    .param p5, "ret"    # Ljava/lang/Object;

    .line 1475
    sparse-switch p4, :sswitch_data_0

    goto :goto_0

    .line 1481
    :sswitch_0
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnDeactivateDataCallResponse(II)V

    .line 1482
    goto :goto_0

    .line 1477
    :sswitch_1
    move-object v6, p5

    check-cast v6, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    .line 1478
    .local v6, "result":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnSetupDataCallResponse(IIIILandroid/hardware/radio/V1_0/SetupDataCallResult;)V

    .line 1479
    goto :goto_0

    .line 1494
    .end local v6    # "result":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    :sswitch_2
    move-object v0, p5

    check-cast v0, Lcom/android/internal/telephony/SmsResponse;

    .line 1495
    .local v0, "smsResponse":Lcom/android/internal/telephony/SmsResponse;
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnSmsSolicitedResponse(IIILcom/android/internal/telephony/SmsResponse;)V

    .end local v0    # "smsResponse":Lcom/android/internal/telephony/SmsResponse;
    goto :goto_0

    .line 1488
    :sswitch_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnCallSolicitedResponse(IIII)V

    .line 1489
    nop

    .line 1498
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_3
        0xc -> :sswitch_3
        0xd -> :sswitch_3
        0xe -> :sswitch_3
        0x19 -> :sswitch_2
        0x1a -> :sswitch_2
        0x1b -> :sswitch_1
        0x28 -> :sswitch_3
        0x29 -> :sswitch_0
        0x57 -> :sswitch_2
        0x71 -> :sswitch_2
    .end sparse-switch
.end method

.method public writeOnRilTimeoutResponse(III)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "rilRequest"    # I

    .line 1873
    return-void
.end method

.method public writePhoneState(ILcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "phoneState"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .line 1508
    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1519
    const/4 v0, 0x0

    goto :goto_0

    .line 1516
    :pswitch_0
    const/4 v0, 0x3

    .line 1517
    .local v0, "state":I
    goto :goto_0

    .line 1513
    .end local v0    # "state":I
    :pswitch_1
    const/4 v0, 0x2

    .line 1514
    .restart local v0    # "state":I
    goto :goto_0

    .line 1510
    .end local v0    # "state":I
    :pswitch_2
    const/4 v0, 0x1

    .line 1511
    .restart local v0    # "state":I
    nop

    .line 1519
    :goto_0
    nop

    .line 1523
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 1524
    .local v1, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v1, :cond_0

    .line 1525
    sget-object v2, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string v3, "writePhoneState: Call session is missing"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1530
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->setLastKnownPhoneState(I)V

    .line 1531
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1532
    invoke-virtual {v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->containsCsCalls()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1533
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishCallSession(Lcom/android/internal/telephony/metrics/InProgressCallSession;)V

    .line 1535
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1537
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setPhoneState(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v2

    .line 1535
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1539
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeRilAnswer(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I

    .line 1300
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 1301
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 1302
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string v2, "writeRilAnswer: Call session is missing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1304
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    const/4 v2, 0x2

    .line 1306
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequest(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1307
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequestId(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1304
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1309
    :goto_0
    return-void
.end method

.method public writeRilCallList(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/GsmCdmaConnection;",
            ">;)V"
        }
    .end annotation

    .line 1153
    .local p2, "connections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/GsmCdmaConnection;>;"
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewCallSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressCallSession;

    move-result-object v0

    .line 1154
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 1155
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string v2, "writeRilCallList: Call session is missing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1157
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertConnectionsToRilCalls(Ljava/util/ArrayList;)[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    move-result-object v1

    .line 1158
    .local v1, "calls":[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;
    new-instance v2, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1161
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilCalls([Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v2

    .line 1158
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1164
    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->isPhoneIdle()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->disconnectReasonsKnown([Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1165
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishCallSession(Lcom/android/internal/telephony/metrics/InProgressCallSession;)V

    .line 1168
    .end local v1    # "calls":[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;
    :cond_1
    :goto_0
    return-void
.end method

.method public writeRilCallRing(I[C)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "response"    # [C

    .line 1263
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewCallSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressCallSession;

    move-result-object v0

    .line 1265
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    iget-wide v1, v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    new-instance v3, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1267
    return-void
.end method

.method public writeRilDataCallList(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;)V"
        }
    .end annotation

    .line 1127
    .local p2, "dcsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/data/DataCallResponse;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    .line 1129
    .local v0, "dataCalls":[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1130
    new-instance v2, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    invoke-direct {v2}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;-><init>()V

    aput-object v2, v0, v1

    .line 1131
    aget-object v2, v0, v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/DataCallResponse;

    invoke-virtual {v3}, Landroid/telephony/data/DataCallResponse;->getCallId()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->cid:I

    .line 1132
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/data/DataCallResponse;

    invoke-virtual {v2}, Landroid/telephony/data/DataCallResponse;->getIfname()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1133
    aget-object v2, v0, v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/DataCallResponse;

    invoke-virtual {v3}, Landroid/telephony/data/DataCallResponse;->getIfname()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->iframe:Ljava/lang/String;

    .line 1135
    :cond_0
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/data/DataCallResponse;

    invoke-virtual {v2}, Landroid/telephony/data/DataCallResponse;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1136
    aget-object v2, v0, v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/DataCallResponse;

    invoke-virtual {v3}, Landroid/telephony/data/DataCallResponse;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toPdpType(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->type:I

    .line 1129
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1140
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setDataCalls([Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 1141
    return-void
.end method

.method public writeRilDeactivateDataCall(IIII)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "cid"    # I
    .param p4, "reason"    # I

    .line 1099
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;-><init>()V

    .line 1100
    .local v0, "deactivateDataCall":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;
    iput p3, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->cid:I

    .line 1101
    packed-switch p4, :pswitch_data_0

    .line 1112
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->reason:I

    goto :goto_0

    .line 1109
    :pswitch_0
    const/4 v1, 0x4

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->reason:I

    .line 1110
    goto :goto_0

    .line 1106
    :pswitch_1
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->reason:I

    .line 1107
    goto :goto_0

    .line 1103
    :pswitch_2
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->reason:I

    .line 1104
    nop

    .line 1115
    :goto_0
    new-instance v1, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setDeactivateDataCall(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v1

    .line 1116
    invoke-virtual {v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v1

    .line 1115
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 1117
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeRilDial(ILcom/android/internal/telephony/GsmCdmaConnection;ILcom/android/internal/telephony/UUSInfo;)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "conn"    # Lcom/android/internal/telephony/GsmCdmaConnection;
    .param p3, "clirMode"    # I
    .param p4, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;

    .line 1239
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewCallSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressCallSession;

    move-result-object v0

    .line 1241
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 1242
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string v2, "writeRilDial: Call session is missing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1244
    :cond_0
    const/4 v1, 0x1

    new-array v2, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    .line 1245
    .local v2, "calls":[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;
    new-instance v3, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    invoke-direct {v3}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1246
    aget-object v3, v2, v4

    const/4 v5, -0x1

    iput v5, v3, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->index:I

    .line 1247
    aget-object v3, v2, v4

    invoke-direct {p0, p2, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertConnectionToRilCall(Lcom/android/internal/telephony/GsmCdmaConnection;Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;)V

    .line 1248
    iget-wide v3, v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    new-instance v5, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 v6, 0x6

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1250
    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequest(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1251
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilCalls([Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1248
    invoke-virtual {v0, v3, v4, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1254
    .end local v2    # "calls":[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;
    :goto_0
    return-void
.end method

.method public writeRilHangup(ILcom/android/internal/telephony/GsmCdmaConnection;I)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "conn"    # Lcom/android/internal/telephony/GsmCdmaConnection;
    .param p3, "callId"    # I

    .line 1277
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 1278
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 1279
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string v2, "writeRilHangup: Call session is missing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1281
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    .line 1282
    .local v1, "calls":[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;
    new-instance v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    invoke-direct {v2}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1283
    aget-object v2, v1, v3

    iput p3, v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->index:I

    .line 1284
    aget-object v2, v1, v3

    invoke-direct {p0, p2, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertConnectionToRilCall(Lcom/android/internal/telephony/GsmCdmaConnection;Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;)V

    .line 1285
    new-instance v2, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    const/4 v3, 0x3

    .line 1287
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequest(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v2

    .line 1288
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilCalls([Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v2

    .line 1285
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1291
    .end local v1    # "calls":[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;
    :goto_0
    return-void
.end method

.method public declared-synchronized writeRilNewSms(III)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "tech"    # I
    .param p3, "format"    # I

    monitor-enter p0

    .line 1745
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewSmsSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    move-result-object v0

    .line 1747
    .local v0, "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    new-instance v1, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 1748
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setTech(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v1

    .line 1749
    invoke-virtual {v1, p3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setFormat(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v1

    .line 1747
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 1752
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishSmsSessionIfNeeded(Lcom/android/internal/telephony/metrics/InProgressSmsSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1753
    monitor-exit p0

    return-void

    .line 1744
    .end local v0    # "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    .end local p1    # "phoneId":I
    .end local p2    # "tech":I
    .end local p3    # "format":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    throw p1
.end method

.method public declared-synchronized writeRilSendSms(IIII)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "tech"    # I
    .param p4, "format"    # I

    monitor-enter p0

    .line 1726
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewSmsSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    move-result-object v0

    .line 1728
    .local v0, "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    new-instance v1, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 1729
    invoke-virtual {v1, p3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setTech(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v1

    .line 1730
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setRilRequestId(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v1

    .line 1731
    invoke-virtual {v1, p4}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setFormat(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v1

    .line 1728
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 1734
    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->increaseExpectedResponse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1735
    monitor-exit p0

    return-void

    .line 1725
    .end local v0    # "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    .end local p1    # "phoneId":I
    .end local p2    # "rilSerial":I
    .end local p3    # "tech":I
    .end local p4    # "format":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    throw p1
.end method

.method public writeRilSrvcc(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "rilSrvccState"    # I

    .line 1318
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 1319
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 1320
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string v2, "writeRilSrvcc: Call session is missing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1322
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    add-int/lit8 v2, p2, 0x1

    .line 1324
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setSrvccState(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1322
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1326
    :goto_0
    return-void
.end method

.method public declared-synchronized writeServiceStateChanged(ILandroid/telephony/ServiceState;)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "serviceState"    # Landroid/telephony/ServiceState;

    monitor-enter p0

    .line 837
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    .line 838
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toServiceStateProto(Landroid/telephony/ServiceState;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setServiceState(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v0

    .line 841
    .local v0, "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    .line 842
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    invoke-static {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 843
    invoke-static {v2}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object v2

    .line 842
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 844
    monitor-exit p0

    return-void

    .line 847
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    iget-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 848
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 850
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    new-instance v3, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    iget-object v5, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 853
    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setServiceState(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v3

    .line 850
    invoke-direct {p0, v1, v2, p1, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 854
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    new-instance v3, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    iget-object v4, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 857
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setServiceState(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v3

    .line 854
    invoke-direct {p0, v1, v2, p1, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressSmsSession(JILcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 858
    monitor-exit p0

    return-void

    .line 836
    .end local v0    # "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    .end local p1    # "phoneId":I
    .end local p2    # "serviceState":Landroid/telephony/ServiceState;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    throw p1
.end method

.method public writeSetPreferredNetworkType(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "networkType"    # I

    .line 929
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;-><init>()V

    .line 930
    .local v0, "s":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;
    add-int/lit8 v1, p2, 0x1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->preferredNetworkMode:I

    .line 933
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastSettings:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastSettings:Landroid/util/SparseArray;

    .line 934
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    invoke-static {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object v1

    .line 935
    invoke-static {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object v2

    .line 934
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 936
    return-void

    .line 939
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastSettings:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 941
    new-instance v1, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setSettings(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 942
    return-void
.end method

.method public writeSetupDataCall(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "radioTechnology"    # I
    .param p3, "profileId"    # I
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "protocol"    # Ljava/lang/String;

    .line 1075
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;-><init>()V

    .line 1076
    .local v0, "setupDataCall":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;
    iput p2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->rat:I

    .line 1077
    add-int/lit8 v1, p3, 0x1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->dataProfile:I

    .line 1078
    if-eqz p4, :cond_0

    .line 1079
    iput-object p4, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->apn:Ljava/lang/String;

    .line 1081
    :cond_0
    if-eqz p5, :cond_1

    .line 1082
    invoke-direct {p0, p5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toPdpType(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->type:I

    .line 1085
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setSetupDataCall(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v1

    .line 1086
    invoke-virtual {v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v1

    .line 1085
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 1087
    return-void
.end method
