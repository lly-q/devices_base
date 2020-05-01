.class Landroid/widget/RemoteViews$ViewGroupActionRemove;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewGroupActionRemove"
.end annotation


# static fields
.field private static final REMOVE_ALL_VIEWS_ID:I = -0x2


# instance fields
.field private mViewIdToKeep:I

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews;I)V
    .locals 1
    .param p2, "viewId"    # I

    .line 1685
    const/4 v0, -0x2

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RemoteViews$ViewGroupActionRemove;-><init>(Landroid/widget/RemoteViews;II)V

    .line 1686
    return-void
.end method

.method constructor <init>(Landroid/widget/RemoteViews;II)V
    .locals 0
    .param p2, "viewId"    # I
    .param p3, "viewIdToKeep"    # I

    .line 1688
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1689
    iput p2, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->viewId:I

    .line 1690
    iput p3, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->mViewIdToKeep:I

    .line 1691
    return-void
.end method

.method constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 0
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 1693
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1694
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->viewId:I

    .line 1695
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->mViewIdToKeep:I

    .line 1696
    return-void
.end method

.method static synthetic access$1700(Landroid/widget/RemoteViews$ViewGroupActionRemove;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RemoteViews$ViewGroupActionRemove;

    .line 1674
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->mViewIdToKeep:I

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/RemoteViews$ViewGroupActionRemove;Landroid/view/ViewGroup;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/RemoteViews$ViewGroupActionRemove;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .line 1674
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$ViewGroupActionRemove;->removeAllViewsExceptIdToKeep(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private removeAllViewsExceptIdToKeep(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .line 1754
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1755
    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1756
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget v2, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->mViewIdToKeep:I

    if-eq v1, v2, :cond_0

    .line 1757
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1759
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1761
    :cond_1
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .line 1705
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1707
    .local v0, "target":Landroid/view/ViewGroup;
    if-nez v0, :cond_0

    .line 1708
    return-void

    .line 1711
    :cond_0
    iget v1, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->mViewIdToKeep:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 1712
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1713
    return-void

    .line 1716
    :cond_1
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$ViewGroupActionRemove;->removeAllViewsExceptIdToKeep(Landroid/view/ViewGroup;)V

    .line 1717
    return-void
.end method

.method public getActionTag()I
    .locals 1

    .line 1765
    const/4 v0, 0x7

    return v0
.end method

.method public initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViews$Action;
    .locals 3
    .param p1, "root"    # Landroid/widget/RemoteViews$ViewTree;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .line 1723
    invoke-virtual {p1}, Landroid/widget/RemoteViews$ViewTree;->createTree()V

    .line 1724
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->viewId:I

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v0

    .line 1726
    .local v0, "target":Landroid/widget/RemoteViews$ViewTree;
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/widget/RemoteViews$ViewTree;->access$1000(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1730
    :cond_0
    invoke-static {v0}, Landroid/widget/RemoteViews$ViewTree;->access$1000(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1733
    .local v1, "targetVg":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/widget/RemoteViews$ViewTree;->access$1602(Landroid/widget/RemoteViews$ViewTree;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1734
    new-instance v2, Landroid/widget/RemoteViews$ViewGroupActionRemove$1;

    invoke-direct {v2, p0, v1}, Landroid/widget/RemoteViews$ViewGroupActionRemove$1;-><init>(Landroid/widget/RemoteViews$ViewGroupActionRemove;Landroid/view/ViewGroup;)V

    return-object v2

    .line 1727
    .end local v1    # "targetVg":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    invoke-static {}, Landroid/widget/RemoteViews;->access$600()Landroid/widget/RemoteViews$Action;

    move-result-object v1

    return-object v1
.end method

.method public mergeBehavior()I
    .locals 1

    .line 1770
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1699
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1700
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->mViewIdToKeep:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1701
    return-void
.end method