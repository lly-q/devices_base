.class Lcom/oneplus/util/OemSceneCallBlocker$4;
.super Ljava/lang/Object;
.source "OemSceneCallBlocker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/util/OemSceneCallBlocker;->resolveAdditionalConfig(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cfgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 878
    iput-object p1, p0, Lcom/oneplus/util/OemSceneCallBlocker$4;->val$cfgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 880
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    invoke-static {}, Lcom/oneplus/util/OemSceneCallBlocker;->access$400()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/util/OemSceneCallBlocker$4;->val$cfgName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 881
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    .line 882
    .local v1, "jsonArray":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 883
    invoke-static {v1}, Lcom/oneplus/util/OemSceneCallBlocker;->access$500(Lorg/json/JSONArray;)V

    .line 885
    :cond_0
    return-void
.end method
