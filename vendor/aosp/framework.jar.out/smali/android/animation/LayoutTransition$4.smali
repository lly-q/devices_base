.class Landroid/animation/LayoutTransition$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LayoutTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/LayoutTransition;->runAppearingTransition(Landroid/view/ViewGroup;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/animation/LayoutTransition;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/animation/LayoutTransition;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Landroid/animation/LayoutTransition;

    .line 1176
    iput-object p1, p0, Landroid/animation/LayoutTransition$4;->this$0:Landroid/animation/LayoutTransition;

    iput-object p2, p0, Landroid/animation/LayoutTransition$4;->val$child:Landroid/view/View;

    iput-object p3, p0, Landroid/animation/LayoutTransition$4;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7
    .param p1, "anim"    # Landroid/animation/Animator;

    .line 1179
    iget-object v0, p0, Landroid/animation/LayoutTransition$4;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v0}, Landroid/animation/LayoutTransition;->access$1800(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v1, p0, Landroid/animation/LayoutTransition$4;->val$child:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    iget-object v0, p0, Landroid/animation/LayoutTransition$4;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v0}, Landroid/animation/LayoutTransition;->access$1600(Landroid/animation/LayoutTransition;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1181
    iget-object v0, p0, Landroid/animation/LayoutTransition$4;->this$0:Landroid/animation/LayoutTransition;

    .line 1182
    invoke-static {v0}, Landroid/animation/LayoutTransition;->access$1700(Landroid/animation/LayoutTransition;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1183
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/LayoutTransition$TransitionListener;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/LayoutTransition$TransitionListener;

    .line 1184
    .local v2, "listener":Landroid/animation/LayoutTransition$TransitionListener;
    iget-object v3, p0, Landroid/animation/LayoutTransition$4;->this$0:Landroid/animation/LayoutTransition;

    iget-object v4, p0, Landroid/animation/LayoutTransition$4;->val$parent:Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/animation/LayoutTransition$4;->val$child:Landroid/view/View;

    const/4 v6, 0x2

    invoke-interface {v2, v3, v4, v5, v6}, Landroid/animation/LayoutTransition$TransitionListener;->endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 1185
    .end local v2    # "listener":Landroid/animation/LayoutTransition$TransitionListener;
    goto :goto_0

    .line 1187
    .end local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/LayoutTransition$TransitionListener;>;"
    :cond_0
    return-void
.end method
