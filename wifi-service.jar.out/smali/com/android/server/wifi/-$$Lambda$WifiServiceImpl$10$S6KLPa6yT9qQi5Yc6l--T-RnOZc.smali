.class public final synthetic Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$10$S6KLPa6yT9qQi5Yc6l--T-RnOZc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/WifiServiceImpl$10;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/WifiServiceImpl$10;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$10$S6KLPa6yT9qQi5Yc6l--T-RnOZc;->f$0:Lcom/android/server/wifi/WifiServiceImpl$10;

    iput-object p2, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$10$S6KLPa6yT9qQi5Yc6l--T-RnOZc;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$10$S6KLPa6yT9qQi5Yc6l--T-RnOZc;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$10$S6KLPa6yT9qQi5Yc6l--T-RnOZc;->f$0:Lcom/android/server/wifi/WifiServiceImpl$10;

    iget-object v1, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$10$S6KLPa6yT9qQi5Yc6l--T-RnOZc;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$10$S6KLPa6yT9qQi5Yc6l--T-RnOZc;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiServiceImpl$10;->lambda$onReceive$0(Lcom/android/server/wifi/WifiServiceImpl$10;Ljava/lang/String;I)V

    return-void
.end method
