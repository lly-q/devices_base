.class Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;
.super Ljava/lang/Object;
.source "CameraCaptureSessionImpl.java"

# interfaces
.implements Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SequenceDrainListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;


# direct methods
.method private constructor <init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)V
    .locals 0

    .line 881
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;
    .param p2, "x1"    # Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;

    .line 881
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)V

    return-void
.end method


# virtual methods
.method public onDrained()V
    .locals 2

    .line 899
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$600(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 903
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$900(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 904
    return-void

    .line 907
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->access$800(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/utils/TaskSingleDrainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->beginDrain()V

    .line 908
    return-void
.end method
