.class Lcom/android/server/wifi/WifiVendorHal$6AnswerBox;
.super Ljava/lang/Object;
.source "WifiVendorHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiVendorHal;->getRingBufferStatus()[Lcom/android/server/wifi/WifiNative$RingBufferStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnswerBox"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiVendorHal;

.field public value:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiVendorHal;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiVendorHal;

    .line 2063
    iput-object p1, p0, Lcom/android/server/wifi/WifiVendorHal$6AnswerBox;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2064
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$6AnswerBox;->value:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    return-void
.end method
