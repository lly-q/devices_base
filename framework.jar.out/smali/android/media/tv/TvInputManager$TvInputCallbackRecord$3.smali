.class Landroid/media/tv/TvInputManager$TvInputCallbackRecord$3;
.super Ljava/lang/Object;
.source "TvInputManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->postInputUpdated(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

.field final synthetic val$inputId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputManager$TvInputCallbackRecord;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    .line 824
    iput-object p1, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$3;->this$0:Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    iput-object p2, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$3;->val$inputId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 827
    iget-object v0, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$3;->this$0:Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->access$200(Landroid/media/tv/TvInputManager$TvInputCallbackRecord;)Landroid/media/tv/TvInputManager$TvInputCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$3;->val$inputId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager$TvInputCallback;->onInputUpdated(Ljava/lang/String;)V

    .line 828
    return-void
.end method
