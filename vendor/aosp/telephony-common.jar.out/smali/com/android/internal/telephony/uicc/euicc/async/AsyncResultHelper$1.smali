.class Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultHelper$1;
.super Ljava/lang/Object;
.source "AsyncResultHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultHelper;->returnResult(Ljava/lang/Object;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Ljava/lang/Object;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultHelper$1;->val$callback:Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultHelper$1;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultHelper$1;->val$callback:Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultHelper$1;->val$result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;->onResult(Ljava/lang/Object;)V

    .line 45
    return-void
.end method
