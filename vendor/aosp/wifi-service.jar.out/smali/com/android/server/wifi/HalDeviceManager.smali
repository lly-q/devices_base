.class public Lcom/android/server/wifi/HalDeviceManager;
.super Ljava/lang/Object;
.source "HalDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListenerProxy;,
        Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;,
        Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;,
        Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;,
        Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListenerProxy;,
        Lcom/android/server/wifi/HalDeviceManager$WifiEventCallback;,
        Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;,
        Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;,
        Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;,
        Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListener;,
        Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;,
        Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListener;
    }
.end annotation


# static fields
.field public static final HAL_INSTANCE_NAME:Ljava/lang/String; = "default"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final IFACE_TYPES_BY_PRIORITY:[I

.field private static final START_HAL_RETRY_INTERVAL_MS:I = 0x14

.field public static final START_HAL_RETRY_TIMES:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "HalDevMgr"

.field private static final VDBG:Z = false


# instance fields
.field private final mClock:Lcom/android/server/wifi/Clock;

.field private mDbg:Z

.field private final mDebugCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/wifi/V1_0/IWifiChipEventCallback$Stub;",
            ">;"
        }
    .end annotation
.end field

.field private final mIOneplusWifiDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field private final mIWifiDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field private final mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListenerProxy;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mInterfaceInfoCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mManagerStatusListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListenerProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mOneplusWifi:Lvendor/oneplus/hardware/wifi/V1_1/IOneplusWifi;

.field private mServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

.field private final mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field private final mServiceNotificationCallback:Landroid/hidl/manager/V1_0/IServiceNotification;

.field private mWifi:Landroid/hardware/wifi/V1_0/IWifi;

.field private final mWifiEventCallback:Lcom/android/server/wifi/HalDeviceManager$WifiEventCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 546
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/wifi/HalDeviceManager;->IFACE_TYPES_BY_PRIORITY:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/wifi/Clock;)V
    .locals 3
    .param p1, "clock"    # Lcom/android/server/wifi/Clock;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mDbg:Z

    .line 549
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    .line 554
    new-instance v1, Lcom/android/server/wifi/HalDeviceManager$WifiEventCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/HalDeviceManager$WifiEventCallback;-><init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$1;)V

    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifiEventCallback:Lcom/android/server/wifi/HalDeviceManager$WifiEventCallback;

    .line 555
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mManagerStatusListeners:Ljava/util/Set;

    .line 556
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    .line 558
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mDebugCallbacks:Landroid/util/SparseArray;

    .line 565
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceInfoCache:Ljava/util/Map;

    .line 692
    new-instance v1, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$noScTs3Ynk8rNxP5lvUv8ww_gg4;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$noScTs3Ynk8rNxP5lvUv8ww_gg4;-><init>(Lcom/android/server/wifi/HalDeviceManager;)V

    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    .line 702
    new-instance v1, Lcom/android/server/wifi/HalDeviceManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/HalDeviceManager$1;-><init>(Lcom/android/server/wifi/HalDeviceManager;)V

    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceNotificationCallback:Landroid/hidl/manager/V1_0/IServiceNotification;

    .line 775
    new-instance v1, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$mRqMYGwuD65TW_3tbHJw3kCC2nI;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$mRqMYGwuD65TW_3tbHJw3kCC2nI;-><init>(Lcom/android/server/wifi/HalDeviceManager;)V

    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mIWifiDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    .line 786
    new-instance v1, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$O8pVPZpK5mQgy8tQhabGSRJxSfA;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$O8pVPZpK5mQgy8tQhabGSRJxSfA;-><init>(Lcom/android/server/wifi/HalDeviceManager;)V

    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mIOneplusWifiDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    .line 83
    iput-object p1, p0, Lcom/android/server/wifi/HalDeviceManager;->mClock:Lcom/android/server/wifi/Clock;

    .line 85
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    return-void
.end method

.method static synthetic access$100()[I
    .locals 1

    .line 66
    sget-object v0, Lcom/android/server/wifi/HalDeviceManager;->IFACE_TYPES_BY_PRIORITY:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/HalDeviceManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HalDeviceManager;

    .line 66
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/HalDeviceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HalDeviceManager;

    .line 66
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->initIWifiIfNecessary()V

    return-void
.end method

.method static synthetic access$400(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/wifi/V1_0/WifiStatus;

    .line 66
    invoke-static {p0}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/HalDeviceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HalDeviceManager;

    .line 66
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->teardownInternal()V

    return-void
.end method

.method private allowedToDeleteIfaceTypeForRequestedType(II[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;I)Z
    .locals 5
    .param p1, "existingIfaceType"    # I
    .param p2, "requestedIfaceType"    # I
    .param p3, "currentIfaces"    # [[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    .param p4, "numNecessaryInterfaces"    # I

    .line 1767
    const/4 v0, 0x0

    .line 1768
    .local v0, "numAvailableLowPriorityInterfaces":I
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceInfoCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;

    .line 1769
    .local v2, "entry":Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;
    iget v3, v2, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->type:I

    if-ne v3, p1, :cond_0

    iget-boolean v3, v2, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->isLowPriority:Z

    if-eqz v3, :cond_0

    .line 1770
    add-int/lit8 v0, v0, 0x1

    .line 1772
    .end local v2    # "entry":Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;
    :cond_0
    goto :goto_0

    .line 1773
    :cond_1
    const/4 v1, 0x1

    if-lt v0, p4, :cond_2

    .line 1774
    return v1

    .line 1778
    :cond_2
    const/4 v2, 0x0

    if-ne p1, p2, :cond_3

    .line 1779
    return v2

    .line 1783
    :cond_3
    aget-object v3, p3, p2

    array-length v3, v3

    if-eqz v3, :cond_4

    .line 1784
    return v2

    .line 1788
    :cond_4
    aget-object v3, p3, p1

    array-length v3, v3

    if-le v3, v1, :cond_5

    .line 1789
    return v1

    .line 1793
    :cond_5
    const/4 v3, 0x3

    if-ne p2, v3, :cond_6

    .line 1794
    return v2

    .line 1798
    :cond_6
    const/4 v4, 0x2

    if-ne p2, v4, :cond_8

    .line 1799
    if-ne p1, v3, :cond_7

    goto :goto_1

    :cond_7
    move v1, v2

    :goto_1
    return v1

    .line 1803
    :cond_8
    return v1
.end method

.method private canIfaceComboSupportRequest(Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;[IIZ)Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;
    .locals 9
    .param p1, "chipInfo"    # Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    .param p2, "chipMode"    # Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;
    .param p3, "chipIfaceCombo"    # [I
    .param p4, "ifaceType"    # I
    .param p5, "lowPriority"    # Z

    .line 1611
    aget v0, p3, p4

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1613
    return-object v1

    .line 1616
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->currentModeIdValid:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->currentModeId:I

    iget v3, p2, Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;->id:I

    if-eq v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1621
    .local v0, "isChipModeChangeProposed":Z
    :goto_0
    if-eqz v0, :cond_5

    .line 1622
    sget-object v3, Lcom/android/server/wifi/HalDeviceManager;->IFACE_TYPES_BY_PRIORITY:[I

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_4

    aget v5, v3, v2

    .line 1623
    .local v5, "type":I
    iget-object v6, p1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    aget-object v6, v6, v5

    array-length v6, v6

    if-eqz v6, :cond_3

    .line 1624
    if-eqz p5, :cond_2

    .line 1629
    return-object v1

    .line 1631
    :cond_2
    iget-object v6, p1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    iget-object v7, p1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    aget-object v7, v7, v5

    array-length v7, v7

    invoke-direct {p0, v5, p4, v6, v7}, Lcom/android/server/wifi/HalDeviceManager;->allowedToDeleteIfaceTypeForRequestedType(II[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1637
    return-object v1

    .line 1622
    .end local v5    # "type":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1643
    :cond_4
    new-instance v2, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;

    invoke-direct {v2, p0, v1}, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;-><init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$1;)V

    move-object v1, v2

    .line 1644
    .local v1, "ifaceCreationData":Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;
    iput-object p1, v1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    .line 1645
    iget v2, p2, Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;->id:I

    iput v2, v1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipModeId:I

    .line 1647
    return-object v1

    .line 1651
    .end local v1    # "ifaceCreationData":Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1653
    .local v3, "interfacesToBeRemovedFirst":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;>;"
    sget-object v4, Lcom/android/server/wifi/HalDeviceManager;->IFACE_TYPES_BY_PRIORITY:[I

    array-length v5, v4

    :goto_2
    if-ge v2, v5, :cond_a

    aget v6, v4, v2

    .line 1654
    .local v6, "type":I
    iget-object v7, p1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    aget-object v7, v7, v6

    array-length v7, v7

    aget v8, p3, v6

    sub-int/2addr v7, v8

    .line 1657
    .local v7, "tooManyInterfaces":I
    if-ne v6, p4, :cond_6

    .line 1658
    add-int/lit8 v7, v7, 0x1

    .line 1661
    :cond_6
    if-lez v7, :cond_9

    .line 1662
    if-eqz p5, :cond_7

    .line 1667
    return-object v1

    .line 1670
    :cond_7
    iget-object v8, p1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    invoke-direct {p0, v6, p4, v8, v7}, Lcom/android/server/wifi/HalDeviceManager;->allowedToDeleteIfaceTypeForRequestedType(II[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;I)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1675
    return-object v1

    .line 1679
    :cond_8
    iget-object v8, p1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    aget-object v8, v8, v6

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/HalDeviceManager;->selectInterfacesToDelete(I[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;)Ljava/util/List;

    move-result-object v3

    .line 1653
    .end local v6    # "type":I
    .end local v7    # "tooManyInterfaces":I
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1684
    :cond_a
    new-instance v2, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;

    invoke-direct {v2, p0, v1}, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;-><init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$1;)V

    move-object v1, v2

    .line 1685
    .restart local v1    # "ifaceCreationData":Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;
    iput-object p1, v1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    .line 1686
    iget v2, p2, Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;->id:I

    iput v2, v1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipModeId:I

    .line 1687
    iput-object v3, v1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->interfacesToBeRemovedFirst:Ljava/util/List;

    .line 1689
    return-object v1
.end method

.method private compareIfaceCreationData(Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;)Z
    .locals 10
    .param p1, "val1"    # Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;
    .param p2, "val2"    # Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;

    .line 1705
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1706
    return v0

    .line 1707
    :cond_0
    const/4 v1, 0x1

    if-nez p2, :cond_1

    .line 1708
    return v1

    .line 1711
    :cond_1
    sget-object v2, Lcom/android/server/wifi/HalDeviceManager;->IFACE_TYPES_BY_PRIORITY:[I

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_5

    aget v5, v2, v4

    .line 1713
    .local v5, "type":I
    const/4 v6, 0x0

    .line 1714
    .local v6, "numIfacesToDelete1":I
    iget-object v7, p1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget-boolean v7, v7, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->currentModeIdValid:Z

    if-eqz v7, :cond_2

    iget-object v7, p1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget v7, v7, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->currentModeId:I

    iget v8, p1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipModeId:I

    if-eq v7, v8, :cond_2

    .line 1716
    iget-object v7, p1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget-object v7, v7, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    aget-object v7, v7, v5

    array-length v6, v7

    goto :goto_1

    .line 1718
    :cond_2
    iget-object v7, p1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->interfacesToBeRemovedFirst:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 1721
    :goto_1
    const/4 v7, 0x0

    .line 1722
    .local v7, "numIfacesToDelete2":I
    iget-object v8, p2, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget-boolean v8, v8, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->currentModeIdValid:Z

    if-eqz v8, :cond_3

    iget-object v8, p2, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget v8, v8, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->currentModeId:I

    iget v9, p2, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipModeId:I

    if-eq v8, v9, :cond_3

    .line 1724
    iget-object v8, p2, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget-object v8, v8, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    aget-object v8, v8, v5

    array-length v7, v8

    goto :goto_2

    .line 1726
    :cond_3
    iget-object v8, p2, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->interfacesToBeRemovedFirst:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    .line 1729
    :goto_2
    if-ge v6, v7, :cond_4

    .line 1734
    return v1

    .line 1711
    .end local v5    # "type":I
    .end local v6    # "numIfacesToDelete1":I
    .end local v7    # "numIfacesToDelete2":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1740
    :cond_5
    return v0
.end method

.method private createIface(IZLcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)Landroid/hardware/wifi/V1_0/IWifiIface;
    .locals 9
    .param p1, "ifaceType"    # I
    .param p2, "lowPriority"    # Z
    .param p3, "destroyedListener"    # Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 1421
    iget-boolean v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mDbg:Z

    if-eqz v0, :cond_0

    .line 1422
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createIface: ifaceType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", lowPriority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1426
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->getAllChipInfo()[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    move-result-object v1

    .line 1427
    .local v1, "chipInfos":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    const/4 v8, 0x0

    if-nez v1, :cond_1

    .line 1428
    const-string v2, "HalDevMgr"

    const-string v3, "createIface: no chip info found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->stopWifi()V

    .line 1430
    monitor-exit v0

    return-object v8

    .line 1433
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/wifi/HalDeviceManager;->validateInterfaceCache([Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1434
    const-string v2, "HalDevMgr"

    const-string v3, "createIface: local cache is invalid!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->stopWifi()V

    .line 1436
    monitor-exit v0

    return-object v8

    .line 1439
    :cond_2
    move-object v2, p0

    move-object v3, v1

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wifi/HalDeviceManager;->createIfaceIfPossible([Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;IZLcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)Landroid/hardware/wifi/V1_0/IWifiIface;

    move-result-object v2

    .line 1441
    .local v2, "iface":Landroid/hardware/wifi/V1_0/IWifiIface;
    if-eqz v2, :cond_3

    .line 1442
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->dispatchAvailableForRequestListeners()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1443
    monitor-exit v0

    return-object v8

    .line 1447
    :cond_3
    monitor-exit v0

    return-object v2

    .line 1448
    .end local v1    # "chipInfos":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    .end local v2    # "iface":Landroid/hardware/wifi/V1_0/IWifiIface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private createIfaceIfPossible([Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;IZLcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)Landroid/hardware/wifi/V1_0/IWifiIface;
    .locals 22
    .param p1, "chipInfos"    # [Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    .param p2, "ifaceType"    # I
    .param p3, "lowPriority"    # Z
    .param p4, "destroyedListener"    # Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;
    .param p5, "handler"    # Landroid/os/Handler;

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p4

    .line 1457
    iget-object v11, v7, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1458
    const/4 v0, 0x0

    .line 1459
    .local v0, "bestIfaceCreationProposal":Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;
    :try_start_0
    array-length v12, v8

    move-object v1, v0

    const/4 v0, 0x0

    .end local v0    # "bestIfaceCreationProposal":Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;
    .local v1, "bestIfaceCreationProposal":Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;
    :goto_0
    if-ge v0, v12, :cond_4

    aget-object v2, v8, v0

    move-object v14, v2

    .line 1460
    .local v14, "chipInfo":Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    iget-object v2, v14, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->availableModes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;

    move-object v6, v2

    .line 1461
    .local v6, "chipMode":Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;
    iget-object v2, v6, Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;->availableCombinations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;

    move-object v3, v2

    .line 1463
    .local v3, "chipIfaceCombo":Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;
    invoke-direct {v7, v3}, Lcom/android/server/wifi/HalDeviceManager;->expandIfaceCombos(Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;)[[I

    move-result-object v2

    .line 1469
    .local v2, "expandedIfaceCombos":[[I
    array-length v4, v2

    move-object v13, v1

    const/4 v1, 0x0

    .end local v1    # "bestIfaceCreationProposal":Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;
    .local v13, "bestIfaceCreationProposal":Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;
    :goto_3
    if-ge v1, v4, :cond_1

    aget-object v16, v2, v1

    move/from16 v17, v4

    move-object/from16 v4, v16

    .line 1470
    .local v4, "expandedIfaceCombo":[I
    move/from16 v16, v1

    move-object v1, v7

    move-object/from16 v18, v2

    move-object v2, v14

    .end local v2    # "expandedIfaceCombos":[[I
    .local v18, "expandedIfaceCombos":[[I
    move-object/from16 v19, v3

    move-object v3, v6

    .end local v3    # "chipIfaceCombo":Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;
    .local v19, "chipIfaceCombo":Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;
    move-object/from16 v20, v5

    move v5, v9

    move-object/from16 v21, v6

    move/from16 v6, p3

    .end local v6    # "chipMode":Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;
    .local v21, "chipMode":Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/HalDeviceManager;->canIfaceComboSupportRequest(Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;[IIZ)Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;

    move-result-object v1

    .line 1472
    .local v1, "currentProposal":Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;
    invoke-direct {v7, v1, v13}, Lcom/android/server/wifi/HalDeviceManager;->compareIfaceCreationData(Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1475
    move-object v13, v1

    .line 1469
    .end local v1    # "currentProposal":Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;
    .end local v4    # "expandedIfaceCombo":[I
    :cond_0
    add-int/lit8 v1, v16, 0x1

    move/from16 v4, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    goto :goto_3

    .line 1478
    .end local v18    # "expandedIfaceCombos":[[I
    .end local v19    # "chipIfaceCombo":Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;
    .end local v21    # "chipMode":Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;
    .restart local v6    # "chipMode":Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;
    :cond_1
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    .line 1461
    .end local v6    # "chipMode":Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;
    .restart local v21    # "chipMode":Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;
    move-object v1, v13

    goto :goto_2

    .line 1479
    .end local v13    # "bestIfaceCreationProposal":Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;
    .end local v21    # "chipMode":Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;
    .local v1, "bestIfaceCreationProposal":Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;
    :cond_2
    goto :goto_1

    .line 1459
    .end local v14    # "chipInfo":Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1482
    :cond_4
    const/4 v0, 0x0

    if-eqz v1, :cond_7

    .line 1483
    invoke-direct {v7, v1, v9}, Lcom/android/server/wifi/HalDeviceManager;->executeChipReconfiguration(Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;I)Landroid/hardware/wifi/V1_0/IWifiIface;

    move-result-object v2

    .line 1484
    .local v2, "iface":Landroid/hardware/wifi/V1_0/IWifiIface;
    if-eqz v2, :cond_7

    .line 1485
    new-instance v3, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;

    invoke-direct {v3, v7, v0}, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;-><init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$1;)V

    move-object v0, v3

    .line 1487
    .local v0, "cacheEntry":Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;
    iget-object v3, v1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget-object v3, v3, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->chip:Landroid/hardware/wifi/V1_0/IWifiChip;

    iput-object v3, v0, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->chip:Landroid/hardware/wifi/V1_0/IWifiChip;

    .line 1488
    iget-object v3, v1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget v3, v3, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->chipId:I

    iput v3, v0, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->chipId:I

    .line 1489
    invoke-static {v2}, Lcom/android/server/wifi/HalDeviceManager;->getName(Landroid/hardware/wifi/V1_0/IWifiIface;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->name:Ljava/lang/String;

    .line 1490
    iput v9, v0, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->type:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1491
    if-eqz v10, :cond_5

    .line 1492
    :try_start_1
    iget-object v3, v0, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->destroyedListeners:Ljava/util/Set;

    new-instance v4, Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;

    iget-object v5, v0, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->name:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v6, p5

    :try_start_2
    invoke-direct {v4, v7, v5, v10, v6}, Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;-><init>(Lcom/android/server/wifi/HalDeviceManager;Ljava/lang/String;Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1505
    .end local v0    # "cacheEntry":Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;
    .end local v1    # "bestIfaceCreationProposal":Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;
    .end local v2    # "iface":Landroid/hardware/wifi/V1_0/IWifiIface;
    :catchall_0
    move-exception v0

    move-object/from16 v6, p5

    :goto_4
    move/from16 v3, p3

    goto :goto_6

    .line 1496
    .restart local v0    # "cacheEntry":Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;
    .restart local v1    # "bestIfaceCreationProposal":Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;
    .restart local v2    # "iface":Landroid/hardware/wifi/V1_0/IWifiIface;
    :cond_5
    move-object/from16 v6, p5

    :goto_5
    iget-object v3, v7, Lcom/android/server/wifi/HalDeviceManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->getUptimeSinceBootMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->creationTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1497
    move/from16 v3, p3

    :try_start_3
    iput-boolean v3, v0, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->isLowPriority:Z

    .line 1499
    iget-boolean v4, v7, Lcom/android/server/wifi/HalDeviceManager;->mDbg:Z

    if-eqz v4, :cond_6

    const-string v4, "HalDevMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "createIfaceIfPossible: added cacheEntry="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    :cond_6
    iget-object v4, v7, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceInfoCache:Ljava/util/Map;

    iget-object v5, v0, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->name:Ljava/lang/String;

    iget v12, v0, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->type:I

    .line 1501
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    .line 1500
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1502
    monitor-exit v11

    return-object v2

    .line 1505
    .end local v0    # "cacheEntry":Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;
    .end local v1    # "bestIfaceCreationProposal":Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;
    .end local v2    # "iface":Landroid/hardware/wifi/V1_0/IWifiIface;
    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_7
    move/from16 v3, p3

    move-object/from16 v6, p5

    monitor-exit v11

    .line 1507
    return-object v0

    .line 1505
    :catchall_2
    move-exception v0

    move/from16 v3, p3

    move-object/from16 v6, p5

    :goto_6
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_6
.end method

.method private dispatchAllDestroyedListeners()V
    .locals 5

    .line 2095
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2096
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceInfoCache:Ljava/util/Map;

    .line 2097
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2098
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2099
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;

    .line 2100
    .local v2, "entry":Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;
    iget-object v3, v2, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->destroyedListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;

    .line 2101
    .local v4, "listener":Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;
    invoke-virtual {v4}, Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;->trigger()V

    .line 2102
    .end local v4    # "listener":Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;
    goto :goto_1

    .line 2103
    :cond_0
    iget-object v3, v2, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->destroyedListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 2104
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 2105
    .end local v2    # "entry":Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;
    goto :goto_0

    .line 2106
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;>;>;"
    :cond_1
    monitor-exit v0

    .line 2107
    return-void

    .line 2106
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dispatchAvailableForRequestListeners()Z
    .locals 6

    .line 2020
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2021
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->getAllChipInfo()[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    move-result-object v1

    .line 2022
    .local v1, "chipInfos":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2023
    const-string v3, "HalDevMgr"

    const-string v4, "dispatchAvailableForRequestListeners: no chip info found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->stopWifi()V

    .line 2025
    monitor-exit v0

    return v2

    .line 2032
    :cond_0
    sget-object v3, Lcom/android/server/wifi/HalDeviceManager;->IFACE_TYPES_BY_PRIORITY:[I

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget v5, v3, v2

    .line 2033
    .local v5, "ifaceType":I
    invoke-direct {p0, v5, v1}, Lcom/android/server/wifi/HalDeviceManager;->dispatchAvailableForRequestListenersForType(I[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;)V

    .line 2032
    .end local v5    # "ifaceType":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2035
    .end local v1    # "chipInfos":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    :cond_1
    monitor-exit v0

    .line 2037
    const/4 v0, 0x1

    return v0

    .line 2035
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dispatchAvailableForRequestListenersForType(I[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;)V
    .locals 6
    .param p1, "ifaceType"    # I
    .param p2, "chipInfos"    # [Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    .line 2044
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2045
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    .line 2046
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 2048
    .local v1, "listeners":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListenerProxy;Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 2049
    monitor-exit v0

    return-void

    .line 2052
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/android/server/wifi/HalDeviceManager;->isItPossibleToCreateIface([Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;I)Z

    move-result v2

    .line 2058
    .local v2, "isAvailable":Z
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2059
    .local v4, "listenerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListenerProxy;Ljava/lang/Boolean;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eq v5, v2, :cond_2

    .line 2064
    :cond_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListenerProxy;

    invoke-virtual {v5, v2}, Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListenerProxy;->triggerWithArg(Z)V

    .line 2066
    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2067
    .end local v4    # "listenerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListenerProxy;Ljava/lang/Boolean;>;"
    goto :goto_0

    .line 2068
    .end local v1    # "listeners":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListenerProxy;Ljava/lang/Boolean;>;"
    .end local v2    # "isAvailable":Z
    :cond_3
    monitor-exit v0

    .line 2069
    return-void

    .line 2068
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dispatchDestroyedListeners(Ljava/lang/String;I)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 2076
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2077
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceInfoCache:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;

    .line 2078
    .local v1, "entry":Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;
    if-nez v1, :cond_0

    .line 2079
    const-string v2, "HalDevMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchDestroyedListeners: no cache entry for iface(name)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    monitor-exit v0

    return-void

    .line 2083
    :cond_0
    iget-object v2, v1, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->destroyedListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;

    .line 2084
    .local v3, "listener":Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;
    invoke-virtual {v3}, Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;->trigger()V

    .line 2085
    .end local v3    # "listener":Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;
    goto :goto_0

    .line 2086
    :cond_1
    iget-object v2, v1, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->destroyedListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 2087
    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceInfoCache:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2088
    .end local v1    # "entry":Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;
    monitor-exit v0

    .line 2089
    return-void

    .line 2088
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private executeChipReconfiguration(Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;I)Landroid/hardware/wifi/V1_0/IWifiIface;
    .locals 12
    .param p1, "ifaceCreationData"    # Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;
    .param p2, "ifaceType"    # I

    .line 1868
    iget-boolean v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mDbg:Z

    if-eqz v0, :cond_0

    .line 1869
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeChipReconfiguration: ifaceCreationData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", ifaceType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1875
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget-boolean v2, v2, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->currentModeIdValid:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget v2, v2, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->currentModeId:I

    iget v4, p1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipModeId:I

    if-eq v2, v4, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 1877
    .local v2, "isModeConfigNeeded":Z
    :goto_1
    iget-boolean v4, p0, Lcom/android/server/wifi/HalDeviceManager;->mDbg:Z

    if-eqz v4, :cond_3

    const-string v4, "HalDevMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isModeConfigNeeded="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    :cond_3
    if-eqz v2, :cond_7

    .line 1885
    iget-object v4, p1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget-object v4, v4, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    array-length v5, v4

    move v6, v3

    :goto_2
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    .line 1886
    .local v7, "ifaceInfos":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    array-length v8, v7

    move v9, v3

    :goto_3
    if-ge v9, v8, :cond_4

    aget-object v10, v7, v9

    .line 1887
    .local v10, "ifaceInfo":Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    iget-object v11, v10, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->iface:Landroid/hardware/wifi/V1_0/IWifiIface;

    invoke-direct {p0, v11}, Lcom/android/server/wifi/HalDeviceManager;->removeIfaceInternal(Landroid/hardware/wifi/V1_0/IWifiIface;)Z

    .line 1886
    .end local v10    # "ifaceInfo":Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1885
    .end local v7    # "ifaceInfos":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1891
    :cond_5
    iget-object v3, p1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget-object v3, v3, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->chip:Landroid/hardware/wifi/V1_0/IWifiChip;

    iget v4, p1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipModeId:I

    invoke-interface {v3, v4}, Landroid/hardware/wifi/V1_0/IWifiChip;->configureChip(I)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 1893
    .local v3, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    iget v4, v3, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-eqz v4, :cond_6

    .line 1894
    const-string v4, "HalDevMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "executeChipReconfiguration: configureChip error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1895
    invoke-static {v3}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1894
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1896
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    .line 1898
    .end local v3    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :cond_6
    goto :goto_5

    .line 1900
    :cond_7
    :try_start_2
    iget-object v3, p1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->interfacesToBeRemovedFirst:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    .line 1901
    .local v4, "ifaceInfo":Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    iget-object v5, v4, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->iface:Landroid/hardware/wifi/V1_0/IWifiIface;

    invoke-direct {p0, v5}, Lcom/android/server/wifi/HalDeviceManager;->removeIfaceInternal(Landroid/hardware/wifi/V1_0/IWifiIface;)Z

    .line 1902
    .end local v4    # "ifaceInfo":Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    goto :goto_4

    .line 1906
    :cond_8
    :goto_5
    new-instance v3, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v3}, Landroid/os/HidlSupport$Mutable;-><init>()V

    .line 1907
    .local v3, "statusResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Landroid/hardware/wifi/V1_0/WifiStatus;>;"
    new-instance v4, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v4}, Landroid/os/HidlSupport$Mutable;-><init>()V

    .line 1908
    .local v4, "ifaceResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Landroid/hardware/wifi/V1_0/IWifiIface;>;"
    packed-switch p2, :pswitch_data_0

    goto :goto_6

    .line 1931
    :pswitch_0
    iget-object v5, p1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget-object v5, v5, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->chip:Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v6, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$WW6cZCUVrA4Z4sLF1uQFY7WEO2M;

    invoke-direct {v6, v3, v4}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$WW6cZCUVrA4Z4sLF1uQFY7WEO2M;-><init>(Landroid/os/HidlSupport$Mutable;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v5, v6}, Landroid/hardware/wifi/V1_0/IWifiChip;->createNanIface(Landroid/hardware/wifi/V1_0/IWifiChip$createNanIfaceCallback;)V

    goto :goto_6

    .line 1924
    :pswitch_1
    iget-object v5, p1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget-object v5, v5, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->chip:Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v6, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$CGmA09HZR_kx53S5zvpgZ_HjfVY;

    invoke-direct {v6, v3, v4}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$CGmA09HZR_kx53S5zvpgZ_HjfVY;-><init>(Landroid/os/HidlSupport$Mutable;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v5, v6}, Landroid/hardware/wifi/V1_0/IWifiChip;->createP2pIface(Landroid/hardware/wifi/V1_0/IWifiChip$createP2pIfaceCallback;)V

    .line 1929
    goto :goto_6

    .line 1917
    :pswitch_2
    iget-object v5, p1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget-object v5, v5, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->chip:Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v6, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$_u0nrxwPdsDNGhDrGqRmIC3DEGg;

    invoke-direct {v6, v3, v4}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$_u0nrxwPdsDNGhDrGqRmIC3DEGg;-><init>(Landroid/os/HidlSupport$Mutable;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v5, v6}, Landroid/hardware/wifi/V1_0/IWifiChip;->createApIface(Landroid/hardware/wifi/V1_0/IWifiChip$createApIfaceCallback;)V

    .line 1922
    goto :goto_6

    .line 1910
    :pswitch_3
    iget-object v5, p1, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    iget-object v5, v5, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->chip:Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v6, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$mvaaPsbVJ3bOpRd7KtX6trB-Yoo;

    invoke-direct {v6, v3, v4}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$mvaaPsbVJ3bOpRd7KtX6trB-Yoo;-><init>(Landroid/os/HidlSupport$Mutable;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v5, v6}, Landroid/hardware/wifi/V1_0/IWifiChip;->createStaIface(Landroid/hardware/wifi/V1_0/IWifiChip$createStaIfaceCallback;)V

    .line 1915
    nop

    .line 1939
    :goto_6
    iget-object v5, v3, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/wifi/V1_0/WifiStatus;

    iget v5, v5, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-eqz v5, :cond_9

    .line 1940
    const-string v5, "HalDevMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "executeChipReconfiguration: failed to create interface ifaceType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v7, Landroid/hardware/wifi/V1_0/WifiStatus;

    .line 1941
    invoke-static {v7}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1940
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1942
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v1

    .line 1945
    :cond_9
    :try_start_4
    iget-object v5, v4, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/wifi/V1_0/IWifiIface;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v0

    return-object v5

    .line 1950
    .end local v2    # "isModeConfigNeeded":Z
    .end local v3    # "statusResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Landroid/hardware/wifi/V1_0/WifiStatus;>;"
    .end local v4    # "ifaceResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Landroid/hardware/wifi/V1_0/IWifiIface;>;"
    :catchall_0
    move-exception v1

    goto :goto_7

    .line 1946
    :catch_0
    move-exception v2

    .line 1947
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "HalDevMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "executeChipReconfiguration exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    monitor-exit v0

    return-object v1

    .line 1950
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_7
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private expandIfaceCombos(Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;)[[I
    .locals 12
    .param p1, "chipIfaceCombo"    # Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;

    .line 1552
    const/4 v0, 0x1

    .line 1553
    .local v0, "numOfCombos":I
    iget-object v1, p1, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;->limits:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;

    .line 1554
    .local v2, "limit":Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;
    nop

    .local v3, "i":I
    :goto_1
    iget v4, v2, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;->maxIfaces:I

    if-ge v3, v4, :cond_0

    .line 1555
    iget-object v4, v2, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;->types:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    mul-int/2addr v0, v4

    .line 1554
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1557
    .end local v2    # "limit":Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;
    .end local v3    # "i":I
    :cond_0
    goto :goto_0

    .line 1559
    :cond_1
    sget-object v1, Lcom/android/server/wifi/HalDeviceManager;->IFACE_TYPES_BY_PRIORITY:[I

    array-length v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v1

    const-class v2, I

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 1561
    .local v1, "expandedIfaceCombos":[[I
    move v2, v0

    .line 1562
    .local v2, "span":I
    iget-object v4, p1, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;->limits:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;

    .line 1563
    .local v5, "limit":Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;
    move v6, v2

    move v2, v3

    .local v2, "i":I
    .local v6, "span":I
    :goto_3
    iget v7, v5, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;->maxIfaces:I

    if-ge v2, v7, :cond_3

    .line 1564
    iget-object v7, v5, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;->types:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    div-int/2addr v6, v7

    .line 1565
    move v7, v3

    .local v7, "k":I
    :goto_4
    if-ge v7, v0, :cond_2

    .line 1566
    aget-object v8, v1, v7

    iget-object v9, v5, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;->types:Ljava/util/ArrayList;

    div-int v10, v7, v6

    iget-object v11, v5, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;->types:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    rem-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget v10, v8, v9

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v9

    .line 1565
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1563
    .end local v7    # "k":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1569
    .end local v2    # "i":I
    .end local v5    # "limit":Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;
    :cond_3
    nop

    .line 1562
    move v2, v6

    goto :goto_2

    .line 1571
    .end local v6    # "span":I
    .local v2, "span":I
    :cond_4
    return-object v1
.end method

.method private getAllChipInfo()[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    .locals 34

    .line 956
    move-object/from16 v7, p0

    iget-object v8, v7, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 957
    :try_start_0
    iget-object v0, v7, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    const/4 v9, 0x0

    if-nez v0, :cond_0

    .line 958
    const-string v0, "HalDevMgr"

    const-string v1, "getAllChipInfo: called but mWifi is null!?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v9

    .line 963
    :cond_0
    :try_start_1
    new-instance v0, Landroid/util/MutableBoolean;

    const/4 v10, 0x0

    invoke-direct {v0, v10}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 964
    .local v0, "statusOk":Landroid/util/MutableBoolean;
    new-instance v1, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v1}, Landroid/os/HidlSupport$Mutable;-><init>()V

    move-object v11, v1

    .line 967
    .local v11, "chipIdsResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    iget-object v1, v7, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    new-instance v2, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$Ci0JFzLrHHGWdbHbwt7SvPEJ9PE;

    invoke-direct {v2, v0, v11}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$Ci0JFzLrHHGWdbHbwt7SvPEJ9PE;-><init>(Landroid/util/MutableBoolean;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v1, v2}, Landroid/hardware/wifi/V1_0/IWifi;->getChipIds(Landroid/hardware/wifi/V1_0/IWifi$getChipIdsCallback;)V

    .line 975
    iget-boolean v1, v0, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 976
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v9

    .line 980
    :cond_1
    :try_start_3
    iget-object v1, v11, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 981
    const-string v1, "HalDevMgr"

    const-string v2, "Should have at least 1 chip!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 982
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v9

    .line 985
    :cond_2
    const/4 v1, 0x0

    .line 986
    .local v1, "chipInfoIndex":I
    :try_start_5
    iget-object v2, v11, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    move-object v12, v2

    .line 988
    .local v12, "chipsInfo":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    new-instance v2, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v2}, Landroid/os/HidlSupport$Mutable;-><init>()V

    move-object v13, v2

    .line 989
    .local v13, "chipResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Landroid/hardware/wifi/V1_0/IWifiChip;>;"
    iget-object v2, v11, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v15, v1

    .end local v1    # "chipInfoIndex":I
    .local v15, "chipInfoIndex":I
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v6, v1

    .line 990
    .local v6, "chipId":Ljava/lang/Integer;
    iget-object v1, v7, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$p03e84kiXl9N-VL8ava3FpuE3FQ;

    invoke-direct {v3, v0, v13}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$p03e84kiXl9N-VL8ava3FpuE3FQ;-><init>(Landroid/util/MutableBoolean;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v1, v2, v3}, Landroid/hardware/wifi/V1_0/IWifi;->getChip(ILandroid/hardware/wifi/V1_0/IWifi$getChipCallback;)V

    .line 998
    iget-boolean v1, v0, Landroid/util/MutableBoolean;->value:Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v1, :cond_3

    .line 999
    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-object v9

    .line 1002
    :cond_3
    :try_start_7
    new-instance v1, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v1}, Landroid/os/HidlSupport$Mutable;-><init>()V

    move-object v5, v1

    .line 1003
    .local v5, "availableModesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;>;>;"
    iget-object v1, v13, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v2, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$QZRoCKd1HAjQXZX8iuWWhwyE-XU;

    invoke-direct {v2, v0, v5}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$QZRoCKd1HAjQXZX8iuWWhwyE-XU;-><init>(Landroid/util/MutableBoolean;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v1, v2}, Landroid/hardware/wifi/V1_0/IWifiChip;->getAvailableModes(Landroid/hardware/wifi/V1_0/IWifiChip$getAvailableModesCallback;)V

    .line 1012
    iget-boolean v1, v0, Landroid/util/MutableBoolean;->value:Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v1, :cond_4

    .line 1013
    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    return-object v9

    .line 1016
    :cond_4
    :try_start_9
    new-instance v1, Landroid/util/MutableBoolean;

    invoke-direct {v1, v10}, Landroid/util/MutableBoolean;-><init>(Z)V

    move-object v4, v1

    .line 1017
    .local v4, "currentModeValidResp":Landroid/util/MutableBoolean;
    new-instance v1, Landroid/util/MutableInt;

    invoke-direct {v1, v10}, Landroid/util/MutableInt;-><init>(I)V

    move-object v3, v1

    .line 1018
    .local v3, "currentModeResp":Landroid/util/MutableInt;
    iget-object v1, v13, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v2, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$Dj8ldgJ1FhSt4uuFgciFIeXkqpM;

    invoke-direct {v2, v0, v4, v3}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$Dj8ldgJ1FhSt4uuFgciFIeXkqpM;-><init>(Landroid/util/MutableBoolean;Landroid/util/MutableBoolean;Landroid/util/MutableInt;)V

    invoke-interface {v1, v2}, Landroid/hardware/wifi/V1_0/IWifiChip;->getMode(Landroid/hardware/wifi/V1_0/IWifiChip$getModeCallback;)V

    .line 1029
    iget-boolean v1, v0, Landroid/util/MutableBoolean;->value:Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-nez v1, :cond_5

    .line 1030
    :try_start_a
    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    return-object v9

    .line 1033
    :cond_5
    :try_start_b
    new-instance v1, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v1}, Landroid/os/HidlSupport$Mutable;-><init>()V

    move-object v2, v1

    .line 1034
    .local v2, "ifaceNamesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/MutableInt;

    invoke-direct {v1, v10}, Landroid/util/MutableInt;-><init>(I)V

    .line 1036
    .local v1, "ifaceIndex":Landroid/util/MutableInt;
    iget-object v10, v13, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v10, Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v9, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$dsIrTCkcXS1tHH2Z2jRehn_C3rQ;

    invoke-direct {v9, v0, v2}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$dsIrTCkcXS1tHH2Z2jRehn_C3rQ;-><init>(Landroid/util/MutableBoolean;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v10, v9}, Landroid/hardware/wifi/V1_0/IWifiChip;->getStaIfaceNames(Landroid/hardware/wifi/V1_0/IWifiChip$getStaIfaceNamesCallback;)V

    .line 1045
    iget-boolean v9, v0, Landroid/util/MutableBoolean;->value:Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-nez v9, :cond_6

    .line 1046
    :try_start_c
    monitor-exit v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    const/4 v8, 0x0

    return-object v8

    .line 1049
    :cond_6
    :try_start_d
    iget-object v9, v2, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    .line 1050
    .local v9, "staIfaces":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    iget-object v10, v2, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v17, v16

    .line 1051
    .local v17, "ifaceName":Ljava/lang/String;
    move-object/from16 v18, v1

    iget-object v1, v13, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .end local v1    # "ifaceIndex":Landroid/util/MutableInt;
    .local v18, "ifaceIndex":Landroid/util/MutableInt;
    check-cast v1, Landroid/hardware/wifi/V1_0/IWifiChip;

    move-object/from16 v19, v10

    new-instance v10, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$uo2OuEtOM1sIltMaQ87xY8VTEio;

    move-object/from16 v21, v11

    move-object/from16 v20, v18

    move-object v11, v1

    .end local v11    # "chipIdsResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v18    # "ifaceIndex":Landroid/util/MutableInt;
    .local v20, "ifaceIndex":Landroid/util/MutableInt;
    .local v21, "chipIdsResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    move-object v1, v10

    move-object/from16 v22, v14

    move-object v14, v2

    move-object v2, v7

    .end local v2    # "ifaceNamesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v14, "ifaceNamesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    move-object/from16 v23, v3

    move-object v3, v0

    .end local v3    # "currentModeResp":Landroid/util/MutableInt;
    .local v23, "currentModeResp":Landroid/util/MutableInt;
    move-object/from16 v24, v4

    move-object/from16 v4, v17

    .end local v4    # "currentModeValidResp":Landroid/util/MutableBoolean;
    .local v24, "currentModeValidResp":Landroid/util/MutableBoolean;
    move-object/from16 v25, v5

    move-object v5, v9

    .end local v5    # "availableModesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;>;>;"
    .local v25, "availableModesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;>;>;"
    move-object/from16 v26, v9

    move-object v9, v6

    move-object/from16 v6, v20

    .end local v6    # "chipId":Ljava/lang/Integer;
    .local v9, "chipId":Ljava/lang/Integer;
    .local v26, "staIfaces":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$uo2OuEtOM1sIltMaQ87xY8VTEio;-><init>(Lcom/android/server/wifi/HalDeviceManager;Landroid/util/MutableBoolean;Ljava/lang/String;[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;Landroid/util/MutableInt;)V

    move-object/from16 v1, v17

    invoke-interface {v11, v1, v10}, Landroid/hardware/wifi/V1_0/IWifiChip;->getStaIface(Ljava/lang/String;Landroid/hardware/wifi/V1_0/IWifiChip$getStaIfaceCallback;)V

    .line 1063
    .end local v17    # "ifaceName":Ljava/lang/String;
    .local v1, "ifaceName":Ljava/lang/String;
    iget-boolean v2, v0, Landroid/util/MutableBoolean;->value:Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-nez v2, :cond_7

    .line 1064
    :try_start_e
    monitor-exit v8
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    const/4 v2, 0x0

    return-object v2

    .line 1066
    .end local v1    # "ifaceName":Ljava/lang/String;
    :cond_7
    nop

    .line 1050
    move-object v6, v9

    move-object v2, v14

    move-object/from16 v10, v19

    move-object/from16 v1, v20

    move-object/from16 v11, v21

    move-object/from16 v14, v22

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    move-object/from16 v5, v25

    move-object/from16 v9, v26

    goto :goto_1

    .line 1068
    .end local v14    # "ifaceNamesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v20    # "ifaceIndex":Landroid/util/MutableInt;
    .end local v21    # "chipIdsResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v23    # "currentModeResp":Landroid/util/MutableInt;
    .end local v24    # "currentModeValidResp":Landroid/util/MutableBoolean;
    .end local v25    # "availableModesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;>;>;"
    .end local v26    # "staIfaces":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    .local v1, "ifaceIndex":Landroid/util/MutableInt;
    .restart local v2    # "ifaceNamesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v3    # "currentModeResp":Landroid/util/MutableInt;
    .restart local v4    # "currentModeValidResp":Landroid/util/MutableBoolean;
    .restart local v5    # "availableModesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;>;>;"
    .restart local v6    # "chipId":Ljava/lang/Integer;
    .local v9, "staIfaces":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    .restart local v11    # "chipIdsResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :cond_8
    move-object/from16 v20, v1

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v26, v9

    move-object/from16 v21, v11

    move-object/from16 v22, v14

    move-object v14, v2

    move-object v9, v6

    .end local v1    # "ifaceIndex":Landroid/util/MutableInt;
    .end local v2    # "ifaceNamesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v3    # "currentModeResp":Landroid/util/MutableInt;
    .end local v4    # "currentModeValidResp":Landroid/util/MutableBoolean;
    .end local v5    # "availableModesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;>;>;"
    .end local v6    # "chipId":Ljava/lang/Integer;
    .end local v11    # "chipIdsResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .local v9, "chipId":Ljava/lang/Integer;
    .restart local v14    # "ifaceNamesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v20    # "ifaceIndex":Landroid/util/MutableInt;
    .restart local v21    # "chipIdsResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .restart local v23    # "currentModeResp":Landroid/util/MutableInt;
    .restart local v24    # "currentModeValidResp":Landroid/util/MutableBoolean;
    .restart local v25    # "availableModesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;>;>;"
    .restart local v26    # "staIfaces":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    move-object/from16 v10, v20

    const/4 v1, 0x0

    :try_start_f
    iput v1, v10, Landroid/util/MutableInt;->value:I

    .line 1069
    .end local v20    # "ifaceIndex":Landroid/util/MutableInt;
    .local v10, "ifaceIndex":Landroid/util/MutableInt;
    iget-object v1, v13, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v2, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$XPI5Idaave2zdv9AU9_MlTaalDY;

    invoke-direct {v2, v0, v14}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$XPI5Idaave2zdv9AU9_MlTaalDY;-><init>(Landroid/util/MutableBoolean;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v1, v2}, Landroid/hardware/wifi/V1_0/IWifiChip;->getApIfaceNames(Landroid/hardware/wifi/V1_0/IWifiChip$getApIfaceNamesCallback;)V

    .line 1078
    iget-boolean v1, v0, Landroid/util/MutableBoolean;->value:Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-nez v1, :cond_9

    .line 1079
    :try_start_10
    monitor-exit v8
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    const/4 v1, 0x0

    return-object v1

    .line 1082
    :cond_9
    :try_start_11
    iget-object v1, v14, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    move-object v11, v1

    .line 1083
    .local v11, "apIfaces":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    iget-object v1, v14, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v5, v1

    .line 1084
    .local v5, "ifaceName":Ljava/lang/String;
    iget-object v1, v13, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v3, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$mxBfwtjnevDQK7K2icuMHj_WFqk;

    move-object v1, v3

    move-object v2, v7

    move-object/from16 v27, v9

    move-object v9, v3

    move-object v3, v0

    .end local v9    # "chipId":Ljava/lang/Integer;
    .local v27, "chipId":Ljava/lang/Integer;
    move-object/from16 v28, v12

    move-object v12, v4

    move-object v4, v5

    .end local v12    # "chipsInfo":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    .local v28, "chipsInfo":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    move/from16 v29, v15

    move-object v15, v5

    move-object v5, v11

    .end local v5    # "ifaceName":Ljava/lang/String;
    .local v15, "ifaceName":Ljava/lang/String;
    .local v29, "chipInfoIndex":I
    move-object/from16 v16, v6

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$mxBfwtjnevDQK7K2icuMHj_WFqk;-><init>(Lcom/android/server/wifi/HalDeviceManager;Landroid/util/MutableBoolean;Ljava/lang/String;[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;Landroid/util/MutableInt;)V

    invoke-interface {v12, v15, v9}, Landroid/hardware/wifi/V1_0/IWifiChip;->getApIface(Ljava/lang/String;Landroid/hardware/wifi/V1_0/IWifiChip$getApIfaceCallback;)V

    .line 1096
    iget-boolean v1, v0, Landroid/util/MutableBoolean;->value:Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    if-nez v1, :cond_a

    .line 1097
    :try_start_12
    monitor-exit v8
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    const/4 v1, 0x0

    return-object v1

    .line 1099
    .end local v15    # "ifaceName":Ljava/lang/String;
    :cond_a
    nop

    .line 1083
    move-object/from16 v6, v16

    move-object/from16 v9, v27

    move-object/from16 v12, v28

    move/from16 v15, v29

    goto :goto_2

    .line 1101
    .end local v27    # "chipId":Ljava/lang/Integer;
    .end local v28    # "chipsInfo":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    .end local v29    # "chipInfoIndex":I
    .restart local v9    # "chipId":Ljava/lang/Integer;
    .restart local v12    # "chipsInfo":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    .local v15, "chipInfoIndex":I
    :cond_b
    move-object/from16 v27, v9

    move-object/from16 v28, v12

    move/from16 v29, v15

    .end local v9    # "chipId":Ljava/lang/Integer;
    .end local v12    # "chipsInfo":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    .end local v15    # "chipInfoIndex":I
    .restart local v27    # "chipId":Ljava/lang/Integer;
    .restart local v28    # "chipsInfo":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    .restart local v29    # "chipInfoIndex":I
    const/4 v1, 0x0

    :try_start_13
    iput v1, v10, Landroid/util/MutableInt;->value:I

    .line 1102
    iget-object v1, v13, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v2, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$hxJpbI2rmAxbXIdzc349gYAYHwI;

    invoke-direct {v2, v0, v14}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$hxJpbI2rmAxbXIdzc349gYAYHwI;-><init>(Landroid/util/MutableBoolean;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v1, v2}, Landroid/hardware/wifi/V1_0/IWifiChip;->getP2pIfaceNames(Landroid/hardware/wifi/V1_0/IWifiChip$getP2pIfaceNamesCallback;)V

    .line 1111
    iget-boolean v1, v0, Landroid/util/MutableBoolean;->value:Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    if-nez v1, :cond_c

    .line 1112
    :try_start_14
    monitor-exit v8
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    const/4 v1, 0x0

    return-object v1

    .line 1115
    :cond_c
    :try_start_15
    iget-object v1, v14, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    move-object v9, v1

    .line 1116
    .local v9, "p2pIfaces":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    iget-object v1, v14, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v15, v1

    .line 1117
    .local v15, "ifaceName":Ljava/lang/String;
    iget-object v1, v13, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$hneLFq0Hnppy7sfFb2jWqgBpQVo;

    move-object v1, v5

    move-object v2, v7

    move-object v3, v0

    move-object v4, v15

    move-object/from16 v30, v12

    move-object v12, v5

    move-object v5, v9

    move-object/from16 v31, v9

    move-object v9, v6

    move-object v6, v10

    .end local v9    # "p2pIfaces":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    .local v31, "p2pIfaces":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$hneLFq0Hnppy7sfFb2jWqgBpQVo;-><init>(Lcom/android/server/wifi/HalDeviceManager;Landroid/util/MutableBoolean;Ljava/lang/String;[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;Landroid/util/MutableInt;)V

    invoke-interface {v9, v15, v12}, Landroid/hardware/wifi/V1_0/IWifiChip;->getP2pIface(Ljava/lang/String;Landroid/hardware/wifi/V1_0/IWifiChip$getP2pIfaceCallback;)V

    .line 1129
    iget-boolean v1, v0, Landroid/util/MutableBoolean;->value:Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    if-nez v1, :cond_d

    .line 1130
    :try_start_16
    monitor-exit v8
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    const/4 v1, 0x0

    return-object v1

    .line 1132
    .end local v15    # "ifaceName":Ljava/lang/String;
    :cond_d
    nop

    .line 1116
    move-object/from16 v12, v30

    move-object/from16 v9, v31

    goto :goto_3

    .line 1134
    .end local v31    # "p2pIfaces":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    .restart local v9    # "p2pIfaces":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    :cond_e
    move-object/from16 v31, v9

    .end local v9    # "p2pIfaces":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    .restart local v31    # "p2pIfaces":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    const/4 v1, 0x0

    :try_start_17
    iput v1, v10, Landroid/util/MutableInt;->value:I

    .line 1135
    iget-object v1, v13, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v2, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$s6KbLNQfE0dKIM3mOxUftCWulcg;

    invoke-direct {v2, v0, v14}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$s6KbLNQfE0dKIM3mOxUftCWulcg;-><init>(Landroid/util/MutableBoolean;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v1, v2}, Landroid/hardware/wifi/V1_0/IWifiChip;->getNanIfaceNames(Landroid/hardware/wifi/V1_0/IWifiChip$getNanIfaceNamesCallback;)V

    .line 1144
    iget-boolean v1, v0, Landroid/util/MutableBoolean;->value:Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    if-nez v1, :cond_f

    .line 1145
    :try_start_18
    monitor-exit v8
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    const/4 v1, 0x0

    return-object v1

    .line 1148
    :cond_f
    :try_start_19
    iget-object v1, v14, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    move-object v9, v1

    .line 1149
    .local v9, "nanIfaces":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    iget-object v1, v14, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v15, v1

    .line 1150
    .restart local v15    # "ifaceName":Ljava/lang/String;
    iget-object v1, v13, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$Rey9oHRNwnp4wh3o06mwRizaCi8;

    move-object v1, v5

    move-object v2, v7

    move-object v3, v0

    move-object v4, v15

    move-object/from16 v32, v12

    move-object v12, v5

    move-object v5, v9

    move-object/from16 v33, v14

    move-object v14, v6

    move-object v6, v10

    .end local v14    # "ifaceNamesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v33, "ifaceNamesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$Rey9oHRNwnp4wh3o06mwRizaCi8;-><init>(Lcom/android/server/wifi/HalDeviceManager;Landroid/util/MutableBoolean;Ljava/lang/String;[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;Landroid/util/MutableInt;)V

    invoke-interface {v14, v15, v12}, Landroid/hardware/wifi/V1_0/IWifiChip;->getNanIface(Ljava/lang/String;Landroid/hardware/wifi/V1_0/IWifiChip$getNanIfaceCallback;)V

    .line 1162
    iget-boolean v1, v0, Landroid/util/MutableBoolean;->value:Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_0
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    if-nez v1, :cond_10

    .line 1163
    :try_start_1a
    monitor-exit v8
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    const/4 v1, 0x0

    return-object v1

    .line 1165
    .end local v15    # "ifaceName":Ljava/lang/String;
    :cond_10
    nop

    .line 1149
    move-object/from16 v12, v32

    move-object/from16 v14, v33

    goto :goto_4

    .line 1167
    .end local v33    # "ifaceNamesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v14    # "ifaceNamesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_11
    move-object/from16 v33, v14

    .end local v14    # "ifaceNamesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v33    # "ifaceNamesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :try_start_1b
    new-instance v1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v7, v2}, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;-><init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$1;)V

    .line 1168
    .local v1, "chipInfo":Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    add-int/lit8 v15, v29, 0x1

    .local v15, "chipInfoIndex":I
    aput-object v1, v28, v29

    .line 1170
    .end local v29    # "chipInfoIndex":I
    iget-object v2, v13, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/wifi/V1_0/IWifiChip;

    iput-object v2, v1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->chip:Landroid/hardware/wifi/V1_0/IWifiChip;

    .line 1171
    move-object/from16 v2, v27

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .end local v27    # "chipId":Ljava/lang/Integer;
    .local v2, "chipId":Ljava/lang/Integer;
    iput v3, v1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->chipId:I

    .line 1172
    move-object/from16 v3, v25

    iget-object v4, v3, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .end local v25    # "availableModesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;>;>;"
    .local v3, "availableModesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;>;>;"
    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, v1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->availableModes:Ljava/util/ArrayList;

    .line 1173
    move-object/from16 v4, v24

    iget-boolean v5, v4, Landroid/util/MutableBoolean;->value:Z

    .end local v24    # "currentModeValidResp":Landroid/util/MutableBoolean;
    .restart local v4    # "currentModeValidResp":Landroid/util/MutableBoolean;
    iput-boolean v5, v1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->currentModeIdValid:Z

    .line 1174
    move-object/from16 v5, v23

    iget v6, v5, Landroid/util/MutableInt;->value:I

    .end local v23    # "currentModeResp":Landroid/util/MutableInt;
    .local v5, "currentModeResp":Landroid/util/MutableInt;
    iput v6, v1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->currentModeId:I

    .line 1175
    iget-object v6, v1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    const/4 v12, 0x0

    aput-object v26, v6, v12

    .line 1176
    iget-object v6, v1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    const/4 v14, 0x1

    aput-object v11, v6, v14

    .line 1177
    iget-object v6, v1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    const/4 v14, 0x2

    aput-object v31, v6, v14

    .line 1178
    iget-object v6, v1, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    const/4 v14, 0x3

    aput-object v9, v6, v14
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_0
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 1179
    .end local v1    # "chipInfo":Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    .end local v2    # "chipId":Ljava/lang/Integer;
    .end local v3    # "availableModesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;>;>;"
    .end local v4    # "currentModeValidResp":Landroid/util/MutableBoolean;
    .end local v5    # "currentModeResp":Landroid/util/MutableInt;
    .end local v9    # "nanIfaces":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    .end local v10    # "ifaceIndex":Landroid/util/MutableInt;
    .end local v11    # "apIfaces":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    .end local v26    # "staIfaces":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    .end local v31    # "p2pIfaces":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    .end local v33    # "ifaceNamesResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    nop

    .line 989
    move v10, v12

    move-object/from16 v11, v21

    move-object/from16 v14, v22

    move-object/from16 v12, v28

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1181
    .end local v21    # "chipIdsResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v28    # "chipsInfo":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    .local v11, "chipIdsResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .restart local v12    # "chipsInfo":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    :cond_12
    move-object/from16 v21, v11

    move-object/from16 v28, v12

    move/from16 v29, v15

    .end local v11    # "chipIdsResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v12    # "chipsInfo":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    .end local v15    # "chipInfoIndex":I
    .restart local v21    # "chipIdsResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .restart local v28    # "chipsInfo":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    .restart local v29    # "chipInfoIndex":I
    :try_start_1c
    monitor-exit v8

    return-object v28

    .line 1182
    .end local v0    # "statusOk":Landroid/util/MutableBoolean;
    .end local v13    # "chipResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Landroid/hardware/wifi/V1_0/IWifiChip;>;"
    .end local v21    # "chipIdsResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v28    # "chipsInfo":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    .end local v29    # "chipInfoIndex":I
    :catch_0
    move-exception v0

    .line 1183
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HalDevMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllChipInfoAndValidateCache exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    .end local v0    # "e":Landroid/os/RemoteException;
    monitor-exit v8

    .line 1187
    const/4 v1, 0x0

    return-object v1

    .line 1185
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    throw v0
.end method

.method public static getName(Landroid/hardware/wifi/V1_0/IWifiIface;)Ljava/lang/String;
    .locals 5
    .param p0, "iface"    # Landroid/hardware/wifi/V1_0/IWifiIface;

    .line 392
    if-nez p0, :cond_0

    .line 393
    const-string v0, "<null>"

    return-object v0

    .line 396
    :cond_0
    new-instance v0, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v0}, Landroid/os/HidlSupport$Mutable;-><init>()V

    .line 398
    .local v0, "nameResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$bTmsDoAj9faJCBOTeT1Q3Ww5yNM;

    invoke-direct {v1, v0}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$bTmsDoAj9faJCBOTeT1Q3Ww5yNM;-><init>(Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {p0, v1}, Landroid/hardware/wifi/V1_0/IWifiIface;->getName(Landroid/hardware/wifi/V1_0/IWifiIface$getNameCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    goto :goto_0

    .line 405
    :catch_0
    move-exception v1

    .line 406
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "HalDevMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception on getName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, v0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private getOneplusWifiService()Lvendor/oneplus/hardware/wifi/V1_1/IOneplusWifi;
    .locals 4

    .line 639
    :try_start_0
    invoke-static {}, Lvendor/oneplus/hardware/wifi/V1_1/IOneplusWifi;->getService()Lvendor/oneplus/hardware/wifi/V1_1/IOneplusWifi;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 640
    :catch_0
    move-exception v0

    .line 641
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HalDevMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception getting oneplus wifi service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getType(Landroid/hardware/wifi/V1_0/IWifiIface;)I
    .locals 5
    .param p0, "iface"    # Landroid/hardware/wifi/V1_0/IWifiIface;

    .line 2196
    new-instance v0, Landroid/util/MutableInt;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/util/MutableInt;-><init>(I)V

    .line 2198
    .local v0, "typeResp":Landroid/util/MutableInt;
    :try_start_0
    new-instance v1, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$F9l5tGv94AyR0hUt-tUTCVoAniI;

    invoke-direct {v1, v0}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$F9l5tGv94AyR0hUt-tUTCVoAniI;-><init>(Landroid/util/MutableInt;)V

    invoke-interface {p0, v1}, Landroid/hardware/wifi/V1_0/IWifiIface;->getType(Landroid/hardware/wifi/V1_0/IWifiIface$getTypeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2207
    goto :goto_0

    .line 2205
    :catch_0
    move-exception v1

    .line 2206
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "HalDevMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception on getType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget v1, v0, Landroid/util/MutableInt;->value:I

    return v1
.end method

.method private initIServiceManagerIfNecessary()V
    .locals 6

    .line 720
    iget-boolean v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "HalDevMgr"

    const-string v1, "initIServiceManagerIfNecessary"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 723
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    if-eqz v1, :cond_1

    .line 724
    monitor-exit v0

    return-void

    .line 727
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/HalDeviceManager;->getServiceManagerMockable()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    .line 728
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    if-nez v1, :cond_2

    .line 729
    const-string v1, "HalDevMgr"

    const-string v2, "Failed to get IServiceManager instance"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 732
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    iget-object v3, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/hidl/manager/V1_0/IServiceManager;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v2

    if-nez v2, :cond_3

    .line 734
    const-string v2, "HalDevMgr"

    const-string v3, "Error on linkToDeath on IServiceManager"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 736
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 739
    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    const-string v3, "android.hardware.wifi@1.0::IWifi"

    const-string v4, ""

    iget-object v5, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceNotificationCallback:Landroid/hidl/manager/V1_0/IServiceNotification;

    invoke-interface {v2, v3, v4, v5}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 741
    const-string v2, "HalDevMgr"

    const-string v3, "Failed to register a listener for IWifi service"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 747
    :cond_4
    goto :goto_0

    .line 744
    :catch_0
    move-exception v2

    .line 745
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v3, "HalDevMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while operating on IServiceManager: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    .line 749
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 750
    return-void

    .line 749
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private initIWifiChipDebugListeners()V
    .locals 0

    .line 850
    return-void
.end method

.method private initIWifiIfNecessary()V
    .locals 5

    .line 805
    iget-boolean v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "HalDevMgr"

    const-string v1, "initIWifiIfNecessary"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 808
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    if-eqz v1, :cond_1

    .line 809
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 813
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wifi/HalDeviceManager;->getWifiServiceMockable()Landroid/hardware/wifi/V1_0/IWifi;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    .line 814
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    if-nez v1, :cond_2

    .line 815
    const-string v1, "HalDevMgr"

    const-string v2, "IWifi not (yet) available - but have a listener for it ..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 816
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 819
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mIWifiDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/hardware/wifi/V1_0/IWifi;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v1

    if-nez v1, :cond_3

    .line 820
    const-string v1, "HalDevMgr"

    const-string v2, "Error on linkToDeath on IWifi - will retry later"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 821
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    .line 824
    :cond_3
    :try_start_5
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifiEventCallback:Lcom/android/server/wifi/HalDeviceManager$WifiEventCallback;

    invoke-interface {v1, v2}, Landroid/hardware/wifi/V1_0/IWifi;->registerEventCallback(Landroid/hardware/wifi/V1_0/IWifiEventCallback;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    .line 825
    .local v1, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    iget v2, v1, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-eqz v2, :cond_4

    .line 826
    const-string v2, "HalDevMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IWifi.registerEventCallback failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 828
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-void

    .line 831
    :cond_4
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->stopWifi()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 834
    .end local v1    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    goto :goto_0

    .line 832
    :catch_0
    move-exception v1

    .line 833
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_8
    const-string v2, "HalDevMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while operating on IWifi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 836
    return-void

    .line 835
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v1
.end method

.method private initOneplusService()V
    .locals 5

    .line 647
    iget-boolean v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "HalDevMgr"

    const-string v1, "initOneplusService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 650
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mOneplusWifi:Lvendor/oneplus/hardware/wifi/V1_1/IOneplusWifi;

    if-eqz v1, :cond_1

    .line 651
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 655
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->getOneplusWifiService()Lvendor/oneplus/hardware/wifi/V1_1/IOneplusWifi;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mOneplusWifi:Lvendor/oneplus/hardware/wifi/V1_1/IOneplusWifi;

    .line 656
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mOneplusWifi:Lvendor/oneplus/hardware/wifi/V1_1/IOneplusWifi;

    if-nez v1, :cond_2

    .line 657
    const-string v1, "HalDevMgr"

    const-string v2, "oneplus wifi service is not ready ..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 658
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 661
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mOneplusWifi:Lvendor/oneplus/hardware/wifi/V1_1/IOneplusWifi;

    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mIOneplusWifiDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Lvendor/oneplus/hardware/wifi/V1_1/IOneplusWifi;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v1

    if-nez v1, :cond_3

    .line 662
    const-string v1, "HalDevMgr"

    const-string v2, "Error on linkToDeath on IOneplusWifi - will retry later"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 663
    :try_start_4
    monitor-exit v0

    return-void

    .line 668
    :cond_3
    goto :goto_0

    .line 666
    :catch_0
    move-exception v1

    .line 667
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "HalDevMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception getting oneplus wifi service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 670
    return-void

    .line 669
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private initializeInternal()V
    .locals 1

    .line 676
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->initIServiceManagerIfNecessary()V

    .line 677
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->isSupportedInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->initIWifiIfNecessary()V

    .line 680
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->initOneplusService()V

    .line 681
    return-void
.end method

.method private isItPossibleToCreateIface([Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;I)Z
    .locals 21
    .param p1, "chipInfos"    # [Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    .param p2, "ifaceType"    # I

    move-object/from16 v0, p1

    .line 1518
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v10, v0, v3

    .line 1519
    .local v10, "chipInfo":Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    iget-object v4, v10, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->availableModes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;

    .line 1520
    .local v12, "chipMode":Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;
    iget-object v4, v12, Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;->availableCombinations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;

    .line 1522
    .local v14, "chipIfaceCombo":Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;
    move-object/from16 v15, p0

    invoke-direct {v15, v14}, Lcom/android/server/wifi/HalDeviceManager;->expandIfaceCombos(Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;)[[I

    move-result-object v9

    .line 1528
    .local v9, "expandedIfaceCombos":[[I
    array-length v8, v9

    move v7, v2

    :goto_3
    if-ge v7, v8, :cond_1

    aget-object v16, v9, v7

    .line 1529
    .local v16, "expandedIfaceCombo":[I
    const/16 v17, 0x0

    move-object v4, v15

    move-object v5, v10

    move-object v6, v12

    move/from16 v18, v7

    move-object/from16 v7, v16

    move/from16 v19, v8

    move/from16 v8, p2

    move-object/from16 v20, v9

    move/from16 v9, v17

    .end local v9    # "expandedIfaceCombos":[[I
    .local v20, "expandedIfaceCombos":[[I
    invoke-direct/range {v4 .. v9}, Lcom/android/server/wifi/HalDeviceManager;->canIfaceComboSupportRequest(Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;[IIZ)Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1531
    const/4 v1, 0x1

    return v1

    .line 1528
    .end local v16    # "expandedIfaceCombo":[I
    :cond_0
    add-int/lit8 v7, v18, 0x1

    move/from16 v8, v19

    move-object/from16 v9, v20

    goto :goto_3

    .line 1534
    .end local v14    # "chipIfaceCombo":Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;
    .end local v20    # "expandedIfaceCombos":[[I
    :cond_1
    goto :goto_2

    .line 1535
    .end local v12    # "chipMode":Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;
    :cond_2
    move-object/from16 v15, p0

    goto :goto_1

    .line 1518
    .end local v10    # "chipInfo":Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    :cond_3
    move-object/from16 v15, p0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1538
    :cond_4
    move-object/from16 v15, p0

    return v2
.end method

.method private isSupportedInternal()Z
    .locals 6

    .line 760
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 761
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 762
    const-string v1, "HalDevMgr"

    const-string v3, "isSupported: called but mServiceManager is null!?"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 766
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    const-string v3, "android.hardware.wifi@1.0::IWifi"

    const-string v4, "default"

    invoke-interface {v1, v3, v4}, Landroid/hidl/manager/V1_0/IServiceManager;->getTransport(Ljava/lang/String;Ljava/lang/String;)B

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    :try_start_2
    monitor-exit v0

    return v2

    .line 768
    :catch_0
    move-exception v1

    .line 769
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "HalDevMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while operating on IServiceManager: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    monitor-exit v0

    return v2

    .line 772
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private isWifiStarted()Z
    .locals 6

    .line 1243
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1245
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    if-nez v2, :cond_0

    .line 1246
    const-string v2, "HalDevMgr"

    const-string v3, "isWifiStarted called but mWifi is null!?"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1247
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 1249
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    invoke-interface {v2}, Landroid/hardware/wifi/V1_0/IWifi;->isStarted()Z

    move-result v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    return v2

    .line 1255
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1251
    :catch_0
    move-exception v2

    .line 1252
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "HalDevMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isWifiStarted exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    monitor-exit v0

    return v1

    .line 1255
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method static synthetic lambda$createRttController$1(Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiRttController;)V
    .locals 3
    .param p0, "rttResp"    # Landroid/os/HidlSupport$Mutable;
    .param p1, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p2, "rtt"    # Landroid/hardware/wifi/V1_0/IWifiRttController;

    .line 466
    iget v0, p1, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    .line 467
    iput-object p2, p0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    goto :goto_0

    .line 469
    :cond_0
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IWifiChip.createRttController failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-static {p1}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 469
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :goto_0
    return-void
.end method

.method static synthetic lambda$executeChipReconfiguration$21(Landroid/os/HidlSupport$Mutable;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiStaIface;)V
    .locals 0
    .param p0, "statusResp"    # Landroid/os/HidlSupport$Mutable;
    .param p1, "ifaceResp"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "iface"    # Landroid/hardware/wifi/V1_0/IWifiStaIface;

    .line 1912
    iput-object p2, p0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 1913
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 1914
    return-void
.end method

.method static synthetic lambda$executeChipReconfiguration$22(Landroid/os/HidlSupport$Mutable;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiApIface;)V
    .locals 0
    .param p0, "statusResp"    # Landroid/os/HidlSupport$Mutable;
    .param p1, "ifaceResp"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "iface"    # Landroid/hardware/wifi/V1_0/IWifiApIface;

    .line 1919
    iput-object p2, p0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 1920
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 1921
    return-void
.end method

.method static synthetic lambda$executeChipReconfiguration$23(Landroid/os/HidlSupport$Mutable;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiP2pIface;)V
    .locals 0
    .param p0, "statusResp"    # Landroid/os/HidlSupport$Mutable;
    .param p1, "ifaceResp"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "iface"    # Landroid/hardware/wifi/V1_0/IWifiP2pIface;

    .line 1926
    iput-object p2, p0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 1927
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 1928
    return-void
.end method

.method static synthetic lambda$executeChipReconfiguration$24(Landroid/os/HidlSupport$Mutable;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiNanIface;)V
    .locals 0
    .param p0, "statusResp"    # Landroid/os/HidlSupport$Mutable;
    .param p1, "ifaceResp"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "iface"    # Landroid/hardware/wifi/V1_0/IWifiNanIface;

    .line 1933
    iput-object p2, p0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 1934
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 1935
    return-void
.end method

.method static synthetic lambda$getAllChipInfo$10(Landroid/util/MutableBoolean;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "statusOk"    # Landroid/util/MutableBoolean;
    .param p1, "availableModesResp"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "modes"    # Ljava/util/ArrayList;

    .line 1005
    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    .line 1006
    iget-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 1007
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    goto :goto_1

    .line 1009
    :cond_1
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAvailableModes failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :goto_1
    return-void
.end method

.method static synthetic lambda$getAllChipInfo$11(Landroid/util/MutableBoolean;Landroid/util/MutableBoolean;Landroid/util/MutableInt;Landroid/hardware/wifi/V1_0/WifiStatus;I)V
    .locals 3
    .param p0, "statusOk"    # Landroid/util/MutableBoolean;
    .param p1, "currentModeValidResp"    # Landroid/util/MutableBoolean;
    .param p2, "currentModeResp"    # Landroid/util/MutableInt;
    .param p3, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p4, "modeId"    # I

    .line 1019
    iget v0, p3, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    .line 1020
    iget-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 1021
    iput-boolean v1, p1, Landroid/util/MutableBoolean;->value:Z

    .line 1022
    iput p4, p2, Landroid/util/MutableInt;->value:I

    goto :goto_1

    .line 1023
    :cond_1
    iget v0, p3, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    .line 1024
    iput-boolean v1, p0, Landroid/util/MutableBoolean;->value:Z

    goto :goto_1

    .line 1026
    :cond_2
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMode failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :goto_1
    return-void
.end method

.method static synthetic lambda$getAllChipInfo$12(Landroid/util/MutableBoolean;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "statusOk"    # Landroid/util/MutableBoolean;
    .param p1, "ifaceNamesResp"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "ifnames"    # Ljava/util/ArrayList;

    .line 1038
    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    .line 1039
    iget-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 1040
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    goto :goto_1

    .line 1042
    :cond_1
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStaIfaceNames failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getAllChipInfo$13(Lcom/android/server/wifi/HalDeviceManager;Landroid/util/MutableBoolean;Ljava/lang/String;[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;Landroid/util/MutableInt;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiStaIface;)V
    .locals 3
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "ifaceName"    # Ljava/lang/String;
    .param p3, "staIfaces"    # [Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    .param p4, "ifaceIndex"    # Landroid/util/MutableInt;
    .param p5, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p6, "iface"    # Landroid/hardware/wifi/V1_0/IWifiStaIface;

    .line 1053
    iget v0, p5, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 1054
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 1055
    new-instance v0, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;-><init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$1;)V

    .line 1056
    .local v0, "ifaceInfo":Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    iput-object p2, v0, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->name:Ljava/lang/String;

    .line 1057
    iput-object p6, v0, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->iface:Landroid/hardware/wifi/V1_0/IWifiIface;

    .line 1058
    iget v1, p4, Landroid/util/MutableInt;->value:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p4, Landroid/util/MutableInt;->value:I

    aput-object v0, p3, v1

    .line 1059
    .end local v0    # "ifaceInfo":Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    goto :goto_1

    .line 1060
    :cond_1
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStaIface failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :goto_1
    return-void
.end method

.method static synthetic lambda$getAllChipInfo$14(Landroid/util/MutableBoolean;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "statusOk"    # Landroid/util/MutableBoolean;
    .param p1, "ifaceNamesResp"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "ifnames"    # Ljava/util/ArrayList;

    .line 1071
    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    .line 1072
    iget-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 1073
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    goto :goto_1

    .line 1075
    :cond_1
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApIfaceNames failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getAllChipInfo$15(Lcom/android/server/wifi/HalDeviceManager;Landroid/util/MutableBoolean;Ljava/lang/String;[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;Landroid/util/MutableInt;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiApIface;)V
    .locals 3
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "ifaceName"    # Ljava/lang/String;
    .param p3, "apIfaces"    # [Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    .param p4, "ifaceIndex"    # Landroid/util/MutableInt;
    .param p5, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p6, "iface"    # Landroid/hardware/wifi/V1_0/IWifiApIface;

    .line 1086
    iget v0, p5, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 1087
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 1088
    new-instance v0, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;-><init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$1;)V

    .line 1089
    .local v0, "ifaceInfo":Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    iput-object p2, v0, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->name:Ljava/lang/String;

    .line 1090
    iput-object p6, v0, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->iface:Landroid/hardware/wifi/V1_0/IWifiIface;

    .line 1091
    iget v1, p4, Landroid/util/MutableInt;->value:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p4, Landroid/util/MutableInt;->value:I

    aput-object v0, p3, v1

    .line 1092
    .end local v0    # "ifaceInfo":Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    goto :goto_1

    .line 1093
    :cond_1
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApIface failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    :goto_1
    return-void
.end method

.method static synthetic lambda$getAllChipInfo$16(Landroid/util/MutableBoolean;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "statusOk"    # Landroid/util/MutableBoolean;
    .param p1, "ifaceNamesResp"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "ifnames"    # Ljava/util/ArrayList;

    .line 1104
    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    .line 1105
    iget-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 1106
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    goto :goto_1

    .line 1108
    :cond_1
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getP2pIfaceNames failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getAllChipInfo$17(Lcom/android/server/wifi/HalDeviceManager;Landroid/util/MutableBoolean;Ljava/lang/String;[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;Landroid/util/MutableInt;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiP2pIface;)V
    .locals 3
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "ifaceName"    # Ljava/lang/String;
    .param p3, "p2pIfaces"    # [Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    .param p4, "ifaceIndex"    # Landroid/util/MutableInt;
    .param p5, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p6, "iface"    # Landroid/hardware/wifi/V1_0/IWifiP2pIface;

    .line 1119
    iget v0, p5, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 1120
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 1121
    new-instance v0, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;-><init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$1;)V

    .line 1122
    .local v0, "ifaceInfo":Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    iput-object p2, v0, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->name:Ljava/lang/String;

    .line 1123
    iput-object p6, v0, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->iface:Landroid/hardware/wifi/V1_0/IWifiIface;

    .line 1124
    iget v1, p4, Landroid/util/MutableInt;->value:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p4, Landroid/util/MutableInt;->value:I

    aput-object v0, p3, v1

    .line 1125
    .end local v0    # "ifaceInfo":Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    goto :goto_1

    .line 1126
    :cond_1
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getP2pIface failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :goto_1
    return-void
.end method

.method static synthetic lambda$getAllChipInfo$18(Landroid/util/MutableBoolean;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "statusOk"    # Landroid/util/MutableBoolean;
    .param p1, "ifaceNamesResp"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "ifnames"    # Ljava/util/ArrayList;

    .line 1137
    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    .line 1138
    iget-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 1139
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    goto :goto_1

    .line 1141
    :cond_1
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNanIfaceNames failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getAllChipInfo$19(Lcom/android/server/wifi/HalDeviceManager;Landroid/util/MutableBoolean;Ljava/lang/String;[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;Landroid/util/MutableInt;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiNanIface;)V
    .locals 3
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "ifaceName"    # Ljava/lang/String;
    .param p3, "nanIfaces"    # [Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    .param p4, "ifaceIndex"    # Landroid/util/MutableInt;
    .param p5, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p6, "iface"    # Landroid/hardware/wifi/V1_0/IWifiNanIface;

    .line 1152
    iget v0, p5, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 1153
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 1154
    new-instance v0, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;-><init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$1;)V

    .line 1155
    .local v0, "ifaceInfo":Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    iput-object p2, v0, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->name:Ljava/lang/String;

    .line 1156
    iput-object p6, v0, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->iface:Landroid/hardware/wifi/V1_0/IWifiIface;

    .line 1157
    iget v1, p4, Landroid/util/MutableInt;->value:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p4, Landroid/util/MutableInt;->value:I

    aput-object v0, p3, v1

    .line 1158
    .end local v0    # "ifaceInfo":Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    goto :goto_1

    .line 1159
    :cond_1
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNanIface failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    :goto_1
    return-void
.end method

.method static synthetic lambda$getAllChipInfo$8(Landroid/util/MutableBoolean;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "statusOk"    # Landroid/util/MutableBoolean;
    .param p1, "chipIdsResp"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "chipIds"    # Ljava/util/ArrayList;

    .line 968
    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    .line 969
    iget-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 970
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    goto :goto_1

    .line 972
    :cond_1
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChipIds failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :goto_1
    return-void
.end method

.method static synthetic lambda$getAllChipInfo$9(Landroid/util/MutableBoolean;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiChip;)V
    .locals 3
    .param p0, "statusOk"    # Landroid/util/MutableBoolean;
    .param p1, "chipResp"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "chip"    # Landroid/hardware/wifi/V1_0/IWifiChip;

    .line 991
    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    .line 992
    iget-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 993
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    goto :goto_1

    .line 995
    :cond_1
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChip failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :goto_1
    return-void
.end method

.method static synthetic lambda$getName$0(Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V
    .locals 3
    .param p0, "nameResp"    # Landroid/os/HidlSupport$Mutable;
    .param p1, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p2, "name"    # Ljava/lang/String;

    .line 399
    iget v0, p1, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    .line 400
    iput-object p2, p0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    goto :goto_0

    .line 402
    :cond_0
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error on getName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :goto_0
    return-void
.end method

.method static synthetic lambda$getSupportedIfaceTypesInternal$20(Landroid/util/MutableInt;Landroid/util/MutableBoolean;Landroid/hardware/wifi/V1_0/WifiStatus;I)V
    .locals 3
    .param p0, "chipIdIfProvided"    # Landroid/util/MutableInt;
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "id"    # I

    .line 1382
    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    .line 1383
    iput p3, p0, Landroid/util/MutableInt;->value:I

    .line 1384
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    goto :goto_0

    .line 1386
    :cond_0
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSupportedIfaceTypesInternal: IWifiChip.getId() error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1387
    invoke-static {p2}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1386
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 1390
    :goto_0
    return-void
.end method

.method static synthetic lambda$getType$25(Landroid/util/MutableInt;Landroid/hardware/wifi/V1_0/WifiStatus;I)V
    .locals 3
    .param p0, "typeResp"    # Landroid/util/MutableInt;
    .param p1, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p2, "type"    # I

    .line 2199
    iget v0, p1, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    .line 2200
    iput p2, p0, Landroid/util/MutableInt;->value:I

    goto :goto_0

    .line 2202
    :cond_0
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error on getType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2204
    :goto_0
    return-void
.end method

.method static synthetic lambda$getWifiMacFromNvItem$2(Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 2
    .param p0, "macList"    # Landroid/os/HidlSupport$Mutable;
    .param p1, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p2, "macs"    # Ljava/util/ArrayList;

    .line 523
    iget v0, p1, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-eqz v0, :cond_0

    .line 524
    const-string v0, "HalDevMgr"

    const-string v1, "Cannot get WIFI MAC from NV items"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 527
    :cond_0
    iput-object p2, p0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 528
    return-void
.end method

.method private static synthetic lambda$initIWifiChipDebugListeners$6(Landroid/util/MutableBoolean;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "statusOk"    # Landroid/util/MutableBoolean;
    .param p1, "chipIdsResp"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "chipIds"    # Ljava/util/ArrayList;

    .line 860
    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    .line 861
    iget-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 862
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    goto :goto_1

    .line 864
    :cond_1
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChipIds failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :goto_1
    return-void
.end method

.method private static synthetic lambda$initIWifiChipDebugListeners$7(Landroid/util/MutableBoolean;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiChip;)V
    .locals 3
    .param p0, "statusOk"    # Landroid/util/MutableBoolean;
    .param p1, "chipResp"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p3, "chip"    # Landroid/hardware/wifi/V1_0/IWifiChip;

    .line 881
    iget v0, p2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    .line 882
    iget-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 883
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    goto :goto_1

    .line 885
    :cond_1
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChip failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :goto_1
    return-void
.end method

.method public static synthetic lambda$new$3(Lcom/android/server/wifi/HalDeviceManager;J)V
    .locals 3
    .param p1, "cookie"    # J

    .line 694
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IServiceManager died: cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 696
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    .line 699
    monitor-exit v0

    .line 700
    return-void

    .line 699
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$new$4(Lcom/android/server/wifi/HalDeviceManager;J)V
    .locals 3
    .param p1, "cookie"    # J

    .line 777
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IWifi HAL service died! Have a listener for it ... cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 779
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    .line 780
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->teardownInternal()V

    .line 782
    monitor-exit v0

    .line 783
    return-void

    .line 782
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$new$5(Lcom/android/server/wifi/HalDeviceManager;J)V
    .locals 3
    .param p1, "cookie"    # J

    .line 788
    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOneplusWifi HAL service died! Have a listener for it ... cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 790
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mOneplusWifi:Lvendor/oneplus/hardware/wifi/V1_1/IOneplusWifi;

    .line 791
    monitor-exit v0

    .line 792
    return-void

    .line 791
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private managerStatusListenerDispatch()V
    .locals 3

    .line 1349
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1350
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mManagerStatusListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListenerProxy;

    .line 1351
    .local v2, "cb":Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListenerProxy;
    invoke-virtual {v2}, Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListenerProxy;->trigger()V

    .line 1352
    .end local v2    # "cb":Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListenerProxy;
    goto :goto_0

    .line 1353
    :cond_0
    monitor-exit v0

    .line 1354
    return-void

    .line 1353
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeIfaceInternal(Landroid/hardware/wifi/V1_0/IWifiIface;)Z
    .locals 10
    .param p1, "iface"    # Landroid/hardware/wifi/V1_0/IWifiIface;

    .line 1954
    invoke-static {p1}, Lcom/android/server/wifi/HalDeviceManager;->getName(Landroid/hardware/wifi/V1_0/IWifiIface;)Ljava/lang/String;

    move-result-object v0

    .line 1955
    .local v0, "name":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/wifi/HalDeviceManager;->getType(Landroid/hardware/wifi/V1_0/IWifiIface;)I

    move-result v1

    .line 1956
    .local v1, "type":I
    iget-boolean v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mDbg:Z

    if-eqz v2, :cond_0

    const-string v2, "HalDevMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeIfaceInternal: iface(name)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    :cond_0
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 1959
    const-string v2, "HalDevMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeIfaceInternal: can\'t get type -- iface(name)="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    return v3

    .line 1963
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1964
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    if-nez v4, :cond_2

    .line 1965
    const-string v4, "HalDevMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeIfaceInternal: null IWifi -- iface(name)="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    monitor-exit v2

    return v3

    .line 1969
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/HalDeviceManager;->getChip(Landroid/hardware/wifi/V1_0/IWifiIface;)Landroid/hardware/wifi/V1_0/IWifiChip;

    move-result-object v4

    .line 1970
    .local v4, "chip":Landroid/hardware/wifi/V1_0/IWifiChip;
    if-nez v4, :cond_3

    .line 1971
    const-string v5, "HalDevMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeIfaceInternal: null IWifiChip -- iface(name)="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    monitor-exit v2

    return v3

    .line 1975
    :cond_3
    if-nez v0, :cond_4

    .line 1976
    const-string v5, "HalDevMgr"

    const-string v6, "removeIfaceInternal: can\'t get name"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1980
    :cond_4
    const/4 v5, 0x0

    .line 1982
    .local v5, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    packed-switch v1, :pswitch_data_0

    .line 1996
    :try_start_1
    const-string v6, "HalDevMgr"

    goto :goto_1

    .line 1993
    :pswitch_0
    invoke-interface {v4, v0}, Landroid/hardware/wifi/V1_0/IWifiChip;->removeNanIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v6

    move-object v5, v6

    .line 1994
    goto :goto_0

    .line 1990
    :pswitch_1
    invoke-interface {v4, v0}, Landroid/hardware/wifi/V1_0/IWifiChip;->removeP2pIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v6

    move-object v5, v6

    .line 1991
    goto :goto_0

    .line 1987
    :pswitch_2
    invoke-interface {v4, v0}, Landroid/hardware/wifi/V1_0/IWifiChip;->removeApIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v6

    move-object v5, v6

    .line 1988
    goto :goto_0

    .line 1984
    :pswitch_3
    invoke-interface {v4, v0}, Landroid/hardware/wifi/V1_0/IWifiChip;->removeStaIface(Ljava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v6

    move-object v5, v6

    .line 1985
    nop

    .line 2001
    :goto_0
    goto :goto_2

    .line 1996
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removeIfaceInternal: invalid type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1997
    :try_start_2
    monitor-exit v2

    return v3

    .line 1999
    :catch_0
    move-exception v6

    .line 2000
    .local v6, "e":Landroid/os/RemoteException;
    const-string v7, "HalDevMgr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IWifiChip.removeXxxIface exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/HalDeviceManager;->dispatchDestroyedListeners(Ljava/lang/String;I)V

    .line 2006
    if-eqz v5, :cond_5

    iget v6, v5, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v6, :cond_5

    .line 2007
    const/4 v3, 0x1

    monitor-exit v2

    return v3

    .line 2009
    :cond_5
    const-string v6, "HalDevMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IWifiChip.removeXxxIface failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    monitor-exit v2

    return v3

    .line 2012
    .end local v4    # "chip":Landroid/hardware/wifi/V1_0/IWifiChip;
    .end local v5    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private selectInterfacesToDelete(I[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;)Ljava/util/List;
    .locals 10
    .param p1, "excessInterfaces"    # I
    .param p2, "interfaces"    # [Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;",
            ">;"
        }
    .end annotation

    .line 1821
    const/4 v0, 0x0

    .line 1822
    .local v0, "lookupError":Z
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    .line 1823
    .local v1, "orderedListLowPriority":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;>;"
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    .line 1824
    .local v2, "orderedList":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;>;"
    array-length v3, p2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, p2, v5

    .line 1825
    .local v6, "info":Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    iget-object v7, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceInfoCache:Ljava/util/Map;

    iget-object v8, v6, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->name:Ljava/lang/String;

    iget-object v9, v6, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->iface:Landroid/hardware/wifi/V1_0/IWifiIface;

    .line 1826
    invoke-static {v9}, Lcom/android/server/wifi/HalDeviceManager;->getType(Landroid/hardware/wifi/V1_0/IWifiIface;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    .line 1825
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;

    .line 1827
    .local v7, "cacheEntry":Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;
    if-nez v7, :cond_0

    .line 1828
    const-string v3, "HalDevMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "selectInterfacesToDelete: can\'t find cache entry with name="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    const/4 v0, 0x1

    .line 1831
    goto :goto_2

    .line 1833
    :cond_0
    iget-boolean v8, v7, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->isLowPriority:Z

    if-eqz v8, :cond_1

    .line 1834
    iget-wide v8, v7, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->creationTime:J

    invoke-virtual {v1, v8, v9, v6}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    goto :goto_1

    .line 1836
    :cond_1
    iget-wide v8, v7, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->creationTime:J

    invoke-virtual {v2, v8, v9, v6}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 1824
    .end local v6    # "info":Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    .end local v7    # "cacheEntry":Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1840
    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    .line 1841
    const-string v3, "HalDevMgr"

    const-string v4, "selectInterfacesToDelete: falling back to arbitrary selection"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 1844
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1845
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;>;"
    nop

    .local v4, "i":I
    :goto_3
    if-ge v4, p1, :cond_5

    .line 1846
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, -0x1

    .line 1847
    .local v5, "lowPriorityNextIndex":I
    if-ltz v5, :cond_4

    .line 1848
    invoke-virtual {v1, v5}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1850
    :cond_4
    nop

    .line 1851
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    .line 1850
    invoke-virtual {v2, v6}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1845
    .end local v5    # "lowPriorityNextIndex":I
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1854
    .end local v4    # "i":I
    :cond_5
    return-object v3
.end method

.method private startWifi()Z
    .locals 7

    .line 1261
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1263
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    if-nez v2, :cond_0

    .line 1264
    const-string v2, "HalDevMgr"

    const-string v3, "startWifi called but mWifi is null!?"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1265
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 1267
    :cond_0
    move v2, v1

    .line 1268
    .local v2, "triedCount":I
    :goto_0
    const/4 v3, 0x3

    if-gt v2, v3, :cond_4

    .line 1269
    :try_start_2
    iget-object v3, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    invoke-interface {v3}, Landroid/hardware/wifi/V1_0/IWifi;->start()Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    .line 1270
    .local v3, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    iget v4, v3, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v4, :cond_2

    .line 1271
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->initIWifiChipDebugListeners()V

    .line 1272
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->managerStatusListenerDispatch()V

    .line 1273
    if-eqz v2, :cond_1

    .line 1274
    const-string v4, "HalDevMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start IWifi succeeded after trying "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " times"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1277
    :cond_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x1

    return v0

    .line 1278
    :cond_2
    :try_start_4
    iget v4, v3, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    .line 1280
    const-string v4, "HalDevMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot start IWifi: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", Retrying..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1283
    const-wide/16 v4, 0x14

    :try_start_5
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1286
    goto :goto_1

    .line 1284
    :catch_0
    move-exception v4

    .line 1287
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 1293
    .end local v3    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    goto :goto_0

    .line 1290
    .restart local v3    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :cond_3
    :try_start_6
    const-string v4, "HalDevMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot start IWifi: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1291
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    return v1

    .line 1294
    .end local v3    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :cond_4
    :try_start_8
    const-string v3, "HalDevMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot start IWifi after trying "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " times"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1295
    :try_start_9
    monitor-exit v0

    return v1

    .line 1301
    .end local v2    # "triedCount":I
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1297
    :catch_1
    move-exception v2

    .line 1298
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "HalDevMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startWifi exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    monitor-exit v0

    return v1

    .line 1301
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v1
.end method

.method private static statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;
    .locals 2
    .param p0, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;

    .line 2186
    if-nez p0, :cond_0

    .line 2187
    const-string v0, "status=null"

    return-object v0

    .line 2189
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2190
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiStatus;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private stopWifi()V
    .locals 5

    .line 1307
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1309
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    if-nez v1, :cond_0

    .line 1310
    const-string v1, "HalDevMgr"

    const-string v2, "stopWifi called but mWifi is null!?"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1312
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    invoke-interface {v1}, Landroid/hardware/wifi/V1_0/IWifi;->stop()Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v1

    .line 1313
    .local v1, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    iget v2, v1, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-eqz v2, :cond_1

    .line 1314
    const-string v2, "HalDevMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot stop IWifi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->teardownInternal()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1322
    .end local v1    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :goto_0
    goto :goto_1

    .line 1323
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1320
    :catch_0
    move-exception v1

    .line 1321
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "HalDevMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopWifi exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit v0

    .line 1324
    return-void

    .line 1323
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private teardownInternal()V
    .locals 2

    .line 684
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->managerStatusListenerDispatch()V

    .line 685
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->dispatchAllDestroyedListeners()V

    .line 686
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 687
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 688
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 689
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 690
    return-void
.end method

.method private validateInterfaceCache([Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;)Z
    .locals 12
    .param p1, "chipInfos"    # [Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    .line 1201
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1202
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceInfoCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;

    .line 1204
    .local v2, "entry":Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;
    const/4 v3, 0x0

    .line 1205
    .local v3, "matchingChipInfo":Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    array-length v4, p1

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_1

    aget-object v7, p1, v6

    .line 1206
    .local v7, "ci":Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    iget v8, v7, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->chipId:I

    iget v9, v2, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->chipId:I

    if-ne v8, v9, :cond_0

    .line 1207
    move-object v3, v7

    .line 1208
    goto :goto_2

    .line 1205
    .end local v7    # "ci":Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1211
    :cond_1
    :goto_2
    if-nez v3, :cond_2

    .line 1212
    const-string v1, "HalDevMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "validateInterfaceCache: no chip found for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    monitor-exit v0

    return v5

    .line 1217
    :cond_2
    iget-object v4, v3, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    iget v6, v2, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->type:I

    aget-object v4, v4, v6

    .line 1218
    .local v4, "ifaceInfoList":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    if-nez v4, :cond_3

    .line 1219
    const-string v1, "HalDevMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "validateInterfaceCache: invalid type on entry "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    monitor-exit v0

    return v5

    .line 1223
    :cond_3
    const/4 v6, 0x0

    .line 1224
    .local v6, "matchFound":Z
    array-length v7, v4

    move v8, v5

    :goto_3
    if-ge v8, v7, :cond_5

    aget-object v9, v4, v8

    .line 1225
    .local v9, "ifaceInfo":Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    iget-object v10, v9, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->name:Ljava/lang/String;

    iget-object v11, v2, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1226
    const/4 v6, 0x1

    .line 1227
    goto :goto_4

    .line 1224
    .end local v9    # "ifaceInfo":Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1230
    :cond_5
    :goto_4
    if-nez v6, :cond_6

    .line 1231
    const-string v1, "HalDevMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "validateInterfaceCache: no interface found for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    monitor-exit v0

    return v5

    .line 1234
    .end local v2    # "entry":Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;
    .end local v3    # "matchingChipInfo":Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    .end local v4    # "ifaceInfoList":[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
    .end local v6    # "matchFound":Z
    :cond_6
    goto/16 :goto_0

    .line 1235
    :cond_7
    monitor-exit v0

    .line 1237
    const/4 v0, 0x1

    return v0

    .line 1235
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public createApIface(Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)Landroid/hardware/wifi/V1_0/IWifiApIface;
    .locals 2
    .param p1, "destroyedListener"    # Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 238
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/wifi/HalDeviceManager;->createIface(IZLcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)Landroid/hardware/wifi/V1_0/IWifiIface;

    move-result-object v0

    check-cast v0, Landroid/hardware/wifi/V1_0/IWifiApIface;

    return-object v0
.end method

.method public createNanIface(Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)Landroid/hardware/wifi/V1_0/IWifiNanIface;
    .locals 2
    .param p1, "destroyedListener"    # Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 254
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/wifi/HalDeviceManager;->createIface(IZLcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)Landroid/hardware/wifi/V1_0/IWifiIface;

    move-result-object v0

    check-cast v0, Landroid/hardware/wifi/V1_0/IWifiNanIface;

    return-object v0
.end method

.method public createP2pIface(Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)Landroid/hardware/wifi/V1_0/IWifiP2pIface;
    .locals 2
    .param p1, "destroyedListener"    # Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 246
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/wifi/HalDeviceManager;->createIface(IZLcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)Landroid/hardware/wifi/V1_0/IWifiIface;

    move-result-object v0

    check-cast v0, Landroid/hardware/wifi/V1_0/IWifiP2pIface;

    return-object v0
.end method

.method public createRttController()Landroid/hardware/wifi/V1_0/IWifiRttController;
    .locals 11

    .line 448
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 449
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 450
    const-string v1, "HalDevMgr"

    const-string v3, "createRttController: null IWifi"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    monitor-exit v0

    return-object v2

    .line 454
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->getAllChipInfo()[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    move-result-object v1

    .line 455
    .local v1, "chipInfos":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    if-nez v1, :cond_1

    .line 456
    const-string v3, "HalDevMgr"

    const-string v4, "createRttController: no chip info found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->stopWifi()V

    .line 458
    monitor-exit v0

    return-object v2

    .line 461
    :cond_1
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    .line 462
    .local v5, "chipInfo":Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    new-instance v6, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v6}, Landroid/os/HidlSupport$Mutable;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    .local v6, "rttResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Landroid/hardware/wifi/V1_0/IWifiRttController;>;"
    :try_start_1
    iget-object v7, v5, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->chip:Landroid/hardware/wifi/V1_0/IWifiChip;

    new-instance v8, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$joTzPjiPCypwHxT_jbl9OKHFMJo;

    invoke-direct {v8, v6}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$joTzPjiPCypwHxT_jbl9OKHFMJo;-><init>(Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v7, v2, v8}, Landroid/hardware/wifi/V1_0/IWifiChip;->createRttController(Landroid/hardware/wifi/V1_0/IWifiIface;Landroid/hardware/wifi/V1_0/IWifiChip$createRttControllerCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    goto :goto_1

    .line 474
    :catch_0
    move-exception v7

    .line 475
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v8, "HalDevMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IWifiChip.createRttController exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_1
    iget-object v7, v6, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    if-eqz v7, :cond_2

    .line 478
    iget-object v2, v6, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/wifi/V1_0/IWifiRttController;

    monitor-exit v0

    return-object v2

    .line 461
    .end local v5    # "chipInfo":Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    .end local v6    # "rttResp":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Landroid/hardware/wifi/V1_0/IWifiRttController;>;"
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 482
    :cond_3
    const-string v3, "HalDevMgr"

    const-string v4, "createRttController: not available from any of the chips"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    monitor-exit v0

    return-object v2

    .line 484
    .end local v1    # "chipInfos":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public createStaIface(ZLcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)Landroid/hardware/wifi/V1_0/IWifiStaIface;
    .locals 1
    .param p1, "lowPrioritySta"    # Z
    .param p2, "destroyedListener"    # Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 229
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/wifi/HalDeviceManager;->createIface(IZLcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)Landroid/hardware/wifi/V1_0/IWifiIface;

    move-result-object v0

    check-cast v0, Landroid/hardware/wifi/V1_0/IWifiStaIface;

    return-object v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2216
    const-string v0, "HalDeviceManager:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mServiceManager: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWifi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mManagerStatusListeners: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mManagerStatusListeners:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mInterfaceAvailableForRequestListeners: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mInterfaceInfoCache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceInfoCache:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2223
    return-void
.end method

.method enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .line 92
    if-lez p1, :cond_0

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mDbg:Z

    goto :goto_0

    .line 95
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mDbg:Z

    .line 100
    :goto_0
    return-void
.end method

.method public getChip(Landroid/hardware/wifi/V1_0/IWifiIface;)Landroid/hardware/wifi/V1_0/IWifiChip;
    .locals 7
    .param p1, "iface"    # Landroid/hardware/wifi/V1_0/IWifiIface;

    .line 276
    invoke-static {p1}, Lcom/android/server/wifi/HalDeviceManager;->getName(Landroid/hardware/wifi/V1_0/IWifiIface;)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "name":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/wifi/HalDeviceManager;->getType(Landroid/hardware/wifi/V1_0/IWifiIface;)I

    move-result v1

    .line 280
    .local v1, "type":I
    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 281
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceInfoCache:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;

    .line 282
    .local v3, "cacheEntry":Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;
    if-nez v3, :cond_0

    .line 283
    const-string v4, "HalDevMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getChip: no entry for iface(name)="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 v4, 0x0

    monitor-exit v2

    return-object v4

    .line 287
    :cond_0
    iget-object v4, v3, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->chip:Landroid/hardware/wifi/V1_0/IWifiChip;

    monitor-exit v2

    return-object v4

    .line 288
    .end local v3    # "cacheEntry":Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected getServiceManagerMockable()Landroid/hidl/manager/V1_0/IServiceManager;
    .locals 4

    .line 629
    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 630
    :catch_0
    move-exception v0

    .line 631
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HalDevMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception getting IServiceManager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSupportedIfaceTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/HalDeviceManager;->getSupportedIfaceTypesInternal(Landroid/hardware/wifi/V1_0/IWifiChip;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedIfaceTypes(Landroid/hardware/wifi/V1_0/IWifiChip;)Ljava/util/Set;
    .locals 1
    .param p1, "chip"    # Landroid/hardware/wifi/V1_0/IWifiChip;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/wifi/V1_0/IWifiChip;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 206
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/HalDeviceManager;->getSupportedIfaceTypesInternal(Landroid/hardware/wifi/V1_0/IWifiChip;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getSupportedIfaceTypesInternal(Landroid/hardware/wifi/V1_0/IWifiChip;)Ljava/util/Set;
    .locals 16
    .param p1, "chip"    # Landroid/hardware/wifi/V1_0/IWifiChip;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/wifi/V1_0/IWifiChip;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1369
    move-object/from16 v1, p1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v2, v0

    .line 1371
    .local v2, "results":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/HalDeviceManager;->getAllChipInfo()[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    move-result-object v3

    .line 1372
    .local v3, "chipInfos":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    if-nez v3, :cond_0

    .line 1373
    const-string v0, "HalDevMgr"

    const-string v4, "getSupportedIfaceTypesInternal: no chip info found"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    return-object v2

    .line 1377
    :cond_0
    new-instance v0, Landroid/util/MutableInt;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Landroid/util/MutableInt;-><init>(I)V

    move-object v5, v0

    .line 1378
    .local v5, "chipIdIfProvided":Landroid/util/MutableInt;
    if-eqz v1, :cond_1

    .line 1379
    new-instance v0, Landroid/util/MutableBoolean;

    invoke-direct {v0, v4}, Landroid/util/MutableBoolean;-><init>(Z)V

    move-object v6, v0

    .line 1381
    .local v6, "statusOk":Landroid/util/MutableBoolean;
    :try_start_0
    new-instance v0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$TMwazTQAu6l-F5LbcYVm5vvrB70;

    invoke-direct {v0, v5, v6}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$TMwazTQAu6l-F5LbcYVm5vvrB70;-><init>(Landroid/util/MutableInt;Landroid/util/MutableBoolean;)V

    invoke-interface {v1, v0}, Landroid/hardware/wifi/V1_0/IWifiChip;->getId(Landroid/hardware/wifi/V1_0/IWifiChip$getIdCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1394
    nop

    .line 1395
    iget-boolean v0, v6, Landroid/util/MutableBoolean;->value:Z

    if-nez v0, :cond_1

    .line 1396
    return-object v2

    .line 1391
    :catch_0
    move-exception v0

    .line 1392
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "HalDevMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSupportedIfaceTypesInternal IWifiChip.getId() exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    return-object v2

    .line 1400
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v6    # "statusOk":Landroid/util/MutableBoolean;
    :cond_1
    array-length v0, v3

    :goto_0
    if-ge v4, v0, :cond_7

    aget-object v6, v3, v4

    .line 1401
    .local v6, "wci":Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    if-eqz v1, :cond_2

    iget v7, v6, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->chipId:I

    iget v8, v5, Landroid/util/MutableInt;->value:I

    if-eq v7, v8, :cond_2

    .line 1402
    goto :goto_5

    .line 1405
    :cond_2
    iget-object v7, v6, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->availableModes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;

    .line 1406
    .local v8, "cm":Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;
    iget-object v9, v8, Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;->availableCombinations:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;

    .line 1407
    .local v10, "cic":Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;
    iget-object v11, v10, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;->limits:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;

    .line 1408
    .local v12, "cicl":Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;
    iget-object v13, v12, Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;->types:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1409
    .local v14, "type":I
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1410
    .end local v14    # "type":I
    goto :goto_4

    .line 1411
    .end local v12    # "cicl":Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;
    :cond_3
    goto :goto_3

    .line 1412
    .end local v10    # "cic":Landroid/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;
    :cond_4
    goto :goto_2

    .line 1413
    .end local v8    # "cm":Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;
    :cond_5
    goto :goto_1

    .line 1400
    .end local v6    # "wci":Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    :cond_6
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1416
    :cond_7
    return-object v2
.end method

.method public getWifiMacFromNvItem()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 514
    iget-boolean v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "HalDevMgr"

    const-string v1, "getWifiMacFromNvItem"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_0
    new-instance v0, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v0}, Landroid/os/HidlSupport$Mutable;-><init>()V

    .line 516
    .local v0, "macList":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 518
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/HalDeviceManager;->mOneplusWifi:Lvendor/oneplus/hardware/wifi/V1_1/IOneplusWifi;

    if-nez v3, :cond_1

    .line 519
    const-string v3, "HalDevMgr"

    const-string v4, "getWifiMacFromNvItem mOneplusWifi is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    .line 522
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/wifi/HalDeviceManager;->mOneplusWifi:Lvendor/oneplus/hardware/wifi/V1_1/IOneplusWifi;

    new-instance v4, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$Z2yam2oDtsUR0pmSqVB-jlLOl2M;

    invoke-direct {v4, v0}, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$Z2yam2oDtsUR0pmSqVB-jlLOl2M;-><init>(Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v3, v4}, Lvendor/oneplus/hardware/wifi/V1_1/IOneplusWifi;->getWifiMacFromNvItem(Lvendor/oneplus/hardware/wifi/V1_1/IOneplusWifi$getWifiMacFromNvItemCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 533
    nop

    .line 534
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 535
    iget-object v1, v0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    return-object v1

    .line 534
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 530
    :catch_0
    move-exception v3

    .line 531
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v4, "HalDevMgr"

    const-string v5, "getWifiMacFromNvItem throws expction: "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 532
    monitor-exit v1

    return-object v2

    .line 534
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2
.end method

.method protected getWifiServiceMockable()Landroid/hardware/wifi/V1_0/IWifi;
    .locals 4

    .line 620
    :try_start_0
    invoke-static {}, Landroid/hardware/wifi/V1_0/IWifi;->getService()Landroid/hardware/wifi/V1_0/IWifi;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 621
    :catch_0
    move-exception v0

    .line 622
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HalDevMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception getting IWifi service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const/4 v1, 0x0

    return-object v1
.end method

.method public initialize()V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->initializeInternal()V

    .line 111
    return-void
.end method

.method public isReady()Z
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mWifi:Landroid/hardware/wifi/V1_0/IWifi;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStarted()Z
    .locals 1

    .line 157
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->isWifiStarted()Z

    move-result v0

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .line 139
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->isSupportedInternal()Z

    move-result v0

    return v0
.end method

.method public registerDestroyedListener(Landroid/hardware/wifi/V1_0/IWifiIface;Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)Z
    .locals 7
    .param p1, "iface"    # Landroid/hardware/wifi/V1_0/IWifiIface;
    .param p2, "destroyedListener"    # Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 306
    invoke-static {p1}, Lcom/android/server/wifi/HalDeviceManager;->getName(Landroid/hardware/wifi/V1_0/IWifiIface;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "name":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/wifi/HalDeviceManager;->getType(Landroid/hardware/wifi/V1_0/IWifiIface;)I

    move-result v1

    .line 310
    .local v1, "type":I
    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 311
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceInfoCache:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;

    .line 312
    .local v3, "cacheEntry":Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;
    if-nez v3, :cond_0

    .line 313
    const-string v4, "HalDevMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerDestroyedListener: no entry for iface(name)="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v4, 0x0

    monitor-exit v2

    return v4

    .line 317
    :cond_0
    iget-object v4, v3, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->destroyedListeners:Ljava/util/Set;

    new-instance v5, Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;

    invoke-direct {v5, p0, v0, p2, p3}, Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;-><init>(Lcom/android/server/wifi/HalDeviceManager;Ljava/lang/String;Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    monitor-exit v2

    return v4

    .line 319
    .end local v3    # "cacheEntry":Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public registerInterfaceAvailableForRequestListener(ILcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "ifaceType"    # I
    .param p2, "listener"    # Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 348
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    :try_start_0
    new-instance v1, Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListenerProxy;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListenerProxy;-><init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListener;Landroid/os/Handler;)V

    .line 351
    .local v1, "proxy":Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListenerProxy;
    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    monitor-exit v0

    return-void

    .line 359
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    .end local v1    # "proxy":Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListenerProxy;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->getAllChipInfo()[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    move-result-object v0

    .line 363
    .local v0, "chipInfos":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    if-nez v0, :cond_1

    .line 364
    const-string v1, "HalDevMgr"

    const-string v2, "registerInterfaceAvailableForRequestListener: no chip info found - but possibly registered pre-started - ignoring"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return-void

    .line 369
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/HalDeviceManager;->dispatchAvailableForRequestListenersForType(I[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;)V

    .line 370
    return-void

    .line 360
    .end local v0    # "chipInfos":[Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public registerStatusListener(Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 128
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mManagerStatusListeners:Ljava/util/Set;

    new-instance v2, Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListenerProxy;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListenerProxy;-><init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListener;Landroid/os/Handler;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    const-string v1, "HalDevMgr"

    const-string v2, "registerStatusListener: duplicate registration ignored"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    monitor-exit v0

    .line 133
    return-void

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeIface(Landroid/hardware/wifi/V1_0/IWifiIface;)Z
    .locals 1
    .param p1, "iface"    # Landroid/hardware/wifi/V1_0/IWifiIface;

    .line 263
    invoke-direct {p0, p1}, Lcom/android/server/wifi/HalDeviceManager;->removeIfaceInternal(Landroid/hardware/wifi/V1_0/IWifiIface;)Z

    move-result v0

    .line 264
    .local v0, "success":Z
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->dispatchAvailableForRequestListeners()Z

    .line 265
    return v0
.end method

.method public setFtmMode(Z)Z
    .locals 6
    .param p1, "enable"    # Z

    .line 492
    iget-boolean v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "HalDevMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFtmMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 495
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mOneplusWifi:Lvendor/oneplus/hardware/wifi/V1_1/IOneplusWifi;

    if-nez v2, :cond_1

    .line 496
    const-string v2, "HalDevMgr"

    const-string v3, "setFtmMode: mOneplusWifi is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 499
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/HalDeviceManager;->mOneplusWifi:Lvendor/oneplus/hardware/wifi/V1_1/IOneplusWifi;

    invoke-interface {v2, p1}, Lvendor/oneplus/hardware/wifi/V1_1/IOneplusWifi;->setFtmMode(Z)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    .line 500
    .local v2, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    iget v3, v2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-eqz v3, :cond_2

    .line 501
    const-string v3, "HalDevMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot set FTM mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/wifi/HalDeviceManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 502
    :try_start_3
    monitor-exit v0

    return v1

    .line 504
    :cond_2
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 510
    .end local v2    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 506
    :catch_0
    move-exception v2

    .line 507
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "HalDevMgr"

    const-string v4, "setFtmMode throws expcetion: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 508
    monitor-exit v0

    return v1

    .line 510
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public start()Z
    .locals 1

    .line 168
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->startWifi()Z

    move-result v0

    return v0
.end method

.method public stop()V
    .locals 0

    .line 177
    invoke-direct {p0}, Lcom/android/server/wifi/HalDeviceManager;->stopWifi()V

    .line 178
    return-void
.end method

.method public unregisterInterfaceAvailableForRequestListener(ILcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListener;)V
    .locals 4
    .param p1, "ifaceType"    # I
    .param p2, "listener"    # Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListener;

    .line 382
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 383
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager;->mInterfaceAvailableForRequestListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    new-instance v2, Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListenerProxy;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, v3}, Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListenerProxy;-><init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListener;Landroid/os/Handler;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    monitor-exit v0

    .line 386
    return-void

    .line 385
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
