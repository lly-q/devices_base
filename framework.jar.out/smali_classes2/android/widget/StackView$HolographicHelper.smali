.class Landroid/widget/StackView$HolographicHelper;
.super Ljava/lang/Object;
.source "StackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/StackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HolographicHelper"
.end annotation


# static fields
.field private static final CLICK_FEEDBACK:I = 0x1

.field private static final RES_OUT:I


# instance fields
.field private final mBlurPaint:Landroid/graphics/Paint;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private mDensity:F

.field private final mErasePaint:Landroid/graphics/Paint;

.field private final mHolographicPaint:Landroid/graphics/Paint;

.field private final mIdentityMatrix:Landroid/graphics/Matrix;

.field private mLargeBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private final mMaskCanvas:Landroid/graphics/Canvas;

.field private mSmallBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private final mTmpXY:[I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 1391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1378
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$HolographicHelper;->mHolographicPaint:Landroid/graphics/Paint;

    .line 1379
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$HolographicHelper;->mErasePaint:Landroid/graphics/Paint;

    .line 1380
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$HolographicHelper;->mBlurPaint:Landroid/graphics/Paint;

    .line 1386
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$HolographicHelper;->mCanvas:Landroid/graphics/Canvas;

    .line 1387
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$HolographicHelper;->mMaskCanvas:Landroid/graphics/Canvas;

    .line 1388
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/StackView$HolographicHelper;->mTmpXY:[I

    .line 1389
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$HolographicHelper;->mIdentityMatrix:Landroid/graphics/Matrix;

    .line 1392
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/widget/StackView$HolographicHelper;->mDensity:F

    .line 1394
    iget-object v0, p0, Landroid/widget/StackView$HolographicHelper;->mHolographicPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1395
    iget-object v0, p0, Landroid/widget/StackView$HolographicHelper;->mHolographicPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/16 v3, 0x1e

    invoke-static {v2, v3}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 1396
    iget-object v0, p0, Landroid/widget/StackView$HolographicHelper;->mErasePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1397
    iget-object v0, p0, Landroid/widget/StackView$HolographicHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1399
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    iget v1, p0, Landroid/widget/StackView$HolographicHelper;->mDensity:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v1

    sget-object v1, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v2, v1}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Landroid/widget/StackView$HolographicHelper;->mSmallBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 1400
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    iget v1, p0, Landroid/widget/StackView$HolographicHelper;->mDensity:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v1

    sget-object v1, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v2, v1}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Landroid/widget/StackView$HolographicHelper;->mLargeBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 1401
    return-void
.end method


# virtual methods
.method createClickOutline(Landroid/view/View;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "color"    # I

    .line 1404
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/StackView$HolographicHelper;->createOutline(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method createOutline(Landroid/view/View;II)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "type"    # I
    .param p3, "color"    # I

    .line 1412
    iget-object v0, p0, Landroid/widget/StackView$HolographicHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1413
    if-nez p2, :cond_0

    .line 1414
    iget-object v0, p0, Landroid/widget/StackView$HolographicHelper;->mBlurPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/StackView$HolographicHelper;->mSmallBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    .line 1415
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1416
    iget-object v0, p0, Landroid/widget/StackView$HolographicHelper;->mBlurPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/StackView$HolographicHelper;->mLargeBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 1419
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 1423
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1424
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1423
    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1425
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Landroid/widget/StackView$HolographicHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1427
    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    move-result v2

    .line 1428
    .local v2, "rotationX":F
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v3

    .line 1429
    .local v3, "rotation":F
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v4

    .line 1430
    .local v4, "translationY":F
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v5

    .line 1431
    .local v5, "translationX":F
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/view/View;->setRotationX(F)V

    .line 1432
    invoke-virtual {p1, v6}, Landroid/view/View;->setRotation(F)V

    .line 1433
    invoke-virtual {p1, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 1434
    invoke-virtual {p1, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 1435
    iget-object v6, p0, Landroid/widget/StackView$HolographicHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v6}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1436
    invoke-virtual {p1, v2}, Landroid/view/View;->setRotationX(F)V

    .line 1437
    invoke-virtual {p1, v3}, Landroid/view/View;->setRotation(F)V

    .line 1438
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 1439
    invoke-virtual {p1, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 1441
    iget-object v6, p0, Landroid/widget/StackView$HolographicHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v6, v0}, Landroid/widget/StackView$HolographicHelper;->drawOutline(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 1442
    iget-object v6, p0, Landroid/widget/StackView$HolographicHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1443
    return-object v0

    .line 1420
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "rotationX":F
    .end local v3    # "rotation":F
    .end local v4    # "translationY":F
    .end local v5    # "translationX":F
    :cond_3
    :goto_1
    return-object v1
.end method

.method createResOutline(Landroid/view/View;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "color"    # I

    .line 1408
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/StackView$HolographicHelper;->createOutline(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method drawOutline(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "dest"    # Landroid/graphics/Canvas;
    .param p2, "src"    # Landroid/graphics/Bitmap;

    .line 1447
    iget-object v0, p0, Landroid/widget/StackView$HolographicHelper;->mTmpXY:[I

    .line 1448
    .local v0, "xy":[I
    iget-object v1, p0, Landroid/widget/StackView$HolographicHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1449
    .local v1, "mask":Landroid/graphics/Bitmap;
    iget-object v2, p0, Landroid/widget/StackView$HolographicHelper;->mMaskCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1450
    iget-object v2, p0, Landroid/widget/StackView$HolographicHelper;->mMaskCanvas:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    aget v4, v0, v3

    neg-int v4, v4

    int-to-float v4, v4

    const/4 v5, 0x1

    aget v6, v0, v5

    neg-int v6, v6

    int-to-float v6, v6

    iget-object v7, p0, Landroid/widget/StackView$HolographicHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p2, v4, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1451
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1452
    iget-object v2, p0, Landroid/widget/StackView$HolographicHelper;->mIdentityMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1453
    aget v2, v0, v3

    int-to-float v2, v2

    aget v3, v0, v5

    int-to-float v3, v3

    iget-object v4, p0, Landroid/widget/StackView$HolographicHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1454
    iget-object v2, p0, Landroid/widget/StackView$HolographicHelper;->mMaskCanvas:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1455
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1456
    return-void
.end method
