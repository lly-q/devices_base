.class public Landroid/view/animation/LinearInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "LinearInterpolator.java"

# interfaces
.implements Lcom/android/internal/view/animation/NativeInterpolatorFactory;


# annotations
.annotation runtime Lcom/android/internal/view/animation/HasNativeInterpolator;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 35
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public createNativeInterpolator()J
    .locals 2

    .line 45
    invoke-static {}, Lcom/android/internal/view/animation/NativeInterpolatorFactoryHelper;->createLinearInterpolator()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInterpolation(F)F
    .locals 0
    .param p1, "input"    # F

    .line 39
    return p1
.end method
