.class Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;
.super Lcom/android/internal/app/ResolverActivity$LoadIconTask;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadIconIntoViewTask"
.end annotation


# instance fields
.field private final mTargetView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivity;
    .param p2, "dri"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .param p3, "target"    # Landroid/widget/ImageView;

    .line 2212
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->this$0:Lcom/android/internal/app/ResolverActivity;

    .line 2213
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity$LoadIconTask;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    .line 2214
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->mTargetView:Landroid/widget/ImageView;

    .line 2215
    return-void
.end method


# virtual methods
.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 2219
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivity$LoadIconTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    .line 2220
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->mTargetView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2221
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 2209
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
