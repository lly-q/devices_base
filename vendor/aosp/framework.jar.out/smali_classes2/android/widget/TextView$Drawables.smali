.class Landroid/widget/TextView$Drawables;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Drawables"
.end annotation


# static fields
.field static final BOTTOM:I = 0x3

.field static final DRAWABLE_LEFT:I = 0x1

.field static final DRAWABLE_NONE:I = -0x1

.field static final DRAWABLE_RIGHT:I = 0x0

.field static final LEFT:I = 0x0

.field static final RIGHT:I = 0x2

.field static final TOP:I = 0x1


# instance fields
.field final mCompoundRect:Landroid/graphics/Rect;

.field mDrawableEnd:Landroid/graphics/drawable/Drawable;

.field mDrawableError:Landroid/graphics/drawable/Drawable;

.field mDrawableHeightEnd:I

.field mDrawableHeightError:I

.field mDrawableHeightLeft:I

.field mDrawableHeightRight:I

.field mDrawableHeightStart:I

.field mDrawableHeightTemp:I

.field mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

.field mDrawablePadding:I

.field mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

.field mDrawableSaved:I

.field mDrawableSizeBottom:I

.field mDrawableSizeEnd:I

.field mDrawableSizeError:I

.field mDrawableSizeLeft:I

.field mDrawableSizeRight:I

.field mDrawableSizeStart:I

.field mDrawableSizeTemp:I

.field mDrawableSizeTop:I

.field mDrawableStart:Landroid/graphics/drawable/Drawable;

.field mDrawableTemp:Landroid/graphics/drawable/Drawable;

.field mDrawableWidthBottom:I

.field mDrawableWidthTop:I

.field mHasTint:Z

.field mHasTintMode:Z

.field mIsRtlCompatibilityMode:Z

.field mOverride:Z

.field final mShowing:[Landroid/graphics/drawable/Drawable;

.field mTintList:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 458
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 479
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    .line 482
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 483
    .local v0, "targetSdkVersion":I
    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_1

    .line 484
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Landroid/widget/TextView$Drawables;->mIsRtlCompatibilityMode:Z

    .line 485
    iput-boolean v1, p0, Landroid/widget/TextView$Drawables;->mOverride:Z

    .line 486
    return-void
.end method

.method private applyErrorDrawableIfNeeded(I)V
    .locals 4
    .param p1, "layoutDirection"    # I

    .line 583
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 585
    :pswitch_0
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    aput-object v3, v0, v2

    .line 586
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 587
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 588
    goto :goto_0

    .line 590
    :pswitch_1
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    aput-object v3, v0, v1

    .line 591
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 592
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 593
    nop

    .line 598
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 599
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 613
    iput v2, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    .line 615
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v1

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    .line 616
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    .line 617
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    .line 619
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    aput-object v2, v0, v1

    .line 620
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 621
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    goto :goto_1

    .line 601
    :cond_0
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    .line 603
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v2

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    .line 604
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    .line 605
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    .line 607
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v2

    .line 608
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 609
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 610
    nop

    .line 625
    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public hasMetadata()Z
    .locals 1

    .line 493
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/TextView$Drawables;->mHasTint:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public resolveWithLayoutDirection(I)Z
    .locals 7
    .param p1, "layoutDirection"    # I

    .line 504
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 505
    .local v0, "previousLeft":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    .line 508
    .local v2, "previousRight":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v1

    .line 509
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v3

    .line 511
    iget-boolean v4, p0, Landroid/widget/TextView$Drawables;->mIsRtlCompatibilityMode:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 513
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v1

    if-nez v4, :cond_0

    .line 514
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    aput-object v6, v4, v1

    .line 515
    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 516
    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 519
    :cond_0
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v3

    if-nez v4, :cond_3

    .line 520
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    aput-object v6, v4, v3

    .line 521
    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 522
    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    goto :goto_0

    .line 527
    :cond_1
    if-eq p1, v5, :cond_2

    .line 542
    iget-boolean v4, p0, Landroid/widget/TextView$Drawables;->mOverride:Z

    if-eqz v4, :cond_3

    .line 543
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    aput-object v6, v4, v1

    .line 544
    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 545
    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 547
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    aput-object v6, v4, v3

    .line 548
    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 549
    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    goto :goto_0

    .line 529
    :cond_2
    iget-boolean v4, p0, Landroid/widget/TextView$Drawables;->mOverride:Z

    if-eqz v4, :cond_3

    .line 530
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    aput-object v6, v4, v3

    .line 531
    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 532
    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 534
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    aput-object v6, v4, v1

    .line 535
    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 536
    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 555
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/TextView$Drawables;->applyErrorDrawableIfNeeded(I)V

    .line 557
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v1

    if-ne v4, v0, :cond_5

    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v4, v3

    if-eq v3, v2, :cond_4

    goto :goto_1

    :cond_4
    goto :goto_2

    :cond_5
    :goto_1
    move v1, v5

    :goto_2
    return v1
.end method

.method public setErrorDrawable(Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;)V
    .locals 3
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;
    .param p2, "tv"    # Landroid/widget/TextView;

    .line 562
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 565
    :cond_0
    iput-object p1, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    .line 567
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 568
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 569
    .local v0, "compoundRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v1

    .line 571
    .local v1, "state":[I
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 572
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 573
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 574
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    .line 575
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    .line 576
    .end local v0    # "compoundRect":Landroid/graphics/Rect;
    .end local v1    # "state":[I
    goto :goto_0

    .line 577
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    .line 579
    :goto_0
    return-void
.end method
