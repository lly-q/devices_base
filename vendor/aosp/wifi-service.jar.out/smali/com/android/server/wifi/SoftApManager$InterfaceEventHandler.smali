.class Lcom/android/server/wifi/SoftApManager$InterfaceEventHandler;
.super Landroid/net/wifi/IInterfaceEventCallback$Stub;
.source "SoftApManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SoftApManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InterfaceEventHandler"
.end annotation


# instance fields
.field private mSoftApStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)V
    .locals 0
    .param p1, "stateMachine"    # Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    .line 403
    invoke-direct {p0}, Landroid/net/wifi/IInterfaceEventCallback$Stub;-><init>()V

    .line 404
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$InterfaceEventHandler;->mSoftApStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    .line 405
    return-void
.end method


# virtual methods
.method public OnApInterfaceReady(Landroid/net/wifi/IApInterface;)V
    .locals 0
    .param p1, "networkInterface"    # Landroid/net/wifi/IApInterface;

    .line 415
    return-void
.end method

.method public OnApTorndownEvent(Landroid/net/wifi/IApInterface;)V
    .locals 0
    .param p1, "networkInterface"    # Landroid/net/wifi/IApInterface;

    .line 413
    return-void
.end method

.method public OnClientInterfaceReady(Landroid/net/wifi/IClientInterface;)V
    .locals 0
    .param p1, "networkInterface"    # Landroid/net/wifi/IClientInterface;

    .line 411
    return-void
.end method

.method public OnClientTorndownEvent(Landroid/net/wifi/IClientInterface;)V
    .locals 0
    .param p1, "networkInterface"    # Landroid/net/wifi/IClientInterface;

    .line 408
    return-void
.end method
