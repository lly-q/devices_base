.class public Lcom/oneplus/server/ColorManager$ColorDisable;
.super Ljava/lang/Object;
.source "ColorManager.java"

# interfaces
.implements Lcom/oneplus/oimc/IOPFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/ColorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ColorDisable"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ColorDisable"


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/oneplus/server/ColorManager;


# direct methods
.method public constructor <init>(Lcom/oneplus/server/ColorManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/server/ColorManager;
    .param p2, "context"    # Landroid/content/Context;

    .line 223
    iput-object p1, p0, Lcom/oneplus/server/ColorManager$ColorDisable;->this$0:Lcom/oneplus/server/ColorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p2, p0, Lcom/oneplus/server/ColorManager$ColorDisable;->mContext:Landroid/content/Context;

    .line 225
    return-void
.end method


# virtual methods
.method public config(Ljava/lang/Object;)I
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 252
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 253
    .local v0, "string":Ljava/lang/String;
    const-string v1, "ColorDisable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ColorDisable config...string = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v1, 0x0

    return v1
.end method

.method public start(Ljava/lang/Object;)I
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 230
    const-string v0, "ColorDisable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ColorDisable start... mCurrentActivated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/server/ColorManager$ColorDisable;->this$0:Lcom/oneplus/server/ColorManager;

    iget v2, v2, Lcom/oneplus/server/ColorManager;->mCurrentActivated:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mCBActivated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/server/ColorManager$ColorDisable;->this$0:Lcom/oneplus/server/ColorManager;

    iget-boolean v2, v2, Lcom/oneplus/server/ColorManager;->mCBActivated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mGCActiviated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/server/ColorManager$ColorDisable;->this$0:Lcom/oneplus/server/ColorManager;

    iget-boolean v2, v2, Lcom/oneplus/server/ColorManager;->mGCActiviated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/oneplus/server/ColorManager$ColorDisable;->this$0:Lcom/oneplus/server/ColorManager;

    iget-boolean v0, v0, Lcom/oneplus/server/ColorManager;->mCBActivated:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/server/ColorManager$ColorDisable;->this$0:Lcom/oneplus/server/ColorManager;

    iget-boolean v0, v0, Lcom/oneplus/server/ColorManager;->mGCActiviated:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/server/ColorManager$ColorDisable;->this$0:Lcom/oneplus/server/ColorManager;

    iget v0, v0, Lcom/oneplus/server/ColorManager;->mCurrentActivated:I

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/oneplus/server/ColorManager$ColorDisable;->this$0:Lcom/oneplus/server/ColorManager;

    invoke-static {v0}, Lcom/oneplus/server/ColorManager;->access$000(Lcom/oneplus/server/ColorManager;)Lcom/oneplus/display/ColorBalanceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/oneplus/server/ColorManager$ColorDisable;->this$0:Lcom/oneplus/server/ColorManager;

    invoke-static {v0}, Lcom/oneplus/server/ColorManager;->access$000(Lcom/oneplus/server/ColorManager;)Lcom/oneplus/display/ColorBalanceManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/oneplus/display/ColorBalanceManager;->DisableColor(I)V

    .line 235
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public stop(Ljava/lang/Object;)I
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 241
    const-string v0, "ColorDisable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ColorDisable stop... mGCActiviated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/server/ColorManager$ColorDisable;->this$0:Lcom/oneplus/server/ColorManager;

    iget-boolean v2, v2, Lcom/oneplus/server/ColorManager;->mGCActiviated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mCurrentActivated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/server/ColorManager$ColorDisable;->this$0:Lcom/oneplus/server/ColorManager;

    iget v2, v2, Lcom/oneplus/server/ColorManager;->mCurrentActivated:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mCBActivated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/server/ColorManager$ColorDisable;->this$0:Lcom/oneplus/server/ColorManager;

    iget-boolean v2, v2, Lcom/oneplus/server/ColorManager;->mCBActivated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/oneplus/server/ColorManager$ColorDisable;->this$0:Lcom/oneplus/server/ColorManager;

    iget-boolean v0, v0, Lcom/oneplus/server/ColorManager;->mCBActivated:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/server/ColorManager$ColorDisable;->this$0:Lcom/oneplus/server/ColorManager;

    iget-boolean v0, v0, Lcom/oneplus/server/ColorManager;->mGCActiviated:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/server/ColorManager$ColorDisable;->this$0:Lcom/oneplus/server/ColorManager;

    iget v0, v0, Lcom/oneplus/server/ColorManager;->mCurrentActivated:I

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/oneplus/server/ColorManager$ColorDisable;->this$0:Lcom/oneplus/server/ColorManager;

    invoke-static {v0}, Lcom/oneplus/server/ColorManager;->access$000(Lcom/oneplus/server/ColorManager;)Lcom/oneplus/display/ColorBalanceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/oneplus/server/ColorManager$ColorDisable;->this$0:Lcom/oneplus/server/ColorManager;

    invoke-static {v0}, Lcom/oneplus/server/ColorManager;->access$000(Lcom/oneplus/server/ColorManager;)Lcom/oneplus/display/ColorBalanceManager;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oneplus/display/ColorBalanceManager;->DisableColor(I)V

    .line 246
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
