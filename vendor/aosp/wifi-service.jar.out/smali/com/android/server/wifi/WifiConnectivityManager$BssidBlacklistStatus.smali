.class public Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;
.super Ljava/lang/Object;
.source "WifiConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BssidBlacklistStatus"
.end annotation


# instance fields
.field public blacklistedTimeStamp:J

.field public counter:I

.field public counterLowSignal:I

.field public isBlacklisted:Z

.field public isBlacklistedLowSignal:Z

.field public scanResult:Landroid/net/wifi/ScanResult;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$BssidBlacklistStatus;->blacklistedTimeStamp:J

    return-void
.end method
