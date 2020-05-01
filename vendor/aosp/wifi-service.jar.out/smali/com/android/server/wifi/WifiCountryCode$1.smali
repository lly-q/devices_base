.class Lcom/android/server/wifi/WifiCountryCode$1;
.super Ljava/util/ArrayList;
.source "WifiCountryCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiCountryCode;->getCountryCodeProperty()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiCountryCode;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiCountryCode;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiCountryCode;

    .line 340
    iput-object p1, p0, Lcom/android/server/wifi/WifiCountryCode$1;->this$0:Lcom/android/server/wifi/WifiCountryCode;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 341
    const-string v0, "gsm.operator.iso-country"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiCountryCode$1;->add(Ljava/lang/Object;)Z

    .line 342
    const-string v0, "gsm.sim.operator.iso-country"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiCountryCode$1;->add(Ljava/lang/Object;)Z

    .line 343
    return-void
.end method
