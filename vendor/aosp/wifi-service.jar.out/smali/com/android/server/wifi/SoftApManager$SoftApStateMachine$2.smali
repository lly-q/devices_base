.class Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$2;
.super Ljava/lang/Object;
.source "SoftApManager.java"

# interfaces
.implements Lcom/android/server/wifi/WifiNative$InterfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    .line 469
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$2;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroyed(Ljava/lang/String;)V
    .locals 0
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 471
    return-void
.end method

.method public onDown(Ljava/lang/String;)V
    .locals 0
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 477
    return-void
.end method

.method public onUp(Ljava/lang/String;)V
    .locals 0
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 474
    return-void
.end method
