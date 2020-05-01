.class Lcom/oneplus/util/OemSceneCallBlocker$3;
.super Ljava/lang/Object;
.source "OemSceneCallBlocker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/util/OemSceneCallBlocker;->popNotify(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 769
    iput-object p1, p0, Lcom/oneplus/util/OemSceneCallBlocker$3;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 772
    invoke-static {}, Lcom/oneplus/util/OemSceneCallBlocker;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemSceneCallBlocker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " view onFocusChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_0
    if-nez p2, :cond_1

    .line 774
    iget-object v0, p0, Lcom/oneplus/util/OemSceneCallBlocker$3;->val$pkgName:Ljava/lang/String;

    invoke-static {v0}, Lcom/oneplus/util/OemSceneCallBlocker;->access$100(Ljava/lang/String;)V

    .line 776
    :cond_1
    return-void
.end method
