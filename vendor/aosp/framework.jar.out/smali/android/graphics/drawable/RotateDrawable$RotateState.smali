.class final Landroid/graphics/drawable/RotateDrawable$RotateState;
.super Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
.source "RotateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/RotateDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RotateState"
.end annotation


# instance fields
.field mCurrentDegrees:F

.field mFromDegrees:F

.field mPivotX:F

.field mPivotXRel:Z

.field mPivotY:F

.field mPivotYRel:Z

.field private mThemeAttrs:[I

.field mToDegrees:F


# direct methods
.method constructor <init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "orig"    # Landroid/graphics/drawable/RotateDrawable$RotateState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 339
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    .line 331
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    .line 332
    iput-boolean v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    .line 333
    iput v1, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    .line 334
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    .line 335
    const/high16 v1, 0x43b40000    # 360.0f

    iput v1, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    .line 336
    iput v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    .line 341
    if-eqz p1, :cond_0

    .line 342
    iget-boolean v0, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    .line 343
    iget v0, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    iput v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    .line 344
    iget-boolean v0, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    .line 345
    iget v0, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    iput v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    .line 346
    iget v0, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    iput v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    .line 347
    iget v0, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    iput v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    .line 348
    iget v0, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    iput v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    .line 350
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/graphics/drawable/RotateDrawable$RotateState;)[I
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/RotateDrawable$RotateState;

    .line 327
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mThemeAttrs:[I

    return-object v0
.end method

.method static synthetic access$002(Landroid/graphics/drawable/RotateDrawable$RotateState;[I)[I
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/RotateDrawable$RotateState;
    .param p1, "x1"    # [I

    .line 327
    iput-object p1, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mThemeAttrs:[I

    return-object p1
.end method


# virtual methods
.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 354
    new-instance v0, Landroid/graphics/drawable/RotateDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/RotateDrawable;-><init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;Landroid/graphics/drawable/RotateDrawable$1;)V

    return-object v0
.end method
