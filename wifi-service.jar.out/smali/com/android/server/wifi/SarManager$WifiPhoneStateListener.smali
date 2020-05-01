.class Lcom/android/server/wifi/SarManager$WifiPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "SarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/SarManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SarManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 176
    iput-object p1, p0, Lcom/android/server/wifi/SarManager$WifiPhoneStateListener;->this$0:Lcom/android/server/wifi/SarManager;

    .line 177
    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Landroid/os/Looper;)V

    .line 178
    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .line 182
    const-string v0, "WifiSarManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received Phone State Change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/android/server/wifi/SarManager$WifiPhoneStateListener;->this$0:Lcom/android/server/wifi/SarManager;

    invoke-static {v0}, Lcom/android/server/wifi/SarManager;->access$000(Lcom/android/server/wifi/SarManager;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SarManager$WifiPhoneStateListener;->this$0:Lcom/android/server/wifi/SarManager;

    invoke-static {v0, p1}, Lcom/android/server/wifi/SarManager;->access$100(Lcom/android/server/wifi/SarManager;I)V

    .line 188
    return-void
.end method
