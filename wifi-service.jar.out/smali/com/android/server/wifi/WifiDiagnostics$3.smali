.class Lcom/android/server/wifi/WifiDiagnostics$3;
.super Ljava/lang/Object;
.source "WifiDiagnostics.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiDiagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiDiagnostics;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiDiagnostics;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiDiagnostics;

    .line 764
    iput-object p1, p0, Lcom/android/server/wifi/WifiDiagnostics$3;->this$0:Lcom/android/server/wifi/WifiDiagnostics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 766
    const-string v0, "WifiDiags"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics$3;->this$0:Lcom/android/server/wifi/WifiDiagnostics;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiDiagnostics;->access$102(Lcom/android/server/wifi/WifiDiagnostics;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 768
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 771
    const-string v0, "WifiDiags"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics$3;->this$0:Lcom/android/server/wifi/WifiDiagnostics;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiDiagnostics;->access$102(Lcom/android/server/wifi/WifiDiagnostics;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 773
    return-void
.end method
