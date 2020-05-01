.class public Lcom/android/server/wifi/HostapdHal;
.super Ljava/lang/Object;
.source "HostapdHal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/HostapdHal$HostapdVendorIfaceHalCallback;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HostapdHal"


# instance fields
.field private mCountryCode:Ljava/lang/String;

.field private mDeathEventHandler:Lcom/android/server/wifi/WifiNative$HostapdDeathEventHandler;

.field private final mEnableAcs:Z

.field private final mEnableIeee80211AC:Z

.field private final mHostapdDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field private final mHostapdVendorDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field private mIHostapd:Landroid/hardware/wifi/hostapd/V1_0/IHostapd;

.field private mIHostapdVendor:Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;

.field private mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

.field private final mLock:Ljava/lang/Object;

.field private final mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field private final mServiceNotificationCallback:Landroid/hidl/manager/V1_0/IServiceNotification;

.field private mVerboseLoggingEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/HostapdHal;->mVerboseLoggingEnabled:Z

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mCountryCode:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    .line 64
    new-instance v0, Lcom/android/server/wifi/HostapdHal$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/HostapdHal$1;-><init>(Lcom/android/server/wifi/HostapdHal;)V

    iput-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mServiceNotificationCallback:Landroid/hidl/manager/V1_0/IServiceNotification;

    .line 81
    new-instance v0, Lcom/android/server/wifi/-$$Lambda$HostapdHal$ykyXfQPF5iy3e1W0s1ikBBPfH-Y;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/-$$Lambda$HostapdHal$ykyXfQPF5iy3e1W0s1ikBBPfH-Y;-><init>(Lcom/android/server/wifi/HostapdHal;)V

    iput-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    .line 89
    new-instance v0, Lcom/android/server/wifi/-$$Lambda$HostapdHal$BanSRPFiiwZZpFD4d63QpeU1xBA;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/-$$Lambda$HostapdHal$BanSRPFiiwZZpFD4d63QpeU1xBA;-><init>(Lcom/android/server/wifi/HostapdHal;)V

    iput-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mHostapdDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    .line 96
    new-instance v0, Lcom/android/server/wifi/-$$Lambda$HostapdHal$--Q8KVyXL91SVqo2RISnfhZqQGg;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/-$$Lambda$HostapdHal$--Q8KVyXL91SVqo2RISnfhZqQGg;-><init>(Lcom/android/server/wifi/HostapdHal;)V

    iput-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mHostapdVendorDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/HostapdHal;->mEnableAcs:Z

    .line 106
    nop

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/HostapdHal;->mEnableIeee80211AC:Z

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/HostapdHal;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HostapdHal;

    .line 49
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/HostapdHal;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HostapdHal;

    .line 49
    iget-boolean v0, p0, Lcom/android/server/wifi/HostapdHal;->mVerboseLoggingEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/HostapdHal;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HostapdHal;

    .line 49
    invoke-direct {p0}, Lcom/android/server/wifi/HostapdHal;->initHostapdService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/HostapdHal;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HostapdHal;

    .line 49
    invoke-direct {p0}, Lcom/android/server/wifi/HostapdHal;->hostapdServiceDiedHandler()V

    return-void
.end method

.method private checkHostapdAndLogFailure(Ljava/lang/String;)Z
    .locals 4
    .param p1, "methodStr"    # Ljava/lang/String;

    .line 664
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 665
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapd:Landroid/hardware/wifi/hostapd/V1_0/IHostapd;

    if-nez v1, :cond_0

    .line 666
    const-string v1, "HostapdHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", IHostapd is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 669
    :cond_0
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 670
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkHostapdVendorAndLogFailure(Ljava/lang/String;)Z
    .locals 4
    .param p1, "methodStr"    # Ljava/lang/String;

    .line 697
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 698
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapdVendor:Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;

    if-nez v1, :cond_0

    .line 699
    const-string v1, "HostapdHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", IHostapdVendor is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 702
    :cond_0
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 703
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkStatusAndLogFailure(Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;Ljava/lang/String;)Z
    .locals 4
    .param p1, "status"    # Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;
    .param p2, "methodStr"    # Ljava/lang/String;

    .line 679
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 680
    :try_start_0
    iget v1, p1, Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;->code:I

    if-eqz v1, :cond_0

    .line 681
    const-string v1, "HostapdHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IHostapd."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;->code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 685
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wifi/HostapdHal;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_1

    .line 686
    const-string v1, "HostapdHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IHostapd."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " succeeded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_1
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 690
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkVendorStatusAndLogFailure(Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;Ljava/lang/String;)Z
    .locals 4
    .param p1, "status"    # Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;
    .param p2, "methodStr"    # Ljava/lang/String;

    .line 712
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 713
    :try_start_0
    iget v1, p1, Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;->code:I

    if-eqz v1, :cond_0

    .line 714
    const-string v1, "HostapdHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IHostapdVendor."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;->code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 718
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wifi/HostapdHal;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_1

    .line 719
    const-string v1, "HostapdHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IHostapdVendor."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " succeeded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_1
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 723
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearState()V
    .locals 2

    .line 531
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 532
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapd:Landroid/hardware/wifi/hostapd/V1_0/IHostapd;

    .line 533
    iput-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapdVendor:Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;

    .line 534
    monitor-exit v0

    .line 535
    return-void

    .line 534
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getBand(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p0, "localConfig"    # Landroid/net/wifi/WifiConfiguration;

    .line 629
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    packed-switch v0, :pswitch_data_0

    .line 640
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 634
    :pswitch_0
    const/4 v0, 0x1

    .line 635
    .local v0, "bandType":I
    goto :goto_0

    .line 631
    .end local v0    # "bandType":I
    :pswitch_1
    const/4 v0, 0x0

    .line 632
    .restart local v0    # "bandType":I
    goto :goto_0

    .line 637
    .end local v0    # "bandType":I
    :pswitch_2
    const/4 v0, 0x2

    .line 638
    .restart local v0    # "bandType":I
    nop

    .line 640
    :goto_0
    nop

    .line 642
    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getEncryptionType(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p0, "localConfig"    # Landroid/net/wifi/WifiConfiguration;

    .line 608
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 621
    const/4 v0, 0x0

    goto :goto_0

    .line 613
    :pswitch_0
    const/4 v0, 0x1

    .line 614
    .local v0, "encryptionType":I
    goto :goto_0

    .line 610
    .end local v0    # "encryptionType":I
    :pswitch_1
    const/4 v0, 0x0

    .line 611
    .restart local v0    # "encryptionType":I
    goto :goto_0

    .line 616
    .end local v0    # "encryptionType":I
    :cond_0
    const/4 v0, 0x2

    .line 617
    .restart local v0    # "encryptionType":I
    nop

    .line 621
    :goto_0
    nop

    .line 624
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    .locals 4
    .param p1, "e"    # Landroid/os/RemoteException;
    .param p2, "methodStr"    # Ljava/lang/String;

    .line 727
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 728
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/HostapdHal;->hostapdServiceDiedHandler()V

    .line 729
    const-string v1, "HostapdHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IHostapd."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed with exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 730
    monitor-exit v0

    .line 731
    return-void

    .line 730
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private hostapdServiceDiedHandler()V
    .locals 2

    .line 541
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 542
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/HostapdHal;->clearState()V

    .line 543
    iget-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mDeathEventHandler:Lcom/android/server/wifi/WifiNative$HostapdDeathEventHandler;

    if-eqz v1, :cond_0

    .line 544
    iget-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mDeathEventHandler:Lcom/android/server/wifi/WifiNative$HostapdDeathEventHandler;

    invoke-interface {v1}, Lcom/android/server/wifi/WifiNative$HostapdDeathEventHandler;->onDeath()V

    .line 546
    :cond_0
    monitor-exit v0

    .line 547
    return-void

    .line 546
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initHostapdService()Z
    .locals 6

    .line 216
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/HostapdHal;->getHostapdMockable()Landroid/hardware/wifi/hostapd/V1_0/IHostapd;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapd:Landroid/hardware/wifi/hostapd/V1_0/IHostapd;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    nop

    .line 223
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapd:Landroid/hardware/wifi/hostapd/V1_0/IHostapd;

    if-nez v2, :cond_0

    .line 224
    const-string v2, "HostapdHal"

    const-string v3, "Got null IHostapd service. Stopping hostapd HIDL startup"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    monitor-exit v0

    return v1

    .line 227
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/HostapdHal;->linkToHostapdDeath()Z

    move-result v2

    if-nez v2, :cond_1

    .line 228
    monitor-exit v0

    return v1

    .line 230
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    invoke-virtual {p0}, Lcom/android/server/wifi/HostapdHal;->initHostapdVendorService()Z

    move-result v0

    if-nez v0, :cond_2

    .line 233
    const-string v0, "HostapdHal"

    const-string v1, "Failed to init HostapdVendor service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 230
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 219
    :catch_0
    move-exception v2

    .line 220
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "HostapdHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IHostapd.getService exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    monitor-exit v0

    return v1

    .line 230
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wifi/HostapdHal;J)V
    .locals 4
    .param p1, "cookie"    # J

    .line 83
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_0
    const-string v1, "HostapdHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IServiceManager died: cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-direct {p0}, Lcom/android/server/wifi/HostapdHal;->hostapdServiceDiedHandler()V

    .line 86
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    .line 87
    monitor-exit v0

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$new$1(Lcom/android/server/wifi/HostapdHal;J)V
    .locals 4
    .param p1, "cookie"    # J

    .line 91
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_0
    const-string v1, "HostapdHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IHostapd/IHostapd died: cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-direct {p0}, Lcom/android/server/wifi/HostapdHal;->hostapdServiceDiedHandler()V

    .line 94
    monitor-exit v0

    .line 95
    return-void

    .line 94
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$new$2(Lcom/android/server/wifi/HostapdHal;J)V
    .locals 4
    .param p1, "cookie"    # J

    .line 98
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_0
    const-string v1, "HostapdHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IHostapdVendor died: cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0}, Lcom/android/server/wifi/HostapdHal;->hostapdServiceDiedHandler()V

    .line 101
    monitor-exit v0

    .line 102
    return-void

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private linkToHostapdDeath()Z
    .locals 6

    .line 195
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapd:Landroid/hardware/wifi/hostapd/V1_0/IHostapd;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 198
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapd:Landroid/hardware/wifi/hostapd/V1_0/IHostapd;

    iget-object v3, p0, Lcom/android/server/wifi/HostapdHal;->mHostapdDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5}, Landroid/hardware/wifi/hostapd/V1_0/IHostapd;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 199
    const-string v1, "HostapdHal"

    const-string v3, "Error on linkToDeath on IHostapd"

    invoke-static {v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-direct {p0}, Lcom/android/server/wifi/HostapdHal;->hostapdServiceDiedHandler()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :try_start_2
    monitor-exit v0

    return v2

    .line 206
    :cond_1
    nop

    .line 207
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 203
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "HostapdHal"

    const-string v4, "IHostapd.linkToDeath exception"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    monitor-exit v0

    return v2

    .line 208
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private linkToHostapdVendorDeath()Z
    .locals 6

    .line 243
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapdVendor:Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 246
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapdVendor:Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;

    iget-object v3, p0, Lcom/android/server/wifi/HostapdHal;->mHostapdVendorDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5}, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 247
    const-string v1, "HostapdHal"

    const-string v3, "Error on linkToDeath on IHostapdVendor"

    invoke-static {v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-direct {p0}, Lcom/android/server/wifi/HostapdHal;->hostapdServiceDiedHandler()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    :try_start_2
    monitor-exit v0

    return v2

    .line 254
    :cond_1
    nop

    .line 255
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 251
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "HostapdHal"

    const-string v4, "IHostapdVendor.linkToDeath exception"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    monitor-exit v0

    return v2

    .line 256
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private linkToServiceManagerDeath()Z
    .locals 7

    .line 126
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 129
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/HostapdHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    iget-object v4, p0, Lcom/android/server/wifi/HostapdHal;->mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/hidl/manager/V1_0/IServiceManager;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v3

    if-nez v3, :cond_1

    .line 130
    const-string v3, "HostapdHal"

    const-string v4, "Error on linkToDeath on IServiceManager"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-direct {p0}, Lcom/android/server/wifi/HostapdHal;->hostapdServiceDiedHandler()V

    .line 132
    iput-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :try_start_2
    monitor-exit v0

    return v2

    .line 139
    :cond_1
    nop

    .line 140
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 135
    :catch_0
    move-exception v3

    .line 136
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "HostapdHal"

    const-string v5, "IServiceManager.linkToDeath exception"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    iput-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    .line 138
    monitor-exit v0

    return v2

    .line 141
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 734
    const-string v0, "HostapdHal"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 742
    const-string v0, "HostapdHal"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    return-void
.end method

.method private static logi(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 738
    const-string v0, "HostapdHal"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    return-void
.end method

.method private registerVendorCallback(Ljava/lang/String;Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendorIfaceCallback;)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "service"    # Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;
    .param p3, "callback"    # Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendorIfaceCallback;

    .line 768
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 769
    :try_start_0
    const-string v1, "registerVendorCallback"

    .line 770
    .local v1, "methodStr":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez p2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 772
    :cond_0
    :try_start_1
    invoke-interface {p2, p1, p3}, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;->registerVendorCallback(Ljava/lang/String;Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendorIfaceCallback;)Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;

    move-result-object v3

    .line 773
    .local v3, "status":Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;
    const-string v4, "registerVendorCallback"

    invoke-direct {p0, v3, v4}, Lcom/android/server/wifi/HostapdHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 774
    .end local v3    # "status":Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;
    :catch_0
    move-exception v3

    .line 775
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "registerVendorCallback"

    invoke-direct {p0, v3, v4}, Lcom/android/server/wifi/HostapdHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 776
    monitor-exit v0

    return v2

    .line 778
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public addAccessPoint(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 8
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 290
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_0
    const-string v1, "addAccessPoint"

    .line 292
    .local v1, "methodStr":Ljava/lang/String;
    new-instance v2, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;

    invoke-direct {v2}, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;-><init>()V

    .line 293
    .local v2, "ifaceParams":Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;
    iput-object p1, v2, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->ifaceName:Ljava/lang/String;

    .line 294
    iget-object v3, v2, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->hwModeParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$HwModeParams;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$HwModeParams;->enable80211N:Z

    .line 295
    iget-object v3, v2, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->hwModeParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$HwModeParams;

    iget-boolean v5, p0, Lcom/android/server/wifi/HostapdHal;->mEnableIeee80211AC:Z

    iput-boolean v5, v3, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$HwModeParams;->enable80211AC:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    const/4 v3, 0x0

    :try_start_1
    iget-object v5, v2, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->channelParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;

    invoke-static {p2}, Lcom/android/server/wifi/HostapdHal;->getBand(Landroid/net/wifi/WifiConfiguration;)I

    move-result v6

    iput v6, v5, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->band:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    nop

    .line 302
    :try_start_2
    iget-boolean v5, p0, Lcom/android/server/wifi/HostapdHal;->mEnableAcs:Z

    if-eqz v5, :cond_0

    .line 303
    iget-object v5, v2, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->channelParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;

    iput-boolean v4, v5, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->enableAcs:Z

    .line 304
    iget-object v5, v2, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->channelParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;

    iput-boolean v4, v5, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->acsShouldExcludeDfs:Z

    goto :goto_0

    .line 310
    :cond_0
    iget-object v4, v2, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->channelParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;

    iget v4, v4, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->band:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 311
    const-string v4, "HostapdHal"

    const-string v5, "ACS is not supported on this device, using 2.4 GHz band."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v4, v2, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->channelParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;

    iput v3, v4, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->band:I

    .line 314
    :cond_1
    iget-object v4, v2, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->channelParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;

    iput-boolean v3, v4, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->enableAcs:Z

    .line 315
    iget-object v4, v2, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->channelParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;

    iget v5, p2, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iput v5, v4, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->channel:I

    .line 318
    :goto_0
    new-instance v4, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;

    invoke-direct {v4}, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;-><init>()V

    .line 323
    .local v4, "nwParams":Landroid/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;
    iget-object v5, v4, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;->ssid:Ljava/util/ArrayList;

    iget-object v6, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/wifi/util/NativeUtil;->stringToByteArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 324
    iget-boolean v5, p2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v5, v4, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;->isHidden:Z

    .line 325
    invoke-static {p2}, Lcom/android/server/wifi/HostapdHal;->getEncryptionType(Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    iput v5, v4, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;->encryptionType:I

    .line 326
    iget-object v5, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v5, ""

    :goto_1
    iput-object v5, v4, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;->pskPassphrase:Ljava/lang/String;

    .line 327
    const-string v5, "addAccessPoint"

    invoke-direct {p0, v5}, Lcom/android/server/wifi/HostapdHal;->checkHostapdAndLogFailure(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v3

    .line 329
    :cond_3
    :try_start_3
    iget-object v5, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapd:Landroid/hardware/wifi/hostapd/V1_0/IHostapd;

    invoke-interface {v5, v2, v4}, Landroid/hardware/wifi/hostapd/V1_0/IHostapd;->addAccessPoint(Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;Landroid/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;)Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;

    move-result-object v5

    .line 330
    .local v5, "status":Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;
    const-string v6, "addAccessPoint"

    invoke-direct {p0, v5, v6}, Lcom/android/server/wifi/HostapdHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;Ljava/lang/String;)Z

    move-result v6
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0

    return v6

    .line 331
    .end local v5    # "status":Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;
    :catch_0
    move-exception v5

    .line 332
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "addAccessPoint"

    invoke-direct {p0, v5, v6}, Lcom/android/server/wifi/HostapdHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 333
    monitor-exit v0

    return v3

    .line 298
    .end local v4    # "nwParams":Landroid/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;
    .end local v5    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 299
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "HostapdHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized apBand "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p2, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    monitor-exit v0

    return v3

    .line 335
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "ifaceParams":Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public addVendorAccessPoint(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/WifiNative$SoftApListener;)Z
    .locals 17
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "listener"    # Lcom/android/server/wifi/WifiNative$SoftApListener;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 367
    iget-object v4, v1, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 368
    :try_start_0
    const-string v0, "addVendorAccessPoint"

    move-object v5, v0

    .line 369
    .local v5, "methodStr":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiInjector;->getInstance()Lcom/android/server/wifi/WifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getWifiApConfigStore()Lcom/android/server/wifi/WifiApConfigStore;

    move-result-object v0

    move-object v6, v0

    .line 370
    .local v6, "apConfigStore":Lcom/android/server/wifi/WifiApConfigStore;
    new-instance v0, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;

    invoke-direct {v0}, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;-><init>()V

    move-object v7, v0

    .line 371
    .local v7, "vendorIfaceParams":Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;
    iget-object v0, v7, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;->ifaceParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;

    move-object v8, v0

    .line 372
    .local v8, "ifaceParams":Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;
    iput-object v2, v8, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->ifaceName:Ljava/lang/String;

    .line 373
    iget-object v0, v8, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->hwModeParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$HwModeParams;

    const/4 v9, 0x1

    iput-boolean v9, v0, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$HwModeParams;->enable80211N:Z

    .line 374
    iget-object v0, v8, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->hwModeParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$HwModeParams;

    iget-boolean v10, v1, Lcom/android/server/wifi/HostapdHal;->mEnableIeee80211AC:Z

    iput-boolean v10, v0, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$HwModeParams;->enable80211AC:Z

    .line 375
    iget-object v0, v1, Lcom/android/server/wifi/HostapdHal;->mCountryCode:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/android/server/wifi/HostapdHal;->mCountryCode:Ljava/lang/String;

    :goto_0
    iput-object v0, v7, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;->countryCode:Ljava/lang/String;

    .line 376
    const-string v0, ""

    iput-object v0, v7, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;->bridgeIfaceName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    const/4 v10, 0x0

    :try_start_1
    iget-object v0, v8, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->channelParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;

    invoke-static/range {p2 .. p2}, Lcom/android/server/wifi/HostapdHal;->getBand(Landroid/net/wifi/WifiConfiguration;)I

    move-result v11

    iput v11, v0, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->band:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    nop

    .line 383
    :try_start_2
    iget-boolean v0, v1, Lcom/android/server/wifi/HostapdHal;->mEnableAcs:Z

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, v8, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->channelParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;

    iput-boolean v9, v0, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->enableAcs:Z

    .line 385
    iget-object v0, v8, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->channelParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;

    iput-boolean v9, v0, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->acsShouldExcludeDfs:Z

    goto :goto_1

    .line 391
    :cond_1
    iget-object v0, v8, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->channelParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;

    iget v0, v0, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->band:I

    const/4 v11, 0x2

    if-ne v0, v11, :cond_2

    .line 392
    const-string v0, "HostapdHal"

    const-string v11, "ACS is not supported on this device, using 2.4 GHz band."

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, v8, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->channelParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;

    iput v10, v0, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->band:I

    .line 395
    :cond_2
    iget-object v0, v8, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->channelParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;

    iput-boolean v10, v0, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->enableAcs:Z

    .line 396
    iget-object v0, v8, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->channelParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;

    iget v11, v3, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iput v11, v0, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->channel:I

    .line 400
    :goto_1
    const-string v0, "vendor.wlan.hotspot.forceChannel"

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    move v11, v0

    .line 401
    .local v11, "forceChannel":I
    if-lez v11, :cond_4

    .line 402
    const/16 v0, 0xe

    if-gt v11, v0, :cond_3

    .line 403
    iget-object v0, v8, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->channelParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;

    iput v10, v0, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->band:I

    goto :goto_2

    .line 405
    :cond_3
    iget-object v0, v8, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->channelParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;

    iput v9, v0, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->band:I

    .line 406
    :goto_2
    iget-object v0, v8, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->channelParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;

    iput-boolean v10, v0, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->enableAcs:Z

    .line 407
    iget-object v0, v8, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->channelParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;

    iput v11, v0, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->channel:I

    .line 408
    const-string v0, "HostapdHal"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "force create hotspot channel:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " band:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v8, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->channelParams:Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;

    iget v13, v13, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$ChannelParams;->band:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_4
    new-instance v0, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;

    invoke-direct {v0}, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;-><init>()V

    move-object v12, v0

    .line 414
    .local v12, "nwParams":Landroid/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;
    iget-object v0, v12, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;->ssid:Ljava/util/ArrayList;

    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/server/wifi/util/NativeUtil;->stringToByteArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 415
    iget-boolean v0, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v0, v12, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;->isHidden:Z

    .line 416
    invoke-static/range {p2 .. p2}, Lcom/android/server/wifi/HostapdHal;->getEncryptionType(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, v12, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;->encryptionType:I

    .line 417
    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_3

    :cond_5
    const-string v0, ""

    :goto_3
    iput-object v0, v12, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;->pskPassphrase:Ljava/lang/String;

    .line 419
    const-string v0, "addVendorAccessPoint"

    invoke-direct {v1, v0}, Lcom/android/server/wifi/HostapdHal;->checkHostapdVendorAndLogFailure(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v10

    .line 421
    :cond_6
    :try_start_3
    invoke-virtual {v6}, Lcom/android/server/wifi/WifiApConfigStore;->getDualSapStatus()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 422
    invoke-virtual {v6}, Lcom/android/server/wifi/WifiApConfigStore;->getBridgeInterface()Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "bridgeIfaceName":Ljava/lang/String;
    if-eqz v0, :cond_7

    move-object v13, v0

    goto :goto_4

    :cond_7
    const-string v13, ""

    :goto_4
    iput-object v13, v7, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;->bridgeIfaceName:Ljava/lang/String;

    .line 426
    .end local v0    # "bridgeIfaceName":Ljava/lang/String;
    :cond_8
    iget-object v0, v1, Lcom/android/server/wifi/HostapdHal;->mIHostapdVendor:Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;

    invoke-interface {v0, v7, v12}, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;->addVendorAccessPoint(Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;Landroid/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;)Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;

    move-result-object v0

    .line 428
    .local v0, "status":Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;
    iget v13, v0, Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;->code:I

    const/4 v14, 0x4

    if-ne v13, v14, :cond_9

    .line 429
    const-string v13, "HostapdHal"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Interface "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " already present, remove it first."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v13, v1, Lcom/android/server/wifi/HostapdHal;->mIHostapdVendor:Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;

    invoke-interface {v13, v2}, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;->removeVendorAccessPoint(Ljava/lang/String;)Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;

    move-result-object v13

    move-object v0, v13

    .line 431
    iget v13, v0, Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;->code:I

    if-nez v13, :cond_9

    .line 432
    iget-object v13, v1, Lcom/android/server/wifi/HostapdHal;->mIHostapdVendor:Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;

    invoke-interface {v13, v7, v12}, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;->addVendorAccessPoint(Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;Landroid/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;)Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;

    move-result-object v13

    move-object v0, v13

    .line 437
    :cond_9
    const-string v13, "addVendorAccessPoint"

    invoke-direct {v1, v0, v13}, Lcom/android/server/wifi/HostapdHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    iget-object v13, v1, Lcom/android/server/wifi/HostapdHal;->mIHostapdVendor:Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;

    if-eqz v13, :cond_b

    .line 438
    new-instance v13, Lcom/android/server/wifi/HostapdHal$HostapdVendorIfaceHalCallback;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v14, p3

    :try_start_4
    invoke-direct {v13, v1, v2, v14}, Lcom/android/server/wifi/HostapdHal$HostapdVendorIfaceHalCallback;-><init>(Lcom/android/server/wifi/HostapdHal;Ljava/lang/String;Lcom/android/server/wifi/WifiNative$SoftApListener;)V

    .line 439
    .local v13, "vendorcallback":Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendorIfaceCallback;
    nop

    .line 440
    iget-object v15, v8, Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->ifaceName:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/server/wifi/HostapdHal;->mIHostapdVendor:Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;

    invoke-direct {v1, v15, v9, v13}, Lcom/android/server/wifi/HostapdHal;->registerVendorCallback(Ljava/lang/String;Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendorIfaceCallback;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 441
    const-string v9, "HostapdHal"

    const-string v15, "Failed to register Hostapd Vendor callback"

    invoke-static {v9, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 442
    :try_start_5
    monitor-exit v4

    return v10

    .line 447
    :cond_a
    monitor-exit v4

    const/4 v4, 0x1

    return v4

    .line 449
    .end local v0    # "status":Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;
    .end local v13    # "vendorcallback":Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendorIfaceCallback;
    :catch_0
    move-exception v0

    goto :goto_5

    .line 452
    :cond_b
    move-object/from16 v14, p3

    .line 453
    monitor-exit v4

    return v10

    .line 449
    :catch_1
    move-exception v0

    move-object/from16 v14, p3

    .line 450
    .local v0, "e":Landroid/os/RemoteException;
    :goto_5
    const-string v9, "addVendorAccessPoint"

    invoke-direct {v1, v0, v9}, Lcom/android/server/wifi/HostapdHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 451
    monitor-exit v4

    return v10

    .line 379
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v11    # "forceChannel":I
    .end local v12    # "nwParams":Landroid/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;
    :catch_2
    move-exception v0

    move-object/from16 v14, p3

    .line 380
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v9, "HostapdHal"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unrecognized apBand "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v3, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    monitor-exit v4

    return v10

    .line 454
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "methodStr":Ljava/lang/String;
    .end local v6    # "apConfigStore":Lcom/android/server/wifi/WifiApConfigStore;
    .end local v7    # "vendorIfaceParams":Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor$VendorIfaceParams;
    .end local v8    # "ifaceParams":Landroid/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;
    :catchall_0
    move-exception v0

    move-object/from16 v14, p3

    :goto_6
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_6
.end method

.method public deregisterDeathHandler()Z
    .locals 2

    .line 520
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mDeathEventHandler:Lcom/android/server/wifi/WifiNative$HostapdDeathEventHandler;

    if-nez v0, :cond_0

    .line 521
    const-string v0, "HostapdHal"

    const-string v1, "No Death handler present"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mDeathEventHandler:Lcom/android/server/wifi/WifiNative$HostapdDeathEventHandler;

    .line 524
    const/4 v0, 0x1

    return v0
.end method

.method enableVerboseLogging(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 116
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/wifi/HostapdHal;->mVerboseLoggingEnabled:Z

    .line 118
    monitor-exit v0

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getHostapdMockable()Landroid/hardware/wifi/hostapd/V1_0/IHostapd;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 594
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 595
    :try_start_0
    invoke-static {}, Landroid/hardware/wifi/hostapd/V1_0/IHostapd;->getService()Landroid/hardware/wifi/hostapd/V1_0/IHostapd;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 596
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getHostapdVendorMockable()Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 601
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 602
    :try_start_0
    invoke-static {}, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;->getService()Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 603
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getServiceManagerMockable()Landroid/hidl/manager/V1_0/IServiceManager;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 587
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 588
    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 589
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public initHostapdVendorService()Z
    .locals 6

    .line 264
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/HostapdHal;->getHostapdVendorMockable()Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapdVendor:Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    nop

    .line 271
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapdVendor:Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;

    if-nez v2, :cond_0

    .line 272
    const-string v2, "HostapdHal"

    const-string v3, "Got null IHostapdVendor service. Stopping hostapdVendor HIDL startup"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    monitor-exit v0

    return v1

    .line 275
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/HostapdHal;->linkToHostapdVendorDeath()Z

    move-result v2

    if-nez v2, :cond_1

    .line 276
    monitor-exit v0

    return v1

    .line 278
    :cond_1
    monitor-exit v0

    .line 279
    const/4 v0, 0x1

    return v0

    .line 278
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 267
    :catch_0
    move-exception v2

    .line 268
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "HostapdHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IHostapdVendor.getService exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    monitor-exit v0

    return v1

    .line 278
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public initialize()Z
    .locals 8

    .line 150
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wifi/HostapdHal;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_0

    .line 152
    const-string v1, "HostapdHal"

    const-string v2, "Registering IHostapd service ready callback."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapd:Landroid/hardware/wifi/hostapd/V1_0/IHostapd;

    .line 155
    iput-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapdVendor:Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;

    .line 156
    iget-object v2, p0, Lcom/android/server/wifi/HostapdHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 159
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 162
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wifi/HostapdHal;->getServiceManagerMockable()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/HostapdHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    .line 163
    iget-object v4, p0, Lcom/android/server/wifi/HostapdHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    if-nez v4, :cond_2

    .line 164
    const-string v3, "HostapdHal"

    const-string v4, "Failed to get HIDL Service Manager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v2

    .line 167
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/wifi/HostapdHal;->linkToServiceManagerDeath()Z

    move-result v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_3

    .line 168
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v2

    .line 172
    :cond_3
    :try_start_5
    iget-object v4, p0, Lcom/android/server/wifi/HostapdHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    const-string v5, "android.hardware.wifi.hostapd@1.0::IHostapd"

    const-string v6, ""

    iget-object v7, p0, Lcom/android/server/wifi/HostapdHal;->mServiceNotificationCallback:Landroid/hidl/manager/V1_0/IServiceNotification;

    invoke-interface {v4, v5, v6, v7}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 174
    const-string v3, "HostapdHal"

    const-string v4, "Failed to register for notifications to android.hardware.wifi.hostapd@1.0::IHostapd"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iput-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 177
    :try_start_6
    monitor-exit v0

    return v2

    .line 185
    :cond_4
    nop

    .line 186
    monitor-exit v0

    return v3

    .line 179
    :catch_0
    move-exception v3

    .line 180
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "HostapdHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while trying to register a listener for IHostapd service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-direct {p0}, Lcom/android/server/wifi/HostapdHal;->hostapdServiceDiedHandler()V

    .line 183
    iput-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    .line 184
    monitor-exit v0

    return v2

    .line 187
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method

.method public isInitializationComplete()Z
    .locals 2

    .line 562
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 563
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapd:Landroid/hardware/wifi/hostapd/V1_0/IHostapd;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 564
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isInitializationStarted()Z
    .locals 2

    .line 553
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 554
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HostapdHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 555
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isVendorHostapdHal()Z
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapdVendor:Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public registerDeathHandler(Lcom/android/server/wifi/WifiNative$HostapdDeathEventHandler;)Z
    .locals 2
    .param p1, "handler"    # Lcom/android/server/wifi/WifiNative$HostapdDeathEventHandler;

    .line 508
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mDeathEventHandler:Lcom/android/server/wifi/WifiNative$HostapdDeathEventHandler;

    if-eqz v0, :cond_0

    .line 509
    const-string v0, "HostapdHal"

    const-string v1, "Death handler already present"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_0
    iput-object p1, p0, Lcom/android/server/wifi/HostapdHal;->mDeathEventHandler:Lcom/android/server/wifi/WifiNative$HostapdDeathEventHandler;

    .line 512
    const/4 v0, 0x1

    return v0
.end method

.method public removeAccessPoint(Ljava/lang/String;)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 345
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 346
    :try_start_0
    const-string v1, "removeAccessPoint"

    .line 347
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "removeAccessPoint"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/HostapdHal;->checkHostapdAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 349
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapd:Landroid/hardware/wifi/hostapd/V1_0/IHostapd;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/hostapd/V1_0/IHostapd;->removeAccessPoint(Ljava/lang/String;)Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;

    move-result-object v2

    .line 350
    .local v2, "status":Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;
    const-string v4, "removeAccessPoint"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/HostapdHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 351
    .end local v2    # "status":Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;
    :catch_0
    move-exception v2

    .line 352
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "removeAccessPoint"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/HostapdHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 353
    monitor-exit v0

    return v3

    .line 355
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public removeVendorAccessPoint(Ljava/lang/String;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 464
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 465
    :try_start_0
    const-string v1, "removeVendorAccessPoint"

    .line 466
    .local v1, "methodStr":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiInjector;->getInstance()Lcom/android/server/wifi/WifiInjector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiInjector;->getWifiApConfigStore()Lcom/android/server/wifi/WifiApConfigStore;

    move-result-object v2

    .line 468
    .local v2, "apConfigStore":Lcom/android/server/wifi/WifiApConfigStore;
    const-string v3, "removeVendorAccessPoint"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/HostapdHal;->checkHostapdVendorAndLogFailure(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v4

    .line 470
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapdVendor:Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;

    invoke-interface {v3, p1}, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;->removeVendorAccessPoint(Ljava/lang/String;)Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;

    move-result-object v3

    .line 471
    .local v3, "status":Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;
    const-string v5, "removeVendorAccessPoint"

    invoke-direct {p0, v3, v5}, Lcom/android/server/wifi/HostapdHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 472
    .end local v3    # "status":Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;
    :catch_0
    move-exception v3

    .line 473
    .local v3, "e":Landroid/os/RemoteException;
    const-string v5, "removeVendorAccessPoint"

    invoke-direct {p0, v3, v5}, Lcom/android/server/wifi/HostapdHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 474
    monitor-exit v0

    return v4

    .line 476
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "apConfigStore":Lcom/android/server/wifi/WifiApConfigStore;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "countryCode"    # Ljava/lang/String;

    .line 649
    iput-object p1, p0, Lcom/android/server/wifi/HostapdHal;->mCountryCode:Ljava/lang/String;

    .line 650
    return-void
.end method

.method public setHostapdParams(Ljava/lang/String;)Z
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 489
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 490
    :try_start_0
    const-string v1, "setHostapdParams"

    .line 491
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setHostapdParams"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/HostapdHal;->checkHostapdVendorAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 493
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapdVendor:Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;

    invoke-interface {v2, p1}, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendor;->setHostapdParams(Ljava/lang/String;)Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;

    move-result-object v2

    .line 494
    .local v2, "status":Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;
    const-string v4, "setHostapdParams"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/HostapdHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 495
    .end local v2    # "status":Landroid/hardware/wifi/hostapd/V1_0/HostapdStatus;
    :catch_0
    move-exception v2

    .line 496
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setHostapdParams"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/HostapdHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 497
    monitor-exit v0

    return v3

    .line 499
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public terminate()V
    .locals 4

    .line 571
    iget-object v0, p0, Lcom/android/server/wifi/HostapdHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 572
    :try_start_0
    const-string v1, "terminate"

    .line 573
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "terminate"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/HostapdHal;->checkHostapdAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 575
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/HostapdHal;->mIHostapd:Landroid/hardware/wifi/hostapd/V1_0/IHostapd;

    invoke-interface {v2}, Landroid/hardware/wifi/hostapd/V1_0/IHostapd;->terminate()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 578
    goto :goto_0

    .line 576
    :catch_0
    move-exception v2

    .line 577
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "terminate"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/HostapdHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 579
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 580
    return-void

    .line 579
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
