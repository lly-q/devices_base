.class public Landroid/view/SurfaceControl$Transaction;
.super Ljava/lang/Object;
.source "SurfaceControl.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Transaction"
.end annotation


# static fields
.field public static final sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field mFreeNativeResources:Ljava/lang/Runnable;

.field private mNativeObject:J

.field private final mResizedSurfaces:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1360
    new-instance v6, Llibcore/util/NativeAllocationRegistry;

    const-class v0, Landroid/view/SurfaceControl$Transaction;

    .line 1361
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1362
    invoke-static {}, Landroid/view/SurfaceControl;->access$200()J

    move-result-wide v2

    const-wide/16 v4, 0x200

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    sput-object v6, Landroid/view/SurfaceControl$Transaction;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 1360
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1365
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    .line 1369
    invoke-static {}, Landroid/view/SurfaceControl;->access$300()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    .line 1370
    sget-object v0, Landroid/view/SurfaceControl$Transaction;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    .line 1371
    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mFreeNativeResources:Ljava/lang/Runnable;

    .line 1372
    return-void
.end method

.method private applyResizedSurfaces()V
    .locals 5

    .line 1401
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1402
    iget-object v1, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 1403
    .local v1, "size":Landroid/graphics/Point;
    iget-object v2, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl;

    .line 1404
    .local v2, "surfaceControl":Landroid/view/SurfaceControl;
    invoke-static {v2}, Landroid/view/SurfaceControl;->access$500(Landroid/view/SurfaceControl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1405
    :try_start_0
    iget v4, v1, Landroid/graphics/Point;->x:I

    invoke-static {v2, v4}, Landroid/view/SurfaceControl;->access$602(Landroid/view/SurfaceControl;I)I

    .line 1406
    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v4}, Landroid/view/SurfaceControl;->access$702(Landroid/view/SurfaceControl;I)I

    .line 1407
    monitor-exit v3

    .line 1401
    .end local v1    # "size":Landroid/graphics/Point;
    .end local v2    # "surfaceControl":Landroid/view/SurfaceControl;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1407
    .restart local v1    # "size":Landroid/graphics/Point;
    .restart local v2    # "surfaceControl":Landroid/view/SurfaceControl;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1409
    .end local v0    # "i":I
    .end local v1    # "size":Landroid/graphics/Point;
    .end local v2    # "surfaceControl":Landroid/view/SurfaceControl;
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1410
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1

    .line 1379
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    .line 1380
    return-void
.end method

.method public apply(Z)V
    .locals 2
    .param p1, "sync"    # Z

    .line 1396
    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;->applyResizedSurfaces()V

    .line 1397
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->access$400(JZ)V

    .line 1398
    return-void
.end method

.method public close()V
    .locals 2

    .line 1388
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mFreeNativeResources:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1389
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    .line 1390
    return-void
.end method

.method public deferTransactionUntil(Landroid/view/SurfaceControl;Landroid/os/IBinder;J)Landroid/view/SurfaceControl$Transaction;
    .locals 8
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "handle"    # Landroid/os/IBinder;
    .param p3, "frameNumber"    # J

    .line 1511
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    .line 1512
    return-object p0

    .line 1514
    :cond_0
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1515
    iget-wide v1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v3, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move-object v5, p2

    move-wide v6, p3

    invoke-static/range {v1 .. v7}, Landroid/view/SurfaceControl;->access$2000(JJLandroid/os/IBinder;J)V

    .line 1516
    return-object p0
.end method

.method public deferTransactionUntilSurface(Landroid/view/SurfaceControl;Landroid/view/Surface;J)Landroid/view/SurfaceControl$Transaction;
    .locals 9
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "barrierSurface"    # Landroid/view/Surface;
    .param p3, "frameNumber"    # J

    .line 1521
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    .line 1522
    return-object p0

    .line 1524
    :cond_0
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1525
    iget-wide v1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v3, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    iget-wide v5, p2, Landroid/view/Surface;->mNativeObject:J

    move-wide v7, p3

    invoke-static/range {v1 .. v8}, Landroid/view/SurfaceControl;->access$2100(JJJJ)V

    .line 1527
    return-object p0
.end method

.method public destroy(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .locals 4
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 1613
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1626
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$2800(Landroid/view/SurfaceControl;)Ldalvik/system/CloseGuard;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 1628
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/SurfaceControl;->access$2900(JJ)V

    .line 1629
    return-object p0
.end method

.method public detachChildren(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .locals 4
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 1545
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1546
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/SurfaceControl;->access$2400(JJ)V

    .line 1547
    return-object p0
.end method

.method public hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .locals 6
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 1419
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1420
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->access$900(JJII)V

    .line 1421
    return-object p0
.end method

.method public merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;
    .locals 4
    .param p1, "other"    # Landroid/view/SurfaceControl$Transaction;

    .line 1708
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 1709
    iget-object v0, p1, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1710
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/SurfaceControl;->access$3600(JJ)V

    .line 1711
    return-object p0
.end method

.method public reparent(Landroid/view/SurfaceControl;Landroid/os/IBinder;)Landroid/view/SurfaceControl$Transaction;
    .locals 4
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "newParentHandle"    # Landroid/os/IBinder;

    .line 1538
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1539
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->access$2300(JJLandroid/os/IBinder;)V

    .line 1541
    return-object p0
.end method

.method public reparentChildren(Landroid/view/SurfaceControl;Landroid/os/IBinder;)Landroid/view/SurfaceControl$Transaction;
    .locals 4
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "newParentHandle"    # Landroid/os/IBinder;

    .line 1531
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1532
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->access$2200(JJLandroid/os/IBinder;)V

    .line 1533
    return-object p0
.end method

.method public setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;
    .locals 4
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "alpha"    # F

    .line 1458
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1459
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->access$1500(JJF)V

    .line 1460
    return-object p0
.end method

.method public setAnimationTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 2

    .line 1686
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->access$3400(J)V

    .line 1687
    return-object p0
.end method

.method public setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;
    .locals 4
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "color"    # [F

    .line 1562
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1563
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->access$2600(JJ[F)V

    .line 1564
    return-object p0
.end method

.method public setDisplayLayerStack(Landroid/os/IBinder;I)Landroid/view/SurfaceControl$Transaction;
    .locals 2
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "layerStack"    # I

    .line 1648
    if-eqz p1, :cond_0

    .line 1651
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->access$3100(JLandroid/os/IBinder;I)V

    .line 1652
    return-object p0

    .line 1649
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;
    .locals 16
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "orientation"    # I
    .param p3, "layerStackRect"    # Landroid/graphics/Rect;
    .param p4, "displayRect"    # Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 1657
    move-object/from16 v2, p4

    if-eqz p1, :cond_2

    .line 1660
    if-eqz v1, :cond_1

    .line 1663
    if-eqz v2, :cond_0

    .line 1666
    iget-wide v3, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    iget v9, v1, Landroid/graphics/Rect;->right:I

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    iget v11, v2, Landroid/graphics/Rect;->left:I

    iget v12, v2, Landroid/graphics/Rect;->top:I

    iget v13, v2, Landroid/graphics/Rect;->right:I

    iget v14, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-static/range {v3 .. v14}, Landroid/view/SurfaceControl;->access$3200(JLandroid/os/IBinder;IIIIIIIII)V

    .line 1669
    return-object v0

    .line 1664
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "displayRect must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1661
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "layerStackRect must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1658
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "displayToken must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setDisplaySize(Landroid/os/IBinder;II)Landroid/view/SurfaceControl$Transaction;
    .locals 2
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 1673
    if-eqz p1, :cond_1

    .line 1676
    if-lez p2, :cond_0

    if-lez p3, :cond_0

    .line 1680
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/SurfaceControl;->access$3300(JLandroid/os/IBinder;II)V

    .line 1681
    return-object p0

    .line 1677
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width and height must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1674
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)Landroid/view/SurfaceControl$Transaction;
    .locals 5
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "surface"    # Landroid/view/Surface;

    .line 1633
    if-eqz p1, :cond_1

    .line 1637
    if-eqz p2, :cond_0

    .line 1638
    iget-object v0, p2, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1639
    :try_start_0
    iget-wide v1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v3, p2, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v1, v2, p1, v3, v4}, Landroid/view/SurfaceControl;->access$3000(JLandroid/os/IBinder;J)V

    .line 1640
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1642
    :cond_0
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Landroid/view/SurfaceControl;->access$3000(JLandroid/os/IBinder;J)V

    .line 1644
    :goto_0
    return-object p0

    .line 1634
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEarlyWakeup()Landroid/view/SurfaceControl$Transaction;
    .locals 2

    .line 1699
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->access$3500(J)V

    .line 1700
    return-object p0
.end method

.method public setFinalCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;
    .locals 19
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "crop"    # Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1492
    move-object/from16 v2, p2

    invoke-static/range {p1 .. p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1493
    if-eqz v2, :cond_0

    .line 1494
    iget-wide v3, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v5, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v3 .. v10}, Landroid/view/SurfaceControl;->access$1800(JJIIII)V

    goto :goto_0

    .line 1497
    :cond_0
    iget-wide v11, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v13, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v11 .. v18}, Landroid/view/SurfaceControl;->access$1800(JJIIII)V

    .line 1500
    :goto_0
    return-object v0
.end method

.method public setGeometryAppliesWithResize(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .locals 4
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 1575
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1576
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/SurfaceControl;->access$2700(JJ)V

    .line 1577
    return-object p0
.end method

.method public setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .locals 4
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "z"    # I

    .line 1438
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1439
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->access$1200(JJI)V

    .line 1440
    return-object p0
.end method

.method public setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .locals 4
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "layerStack"    # I

    .line 1504
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1505
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->access$1900(JJI)V

    .line 1506
    return-object p0
.end method

.method public setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;
    .locals 8
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "dsdx"    # F
    .param p3, "dtdx"    # F
    .param p4, "dtdy"    # F
    .param p5, "dsdy"    # F

    .line 1465
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1466
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Landroid/view/SurfaceControl;->access$1600(JJFFFF)V

    .line 1468
    return-object p0
.end method

.method public setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;
    .locals 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "float9"    # [F

    .line 1472
    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1473
    const/4 v0, 0x0

    aget v3, p3, v0

    const/4 v0, 0x3

    aget v4, p3, v0

    const/4 v0, 0x1

    aget v5, p3, v0

    const/4 v0, 0x4

    aget v6, p3, v0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 1475
    const/4 v0, 0x2

    aget v0, p3, v0

    const/4 v1, 0x5

    aget v1, p3, v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1476
    return-object p0
.end method

.method public setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .locals 12
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "isOpaque"    # Z

    .line 1599
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1600
    if-eqz p2, :cond_0

    .line 1601
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v4, 0x2

    const/4 v5, 0x2

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->access$900(JJII)V

    goto :goto_0

    .line 1603
    :cond_0
    iget-wide v6, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v8, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-static/range {v6 .. v11}, Landroid/view/SurfaceControl;->access$900(JJII)V

    .line 1605
    :goto_0
    return-object p0
.end method

.method public setOverrideScalingMode(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .locals 4
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "overrideScalingMode"    # I

    .line 1551
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1552
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->access$2500(JJI)V

    .line 1554
    return-object p0
.end method

.method public setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;
    .locals 6
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 1425
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1426
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->access$1000(JJFF)V

    .line 1427
    return-object p0
.end method

.method public setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .locals 6
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "relativeTo"    # Landroid/view/SurfaceControl;
    .param p3, "z"    # I

    .line 1444
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1445
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 1446
    invoke-virtual {p2}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v4

    .line 1445
    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->access$1300(JJLandroid/os/IBinder;I)V

    .line 1447
    return-object p0
.end method

.method public setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .locals 12
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "isSecure"    # Z

    .line 1585
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1586
    if-eqz p2, :cond_0

    .line 1587
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/16 v4, 0x80

    const/16 v5, 0x80

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->access$900(JJII)V

    goto :goto_0

    .line 1589
    :cond_0
    iget-wide v6, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v8, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v10, 0x0

    const/16 v11, 0x80

    invoke-static/range {v6 .. v11}, Landroid/view/SurfaceControl;->access$900(JJII)V

    .line 1591
    :goto_0
    return-object p0
.end method

.method public setSize(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;
    .locals 8
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .line 1431
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1432
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    iget-wide v2, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v4, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move v6, p2

    move v7, p3

    invoke-static/range {v2 .. v7}, Landroid/view/SurfaceControl;->access$1100(JJII)V

    .line 1434
    return-object p0
.end method

.method public setTransparentRegionHint(Landroid/view/SurfaceControl;Landroid/graphics/Region;)Landroid/view/SurfaceControl$Transaction;
    .locals 4
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "transparentRegion"    # Landroid/graphics/Region;

    .line 1451
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1452
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->access$1400(JJLandroid/graphics/Region;)V

    .line 1454
    return-object p0
.end method

.method public setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;
    .locals 19
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "crop"    # Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1480
    move-object/from16 v2, p2

    invoke-static/range {p1 .. p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1481
    if-eqz v2, :cond_0

    .line 1482
    iget-wide v3, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v5, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v3 .. v10}, Landroid/view/SurfaceControl;->access$1700(JJIIII)V

    goto :goto_0

    .line 1485
    :cond_0
    iget-wide v11, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v13, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v11 .. v18}, Landroid/view/SurfaceControl;->access$1700(JJIIII)V

    .line 1488
    :goto_0
    return-object v0
.end method

.method public show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .locals 6
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 1413
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$800(Landroid/view/SurfaceControl;)V

    .line 1414
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->access$900(JJII)V

    .line 1415
    return-object p0
.end method
