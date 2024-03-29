.class Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;
.super Ljava/lang/Object;
.source "CalendarViewLegacyDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CalendarViewLegacyDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollStateRunnable"
.end annotation


# instance fields
.field private mNewState:I

.field private mView:Landroid/widget/AbsListView;

.field final synthetic this$0:Landroid/widget/CalendarViewLegacyDelegate;


# direct methods
.method private constructor <init>(Landroid/widget/CalendarViewLegacyDelegate;)V
    .locals 0

    .line 964
    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/CalendarViewLegacyDelegate;Landroid/widget/CalendarViewLegacyDelegate$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;
    .param p2, "x1"    # Landroid/widget/CalendarViewLegacyDelegate$1;

    .line 964
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;-><init>(Landroid/widget/CalendarViewLegacyDelegate;)V

    return-void
.end method


# virtual methods
.method public doScrollStateChange(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .line 977
    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    .line 978
    iput p2, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mNewState:I

    .line 979
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    iget-object v0, v0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v0, p0}, Landroid/widget/CalendarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 980
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    iget-object v0, v0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    const-wide/16 v1, 0x28

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/CalendarView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 981
    return-void
.end method

.method public run()V
    .locals 5

    .line 984
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mNewState:I

    invoke-static {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$1002(Landroid/widget/CalendarViewLegacyDelegate;I)I

    .line 986
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mNewState:I

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    .line 987
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->access$1100(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 988
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 989
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    .line 991
    return-void

    .line 993
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->access$1200(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 994
    .local v1, "dist":I
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->access$1200(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v2

    if-le v1, v2, :cond_2

    .line 995
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->access$1300(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v2

    const/16 v3, 0x1f4

    if-eqz v2, :cond_1

    .line 996
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {v2, v4, v3}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_0

    .line 999
    :cond_1
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v2, v1, v3}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 1003
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "dist":I
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mNewState:I

    invoke-static {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate;->access$1102(Landroid/widget/CalendarViewLegacyDelegate;I)I

    .line 1004
    return-void
.end method
