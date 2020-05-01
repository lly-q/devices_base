.class public Lcom/android/server/wifi/ScanRequestProxy;
.super Ljava/lang/Object;
.source "ScanRequestProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/ScanRequestProxy$ScanRequestProxyScanListener;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field public static final SCAN_REQUEST_THROTTLE_INTERVAL_BG_APPS_MS:I = 0x1b7740
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SCAN_REQUEST_THROTTLE_MAX_IN_TIME_WINDOW_FG_APPS:I = 0x4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SCAN_REQUEST_THROTTLE_TIME_WINDOW_FG_APPS_MS:I = 0x1d4c0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WifiScanRequestProxy"

.field private static mDefaultScanWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private final mContext:Landroid/content/Context;

.field private mIsScanProcessingComplete:Z

.field private final mLastScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mLastScanTimestampForBgApps:J

.field private final mLastScanTimestampsForFgApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScanningForHiddenNetworksEnabled:Z

.field private mVerboseLoggingEnabled:Z

.field private final mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

.field private final mWifiInjector:Lcom/android/server/wifi/WifiInjector;

.field private final mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

.field private final mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

.field private mWifiScanner:Landroid/net/wifi/WifiScanner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/ScanRequestProxy;->mDefaultScanWhiteList:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/app/AppOpsManager;Landroid/app/ActivityManager;Lcom/android/server/wifi/WifiInjector;Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/util/WifiPermissionsUtil;Lcom/android/server/wifi/WifiMetrics;Lcom/android/server/wifi/Clock;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appOpsManager"    # Landroid/app/AppOpsManager;
    .param p3, "activityManager"    # Landroid/app/ActivityManager;
    .param p4, "wifiInjector"    # Lcom/android/server/wifi/WifiInjector;
    .param p5, "configManager"    # Lcom/android/server/wifi/WifiConfigManager;
    .param p6, "wifiPermissionUtil"    # Lcom/android/server/wifi/util/WifiPermissionsUtil;
    .param p7, "wifiMetrics"    # Lcom/android/server/wifi/WifiMetrics;
    .param p8, "clock"    # Lcom/android/server/wifi/Clock;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mVerboseLoggingEnabled:Z

    .line 92
    iput-boolean v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mScanningForHiddenNetworksEnabled:Z

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mIsScanProcessingComplete:Z

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mLastScanTimestampForBgApps:J

    .line 100
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mLastScanTimestampsForFgApps:Landroid/util/ArrayMap;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mLastScanResults:Ljava/util/List;

    .line 156
    iput-object p1, p0, Lcom/android/server/wifi/ScanRequestProxy;->mContext:Landroid/content/Context;

    .line 157
    iput-object p2, p0, Lcom/android/server/wifi/ScanRequestProxy;->mAppOps:Landroid/app/AppOpsManager;

    .line 158
    iput-object p3, p0, Lcom/android/server/wifi/ScanRequestProxy;->mActivityManager:Landroid/app/ActivityManager;

    .line 159
    iput-object p4, p0, Lcom/android/server/wifi/ScanRequestProxy;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    .line 160
    iput-object p5, p0, Lcom/android/server/wifi/ScanRequestProxy;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 161
    iput-object p6, p0, Lcom/android/server/wifi/ScanRequestProxy;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    .line 162
    iput-object p7, p0, Lcom/android/server/wifi/ScanRequestProxy;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 163
    iput-object p8, p0, Lcom/android/server/wifi/ScanRequestProxy;->mClock:Lcom/android/server/wifi/Clock;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wifi/ScanRequestProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x502001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/wifi/ScanRequestProxy;->mDefaultScanWhiteList:Ljava/util/ArrayList;

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/ScanRequestProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/ScanRequestProxy;

    .line 66
    iget-boolean v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mVerboseLoggingEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/ScanRequestProxy;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/ScanRequestProxy;
    .param p1, "x1"    # Z

    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/wifi/ScanRequestProxy;->sendScanResultBroadcastIfScanProcessingNotComplete(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wifi/ScanRequestProxy;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/ScanRequestProxy;

    .line 66
    iget-object v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mLastScanResults:Ljava/util/List;

    return-object v0
.end method

.method private getOrCreateScanRequestTimestampsForForegroundApp(ILjava/lang/String;)Ljava/util/LinkedList;
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 262
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 263
    .local v0, "uidAndPackageNamePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/wifi/ScanRequestProxy;->mLastScanTimestampsForFgApps:Landroid/util/ArrayMap;

    .line 264
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 265
    .local v1, "scanRequestTimestamps":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    if-nez v1, :cond_0

    .line 266
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object v1, v2

    .line 267
    iget-object v2, p0, Lcom/android/server/wifi/ScanRequestProxy;->mLastScanTimestampsForFgApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :cond_0
    return-object v1
.end method

.method private isRequestFromBackground(ILjava/lang/String;)Z
    .locals 4
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 312
    iget-object v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 315
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 319
    .local v0, "callingIdentity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/ScanRequestProxy;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v2, p2}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0x7d

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 322
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 319
    return v2

    .line 322
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private retrieveWifiScannerIfNecessary()Z
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getWifiScanner()Landroid/net/wifi/WifiScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private sendScanResultBroadcast(Z)V
    .locals 5
    .param p1, "scanSucceeded"    # Z

    .line 215
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 217
    .local v0, "callingIdentity":J
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 219
    const-string v3, "resultsUpdated"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 220
    iget-object v3, p0, Lcom/android/server/wifi/ScanRequestProxy;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    .end local v2    # "intent":Landroid/content/Intent;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 224
    nop

    .line 225
    return-void

    .line 223
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendScanResultBroadcastIfScanProcessingNotComplete(Z)V
    .locals 2
    .param p1, "scanSucceeded"    # Z

    .line 202
    iget-boolean v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mIsScanProcessingComplete:Z

    if-eqz v0, :cond_0

    .line 203
    const-string v0, "WifiScanRequestProxy"

    const-string v1, "No ongoing scan request. Don\'t send scan broadcast."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void

    .line 206
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/ScanRequestProxy;->sendScanResultBroadcast(Z)V

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mIsScanProcessingComplete:Z

    .line 208
    return-void
.end method

.method private sendScanResultFailureBroadcastToPackage(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 232
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 234
    .local v0, "callingIdentity":J
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 236
    const-string v3, "resultsUpdated"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 237
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    iget-object v3, p0, Lcom/android/server/wifi/ScanRequestProxy;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    .end local v2    # "intent":Landroid/content/Intent;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 242
    nop

    .line 243
    return-void

    .line 241
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private shouldScanRequestBeThrottledForApp(ILjava/lang/String;)Z
    .locals 5
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 332
    invoke-virtual {p0, p2}, Lcom/android/server/wifi/ScanRequestProxy;->isScanningFromWhiteList(Ljava/lang/String;)Z

    move-result v0

    .line 333
    .local v0, "isScanedFromWhiteList":Z
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/android/server/wifi/ScanRequestProxy;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMetrics;->incrementExternalAppOneshotScanRequestsCount()V

    .line 335
    const-string v1, "WifiScanRequestProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is in whitelist, no limit for it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v1, 0x0

    return v1

    .line 340
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/ScanRequestProxy;->isRequestFromBackground(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 341
    invoke-direct {p0}, Lcom/android/server/wifi/ScanRequestProxy;->shouldScanRequestBeThrottledForBackgroundApp()Z

    move-result v1

    .line 342
    .local v1, "isThrottled":Z
    if-eqz v1, :cond_4

    .line 343
    iget-boolean v2, p0, Lcom/android/server/wifi/ScanRequestProxy;->mVerboseLoggingEnabled:Z

    if-eqz v2, :cond_1

    .line 344
    const-string v2, "WifiScanRequestProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Background scan app request ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/ScanRequestProxy;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiMetrics;->incrementExternalBackgroundAppOneshotScanRequestsThrottledCount()V

    goto :goto_0

    .line 350
    .end local v1    # "isThrottled":Z
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/ScanRequestProxy;->shouldScanRequestBeThrottledForForegroundApp(ILjava/lang/String;)Z

    move-result v1

    .line 351
    .restart local v1    # "isThrottled":Z
    if-eqz v1, :cond_4

    .line 352
    iget-boolean v2, p0, Lcom/android/server/wifi/ScanRequestProxy;->mVerboseLoggingEnabled:Z

    if-eqz v2, :cond_3

    .line 353
    const-string v2, "WifiScanRequestProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Foreground scan app request ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/ScanRequestProxy;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiMetrics;->incrementExternalForegroundAppOneshotScanRequestsThrottledCount()V

    .line 359
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/ScanRequestProxy;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiMetrics;->incrementExternalAppOneshotScanRequestsCount()V

    .line 360
    return v1
.end method

.method private shouldScanRequestBeThrottledForBackgroundApp()Z
    .locals 8

    .line 297
    iget-wide v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mLastScanTimestampForBgApps:J

    .line 298
    .local v0, "lastScanMs":J
    iget-object v2, p0, Lcom/android/server/wifi/ScanRequestProxy;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v2}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v2

    .line 299
    .local v2, "elapsedRealtime":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    sub-long v4, v2, v0

    const-wide/32 v6, 0x1b7740

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 301
    const/4 v4, 0x1

    return v4

    .line 304
    :cond_0
    iput-wide v2, p0, Lcom/android/server/wifi/ScanRequestProxy;->mLastScanTimestampForBgApps:J

    .line 305
    const/4 v4, 0x0

    return v4
.end method

.method private shouldScanRequestBeThrottledForForegroundApp(ILjava/lang/String;)Z
    .locals 5
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 280
    nop

    .line 281
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/ScanRequestProxy;->getOrCreateScanRequestTimestampsForForegroundApp(ILjava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    .line 282
    .local v0, "scanRequestTimestamps":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/android/server/wifi/ScanRequestProxy;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v1

    .line 284
    .local v1, "currentTimeMillis":J
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wifi/ScanRequestProxy;->trimPastScanRequestTimesForForegroundApp(Ljava/util/List;J)V

    .line 285
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_0

    .line 286
    const/4 v3, 0x1

    return v3

    .line 289
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 290
    const/4 v3, 0x0

    return v3
.end method

.method private trimPastScanRequestTimesForForegroundApp(Ljava/util/List;J)V
    .locals 6
    .param p2, "currentTimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .line 247
    .local p1, "scanRequestTimestamps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 248
    .local v0, "timestampsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 250
    .local v1, "scanRequestTimeMillis":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, p2, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 252
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 257
    .end local v1    # "scanRequestTimeMillis":Ljava/lang/Long;
    goto :goto_0

    .line 258
    :cond_0
    return-void
.end method


# virtual methods
.method public clearScanRequestTimestampsForApp(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 435
    iget-boolean v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 436
    const-string v0, "WifiScanRequestProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing scan request timestamps for uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mLastScanTimestampsForFgApps:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    return-void
.end method

.method public clearScanResults()V
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mLastScanResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 424
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mLastScanTimestampForBgApps:J

    .line 425
    iget-object v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mLastScanTimestampsForFgApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 426
    return-void
.end method

.method public enableScanningForHiddenNetworks(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 181
    iget-boolean v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_1

    .line 182
    const-string v0, "WifiScanRequestProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scanning for hidden networks is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v2, "enabled"

    goto :goto_0

    :cond_0
    const-string v2, "disabled"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/wifi/ScanRequestProxy;->mScanningForHiddenNetworksEnabled:Z

    .line 185
    return-void
.end method

.method public enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .line 173
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mVerboseLoggingEnabled:Z

    .line 174
    return-void
.end method

.method public getScanResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mLastScanResults:Ljava/util/List;

    return-object v0
.end method

.method public isScanningFromWhiteList(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 450
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 454
    :cond_0
    sget-object v1, Lcom/android/server/wifi/ScanRequestProxy;->mDefaultScanWhiteList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/wifi/ScanRequestProxy;->mDefaultScanWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 455
    sget-object v1, Lcom/android/server/wifi/ScanRequestProxy;->mDefaultScanWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 456
    .local v2, "tmpPackageName":Ljava/lang/String;
    const-string v3, "WifiScanRequestProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the whitlist package ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 458
    const-string v0, "WifiScanRequestProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the scanning package is: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " which is in whitelist, ignore the limit"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/4 v0, 0x1

    return v0

    .line 461
    .end local v2    # "tmpPackageName":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 463
    :cond_2
    const-string v1, "WifiScanRequestProxy"

    const-string v2, "the whitelist is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_3
    return v0

    .line 451
    :cond_4
    :goto_1
    const-string v1, "WifiScanRequestProxy"

    const-string v2, "the packageName is null, isAutonaviScanning: false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    return v0
.end method

.method public startScan(ILjava/lang/String;)Z
    .locals 8
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 370
    invoke-direct {p0}, Lcom/android/server/wifi/ScanRequestProxy;->retrieveWifiScannerIfNecessary()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 371
    const-string v0, "WifiScanRequestProxy"

    const-string v2, "Failed to retrieve wifiscanner"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-direct {p0, p2}, Lcom/android/server/wifi/ScanRequestProxy;->sendScanResultFailureBroadcastToPackage(Ljava/lang/String;)V

    .line 373
    return v1

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    .line 376
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkNetworkSettingsPermission(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    .line 377
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkNetworkSetupWizardPermission(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    .line 379
    .local v0, "fromSettingsOrSetupWizard":Z
    :goto_1
    if-nez v0, :cond_3

    .line 380
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/ScanRequestProxy;->shouldScanRequestBeThrottledForApp(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 381
    const-string v2, "WifiScanRequestProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scan request from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " throttled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-direct {p0, p2}, Lcom/android/server/wifi/ScanRequestProxy;->sendScanResultFailureBroadcastToPackage(Ljava/lang/String;)V

    .line 383
    return v1

    .line 386
    :cond_3
    new-instance v3, Landroid/os/WorkSource;

    invoke-direct {v3, p1}, Landroid/os/WorkSource;-><init>(I)V

    .line 389
    .local v3, "workSource":Landroid/os/WorkSource;
    new-instance v4, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {v4}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    .line 391
    .local v4, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    if-eqz v0, :cond_4

    .line 392
    const/4 v5, 0x2

    iput v5, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    .line 395
    :cond_4
    const/4 v5, 0x7

    iput v5, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 396
    const/4 v5, 0x3

    iput v5, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 398
    iget-boolean v5, p0, Lcom/android/server/wifi/ScanRequestProxy;->mScanningForHiddenNetworksEnabled:Z

    if-eqz v5, :cond_5

    .line 400
    iget-object v5, p0, Lcom/android/server/wifi/ScanRequestProxy;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 401
    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConfigManager;->retrieveHiddenNetworkList()Ljava/util/List;

    move-result-object v5

    .line 402
    .local v5, "hiddenNetworkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;>;"
    nop

    .line 403
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    .line 402
    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    iput-object v6, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:[Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    .line 405
    .end local v5    # "hiddenNetworkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;>;"
    :cond_5
    iget-object v5, p0, Lcom/android/server/wifi/ScanRequestProxy;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    new-instance v6, Lcom/android/server/wifi/ScanRequestProxy$ScanRequestProxyScanListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/server/wifi/ScanRequestProxy$ScanRequestProxyScanListener;-><init>(Lcom/android/server/wifi/ScanRequestProxy;Lcom/android/server/wifi/ScanRequestProxy$1;)V

    invoke-virtual {v5, v4, v6, v3}, Landroid/net/wifi/WifiScanner;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V

    .line 406
    iput-boolean v1, p0, Lcom/android/server/wifi/ScanRequestProxy;->mIsScanProcessingComplete:Z

    .line 407
    return v2
.end method
