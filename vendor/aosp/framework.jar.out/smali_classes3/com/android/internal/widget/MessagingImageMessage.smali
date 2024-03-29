.class public Lcom/android/internal/widget/MessagingImageMessage;
.super Landroid/widget/ImageView;
.source "MessagingImageMessage.java"

# interfaces
.implements Lcom/android/internal/widget/MessagingMessage;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MessagingImageMessage"

.field private static sInstancePool:Landroid/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SimplePool<",
            "Lcom/android/internal/widget/MessagingImageMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActualHeight:I

.field private mActualWidth:I

.field private mAspectRatio:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private final mExtraSpacing:I

.field private mImageResolver:Lcom/android/internal/widget/ImageResolver;

.field private final mImageRounding:I

.field private mIsIsolated:Z

.field private final mIsolatedSize:I

.field private final mMaxImageHeight:I

.field private final mMinImageHeight:I

.field private final mPath:Landroid/graphics/Path;

.field private final mState:Lcom/android/internal/widget/MessagingMessageState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/android/internal/widget/MessagingImageMessage;->sInstancePool:Landroid/util/Pools$SimplePool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/MessagingImageMessage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/MessagingImageMessage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/MessagingImageMessage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    new-instance v0, Lcom/android/internal/widget/MessagingMessageState;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MessagingMessageState;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mState:Lcom/android/internal/widget/MessagingMessageState;

    .line 51
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050119

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mMinImageHeight:I

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050118

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mMaxImageHeight:I

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105011a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mImageRounding:I

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050117

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mExtraSpacing:I

    .line 87
    iget v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mMaxImageHeight:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingImageMessage;->setMaxHeight(I)V

    .line 88
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050115

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mIsolatedSize:I

    .line 89
    return-void
.end method

.method static createMessage(Lcom/android/internal/widget/MessagingLayout;Landroid/app/Notification$MessagingStyle$Message;Lcom/android/internal/widget/ImageResolver;)Lcom/android/internal/widget/MessagingMessage;
    .locals 5
    .param p0, "layout"    # Lcom/android/internal/widget/MessagingLayout;
    .param p1, "m"    # Landroid/app/Notification$MessagingStyle$Message;
    .param p2, "resolver"    # Lcom/android/internal/widget/ImageResolver;

    .line 125
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLayout;->getMessagingLinearLayout()Lcom/android/internal/widget/MessagingLinearLayout;

    move-result-object v0

    .line 126
    .local v0, "messagingLinearLayout":Lcom/android/internal/widget/MessagingLinearLayout;
    sget-object v1, Lcom/android/internal/widget/MessagingImageMessage;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v1}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingImageMessage;

    .line 127
    .local v1, "createdMessage":Lcom/android/internal/widget/MessagingImageMessage;
    if-nez v1, :cond_0

    .line 128
    nop

    .line 129
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 128
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x109009f

    const/4 v4, 0x0

    .line 129
    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/android/internal/widget/MessagingImageMessage;

    .line 133
    sget-object v2, Lcom/android/internal/widget/MessagingLayout;->MESSAGING_PROPERTY_ANIMATOR:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/MessagingImageMessage;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 135
    :cond_0
    invoke-direct {v1, p2}, Lcom/android/internal/widget/MessagingImageMessage;->setImageResolver(Lcom/android/internal/widget/ImageResolver;)V

    .line 136
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/MessagingImageMessage;->setMessage(Landroid/app/Notification$MessagingStyle$Message;)Z

    move-result v2

    .line 137
    .local v2, "created":Z
    if-nez v2, :cond_1

    .line 138
    invoke-virtual {v1}, Lcom/android/internal/widget/MessagingImageMessage;->recycle()V

    .line 139
    invoke-static {p0, p1}, Lcom/android/internal/widget/MessagingTextMessage;->createMessage(Lcom/android/internal/widget/MessagingLayout;Landroid/app/Notification$MessagingStyle$Message;)Lcom/android/internal/widget/MessagingMessage;

    move-result-object v3

    return-object v3

    .line 141
    :cond_1
    return-object v1
.end method

.method public static dropCache()V
    .locals 2

    .line 191
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/android/internal/widget/MessagingImageMessage;->sInstancePool:Landroid/util/Pools$SimplePool;

    .line 192
    return-void
.end method

.method private setImageResolver(Lcom/android/internal/widget/ImageResolver;)V
    .locals 0
    .param p1, "resolver"    # Lcom/android/internal/widget/ImageResolver;

    .line 145
    iput-object p1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mImageResolver:Lcom/android/internal/widget/ImageResolver;

    .line 146
    return-void
.end method


# virtual methods
.method public getActualHeight()I
    .locals 1

    .line 258
    iget v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mActualHeight:I

    return v0
.end method

.method public getActualWidth()I
    .locals 1

    .line 249
    iget v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mActualWidth:I

    return v0
.end method

.method public getConsumedLines()I
    .locals 1

    .line 240
    const/4 v0, 0x3

    return v0
.end method

.method public getExtraSpacing()I
    .locals 1

    .line 281
    iget v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mExtraSpacing:I

    return v0
.end method

.method public getMeasuredType()I
    .locals 6

    .line 196
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getMeasuredHeight()I

    move-result v0

    .line 198
    .local v0, "measuredHeight":I
    iget-boolean v1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mIsIsolated:Z

    if-eqz v1, :cond_0

    .line 199
    iget v1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mIsolatedSize:I

    .local v1, "minImageHeight":I
    goto :goto_0

    .line 201
    .end local v1    # "minImageHeight":I
    :cond_0
    iget v1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mMinImageHeight:I

    .line 203
    .restart local v1    # "minImageHeight":I
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_1

    iget-object v4, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 204
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    if-eq v0, v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    .line 205
    .local v4, "measuredTooSmall":Z
    :goto_1
    if-eqz v4, :cond_2

    .line 206
    const/4 v2, 0x2

    return v2

    .line 208
    :cond_2
    iget-boolean v5, p0, Lcom/android/internal/widget/MessagingImageMessage;->mIsIsolated:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    if-eq v0, v5, :cond_3

    .line 209
    return v3

    .line 211
    :cond_3
    return v2
.end method

.method public getRoundedRectPath()Landroid/graphics/Path;
    .locals 12

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "left":I
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getActualWidth()I

    move-result v1

    .line 163
    .local v1, "right":I
    const/4 v2, 0x0

    .line 164
    .local v2, "top":I
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getActualHeight()I

    move-result v3

    .line 165
    .local v3, "bottom":I
    iget-object v4, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 166
    sub-int v4, v1, v0

    .line 167
    .local v4, "width":I
    iget v5, p0, Lcom/android/internal/widget/MessagingImageMessage;->mImageRounding:I

    int-to-float v5, v5

    .line 168
    .local v5, "roundnessX":F
    iget v6, p0, Lcom/android/internal/widget/MessagingImageMessage;->mImageRounding:I

    int-to-float v6, v6

    .line 169
    .local v6, "roundnessY":F
    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 170
    sub-int v7, v3, v2

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 171
    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v0

    int-to-float v9, v2

    add-float/2addr v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 172
    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v0

    int-to-float v9, v2

    int-to-float v10, v0

    add-float/2addr v10, v5

    int-to-float v11, v2

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 173
    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v1

    sub-float/2addr v8, v5

    int-to-float v9, v2

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 174
    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v1

    int-to-float v9, v2

    int-to-float v10, v1

    int-to-float v11, v2

    add-float/2addr v11, v6

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 175
    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v1

    int-to-float v9, v3

    sub-float/2addr v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 176
    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v1

    int-to-float v9, v3

    int-to-float v10, v1

    sub-float/2addr v10, v5

    int-to-float v11, v3

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 177
    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v0

    add-float/2addr v8, v5

    int-to-float v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 178
    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v0

    int-to-float v9, v3

    int-to-float v10, v0

    int-to-float v11, v3

    sub-float/2addr v11, v6

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 179
    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 180
    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    return-object v7
.end method

.method public getState()Lcom/android/internal/widget/MessagingMessageState;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mState:Lcom/android/internal/widget/MessagingMessageState;

    return-object v0
.end method

.method public getStaticWidth()I
    .locals 2

    .line 262
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mIsIsolated:Z

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getWidth()I

    move-result v0

    return v0

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mAspectRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 150
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 151
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getRoundedRectPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 152
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getActualWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getActualHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/widget/MessagingImageMessage;->mAspectRatio:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    .line 153
    .local v0, "width":I
    int-to-float v1, v0

    iget v2, p0, Lcom/android/internal/widget/MessagingImageMessage;->mAspectRatio:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 154
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getActualWidth()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 155
    .local v2, "left":I
    iget-object v3, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    add-int v4, v2, v0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 156
    iget-object v3, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 157
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 158
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 232
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 234
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getStaticWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingImageMessage;->setActualWidth(I)V

    .line 235
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingImageMessage;->setActualHeight(I)V

    .line 236
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 223
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 224
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mIsIsolated:Z

    if-eqz v0, :cond_0

    .line 225
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 226
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 225
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/MessagingImageMessage;->setMeasuredDimension(II)V

    .line 228
    :cond_0
    return-void
.end method

.method public recycle()V
    .locals 1

    .line 184
    invoke-super {p0}, Lcom/android/internal/widget/MessagingMessage;->recycle()V

    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingImageMessage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 186
    iput-object v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 187
    sget-object v0, Lcom/android/internal/widget/MessagingImageMessage;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 188
    return-void
.end method

.method public setActualHeight(I)V
    .locals 0
    .param p1, "actualHeight"    # I

    .line 253
    iput p1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mActualHeight:I

    .line 254
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->invalidate()V

    .line 255
    return-void
.end method

.method public setActualWidth(I)V
    .locals 0
    .param p1, "actualWidth"    # I

    .line 244
    iput p1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mActualWidth:I

    .line 245
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->invalidate()V

    .line 246
    return-void
.end method

.method public setIsolated(Z)V
    .locals 2
    .param p1, "isolated"    # Z

    .line 269
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mIsIsolated:Z

    if-eq v0, p1, :cond_1

    .line 270
    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mIsIsolated:Z

    .line 272
    nop

    .line 273
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 274
    .local v0, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mExtraSpacing:I

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 275
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingImageMessage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    return-void
.end method

.method public setMaxDisplayedLines(I)V
    .locals 0
    .param p1, "lines"    # I

    .line 219
    return-void
.end method

.method public setMessage(Landroid/app/Notification$MessagingStyle$Message;)Z
    .locals 5
    .param p1, "message"    # Landroid/app/Notification$MessagingStyle$Message;

    .line 98
    invoke-super {p0, p1}, Lcom/android/internal/widget/MessagingMessage;->setMessage(Landroid/app/Notification$MessagingStyle$Message;)Z

    .line 101
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    .line 102
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/internal/widget/MessagingImageMessage;->mImageResolver:Lcom/android/internal/widget/ImageResolver;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/MessagingImageMessage;->mImageResolver:Lcom/android/internal/widget/ImageResolver;

    invoke-interface {v2, v1}, Lcom/android/internal/widget/ImageResolver;->loadImage(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "uri":Landroid/net/Uri;
    :goto_0
    move-object v1, v2

    .line 107
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    nop

    .line 106
    nop

    .line 108
    if-nez v1, :cond_1

    .line 109
    return v0

    .line 111
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 112
    .local v2, "intrinsicHeight":I
    if-nez v2, :cond_2

    .line 113
    const-string v3, "MessagingImageMessage"

    const-string v4, "Drawable with 0 intrinsic height was returned"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return v0

    .line 116
    :cond_2
    iput-object v1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 117
    iget-object v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    int-to-float v3, v2

    div-float/2addr v0, v3

    iput v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mAspectRatio:F

    .line 118
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MessagingImageMessage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingImageMessage;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 120
    const/4 v0, 0x1

    return v0

    .line 104
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "intrinsicHeight":I
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    return v0
.end method
