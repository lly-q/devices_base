.class Lcom/android/server/wifi/WifiServiceImpl$7;
.super Ljava/lang/Object;
.source "WifiServiceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiServiceImpl;->registerSoftApCallback(Landroid/os/IBinder;Landroid/net/wifi/ISoftApCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;

.field final synthetic val$binder:Landroid/os/IBinder;

.field final synthetic val$callbackIdentifier:I


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .line 1457
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$7;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$7;->val$binder:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/server/wifi/WifiServiceImpl$7;->val$callbackIdentifier:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$binderDied$0(Lcom/android/server/wifi/WifiServiceImpl$7;I)V
    .locals 2
    .param p1, "callbackIdentifier"    # I

    .line 1462
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$7;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$1600(Lcom/android/server/wifi/WifiServiceImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1463
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 1460
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$7;->val$binder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1461
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$7;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$1900(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiServiceImpl$7;->val$callbackIdentifier:I

    new-instance v2, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$7$NBT3mvin3p-VLs3hCba2xn1JCcw;

    invoke-direct {v2, p0, v1}, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$7$NBT3mvin3p-VLs3hCba2xn1JCcw;-><init>(Lcom/android/server/wifi/WifiServiceImpl$7;I)V

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->post(Ljava/lang/Runnable;)Z

    .line 1464
    return-void
.end method
