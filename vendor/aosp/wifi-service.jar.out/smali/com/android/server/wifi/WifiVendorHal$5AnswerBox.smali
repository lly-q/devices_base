.class Lcom/android/server/wifi/WifiVendorHal$5AnswerBox;
.super Ljava/lang/Object;
.source "WifiVendorHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiVendorHal;->readPacketFilter(Ljava/lang/String;)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnswerBox"
.end annotation


# instance fields
.field public data:[B

.field final synthetic this$0:Lcom/android/server/wifi/WifiVendorHal;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiVendorHal;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiVendorHal;

    .line 1821
    iput-object p1, p0, Lcom/android/server/wifi/WifiVendorHal$5AnswerBox;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1822
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$5AnswerBox;->data:[B

    return-void
.end method
