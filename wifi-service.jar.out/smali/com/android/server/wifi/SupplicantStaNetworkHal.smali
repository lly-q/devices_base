.class public Lcom/android/server/wifi/SupplicantStaNetworkHal;
.super Ljava/lang/Object;
.source "SupplicantStaNetworkHal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final GSM_AUTH_RESPONSE_PARAMS_PATTERN:Ljava/util/regex/Pattern;

.field public static final ID_STRING_KEY_CONFIG_KEY:Ljava/lang/String; = "configKey"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final ID_STRING_KEY_CREATOR_UID:Ljava/lang/String; = "creatorUid"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final ID_STRING_KEY_FQDN:Ljava/lang/String; = "fqdn"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SupplicantStaNetworkHal"

.field private static final UMTS_AUTH_RESPONSE_PARAMS_PATTERN:Ljava/util/regex/Pattern;

.field private static final UMTS_AUTS_RESPONSE_PARAMS_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mAuthAlgMask:I

.field private mBssid:[B

.field private mEapAltSubjectMatch:Ljava/lang/String;

.field private mEapAnonymousIdentity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private mEapCACert:Ljava/lang/String;

.field private mEapCAPath:Ljava/lang/String;

.field private mEapClientCert:Ljava/lang/String;

.field private mEapDomainSuffixMatch:Ljava/lang/String;

.field private mEapEngine:Z

.field private mEapEngineID:Ljava/lang/String;

.field private mEapIdentity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private mEapMethod:I

.field private mEapPassword:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private mEapPhase2Method:I

.field private mEapPrivateKeyId:Ljava/lang/String;

.field private mEapSubjectMatch:Ljava/lang/String;

.field private mGroupCipherMask:I

.field private mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

.field private mISupplicantStaNetworkCallback:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;

.field private mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

.field private mIdStr:Ljava/lang/String;

.field private final mIfaceName:Ljava/lang/String;

.field private mKeyMgmtMask:I

.field private final mLock:Ljava/lang/Object;

.field private mNetworkId:I

.field private mPairwiseCipherMask:I

.field private mProtoMask:I

.field private mPsk:[B

.field private mPskPassphrase:Ljava/lang/String;

.field private mRequirePmf:Z

.field private mScanSsid:Z

.field private mSsid:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemSupportsFastBssTransition:Z

.field private mVerboseLoggingEnabled:Z

.field private mWapiCertSel:Ljava/lang/String;

.field private mWapiCertSelMode:I

.field private mWapiPsk:Ljava/lang/String;

.field private mWapiPskType:I

.field private mWepKey:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private mWepTxKeyIdx:I

.field private final mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    const-string v0, ":([0-9a-fA-F]+):([0-9a-fA-F]+)"

    .line 80
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->GSM_AUTH_RESPONSE_PARAMS_PATTERN:Ljava/util/regex/Pattern;

    .line 85
    const-string v0, "^:([0-9a-fA-F]+):([0-9a-fA-F]+):([0-9a-fA-F]+)$"

    .line 86
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->UMTS_AUTH_RESPONSE_PARAMS_PATTERN:Ljava/util/regex/Pattern;

    .line 91
    const-string v0, "^:([0-9a-fA-F]+)$"

    .line 92
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->UMTS_AUTS_RESPONSE_PARAMS_PATTERN:Ljava/util/regex/Pattern;

    .line 91
    return-void
.end method

.method constructor <init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;Ljava/lang/String;Landroid/content/Context;Lcom/android/server/wifi/WifiMonitor;)V
    .locals 2
    .param p1, "iSupplicantStaNetwork"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;
    .param p2, "iSupplicantVendorStaNetwork"    # Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;
    .param p3, "ifaceName"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "monitor"    # Lcom/android/server/wifi/WifiMonitor;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mVerboseLoggingEnabled:Z

    .line 103
    iput-boolean v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mSystemSupportsFastBssTransition:Z

    .line 148
    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    .line 150
    iput-object p2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    .line 152
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mIfaceName:Ljava/lang/String;

    .line 153
    iput-object p5, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    .line 154
    nop

    .line 155
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mSystemSupportsFastBssTransition:Z

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/SupplicantStaNetworkHal;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStaNetworkHal;

    .line 66
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/SupplicantStaNetworkHal;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStaNetworkHal;
    .param p1, "x1"    # Ljava/lang/String;

    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->logCallback(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wifi/SupplicantStaNetworkHal;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStaNetworkHal;

    .line 66
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mIfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/SupplicantStaNetworkHal;)Lcom/android/server/wifi/WifiMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStaNetworkHal;

    .line 66
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    return-object v0
.end method

.method private addFastTransitionFlags(Ljava/util/BitSet;)Ljava/util/BitSet;
    .locals 3
    .param p1, "keyManagementFlags"    # Ljava/util/BitSet;

    .line 3280
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3281
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mSystemSupportsFastBssTransition:Z

    if-nez v1, :cond_0

    .line 3282
    monitor-exit v0

    return-object p1

    .line 3284
    :cond_0
    invoke-virtual {p1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    .line 3285
    .local v1, "modifiedFlags":Ljava/util/BitSet;
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3286
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 3288
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3289
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 3291
    :cond_2
    monitor-exit v0

    return-object v1

    .line 3292
    .end local v1    # "modifiedFlags":Ljava/util/BitSet;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    .locals 4
    .param p1, "methodStr"    # Ljava/lang/String;

    .line 3238
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3239
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    if-nez v1, :cond_0

    .line 3240
    const-string v1, "SupplicantStaNetworkHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ISupplicantStaNetwork is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3241
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 3243
    :cond_0
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 3244
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z
    .locals 4
    .param p1, "methodStr"    # Ljava/lang/String;

    .line 3251
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3252
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    if-nez v1, :cond_0

    .line 3253
    const-string v1, "SupplicantStaNetworkHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ISupplicantVendorStaNetwork is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3254
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 3256
    :cond_0
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 3257
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    .locals 4
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "methodStr"    # Ljava/lang/String;

    .line 3192
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3193
    :try_start_0
    iget v1, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v1, :cond_0

    .line 3194
    const-string v1, "SupplicantStaNetworkHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISupplicantStaNetwork."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3195
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 3197
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_1

    .line 3198
    const-string v1, "SupplicantStaNetworkHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISupplicantStaNetwork."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " succeeded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3200
    :cond_1
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 3202
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    .locals 4
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "methodStr"    # Ljava/lang/String;

    .line 3210
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3211
    :try_start_0
    iget v1, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v1, :cond_0

    .line 3212
    const-string v1, "SupplicantStaNetworkHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISupplicantVendorStaNetwork."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3213
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 3215
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_1

    .line 3216
    const-string v1, "SupplicantStaNetworkHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISupplicantVendorStaNetwork."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " succeeded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3218
    :cond_1
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 3220
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static createNetworkExtra(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3313
    .local p0, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 3320
    .local v0, "encoded":Ljava/lang/String;
    nop

    .line 3319
    nop

    .line 3321
    return-object v0

    .line 3317
    .end local v0    # "encoded":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3318
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "SupplicantStaNetworkHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to serialize networkExtra: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3319
    return-object v0

    .line 3314
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 3315
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "SupplicantStaNetworkHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to serialize networkExtra: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3316
    return-object v0
.end method

.method private disable()Z
    .locals 5

    .line 2863
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2864
    :try_start_0
    const-string v1, "disable"

    .line 2865
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "disable"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2867
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->disable()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2868
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "disable"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2869
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 2870
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "disable"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2871
    monitor-exit v0

    return v3

    .line 2873
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private enable(Z)Z
    .locals 5
    .param p1, "noConnect"    # Z

    .line 2849
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2850
    :try_start_0
    const-string v1, "enable"

    .line 2851
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "enable"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2853
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->enable(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2854
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "enable"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2855
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 2856
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "enable"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2857
    monitor-exit v0

    return v3

    .line 2859
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getAuthAlg()Z
    .locals 6

    .line 2309
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2310
    :try_start_0
    const-string v1, "getAuthAlg"

    .line 2311
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getAuthAlg"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2313
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2314
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$JmBxY3USQmDLXDNAXhy8yopIWEQ;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$JmBxY3USQmDLXDNAXhy8yopIWEQ;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getAuthAlg(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getAuthAlgCallback;)V

    .line 2323
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2324
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2325
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getAuthAlg"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2326
    monitor-exit v0

    return v3

    .line 2328
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getBssid()Z
    .locals 6

    .line 2218
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2219
    :try_start_0
    const-string v1, "getBssid"

    .line 2220
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getBssid"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2222
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2223
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$Q5uBy3Bbd1sBV5L5-ze6NWb0nfU;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$Q5uBy3Bbd1sBV5L5-ze6NWb0nfU;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getBssid(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getBssidCallback;)V

    .line 2232
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2233
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2234
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getBssid"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2235
    monitor-exit v0

    return v3

    .line 2237
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getEapAltSubjectMatch()Z
    .locals 6

    .line 2736
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2737
    :try_start_0
    const-string v1, "getEapAltSubjectMatch"

    .line 2738
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getEapAltSubjectMatch"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2740
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2741
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$zlvtJtPmiMSfQ7Kuna35ExQr_dw;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$zlvtJtPmiMSfQ7Kuna35ExQr_dw;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapAltSubjectMatch(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapAltSubjectMatchCallback;)V

    .line 2750
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2751
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2752
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getEapAltSubjectMatch"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2753
    monitor-exit v0

    return v3

    .line 2755
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getEapAnonymousIdentity()Z
    .locals 6

    .line 2561
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2562
    :try_start_0
    const-string v1, "getEapAnonymousIdentity"

    .line 2563
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getEapAnonymousIdentity"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2565
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2566
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$_KXFFUYMj7QUby8qNBCLqXMm1-g;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$_KXFFUYMj7QUby8qNBCLqXMm1-g;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapAnonymousIdentity(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapAnonymousIdentityCallback;)V

    .line 2575
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2576
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2577
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getEapAnonymousIdentity"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2578
    monitor-exit v0

    return v3

    .line 2580
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getEapCACert()Z
    .locals 6

    .line 2623
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2624
    :try_start_0
    const-string v1, "getEapCACert"

    .line 2625
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getEapCACert"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2627
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2628
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$6qvGsijjG6AMrj2uZOQ3n_CoDoc;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$6qvGsijjG6AMrj2uZOQ3n_CoDoc;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapCACert(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapCACertCallback;)V

    .line 2636
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2637
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2638
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getEapCACert"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2639
    monitor-exit v0

    return v3

    .line 2641
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getEapCAPath()Z
    .locals 6

    .line 2645
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2646
    :try_start_0
    const-string v1, "getEapCAPath"

    .line 2647
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getEapCAPath"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2649
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2650
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$eu9lzidYZV_ibJGepjPu3LFfBs0;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$eu9lzidYZV_ibJGepjPu3LFfBs0;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapCAPath(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapCAPathCallback;)V

    .line 2658
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2659
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2660
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getEapCAPath"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2661
    monitor-exit v0

    return v3

    .line 2663
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getEapClientCert()Z
    .locals 6

    .line 2667
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2668
    :try_start_0
    const-string v1, "getEapClientCert"

    .line 2669
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getEapClientCert"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2671
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2672
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$LWz9a9gFh42T-YtCNc0n7THxMqs;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$LWz9a9gFh42T-YtCNc0n7THxMqs;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapClientCert(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapClientCertCallback;)V

    .line 2681
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2682
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2683
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getEapClientCert"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2684
    monitor-exit v0

    return v3

    .line 2686
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getEapDomainSuffixMatch()Z
    .locals 6

    .line 2804
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2805
    :try_start_0
    const-string v1, "getEapDomainSuffixMatch"

    .line 2806
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getEapDomainSuffixMatch"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2808
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2809
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$ciy-HJqKjGUfeTc-fGQEtnmWmkE;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$ciy-HJqKjGUfeTc-fGQEtnmWmkE;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapDomainSuffixMatch(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapDomainSuffixMatchCallback;)V

    .line 2818
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2819
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2820
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getEapDomainSuffixMatch"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2821
    monitor-exit v0

    return v3

    .line 2823
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getEapEngine()Z
    .locals 6

    .line 2759
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2760
    :try_start_0
    const-string v1, "getEapEngine"

    .line 2761
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getEapEngine"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2763
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2764
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$KquC9lH5VhOY90dQtE1r9rOy5pM;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$KquC9lH5VhOY90dQtE1r9rOy5pM;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapEngine(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapEngineCallback;)V

    .line 2773
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2774
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2775
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getEapEngine"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2776
    monitor-exit v0

    return v3

    .line 2778
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getEapEngineID()Z
    .locals 6

    .line 2782
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2783
    :try_start_0
    const-string v1, "getEapEngineID"

    .line 2784
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getEapEngineID"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2786
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2787
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$pRxa9P8P5j5gvbU8p3VlbdbxfgA;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$pRxa9P8P5j5gvbU8p3VlbdbxfgA;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapEngineID(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapEngineIDCallback;)V

    .line 2795
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2796
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2797
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getEapEngineID"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2798
    monitor-exit v0

    return v3

    .line 2800
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getEapIdentity()Z
    .locals 6

    .line 2538
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2539
    :try_start_0
    const-string v1, "getEapIdentity"

    .line 2540
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getEapIdentity"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2542
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2543
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$vAcw2W8PnMsu8oK6dTPfH--8JtQ;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$vAcw2W8PnMsu8oK6dTPfH--8JtQ;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapIdentity(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapIdentityCallback;)V

    .line 2552
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2553
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2554
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getEapIdentity"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2555
    monitor-exit v0

    return v3

    .line 2557
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getEapMethod()Z
    .locals 6

    .line 2492
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2493
    :try_start_0
    const-string v1, "getEapMethod"

    .line 2494
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getEapMethod"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2496
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2497
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$iC0TTHJMbUz_dnzTqWqnpXOKbEs;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$iC0TTHJMbUz_dnzTqWqnpXOKbEs;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapMethod(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapMethodCallback;)V

    .line 2506
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2507
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2508
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getEapMethod"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2509
    monitor-exit v0

    return v3

    .line 2511
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getEapPassword()Z
    .locals 6

    .line 2600
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2601
    :try_start_0
    const-string v1, "getEapPassword"

    .line 2602
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getEapPassword"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2604
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2605
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$LWXNtgjw13tGOnW75TJZ9I4eBZM;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$LWXNtgjw13tGOnW75TJZ9I4eBZM;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapPassword(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPasswordCallback;)V

    .line 2614
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2615
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2616
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getEapPassword"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2617
    monitor-exit v0

    return v3

    .line 2619
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getEapPhase2Method()Z
    .locals 6

    .line 2515
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2516
    :try_start_0
    const-string v1, "getEapPhase2Method"

    .line 2517
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getEapPhase2Method"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2519
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2520
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$1hQI2wPSiyHk9VMa1GvpSxqIYCU;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$1hQI2wPSiyHk9VMa1GvpSxqIYCU;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapPhase2Method(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPhase2MethodCallback;)V

    .line 2529
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2530
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2531
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getEapPhase2Method"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2532
    monitor-exit v0

    return v3

    .line 2534
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getEapPrivateKeyId()Z
    .locals 6

    .line 2690
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2691
    :try_start_0
    const-string v1, "getEapPrivateKeyId"

    .line 2692
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getEapPrivateKeyId"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2694
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2695
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$tXpXVuXfvc8q3aGK-EGhOwB2lqI;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$tXpXVuXfvc8q3aGK-EGhOwB2lqI;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapPrivateKeyId(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPrivateKeyIdCallback;)V

    .line 2704
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2705
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2706
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getEapPrivateKeyId"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2707
    monitor-exit v0

    return v3

    .line 2709
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getEapSubjectMatch()Z
    .locals 6

    .line 2713
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2714
    :try_start_0
    const-string v1, "getEapSubjectMatch"

    .line 2715
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getEapSubjectMatch"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2717
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2718
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$eIuT1Hp77nJuThTf5m3OWbAtG9A;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$eIuT1Hp77nJuThTf5m3OWbAtG9A;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getEapSubjectMatch(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapSubjectMatchCallback;)V

    .line 2727
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2728
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2729
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getEapSubjectMatch"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2730
    monitor-exit v0

    return v3

    .line 2732
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getGroupCipher()Z
    .locals 6

    .line 2332
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2333
    :try_start_0
    const-string v1, "getGroupCipher"

    .line 2334
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getGroupCipher"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2336
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2337
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$OMBcqiu2U5V6QIe5V_QNnsJM3eI;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$OMBcqiu2U5V6QIe5V_QNnsJM3eI;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getGroupCipher(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getGroupCipherCallback;)V

    .line 2346
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2347
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2348
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getGroupCipher"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2349
    monitor-exit v0

    return v3

    .line 2351
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getIdStr()Z
    .locals 6

    .line 2827
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2828
    :try_start_0
    const-string v1, "getIdStr"

    .line 2829
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getIdStr"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2831
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2832
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$2FQJsVKh4TNG6OBcopTjoZaR1vs;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$2FQJsVKh4TNG6OBcopTjoZaR1vs;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getIdStr(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getIdStrCallback;)V

    .line 2840
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2841
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2842
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getIdStr"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2843
    monitor-exit v0

    return v3

    .line 2845
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getKeyMgmt()Z
    .locals 6

    .line 2264
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2265
    :try_start_0
    const-string v1, "getKeyMgmt"

    .line 2266
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getKeyMgmt"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2268
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2269
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$o4-bq-MCZb9vsWcgSd4F6GH8fJo;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$o4-bq-MCZb9vsWcgSd4F6GH8fJo;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getKeyMgmt(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getKeyMgmtCallback;)V

    .line 2278
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2279
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2280
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getKeyMgmt"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2281
    monitor-exit v0

    return v3

    .line 2283
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getPairwiseCipher()Z
    .locals 6

    .line 2355
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2356
    :try_start_0
    const-string v1, "getPairwiseCipher"

    .line 2357
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getPairwiseCipher"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2359
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2360
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$EQ5cOIkAPEH9ppa5XEfiVWDPWGs;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$EQ5cOIkAPEH9ppa5XEfiVWDPWGs;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getPairwiseCipher(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPairwiseCipherCallback;)V

    .line 2369
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2370
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2371
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getPairwiseCipher"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2372
    monitor-exit v0

    return v3

    .line 2374
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getProto()Z
    .locals 6

    .line 2287
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2288
    :try_start_0
    const-string v1, "getProto"

    .line 2289
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getProto"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2291
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2292
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$GHC5kDo5jt_phutQiXqimQNAbh8;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$GHC5kDo5jt_phutQiXqimQNAbh8;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getProto(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getProtoCallback;)V

    .line 2300
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2301
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2302
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getProto"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2303
    monitor-exit v0

    return v3

    .line 2305
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getPsk()Z
    .locals 6

    .line 2401
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2402
    :try_start_0
    const-string v1, "getPsk"

    .line 2403
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getPsk"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2405
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2406
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$PsbWp-8kaRJB_R8wNaC3dL59Bm8;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$PsbWp-8kaRJB_R8wNaC3dL59Bm8;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getPsk(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPskCallback;)V

    .line 2414
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2415
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2416
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getPsk"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2417
    monitor-exit v0

    return v3

    .line 2419
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getPskPassphrase()Z
    .locals 6

    .line 2378
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2379
    :try_start_0
    const-string v1, "getPskPassphrase"

    .line 2380
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getPskPassphrase"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2382
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2383
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$VGtlb40XfNM6ONPPJVjP5wNDoZI;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$VGtlb40XfNM6ONPPJVjP5wNDoZI;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getPskPassphrase(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPskPassphraseCallback;)V

    .line 2392
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2393
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2394
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getPskPassphrase"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2395
    monitor-exit v0

    return v3

    .line 2397
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getRequirePmf()Z
    .locals 6

    .line 2469
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2470
    :try_start_0
    const-string v1, "getRequirePmf"

    .line 2471
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getRequirePmf"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2473
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2474
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$vjiiQgcantRh3jpBzrpYGP0pWPo;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$vjiiQgcantRh3jpBzrpYGP0pWPo;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getRequirePmf(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getRequirePmfCallback;)V

    .line 2483
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2484
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2485
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getRequirePmf"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2486
    monitor-exit v0

    return v3

    .line 2488
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getScanSsid()Z
    .locals 6

    .line 2241
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2242
    :try_start_0
    const-string v1, "getScanSsid"

    .line 2243
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getScanSsid"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2245
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2246
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$fht0U9JpzJ2H4kTxMlc2L0jqjf4;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$fht0U9JpzJ2H4kTxMlc2L0jqjf4;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getScanSsid(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getScanSsidCallback;)V

    .line 2255
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2256
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2257
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getScanSsid"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2258
    monitor-exit v0

    return v3

    .line 2260
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getSsid()Z
    .locals 6

    .line 2195
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2196
    :try_start_0
    const-string v1, "getSsid"

    .line 2197
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getSsid"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2199
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2200
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$V46mYiXoVbLDyWUyszREM5DgY6U;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$V46mYiXoVbLDyWUyszREM5DgY6U;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getSsid(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getSsidCallback;)V

    .line 2209
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2210
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2211
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getSsid"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2212
    monitor-exit v0

    return v3

    .line 2214
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getWapiCertSel()Z
    .locals 6

    .line 2156
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2157
    :try_start_0
    const-string v1, "getWapiCertSel"

    .line 2158
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getWapiCertSel"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2160
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2161
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$X2c2FhV_1WB_wWaiwG3_Q42Y32k;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$X2c2FhV_1WB_wWaiwG3_Q42Y32k;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->getWapiCertSel(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$getWapiCertSelCallback;)V

    .line 2170
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2171
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2172
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getWapiCertSel"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2173
    monitor-exit v0

    return v3

    .line 2175
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getWapiCertSelMode()Z
    .locals 6

    .line 2134
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2135
    :try_start_0
    const-string v1, "getWapiCertSelMode"

    .line 2136
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getWapiCertSelMode"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2138
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2139
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$35tkcTr5egAFgtSmzWUvTeeY--g;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$35tkcTr5egAFgtSmzWUvTeeY--g;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->getWapiCertSelMode(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$getWapiCertSelModeCallback;)V

    .line 2148
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2149
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2150
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getWapiCertSelMode"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2151
    monitor-exit v0

    return v3

    .line 2153
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getWapiPsk()Z
    .locals 6

    .line 2111
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2112
    :try_start_0
    const-string v1, "getWapiPsk"

    .line 2113
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getWapiPsk"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2115
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2116
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$IRym_3VIIbE9SA4E4xuefL09gOY;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$IRym_3VIIbE9SA4E4xuefL09gOY;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->getWapiPsk(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$getWapiPskCallback;)V

    .line 2125
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2126
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2127
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getWapiPsk"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2128
    monitor-exit v0

    return v3

    .line 2130
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getWapiPskType()Z
    .locals 6

    .line 2088
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2089
    :try_start_0
    const-string v1, "getWapiPskType"

    .line 2090
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getWapiPskType"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2092
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2093
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$nPcnzFbO2rJtelOd_nqumWUaviw;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$nPcnzFbO2rJtelOd_nqumWUaviw;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->getWapiPskType(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$getWapiPskTypeCallback;)V

    .line 2102
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2103
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2104
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getWapiPskType"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2105
    monitor-exit v0

    return v3

    .line 2107
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getWepKey(I)Z
    .locals 6
    .param p1, "keyIdx"    # I

    .line 2423
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2424
    :try_start_0
    const-string v1, "keyIdx"

    .line 2425
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "keyIdx"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2427
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2428
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$g8l9S6sFBYS1UbFs_xs81cGLNa8;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$g8l9S6sFBYS1UbFs_xs81cGLNa8;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, p1, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getWepKey(ILandroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWepKeyCallback;)V

    .line 2437
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2438
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2439
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "keyIdx"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2440
    monitor-exit v0

    return v3

    .line 2442
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getWepTxKeyIdx()Z
    .locals 6

    .line 2446
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2447
    :try_start_0
    const-string v1, "getWepTxKeyIdx"

    .line 2448
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getWepTxKeyIdx"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2450
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 2451
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$C1UdaeAaNSFX9fMio-Rh2_cDbnk;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$C1UdaeAaNSFX9fMio-Rh2_cDbnk;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getWepTxKeyIdx(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWepTxKeyIdxCallback;)V

    .line 2460
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2461
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 2462
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getWepTxKeyIdx"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2463
    monitor-exit v0

    return v3

    .line 2465
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getWpsNfcConfigurationTokenInternal()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 3169
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3170
    :try_start_0
    const-string v1, "getWpsNfcConfigurationToken"

    .line 3171
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getWpsNfcConfigurationToken"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 3172
    :cond_0
    new-instance v2, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v2}, Landroid/os/HidlSupport$Mutable;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3174
    .local v2, "gotToken":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/Byte;>;>;"
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v4, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$pt8TbY-xQLz1Sbs5w6eUaTAeZLY;

    invoke-direct {v4, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$pt8TbY-xQLz1Sbs5w6eUaTAeZLY;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v3, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getWpsNfcConfigurationToken(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWpsNfcConfigurationTokenCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3182
    goto :goto_0

    .line 3180
    :catch_0
    move-exception v3

    .line 3181
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "getWpsNfcConfigurationToken"

    invoke-direct {p0, v3, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 3183
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v3, v2, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    monitor-exit v0

    return-object v3

    .line 3184
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "gotToken":Landroid/os/HidlSupport$Mutable;, "Landroid/os/HidlSupport$Mutable<Ljava/util/ArrayList<Ljava/lang/Byte;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private handleOutOfBoundsException(Ljava/lang/ArrayIndexOutOfBoundsException;Ljava/lang/String;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/ArrayIndexOutOfBoundsException;
    .param p2, "methodStr"    # Ljava/lang/String;

    .line 3269
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3270
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    .line 3271
    const-string v1, "SupplicantStaNetworkHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISupplicantStaNetwork."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed with exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3272
    monitor-exit v0

    .line 3273
    return-void

    .line 3272
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    .locals 4
    .param p1, "e"    # Landroid/os/RemoteException;
    .param p2, "methodStr"    # Ljava/lang/String;

    .line 3261
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3262
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    .line 3263
    const-string v1, "SupplicantStaNetworkHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISupplicantStaNetwork."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed with exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3264
    monitor-exit v0

    .line 3265
    return-void

    .line 3264
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isAuthAlgNeeded(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 530
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 531
    .local v0, "keyMgmtMask":Ljava/util/BitSet;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 532
    const-string v1, "SupplicantStaNetworkHal"

    const-string v2, "no need to set Auth Algo for SAE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/4 v1, 0x0

    return v1

    .line 535
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public static synthetic lambda$getAuthAlg$10(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "authAlgMaskValue"    # I

    .line 2316
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2317
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2318
    iput p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mAuthAlgMask:I

    goto :goto_1

    .line 2320
    :cond_1
    const-string v0, "getAuthAlg"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2322
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getBssid$6(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;[B)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "bssidValue"    # [B

    .line 2225
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2226
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2227
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mBssid:[B

    goto :goto_1

    .line 2229
    :cond_1
    const-string v0, "getBssid"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2231
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getEapAltSubjectMatch$28(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "matchValue"    # Ljava/lang/String;

    .line 2743
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2744
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2745
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapAltSubjectMatch:Ljava/lang/String;

    goto :goto_1

    .line 2747
    :cond_1
    const-string v0, "getEapAltSubjectMatch"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2749
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getEapAnonymousIdentity$21(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "identityValue"    # Ljava/util/ArrayList;

    .line 2568
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2569
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2570
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapAnonymousIdentity:Ljava/util/ArrayList;

    goto :goto_1

    .line 2572
    :cond_1
    const-string v0, "getEapAnonymousIdentity"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2574
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getEapCACert$23(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "pathValue"    # Ljava/lang/String;

    .line 2629
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2630
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2631
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapCACert:Ljava/lang/String;

    goto :goto_1

    .line 2633
    :cond_1
    const-string v0, "getEapCACert"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2635
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getEapCAPath$24(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "pathValue"    # Ljava/lang/String;

    .line 2651
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2652
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2653
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapCAPath:Ljava/lang/String;

    goto :goto_1

    .line 2655
    :cond_1
    const-string v0, "getEapCAPath"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2657
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getEapClientCert$25(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "pathValue"    # Ljava/lang/String;

    .line 2674
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2675
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2676
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapClientCert:Ljava/lang/String;

    goto :goto_1

    .line 2678
    :cond_1
    const-string v0, "getEapClientCert"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2680
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getEapDomainSuffixMatch$31(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "matchValue"    # Ljava/lang/String;

    .line 2811
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2812
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2813
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapDomainSuffixMatch:Ljava/lang/String;

    goto :goto_1

    .line 2815
    :cond_1
    const-string v0, "getEapDomainSuffixMatch"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2817
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getEapEngine$29(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Z)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "enabledValue"    # Z

    .line 2766
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2767
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2768
    iput-boolean p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapEngine:Z

    goto :goto_1

    .line 2770
    :cond_1
    const-string v0, "getEapEngine"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2772
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getEapEngineID$30(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "idValue"    # Ljava/lang/String;

    .line 2788
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2789
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2790
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapEngineID:Ljava/lang/String;

    goto :goto_1

    .line 2792
    :cond_1
    const-string v0, "getEapEngineID"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2794
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getEapIdentity$20(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "identityValue"    # Ljava/util/ArrayList;

    .line 2545
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2546
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2547
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapIdentity:Ljava/util/ArrayList;

    goto :goto_1

    .line 2549
    :cond_1
    const-string v0, "getEapIdentity"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2551
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getEapMethod$18(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "methodValue"    # I

    .line 2499
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2500
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2501
    iput p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapMethod:I

    goto :goto_1

    .line 2503
    :cond_1
    const-string v0, "getEapMethod"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2505
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getEapPassword$22(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "passwordValue"    # Ljava/util/ArrayList;

    .line 2607
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2608
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2609
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapPassword:Ljava/util/ArrayList;

    goto :goto_1

    .line 2611
    :cond_1
    const-string v0, "getEapPassword"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2613
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getEapPhase2Method$19(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "methodValue"    # I

    .line 2522
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2523
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2524
    iput p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapPhase2Method:I

    goto :goto_1

    .line 2526
    :cond_1
    const-string v0, "getEapPhase2Method"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2528
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getEapPrivateKeyId$26(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "idValue"    # Ljava/lang/String;

    .line 2697
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2698
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2699
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapPrivateKeyId:Ljava/lang/String;

    goto :goto_1

    .line 2701
    :cond_1
    const-string v0, "getEapPrivateKeyId"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2703
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getEapSubjectMatch$27(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "matchValue"    # Ljava/lang/String;

    .line 2720
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2721
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2722
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapSubjectMatch:Ljava/lang/String;

    goto :goto_1

    .line 2724
    :cond_1
    const-string v0, "getEapSubjectMatch"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2726
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getGroupCipher$11(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "groupCipherMaskValue"    # I

    .line 2339
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2340
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2341
    iput p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mGroupCipherMask:I

    goto :goto_1

    .line 2343
    :cond_1
    const-string v0, "getGroupCipher"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2345
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getId$0(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "idValue"    # I

    .line 1366
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 1367
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 1368
    iput p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mNetworkId:I

    goto :goto_1

    .line 1370
    :cond_1
    const-string v0, "getId"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 1372
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getIdStr$32(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "idString"    # Ljava/lang/String;

    .line 2833
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2834
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2835
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mIdStr:Ljava/lang/String;

    goto :goto_1

    .line 2837
    :cond_1
    const-string v0, "getIdStr"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2839
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getKeyMgmt$8(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "keyMgmtMaskValue"    # I

    .line 2271
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2272
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2273
    iput p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mKeyMgmtMask:I

    goto :goto_1

    .line 2275
    :cond_1
    const-string v0, "getKeyMgmt"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2277
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getPairwiseCipher$12(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "pairwiseCipherMaskValue"    # I

    .line 2362
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2363
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2364
    iput p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mPairwiseCipherMask:I

    goto :goto_1

    .line 2366
    :cond_1
    const-string v0, "getPairwiseCipher"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2368
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getProto$9(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "protoMaskValue"    # I

    .line 2293
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2294
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2295
    iput p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mProtoMask:I

    goto :goto_1

    .line 2297
    :cond_1
    const-string v0, "getProto"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2299
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getPsk$14(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;[B)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "pskValue"    # [B

    .line 2407
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2408
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2409
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mPsk:[B

    goto :goto_1

    .line 2411
    :cond_1
    const-string v0, "getPsk"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2413
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getPskPassphrase$13(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "pskValue"    # Ljava/lang/String;

    .line 2385
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2386
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2387
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mPskPassphrase:Ljava/lang/String;

    goto :goto_1

    .line 2389
    :cond_1
    const-string v0, "getPskPassphrase"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2391
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getRequirePmf$17(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Z)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "enabledValue"    # Z

    .line 2476
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2477
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2478
    iput-boolean p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mRequirePmf:Z

    goto :goto_1

    .line 2480
    :cond_1
    const-string v0, "getRequirePmf"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2482
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getScanSsid$7(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Z)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "enabledValue"    # Z

    .line 2248
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2249
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2250
    iput-boolean p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mScanSsid:Z

    goto :goto_1

    .line 2252
    :cond_1
    const-string v0, "getScanSsid"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2254
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getSsid$5(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "ssidValue"    # Ljava/util/ArrayList;

    .line 2202
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2203
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2204
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mSsid:Ljava/util/ArrayList;

    goto :goto_1

    .line 2206
    :cond_1
    const-string v0, "getSsid"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2208
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getWapiCertSel$4(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "wapiCertSelValue"    # Ljava/lang/String;

    .line 2163
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2164
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2165
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWapiCertSel:Ljava/lang/String;

    goto :goto_1

    .line 2167
    :cond_1
    const-string v0, "getWapiCertSel"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2169
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getWapiCertSelMode$3(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "wapiCertSelModeValue"    # I

    .line 2141
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2142
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2143
    iput p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWapiCertSelMode:I

    goto :goto_1

    .line 2145
    :cond_1
    const-string v0, "getWapiCertSelMode"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2147
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getWapiPsk$2(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "wapiPskValue"    # Ljava/lang/String;

    .line 2118
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2119
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2120
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWapiPsk:Ljava/lang/String;

    goto :goto_1

    .line 2122
    :cond_1
    const-string v0, "getWapiPsk"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2124
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getWapiPskType$1(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "wapiPskTypeValue"    # I

    .line 2095
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2096
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2097
    iput p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWapiPskType:I

    goto :goto_1

    .line 2099
    :cond_1
    const-string v0, "getWapiPskType"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2101
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getWepKey$15(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "wepKeyValue"    # Ljava/util/ArrayList;

    .line 2430
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2431
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2432
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWepKey:Ljava/util/ArrayList;

    goto :goto_1

    .line 2434
    :cond_1
    const-string v0, "SupplicantStaNetworkHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyIdx,  failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getWepTxKeyIdx$16(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 1
    .param p1, "statusOk"    # Landroid/util/MutableBoolean;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "keyIdxValue"    # I

    .line 2453
    iget v0, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    .line 2454
    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    .line 2455
    iput p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWepTxKeyIdx:I

    goto :goto_1

    .line 2457
    :cond_1
    const-string v0, "getWepTxKeyIdx"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    .line 2459
    :goto_1
    return-void
.end method

.method public static synthetic lambda$getWpsNfcConfigurationTokenInternal$33(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "gotToken"    # Landroid/os/HidlSupport$Mutable;
    .param p2, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p3, "token"    # Ljava/util/ArrayList;

    .line 3176
    const-string v0, "getWpsNfcConfigurationToken"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3177
    iput-object p3, p1, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 3179
    :cond_0
    return-void
.end method

.method private loadWifiEnterpriseConfig(Ljava/lang/String;Landroid/net/wifi/WifiEnterpriseConfig;)Z
    .locals 4
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "eapConfig"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .line 546
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 547
    const/4 v1, 0x0

    if-nez p2, :cond_0

    :try_start_0
    monitor-exit v0

    return v1

    .line 626
    :catchall_0
    move-exception v1

    goto/16 :goto_1

    .line 549
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapMethod()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_f

    .line 550
    iget v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapMethod:I

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantToWifiConfigurationEapMethod(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 557
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapPhase2Method()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 558
    iget v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapPhase2Method:I

    .line 559
    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantToWifiConfigurationEapPhase2Method(I)I

    move-result v1

    .line 558
    invoke-virtual {p2, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 566
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapIdentity()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapIdentity:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 567
    const-string v1, "identity"

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapIdentity:Ljava/util/ArrayList;

    .line 569
    invoke-static {v2}, Lcom/android/server/wifi/util/NativeUtil;->stringFromByteArrayList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 567
    invoke-virtual {p2, v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapAnonymousIdentity()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapAnonymousIdentity:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 573
    const-string v1, "anonymous_identity"

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapAnonymousIdentity:Ljava/util/ArrayList;

    .line 575
    invoke-static {v2}, Lcom/android/server/wifi/util/NativeUtil;->stringFromByteArrayList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 573
    invoke-virtual {p2, v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapPassword()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapPassword:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 579
    const-string v1, "password"

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapPassword:Ljava/util/ArrayList;

    .line 581
    invoke-static {v2}, Lcom/android/server/wifi/util/NativeUtil;->stringFromByteArrayList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 579
    invoke-virtual {p2, v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    :cond_3
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapClientCert()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapClientCert:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 585
    const-string v1, "client_cert"

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapClientCert:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    :cond_4
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapCACert()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapCACert:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 589
    const-string v1, "ca_cert"

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapCACert:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    :cond_5
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapSubjectMatch()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapSubjectMatch:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 593
    const-string v1, "subject_match"

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapSubjectMatch:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_6
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapEngineID()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapEngineID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 597
    const-string v1, "engine_id"

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapEngineID:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :cond_7
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapEngine()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapEngineID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 601
    const-string v1, "engine"

    .line 603
    iget-boolean v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapEngine:Z

    if-eqz v2, :cond_8

    .line 604
    const-string v2, "1"

    goto :goto_0

    .line 605
    :cond_8
    const-string v2, "0"

    .line 601
    :goto_0
    invoke-virtual {p2, v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    :cond_9
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapPrivateKeyId()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapPrivateKeyId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 609
    const-string v1, "key_id"

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapPrivateKeyId:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    :cond_a
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapAltSubjectMatch()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapAltSubjectMatch:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 613
    const-string v1, "altsubject_match"

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapAltSubjectMatch:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :cond_b
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapDomainSuffixMatch()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapDomainSuffixMatch:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 618
    const-string v1, "domain_suffix_match"

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapDomainSuffixMatch:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    :cond_c
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapCAPath()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapCAPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 623
    const-string v1, "ca_path"

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapCAPath:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    :cond_d
    monitor-exit v0

    return v3

    .line 562
    :cond_e
    const-string v2, "SupplicantStaNetworkHal"

    const-string v3, "failed to get eap phase2 method"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    monitor-exit v0

    return v1

    .line 553
    :cond_f
    const-string v1, "SupplicantStaNetworkHal"

    const-string v2, "failed to get eap method. Assumimg not an enterprise network"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    monitor-exit v0

    return v3

    .line 626
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private logCallback(Ljava/lang/String;)V
    .locals 4
    .param p1, "methodStr"    # Ljava/lang/String;

    .line 3227
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3228
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_0

    .line 3229
    const-string v1, "SupplicantStaNetworkHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISupplicantStaNetworkCallback."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " received"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3231
    :cond_0
    monitor-exit v0

    .line 3232
    return-void

    .line 3231
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static parseNetworkExtra(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .param p0, "encoded"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3328
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3329
    return-object v1

    .line 3336
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v2, "UTF-8"

    invoke-static {p0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3337
    .local v0, "json":Lorg/json/JSONObject;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3338
    .local v2, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 3339
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3340
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3341
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 3342
    .local v5, "value":Ljava/lang/Object;
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 3343
    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3345
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 3346
    :cond_2
    return-object v2

    .line 3350
    .end local v0    # "json":Lorg/json/JSONObject;
    .end local v2    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :catch_0
    move-exception v0

    .line 3354
    .local v0, "e":Lorg/json/JSONException;
    return-object v1

    .line 3347
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 3348
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "SupplicantStaNetworkHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to deserialize networkExtra: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3349
    return-object v1
.end method

.method private registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;)Z
    .locals 5
    .param p1, "callback"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;

    .line 1399
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1400
    :try_start_0
    const-string v1, "registerCallback"

    .line 1401
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "registerCallback"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1403
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1404
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "registerCallback"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1405
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1406
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "registerCallback"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1407
    monitor-exit v0

    return v3

    .line 1409
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private removeFastTransitionFlags(Ljava/util/BitSet;)Ljava/util/BitSet;
    .locals 3
    .param p1, "keyManagementFlags"    # Ljava/util/BitSet;

    .line 3299
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3300
    :try_start_0
    invoke-virtual {p1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    .line 3301
    .local v1, "modifiedFlags":Ljava/util/BitSet;
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->clear(I)V

    .line 3302
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->clear(I)V

    .line 3303
    monitor-exit v0

    return-object v1

    .line 3304
    .end local v1    # "modifiedFlags":Ljava/util/BitSet;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private saveDppConfig(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 637
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->dppConnector:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->dppConnector:Ljava/lang/String;

    .line 638
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setDppConnector(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 639
    const-string v0, "SupplicantStaNetworkHal"

    const-string v2, "failed to set DPP connector"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    return v1

    .line 643
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->dppNetAccessKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->dppNetAccessKey:Ljava/lang/String;

    .line 644
    invoke-static {v0}, Lcom/android/server/wifi/util/NativeUtil;->stringToByteArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setDppNetAccessKey(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 645
    const-string v0, "SupplicantStaNetworkHal"

    const-string v2, "failed to set DPP Net Access key"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    return v1

    .line 649
    :cond_1
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->dppNetAccessKeyExpiry:I

    if-ltz v0, :cond_2

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->dppNetAccessKeyExpiry:I

    .line 650
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setDppNetAccessKeyExpiry(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 651
    const-string v0, "SupplicantStaNetworkHal"

    const-string v2, "failed to set DPP Net Access Key Expiry time"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    return v1

    .line 655
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->dppCsign:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->dppCsign:Ljava/lang/String;

    .line 656
    invoke-static {v0}, Lcom/android/server/wifi/util/NativeUtil;->stringToByteArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setDppCsign(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 657
    const-string v0, "SupplicantStaNetworkHal"

    const-string v2, "failed to set DPP c-sign"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    return v1

    .line 661
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private saveSuiteBConfig(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 672
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 673
    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->wifiConfigurationToSupplicantGroupCipherMask(Ljava/util/BitSet;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setGroupCipher(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 675
    const-string v0, "SupplicantStaNetworkHal"

    const-string v2, "failed to set Group Cipher"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    return v1

    .line 679
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 680
    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->wifiConfigurationToSupplicantPairwiseCipherMask(Ljava/util/BitSet;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setPairwiseCipher(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 682
    const-string v0, "SupplicantStaNetworkHal"

    const-string v2, "failed to set PairwiseCipher"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    return v1

    .line 686
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupMgmtCiphers:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupMgmtCiphers:Ljava/util/BitSet;

    .line 687
    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->wifiConfigurationToSupplicantVendorGroupMgmtCipherMask(Ljava/util/BitSet;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setGroupMgmtCipher(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 689
    const-string v0, "SupplicantStaNetworkHal"

    const-string v2, "failed to set GroupMgmtCipher"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    return v1

    .line 693
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedSuiteBCiphers:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 694
    const-string v0, "tls_suiteb=1"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapPhase1Params(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 695
    const-string v0, "SupplicantStaNetworkHal"

    const-string v2, "failed to set TLSSuiteB"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    return v1

    .line 699
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedSuiteBCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 700
    const-string v0, "SUITE_B_192"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapOpensslCiphers(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 701
    const-string v0, "SupplicantStaNetworkHal"

    const-string v2, "failed to set OpensslCipher"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    return v1

    .line 705
    :cond_4
    return v2
.end method

.method private saveWifiEnterpriseConfig(Ljava/lang/String;Landroid/net/wifi/WifiEnterpriseConfig;)Z
    .locals 6
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "eapConfig"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .line 716
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 717
    const/4 v1, 0x0

    if-nez p2, :cond_0

    :try_start_0
    monitor-exit v0

    return v1

    .line 836
    :catchall_0
    move-exception v1

    goto/16 :goto_0

    .line 719
    :cond_0
    invoke-virtual {p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->wifiConfigurationToSupplicantEapMethod(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapMethod(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 720
    const-string v2, "SupplicantStaNetworkHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": failed to set eap method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    monitor-exit v0

    return v1

    .line 724
    :cond_1
    nop

    .line 725
    invoke-virtual {p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v2

    .line 724
    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->wifiConfigurationToSupplicantEapPhase2Method(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapPhase2Method(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 726
    const-string v2, "SupplicantStaNetworkHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": failed to set eap phase 2 method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    invoke-virtual {p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 726
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    monitor-exit v0

    return v1

    .line 730
    :cond_2
    const/4 v2, 0x0

    .line 732
    .local v2, "eapParam":Ljava/lang/String;
    const-string v3, "identity"

    invoke-virtual {p2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 733
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 734
    invoke-static {v2}, Lcom/android/server/wifi/util/NativeUtil;->stringToByteArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapIdentity(Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 735
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": failed to set eap identity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    monitor-exit v0

    return v1

    .line 739
    :cond_3
    const-string v3, "anonymous_identity"

    invoke-virtual {p2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 740
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 741
    invoke-static {v2}, Lcom/android/server/wifi/util/NativeUtil;->stringToByteArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapAnonymousIdentity(Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 742
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": failed to set eap anonymous identity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    monitor-exit v0

    return v1

    .line 746
    :cond_4
    const-string v3, "password"

    invoke-virtual {p2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 747
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 748
    invoke-static {v2}, Lcom/android/server/wifi/util/NativeUtil;->stringToByteArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapPassword(Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 749
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": failed to set eap password"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    monitor-exit v0

    return v1

    .line 753
    :cond_5
    const-string v3, "client_cert"

    invoke-virtual {p2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 754
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapClientCert(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 755
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": failed to set eap client cert: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    monitor-exit v0

    return v1

    .line 759
    :cond_6
    const-string v3, "ca_cert"

    invoke-virtual {p2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 760
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapCACert(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 761
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": failed to set eap ca cert: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    monitor-exit v0

    return v1

    .line 765
    :cond_7
    const-string v3, "subject_match"

    invoke-virtual {p2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 766
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapSubjectMatch(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 767
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": failed to set eap subject match: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    monitor-exit v0

    return v1

    .line 771
    :cond_8
    const-string v3, "engine_id"

    invoke-virtual {p2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 772
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapEngineID(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 773
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": failed to set eap engine id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    monitor-exit v0

    return v1

    .line 777
    :cond_9
    const-string v3, "engine"

    invoke-virtual {p2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 778
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 779
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 778
    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapEngine(Z)Z

    move-result v3

    if-nez v3, :cond_a

    .line 780
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": failed to set eap engine: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    monitor-exit v0

    return v1

    .line 784
    :cond_a
    const-string v3, "key_id"

    invoke-virtual {p2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 785
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapPrivateKeyId(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 786
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": failed to set eap private key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    monitor-exit v0

    return v1

    .line 790
    :cond_b
    const-string v3, "altsubject_match"

    invoke-virtual {p2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 791
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapAltSubjectMatch(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 792
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": failed to set eap alt subject match: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    monitor-exit v0

    return v1

    .line 796
    :cond_c
    const-string v3, "domain_suffix_match"

    invoke-virtual {p2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 797
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapDomainSuffixMatch(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 798
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": failed to set eap domain suffix match: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    monitor-exit v0

    return v1

    .line 802
    :cond_d
    const-string v3, "ca_path"

    invoke-virtual {p2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 803
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapCAPath(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 804
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": failed to set eap ca path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    monitor-exit v0

    return v1

    .line 809
    :cond_e
    const-string v3, "proactive_key_caching"

    invoke-virtual {p2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 810
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 811
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapProactiveKeyCaching(Z)Z

    move-result v3

    if-nez v3, :cond_f

    .line 812
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": failed to set proactive key caching: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    monitor-exit v0

    return v1

    .line 817
    :cond_f
    const-string v3, "eap_erp"

    invoke-virtual {p2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 818
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_11

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 819
    invoke-direct {p0, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapErp(Z)Z

    move-result v3

    if-nez v3, :cond_10

    .line 820
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": failed to set eap erp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    monitor-exit v0

    return v1

    .line 822
    :cond_10
    invoke-direct {p0, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setAuthAlg(I)Z

    move-result v3

    if-nez v3, :cond_11

    .line 824
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": failed to reset AuthAlgorithm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    monitor-exit v0

    return v1

    .line 829
    :cond_11
    const-string v1, "sim_num"

    invoke-virtual {p2, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 830
    .end local v2    # "eapParam":Ljava/lang/String;
    .local v1, "eapParam":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 831
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setVendorSimNumber(I)Z

    move-result v2

    if-nez v2, :cond_12

    .line 832
    const-string v2, "SupplicantStaNetworkHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": failed to set VendorSimNumber : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_12
    monitor-exit v0

    return v4

    .line 836
    .end local v1    # "eapParam":Ljava/lang/String;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendNetworkEapIdentityResponse(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    .line 3127
    .local p1, "unencryptedIdentity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .local p2, "encryptedIdentity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3128
    :try_start_0
    const-string v1, "sendNetworkEapIdentityResponse"

    .line 3129
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "sendNetworkEapIdentityResponse"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 3133
    :cond_0
    nop

    .line 3134
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getSupplicantStaNetworkForV1_1Mockable()Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork;

    move-result-object v2

    .line 3136
    .local v2, "iSupplicantStaNetworkV11":Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork;
    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 3137
    invoke-interface {v2, p1, p2}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork;->sendNetworkEapIdentityResponse_1_1(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .local v4, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    goto :goto_0

    .line 3140
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v4, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->sendNetworkEapIdentityResponse(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 3144
    .restart local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :goto_0
    const-string v5, "sendNetworkEapIdentityResponse"

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v5

    .line 3145
    .end local v2    # "iSupplicantStaNetworkV11":Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork;
    .end local v4    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 3146
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "sendNetworkEapIdentityResponse"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 3147
    monitor-exit v0

    return v3

    .line 3149
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private sendNetworkEapSimGsmAuthResponse(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;",
            ">;)Z"
        }
    .end annotation

    .line 2944
    .local p1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;>;"
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2945
    :try_start_0
    const-string v1, "sendNetworkEapSimGsmAuthResponse"

    .line 2946
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "sendNetworkEapSimGsmAuthResponse"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2948
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    .line 2949
    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->sendNetworkEapSimGsmAuthResponse(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2950
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "sendNetworkEapSimGsmAuthResponse"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2951
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 2952
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "sendNetworkEapSimGsmAuthResponse"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2953
    monitor-exit v0

    return v3

    .line 2955
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private sendNetworkEapSimUmtsAuthResponse(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;)Z
    .locals 5
    .param p1, "params"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;

    .line 3018
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3019
    :try_start_0
    const-string v1, "sendNetworkEapSimUmtsAuthResponse"

    .line 3020
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "sendNetworkEapSimUmtsAuthResponse"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 3022
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    .line 3023
    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->sendNetworkEapSimUmtsAuthResponse(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 3024
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "sendNetworkEapSimUmtsAuthResponse"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 3025
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 3026
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "sendNetworkEapSimUmtsAuthResponse"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 3027
    monitor-exit v0

    return v3

    .line 3029
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private sendNetworkEapSimUmtsAutsResponse([B)Z
    .locals 5
    .param p1, "auts"    # [B

    .line 3059
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3060
    :try_start_0
    const-string v1, "sendNetworkEapSimUmtsAutsResponse"

    .line 3061
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "sendNetworkEapSimUmtsAutsResponse"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 3063
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    .line 3064
    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->sendNetworkEapSimUmtsAutsResponse([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 3065
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "sendNetworkEapSimUmtsAutsResponse"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 3066
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 3067
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "sendNetworkEapSimUmtsAutsResponse"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 3068
    monitor-exit v0

    return v3

    .line 3070
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setAuthAlg(I)Z
    .locals 5
    .param p1, "authAlgMask"    # I

    .line 1531
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1532
    :try_start_0
    const-string v1, "setAuthAlg"

    .line 1533
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setAuthAlg"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1535
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setAuthAlg(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1536
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setAuthAlg"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1537
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1538
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setAuthAlg"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1539
    monitor-exit v0

    return v3

    .line 1541
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setBssid([B)Z
    .locals 5
    .param p1, "bssid"    # [B

    .line 1446
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1447
    :try_start_0
    const-string v1, "setBssid"

    .line 1448
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setBssid"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1450
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setBssid([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1451
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setBssid"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1452
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1453
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setBssid"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1454
    monitor-exit v0

    return v3

    .line 1456
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setDppConnector(Ljava/lang/String;)Z
    .locals 5
    .param p1, "connector"    # Ljava/lang/String;

    .line 1962
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1963
    :try_start_0
    const-string v1, "setDppConnector"

    .line 1964
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setDppConnector"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1966
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    invoke-interface {v2, p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->setDppConnector(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1967
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setDppConnector"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1968
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1969
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setDppConnector"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1970
    monitor-exit v0

    return v3

    .line 1972
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setDppCsign(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    .line 2004
    .local p1, "csign":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2005
    :try_start_0
    const-string v1, "setDppCsign"

    .line 2006
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setDppCsign"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2008
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    invoke-interface {v2, p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->setDppCsign(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2009
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setDppCsign"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2010
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 2011
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setDppCsign"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2012
    monitor-exit v0

    return v3

    .line 2014
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setDppNetAccessKey(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    .line 1976
    .local p1, "netAccessKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1977
    :try_start_0
    const-string v1, "setDppNetAccessKey"

    .line 1978
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setDppNetAccessKey"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1980
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    invoke-interface {v2, p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->setDppNetAccessKey(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1981
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setDppNetAccessKey"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1982
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1983
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setDppNetAccessKey"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1984
    monitor-exit v0

    return v3

    .line 1986
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setDppNetAccessKeyExpiry(I)Z
    .locals 5
    .param p1, "expiry"    # I

    .line 1990
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1991
    :try_start_0
    const-string v1, "setDppNetAccessKeyExpiry"

    .line 1992
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setDppNetAccessKeyExpiry"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1994
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    invoke-interface {v2, p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->setDppNetAccessKeyExpiry(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1995
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setDppNetAccessKeyExpiry"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1996
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1997
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setDppNetAccessKeyExpiry"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1998
    monitor-exit v0

    return v3

    .line 2000
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setEapAltSubjectMatch(Ljava/lang/String;)Z
    .locals 5
    .param p1, "match"    # Ljava/lang/String;

    .line 1876
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1877
    :try_start_0
    const-string v1, "setEapAltSubjectMatch"

    .line 1878
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setEapAltSubjectMatch"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1880
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapAltSubjectMatch(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1881
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setEapAltSubjectMatch"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1882
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1883
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setEapAltSubjectMatch"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1884
    monitor-exit v0

    return v3

    .line 1886
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setEapAnonymousIdentity(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    .line 1778
    .local p1, "identity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1779
    :try_start_0
    const-string v1, "setEapAnonymousIdentity"

    .line 1780
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setEapAnonymousIdentity"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1782
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapAnonymousIdentity(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1783
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setEapAnonymousIdentity"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1784
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1785
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setEapAnonymousIdentity"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1786
    monitor-exit v0

    return v3

    .line 1788
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setEapCACert(Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .line 1806
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1807
    :try_start_0
    const-string v1, "setEapCACert"

    .line 1808
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setEapCACert"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1810
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapCACert(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1811
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setEapCACert"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1812
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1813
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setEapCACert"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1814
    monitor-exit v0

    return v3

    .line 1816
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setEapCAPath(Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .line 1820
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1821
    :try_start_0
    const-string v1, "setEapCAPath"

    .line 1822
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setEapCAPath"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1824
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapCAPath(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1825
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setEapCAPath"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1826
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1827
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setEapCAPath"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1828
    monitor-exit v0

    return v3

    .line 1830
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setEapClientCert(Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .line 1834
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1835
    :try_start_0
    const-string v1, "setEapClientCert"

    .line 1836
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setEapClientCert"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1838
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapClientCert(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1839
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setEapClientCert"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1840
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1841
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setEapClientCert"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1842
    monitor-exit v0

    return v3

    .line 1844
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setEapDomainSuffixMatch(Ljava/lang/String;)Z
    .locals 5
    .param p1, "match"    # Ljava/lang/String;

    .line 1918
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1919
    :try_start_0
    const-string v1, "setEapDomainSuffixMatch"

    .line 1920
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setEapDomainSuffixMatch"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1922
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapDomainSuffixMatch(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1923
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setEapDomainSuffixMatch"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1924
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1925
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setEapDomainSuffixMatch"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1926
    monitor-exit v0

    return v3

    .line 1928
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setEapEngine(Z)Z
    .locals 5
    .param p1, "enable"    # Z

    .line 1890
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1891
    :try_start_0
    const-string v1, "setEapEngine"

    .line 1892
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setEapEngine"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1894
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapEngine(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1895
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setEapEngine"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1896
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1897
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setEapEngine"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1898
    monitor-exit v0

    return v3

    .line 1900
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setEapEngineID(Ljava/lang/String;)Z
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .line 1904
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1905
    :try_start_0
    const-string v1, "setEapEngineID"

    .line 1906
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setEapEngineID"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1908
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapEngineID(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1909
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setEapEngineID"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1910
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1911
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setEapEngineID"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1912
    monitor-exit v0

    return v3

    .line 1914
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setEapErp(Z)Z
    .locals 5
    .param p1, "enable"    # Z

    .line 1948
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1949
    :try_start_0
    const-string v1, "setEapErp"

    .line 1950
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setEapErp"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1952
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    invoke-interface {v2, p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->setEapErp(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1953
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setEapErp"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1954
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1955
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setEapErp"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1956
    monitor-exit v0

    return v3

    .line 1958
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setEapIdentity(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    .line 1764
    .local p1, "identity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1765
    :try_start_0
    const-string v1, "setEapIdentity"

    .line 1766
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setEapIdentity"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1768
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapIdentity(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1769
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setEapIdentity"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1770
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1771
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setEapIdentity"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1772
    monitor-exit v0

    return v3

    .line 1774
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setEapMethod(I)Z
    .locals 5
    .param p1, "method"    # I

    .line 1736
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1737
    :try_start_0
    const-string v1, "setEapMethod"

    .line 1738
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setEapMethod"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1740
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapMethod(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1741
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setEapMethod"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1742
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1743
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setEapMethod"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1744
    monitor-exit v0

    return v3

    .line 1746
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setEapOpensslCiphers(Ljava/lang/String;)Z
    .locals 5
    .param p1, "cipher"    # Ljava/lang/String;

    .line 1617
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1618
    :try_start_0
    const-string v1, "setEapOpensslCiphers"

    .line 1619
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setEapOpensslCiphers"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1621
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    invoke-interface {v2, p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->setEapOpensslCiphers(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1622
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setEapOpensslCiphers"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1623
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1624
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setEapOpensslCiphers"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1625
    monitor-exit v0

    return v3

    .line 1627
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setEapPassword(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    .line 1792
    .local p1, "password":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1793
    :try_start_0
    const-string v1, "setEapPassword"

    .line 1794
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setEapPassword"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1796
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapPassword(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1797
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setEapPassword"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1798
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1799
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setEapPassword"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1800
    monitor-exit v0

    return v3

    .line 1802
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setEapPhase1Params(Ljava/lang/String;)Z
    .locals 5
    .param p1, "phase1"    # Ljava/lang/String;

    .line 1603
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1604
    :try_start_0
    const-string v1, "setEapPhase1Params"

    .line 1605
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setEapPhase1Params"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1607
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    invoke-interface {v2, p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->setEapPhase1Params(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1608
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setEapPhase1Params"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1609
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1610
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setEapPhase1Params"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1611
    monitor-exit v0

    return v3

    .line 1613
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setEapPhase2Method(I)Z
    .locals 5
    .param p1, "method"    # I

    .line 1750
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1751
    :try_start_0
    const-string v1, "setEapPhase2Method"

    .line 1752
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setEapPhase2Method"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1754
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapPhase2Method(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1755
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setEapPhase2Method"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1756
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1757
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setEapPhase2Method"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1758
    monitor-exit v0

    return v3

    .line 1760
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setEapPrivateKeyId(Ljava/lang/String;)Z
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .line 1848
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1849
    :try_start_0
    const-string v1, "setEapPrivateKeyId"

    .line 1850
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setEapPrivateKeyId"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1852
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapPrivateKeyId(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1853
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setEapPrivateKeyId"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1854
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1855
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setEapPrivateKeyId"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1856
    monitor-exit v0

    return v3

    .line 1858
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setEapProactiveKeyCaching(Z)Z
    .locals 5
    .param p1, "enable"    # Z

    .line 1933
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1934
    :try_start_0
    const-string v1, "setEapProactiveKeyCaching"

    .line 1935
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setEapProactiveKeyCaching"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1937
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setProactiveKeyCaching(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1938
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setEapProactiveKeyCaching"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1939
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1940
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setEapProactiveKeyCaching"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1941
    monitor-exit v0

    return v3

    .line 1943
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setEapSubjectMatch(Ljava/lang/String;)Z
    .locals 5
    .param p1, "match"    # Ljava/lang/String;

    .line 1862
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1863
    :try_start_0
    const-string v1, "setEapSubjectMatch"

    .line 1864
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setEapSubjectMatch"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1866
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setEapSubjectMatch(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1867
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setEapSubjectMatch"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1868
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1869
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setEapSubjectMatch"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1870
    monitor-exit v0

    return v3

    .line 1872
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setGroupCipher(I)Z
    .locals 5
    .param p1, "groupCipherMask"    # I

    .line 1545
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1546
    :try_start_0
    const-string v1, "setGroupCipher"

    .line 1547
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setGroupCipher"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1549
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setGroupCipher(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1550
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setGroupCipher"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1551
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1552
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setGroupCipher"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1553
    monitor-exit v0

    return v3

    .line 1555
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setGroupMgmtCipher(I)Z
    .locals 5
    .param p1, "groupMgmtCipherMask"    # I

    .line 1589
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1590
    :try_start_0
    const-string v1, "setGroupMgmtCipher"

    .line 1591
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setGroupMgmtCipher"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1593
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    invoke-interface {v2, p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->setGroupMgmtCipher(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1594
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setGroupMgmtCipher"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1595
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1596
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setGroupMgmtCipher"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1597
    monitor-exit v0

    return v3

    .line 1599
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setIdStr(Ljava/lang/String;)Z
    .locals 5
    .param p1, "idString"    # Ljava/lang/String;

    .line 2181
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2182
    :try_start_0
    const-string v1, "setIdStr"

    .line 2183
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setIdStr"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2185
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setIdStr(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2186
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setIdStr"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2187
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 2188
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setIdStr"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2189
    monitor-exit v0

    return v3

    .line 2191
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setKeyMgmt(I)Z
    .locals 5
    .param p1, "keyMgmtMask"    # I

    .line 1474
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1475
    :try_start_0
    const-string v1, "setKeyMgmt"

    .line 1476
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setKeyMgmt"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1478
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setKeyMgmt(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1479
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setKeyMgmt"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1480
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1481
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setKeyMgmt"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1482
    monitor-exit v0

    return v3

    .line 1484
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setPairwiseCipher(I)Z
    .locals 5
    .param p1, "pairwiseCipherMask"    # I

    .line 1632
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1633
    :try_start_0
    const-string v1, "setPairwiseCipher"

    .line 1634
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setPairwiseCipher"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1636
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    .line 1637
    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setPairwiseCipher(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1638
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setPairwiseCipher"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1639
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1640
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setPairwiseCipher"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1641
    monitor-exit v0

    return v3

    .line 1643
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setProto(I)Z
    .locals 5
    .param p1, "protoMask"    # I

    .line 1503
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1504
    :try_start_0
    const-string v1, "setProto"

    .line 1505
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setProto"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1507
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setProto(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1508
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setProto"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1509
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1510
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setProto"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1511
    monitor-exit v0

    return v3

    .line 1513
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setPsk([B)Z
    .locals 5
    .param p1, "psk"    # [B

    .line 1661
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1662
    :try_start_0
    const-string v1, "setPsk"

    .line 1663
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setPsk"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1665
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setPsk([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1666
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setPsk"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1671
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1672
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v4, "setPsk"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleOutOfBoundsException(Ljava/lang/ArrayIndexOutOfBoundsException;Ljava/lang/String;)V

    .line 1673
    monitor-exit v0

    return v3

    .line 1667
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v2

    .line 1668
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setPsk"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1669
    monitor-exit v0

    return v3

    .line 1676
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setPskPassphrase(Ljava/lang/String;)Z
    .locals 5
    .param p1, "psk"    # Ljava/lang/String;

    .line 1647
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1648
    :try_start_0
    const-string v1, "setPskPassphrase"

    .line 1649
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setPskPassphrase"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1651
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setPskPassphrase(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1652
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setPskPassphrase"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1653
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1654
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setPskPassphrase"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1655
    monitor-exit v0

    return v3

    .line 1657
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setRequirePmf(Z)Z
    .locals 5
    .param p1, "enable"    # Z

    .line 1708
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1709
    :try_start_0
    const-string v1, "setRequirePmf"

    .line 1710
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setRequirePmf"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1712
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setRequirePmf(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1713
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setRequirePmf"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1714
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1715
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setRequirePmf"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1716
    monitor-exit v0

    return v3

    .line 1718
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setScanSsid(Z)Z
    .locals 5
    .param p1, "enable"    # Z

    .line 1460
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1461
    :try_start_0
    const-string v1, "setScanSsid"

    .line 1462
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setScanSsid"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1464
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setScanSsid(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1465
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setScanSsid"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1466
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1467
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setScanSsid"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1468
    monitor-exit v0

    return v3

    .line 1470
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setSsid(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    .line 1414
    .local p1, "ssid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1415
    :try_start_0
    const-string v1, "setSsid"

    .line 1416
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setSsid"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1418
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setSsid(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1419
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setSsid"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1420
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1421
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setSsid"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1422
    monitor-exit v0

    return v3

    .line 1424
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setUpdateIdentifier(I)Z
    .locals 5
    .param p1, "identifier"    # I

    .line 1722
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1723
    :try_start_0
    const-string v1, "setUpdateIdentifier"

    .line 1724
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setUpdateIdentifier"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1726
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setUpdateIdentifier(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1727
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setUpdateIdentifier"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1728
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1729
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setUpdateIdentifier"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1730
    monitor-exit v0

    return v3

    .line 1732
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setVendorGroupCipher(I)Z
    .locals 5
    .param p1, "groupCipherMask"    # I

    .line 1559
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1560
    :try_start_0
    const-string v1, "setVendorGroupCipher"

    .line 1561
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "SupplicantStaNetworkHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Vendor group cipher "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    const-string v2, "setVendorGroupCipher"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1564
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    invoke-interface {v2, p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->setVendorGroupCipher(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1565
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setVendorGroupCipher"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1566
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1567
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setVendorGroupCipher"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1568
    monitor-exit v0

    return v3

    .line 1570
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setVendorKeyMgmt(I)Z
    .locals 5
    .param p1, "keyMgmtMask"    # I

    .line 1488
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1489
    :try_start_0
    const-string v1, "setVendorKeyMgmt"

    .line 1490
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "SupplicantStaNetworkHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Vendor Key Management "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    const-string v2, "setVendorKeyMgmt"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1493
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    invoke-interface {v2, p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->setVendorKeyMgmt(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1494
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setVendorKeyMgmt"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1495
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1496
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setVendorKeyMgmt"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1497
    monitor-exit v0

    return v3

    .line 1499
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setVendorPairwiseCipher(I)Z
    .locals 5
    .param p1, "pairwiseCipherMask"    # I

    .line 1574
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1575
    :try_start_0
    const-string v1, "setVendorPairwiseCipher"

    .line 1576
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "SupplicantStaNetworkHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Vendor Pairwise cipher "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    const-string v2, "setVendorPairwiseCipher"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1579
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    invoke-interface {v2, p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->setVendorPairwiseCipher(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1580
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setVendorPairwiseCipher"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1581
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1582
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setVendorPairwiseCipher"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1583
    monitor-exit v0

    return v3

    .line 1585
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setVendorProto(I)Z
    .locals 5
    .param p1, "protoMask"    # I

    .line 1517
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1518
    :try_start_0
    const-string v1, "setVendorProto"

    .line 1519
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setVendorProto"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1521
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    invoke-interface {v2, p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->setVendorProto(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1522
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setVendorProto"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1523
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1524
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setVendorProto"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1525
    monitor-exit v0

    return v3

    .line 1527
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setVendorSimNumber(I)Z
    .locals 5
    .param p1, "SimNum"    # I

    .line 2017
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2018
    :try_start_0
    const-string v1, "setVendorSimNumber"

    .line 2019
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setVendorSimNumber"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2021
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    invoke-interface {v2, p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->setVendorSimNumber(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2022
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setVendorSimNumber"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2023
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 2024
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setVendorSimNumber"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2025
    monitor-exit v0

    return v3

    .line 2027
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setWapiCertSel(Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 2074
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2075
    :try_start_0
    const-string v1, "setWapiCertSel"

    .line 2076
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setWapiCertSel"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2078
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    invoke-interface {v2, p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->setWapiCertSel(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2079
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setWapiCertSel"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2080
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 2081
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setWapiCertSel"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2082
    monitor-exit v0

    return v3

    .line 2084
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setWapiCertSelMode(I)Z
    .locals 5
    .param p1, "mode"    # I

    .line 2060
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2061
    :try_start_0
    const-string v1, "setWapiCertSelMode"

    .line 2062
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setWapiCertSelMode"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2064
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    invoke-interface {v2, p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->setWapiCertSelMode(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2065
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setWapiCertSelMode"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2066
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 2067
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setWapiCertSelMode"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2068
    monitor-exit v0

    return v3

    .line 2070
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setWapiPsk(Ljava/lang/String;)Z
    .locals 5
    .param p1, "psk"    # Ljava/lang/String;

    .line 2046
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2047
    :try_start_0
    const-string v1, "setWapiPsk"

    .line 2048
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setWapiPsk"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2050
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    invoke-interface {v2, p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->setWapiPsk(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2051
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setWapiPsk"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2052
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 2053
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setWapiPsk"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2054
    monitor-exit v0

    return v3

    .line 2056
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setWapiPskType(I)Z
    .locals 5
    .param p1, "type"    # I

    .line 2032
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2033
    :try_start_0
    const-string v1, "setWapiPskType"

    .line 2034
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setWapiPskType"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantVendorStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2036
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    invoke-interface {v2, p1}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;->setWapiPskType(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2037
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setWapiPskType"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkVendorStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2038
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 2039
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setWapiPskType"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2040
    monitor-exit v0

    return v3

    .line 2042
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setWepKey(ILjava/util/ArrayList;)Z
    .locals 5
    .param p1, "keyIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    .line 1680
    .local p2, "wepKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1681
    :try_start_0
    const-string v1, "setWepKey"

    .line 1682
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setWepKey"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1684
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setWepKey(ILjava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1685
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setWepKey"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1686
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1687
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setWepKey"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1688
    monitor-exit v0

    return v3

    .line 1690
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setWepTxKeyIdx(I)Z
    .locals 5
    .param p1, "keyIdx"    # I

    .line 1694
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1695
    :try_start_0
    const-string v1, "setWepTxKeyIdx"

    .line 1696
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "setWepTxKeyIdx"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1698
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->setWepTxKeyIdx(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1699
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "setWepTxKeyIdx"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1700
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 1701
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "setWepTxKeyIdx"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1702
    monitor-exit v0

    return v3

    .line 1704
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I
    .locals 1
    .param p0, "supplicantMask"    # I
    .param p1, "supplicantValue"    # I
    .param p2, "bitset"    # Ljava/util/BitSet;
    .param p3, "bitSetPosition"    # I

    .line 1161
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, p3, v0}, Ljava/util/BitSet;->set(IZ)V

    .line 1162
    not-int v0, p1

    and-int/2addr v0, p0

    .line 1163
    .local v0, "modifiedSupplicantMask":I
    return v0
.end method

.method private static supplicantToWifiConfigurationAuthAlgMask(I)Ljava/util/BitSet;
    .locals 4
    .param p0, "mask"    # I

    .line 1229
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 1230
    .local v0, "bitset":Ljava/util/BitSet;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1233
    const/4 v2, 0x2

    invoke-static {p0, v2, v0, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1236
    const/4 v1, 0x4

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1239
    if-nez p0, :cond_0

    .line 1243
    return-object v0

    .line 1240
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid auth alg mask from supplicant: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static supplicantToWifiConfigurationEapMethod(I)I
    .locals 3
    .param p0, "value"    # I

    .line 1110
    packed-switch p0, :pswitch_data_0

    .line 1129
    const-string v0, "SupplicantStaNetworkHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid eap method value from supplicant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    const/4 v0, -0x1

    return v0

    .line 1126
    :pswitch_0
    const/4 v0, 0x7

    return v0

    .line 1124
    :pswitch_1
    const/4 v0, 0x6

    return v0

    .line 1122
    :pswitch_2
    const/4 v0, 0x5

    return v0

    .line 1120
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 1118
    :pswitch_4
    const/4 v0, 0x3

    return v0

    .line 1116
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 1114
    :pswitch_6
    const/4 v0, 0x1

    return v0

    .line 1112
    :pswitch_7
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static supplicantToWifiConfigurationEapPhase2Method(I)I
    .locals 3
    .param p0, "value"    # I

    .line 1135
    packed-switch p0, :pswitch_data_0

    .line 1153
    const-string v0, "SupplicantStaNetworkHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid eap phase2 method value from supplicant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    const/4 v0, -0x1

    return v0

    .line 1151
    :pswitch_0
    const/4 v0, 0x7

    return v0

    .line 1149
    :pswitch_1
    const/4 v0, 0x6

    return v0

    .line 1147
    :pswitch_2
    const/4 v0, 0x5

    return v0

    .line 1145
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 1143
    :pswitch_4
    const/4 v0, 0x3

    return v0

    .line 1141
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 1139
    :pswitch_6
    const/4 v0, 0x1

    return v0

    .line 1137
    :pswitch_7
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static supplicantToWifiConfigurationGroupCipherMask(I)Ljava/util/BitSet;
    .locals 4
    .param p0, "mask"    # I

    .line 1247
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 1248
    .local v0, "bitset":Ljava/util/BitSet;
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1251
    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-static {p0, v2, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1254
    const/16 v3, 0x8

    invoke-static {p0, v3, v0, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1257
    const/16 v1, 0x10

    const/4 v3, 0x3

    invoke-static {p0, v1, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1260
    const/16 v1, 0x100

    const/4 v3, 0x5

    invoke-static {p0, v1, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1263
    const/16 v1, 0x4000

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1266
    if-nez p0, :cond_0

    .line 1270
    return-object v0

    .line 1267
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid group cipher mask from supplicant: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static supplicantToWifiConfigurationGroupMgmtCipherMask(I)Ljava/util/BitSet;
    .locals 4
    .param p0, "mask"    # I

    .line 1274
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 1275
    .local v0, "bitset":Ljava/util/BitSet;
    const/16 v1, 0x1000

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1278
    const/16 v1, 0x2000

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1281
    if-nez p0, :cond_0

    .line 1285
    return-object v0

    .line 1282
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid group mgmt cipher mask from supplicant: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static supplicantToWifiConfigurationKeyMgmtMask(I)Ljava/util/BitSet;
    .locals 4
    .param p0, "mask"    # I

    .line 1167
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 1168
    .local v0, "bitset":Ljava/util/BitSet;
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1171
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {p0, v2, v0, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1174
    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1177
    const/16 v1, 0x8

    const/4 v2, 0x3

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1180
    const v1, 0x8000

    const/4 v2, 0x5

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1183
    const/16 v1, 0x40

    const/4 v2, 0x6

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1186
    const/16 v1, 0x20

    const/4 v2, 0x7

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1190
    const/16 v1, 0x1000

    const/16 v2, 0xbe

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1193
    const/16 v1, 0x2000

    const/16 v2, 0xbf

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1198
    if-nez p0, :cond_0

    .line 1202
    return-object v0

    .line 1199
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid key mgmt mask from supplicant: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static supplicantToWifiConfigurationPairwiseCipherMask(I)Ljava/util/BitSet;
    .locals 4
    .param p0, "mask"    # I

    .line 1289
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 1290
    .local v0, "bitset":Ljava/util/BitSet;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1293
    const/16 v2, 0x8

    invoke-static {p0, v2, v0, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1296
    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1299
    const/16 v1, 0x100

    const/4 v2, 0x3

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1302
    if-nez p0, :cond_0

    .line 1306
    return-object v0

    .line 1303
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid pairwise cipher mask from supplicant: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static supplicantToWifiConfigurationProtoMask(I)Ljava/util/BitSet;
    .locals 4
    .param p0, "mask"    # I

    .line 1206
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 1207
    .local v0, "bitset":Ljava/util/BitSet;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1210
    const/4 v2, 0x2

    invoke-static {p0, v2, v0, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1213
    const/16 v1, 0x8

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1217
    const/4 v1, 0x4

    const/4 v2, 0x3

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    .line 1221
    if-nez p0, :cond_0

    .line 1225
    return-object v0

    .line 1222
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid proto mask from supplicant: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static wifiConfigurationToSupplicantAuthAlgMask(Ljava/util/BitSet;)I
    .locals 5
    .param p0, "authAlgMask"    # Ljava/util/BitSet;

    .line 985
    const/4 v0, 0x0

    .line 986
    .local v0, "mask":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    .local v1, "bit":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 988
    packed-switch v1, :pswitch_data_0

    .line 999
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid authAlgMask bit in wificonfig: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 996
    :pswitch_0
    or-int/lit8 v0, v0, 0x4

    .line 997
    goto :goto_1

    .line 993
    :pswitch_1
    or-int/lit8 v0, v0, 0x2

    .line 994
    goto :goto_1

    .line 990
    :pswitch_2
    or-int/lit8 v0, v0, 0x1

    .line 991
    nop

    .line 987
    :goto_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_0

    .line 1003
    .end local v1    # "bit":I
    :cond_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static wifiConfigurationToSupplicantEapMethod(I)I
    .locals 3
    .param p0, "value"    # I

    .line 1310
    packed-switch p0, :pswitch_data_0

    .line 1329
    const-string v0, "SupplicantStaNetworkHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid eap method value from WifiConfiguration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    const/4 v0, -0x1

    return v0

    .line 1326
    :pswitch_0
    const/4 v0, 0x7

    return v0

    .line 1324
    :pswitch_1
    const/4 v0, 0x6

    return v0

    .line 1322
    :pswitch_2
    const/4 v0, 0x5

    return v0

    .line 1320
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 1318
    :pswitch_4
    const/4 v0, 0x3

    return v0

    .line 1316
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 1314
    :pswitch_6
    const/4 v0, 0x1

    return v0

    .line 1312
    :pswitch_7
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static wifiConfigurationToSupplicantEapPhase2Method(I)I
    .locals 3
    .param p0, "value"    # I

    .line 1335
    packed-switch p0, :pswitch_data_0

    .line 1353
    const-string v0, "SupplicantStaNetworkHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid eap phase2 method value from WifiConfiguration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    const/4 v0, -0x1

    return v0

    .line 1351
    :pswitch_0
    const/4 v0, 0x7

    return v0

    .line 1349
    :pswitch_1
    const/4 v0, 0x6

    return v0

    .line 1347
    :pswitch_2
    const/4 v0, 0x5

    return v0

    .line 1345
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 1343
    :pswitch_4
    const/4 v0, 0x3

    return v0

    .line 1341
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 1339
    :pswitch_6
    const/4 v0, 0x1

    return v0

    .line 1337
    :pswitch_7
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static wifiConfigurationToSupplicantGroupCipherMask(Ljava/util/BitSet;)I
    .locals 5
    .param p0, "groupCipherMask"    # Ljava/util/BitSet;

    .line 1007
    const/4 v0, 0x0

    .line 1008
    .local v0, "mask":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    .local v1, "bit":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1010
    packed-switch v1, :pswitch_data_0

    .line 1029
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid GroupCipherMask bit in wificonfig: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1027
    :pswitch_0
    goto :goto_1

    .line 1024
    :pswitch_1
    or-int/lit16 v0, v0, 0x4000

    .line 1025
    goto :goto_1

    .line 1021
    :pswitch_2
    or-int/lit8 v0, v0, 0x10

    .line 1022
    goto :goto_1

    .line 1018
    :pswitch_3
    or-int/lit8 v0, v0, 0x8

    .line 1019
    goto :goto_1

    .line 1015
    :pswitch_4
    or-int/lit8 v0, v0, 0x4

    .line 1016
    goto :goto_1

    .line 1012
    :pswitch_5
    or-int/lit8 v0, v0, 0x2

    .line 1013
    nop

    .line 1008
    :goto_1
    add-int/lit8 v2, v1, 0x1

    .line 1009
    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_0

    .line 1033
    .end local v1    # "bit":I
    :cond_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static wifiConfigurationToSupplicantKeyMgmtMask(Ljava/util/BitSet;)I
    .locals 5
    .param p0, "keyMgmt"    # Ljava/util/BitSet;

    .line 846
    const/4 v0, 0x0

    .line 847
    .local v0, "mask":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    .local v1, "bit":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 848
    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 888
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid protoMask bit in keyMgmt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 875
    :pswitch_0
    const/high16 v2, 0x80000

    or-int/2addr v0, v2

    .line 876
    goto :goto_1

    .line 872
    :pswitch_1
    const/high16 v2, 0x40000

    or-int/2addr v0, v2

    .line 873
    goto :goto_1

    .line 868
    :pswitch_2
    or-int/lit8 v0, v0, 0x20

    .line 869
    goto :goto_1

    .line 865
    :pswitch_3
    or-int/lit8 v0, v0, 0x40

    .line 866
    goto :goto_1

    .line 862
    :pswitch_4
    const v2, 0x8000

    or-int/2addr v0, v2

    .line 863
    goto :goto_1

    .line 886
    :pswitch_5
    goto :goto_1

    .line 859
    :pswitch_6
    or-int/lit8 v0, v0, 0x8

    .line 860
    goto :goto_1

    .line 856
    :pswitch_7
    or-int/lit8 v0, v0, 0x1

    .line 857
    goto :goto_1

    .line 853
    :pswitch_8
    or-int/lit8 v0, v0, 0x2

    .line 854
    goto :goto_1

    .line 850
    :pswitch_9
    or-int/lit8 v0, v0, 0x4

    .line 851
    nop

    .line 847
    :goto_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_0

    .line 892
    .end local v1    # "bit":I
    :cond_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xbe
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private static wifiConfigurationToSupplicantPairwiseCipherMask(Ljava/util/BitSet;)I
    .locals 5
    .param p0, "pairwiseCipherMask"    # Ljava/util/BitSet;

    .line 1071
    const/4 v0, 0x0

    .line 1072
    .local v0, "mask":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    .local v1, "bit":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1074
    packed-switch v1, :pswitch_data_0

    .line 1087
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid pairwiseCipherMask bit in wificonfig: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1085
    :pswitch_0
    goto :goto_1

    .line 1082
    :pswitch_1
    or-int/lit8 v0, v0, 0x10

    .line 1083
    goto :goto_1

    .line 1079
    :pswitch_2
    or-int/lit8 v0, v0, 0x8

    .line 1080
    goto :goto_1

    .line 1076
    :pswitch_3
    or-int/lit8 v0, v0, 0x1

    .line 1077
    nop

    .line 1073
    :goto_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_0

    .line 1091
    .end local v1    # "bit":I
    :cond_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static wifiConfigurationToSupplicantProtoMask(Ljava/util/BitSet;)I
    .locals 5
    .param p0, "protoMask"    # Ljava/util/BitSet;

    .line 943
    const/4 v0, 0x0

    .line 944
    .local v0, "mask":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    .local v1, "bit":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 945
    packed-switch v1, :pswitch_data_0

    .line 960
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid protoMask bit in wificonfig: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 957
    :pswitch_0
    goto :goto_1

    .line 953
    :pswitch_1
    or-int/lit8 v0, v0, 0x8

    .line 954
    goto :goto_1

    .line 950
    :pswitch_2
    or-int/lit8 v0, v0, 0x2

    .line 951
    goto :goto_1

    .line 947
    :pswitch_3
    or-int/lit8 v0, v0, 0x1

    .line 948
    nop

    .line 944
    :goto_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_0

    .line 964
    .end local v1    # "bit":I
    :cond_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static wifiConfigurationToSupplicantVendorGroupCipherMask(Ljava/util/BitSet;)I
    .locals 5
    .param p0, "groupCipherMask"    # Ljava/util/BitSet;

    .line 1037
    const/4 v0, 0x0

    .line 1038
    .local v0, "mask":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    .local v1, "bit":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1040
    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 1045
    const-string v2, "SupplicantStaNetworkHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid VendorGroupCipherMask bit in wificonfig:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1042
    :cond_0
    or-int/lit16 v0, v0, 0x100

    .line 1043
    nop

    .line 1038
    :goto_1
    add-int/lit8 v2, v1, 0x1

    .line 1039
    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_0

    .line 1048
    .end local v1    # "bit":I
    :cond_1
    return v0
.end method

.method private static wifiConfigurationToSupplicantVendorGroupMgmtCipherMask(Ljava/util/BitSet;)I
    .locals 5
    .param p0, "groupMgmtCipherMask"    # Ljava/util/BitSet;

    .line 1052
    const/4 v0, 0x0

    .line 1053
    .local v0, "mask":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    .local v1, "bit":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1055
    packed-switch v1, :pswitch_data_0

    .line 1063
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid GroupMgmtCipherMask bit in wificonfig: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1060
    :pswitch_0
    or-int/lit16 v0, v0, 0x1000

    .line 1061
    goto :goto_1

    .line 1057
    :pswitch_1
    or-int/lit16 v0, v0, 0x2000

    .line 1058
    nop

    .line 1053
    :goto_1
    add-int/lit8 v2, v1, 0x1

    .line 1054
    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_0

    .line 1067
    .end local v1    # "bit":I
    :cond_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static wifiConfigurationToSupplicantVendorKeyMgmtMask(Ljava/util/BitSet;)I
    .locals 5
    .param p0, "keyMgmt"    # Ljava/util/BitSet;

    .line 902
    const/4 v0, 0x0

    .line 903
    .local v0, "mask":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    .local v1, "bit":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 904
    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 936
    const-string v2, "SupplicantStaNetworkHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid VendorKeyMgmtMask bit in keyMgmt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 931
    :pswitch_0
    or-int/lit16 v0, v0, 0x2000

    .line 932
    goto :goto_1

    .line 928
    :pswitch_1
    or-int/lit16 v0, v0, 0x1000

    .line 929
    goto :goto_1

    .line 924
    :pswitch_2
    const/high16 v2, 0x20000

    or-int/2addr v0, v2

    .line 925
    goto :goto_1

    .line 917
    :pswitch_3
    const/high16 v2, 0x400000

    or-int/2addr v0, v2

    .line 918
    goto :goto_1

    .line 920
    :pswitch_4
    const-string v2, "SupplicantStaNetworkHal"

    const-string v3, "wifiConfigurationToSupplicantVendorKeyMgmtMask: SAE: 11"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    or-int/lit16 v0, v0, 0x400

    .line 922
    goto :goto_1

    .line 914
    :pswitch_5
    const/high16 v2, 0x800000

    or-int/2addr v0, v2

    .line 915
    goto :goto_1

    .line 910
    :pswitch_6
    const-string v2, "SupplicantStaNetworkHal"

    const-string v3, "wifiConfigurationToSupplicantVendorKeyMgmtMask: 9"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    const/high16 v2, 0x80000

    or-int/2addr v0, v2

    .line 912
    goto :goto_1

    .line 906
    :pswitch_7
    const-string v2, "SupplicantStaNetworkHal"

    const-string v3, "wifiConfigurationToSupplicantVendorKeyMgmtMask: 8"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const/high16 v2, 0x40000

    or-int/2addr v0, v2

    .line 908
    nop

    .line 903
    :goto_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_0

    .line 939
    .end local v1    # "bit":I
    :cond_0
    return v0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xbe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static wifiConfigurationToSupplicantVendorPairwiseCipherMask(Ljava/util/BitSet;)I
    .locals 5
    .param p0, "pairwiseCipherMask"    # Ljava/util/BitSet;

    .line 1095
    const/4 v0, 0x0

    .line 1096
    .local v0, "mask":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    .local v1, "bit":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1098
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 1103
    const-string v2, "SupplicantStaNetworkHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid VendorPairwiseCipherMask bit in wificonfig:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1100
    :cond_0
    or-int/lit16 v0, v0, 0x100

    .line 1101
    nop

    .line 1096
    :goto_1
    add-int/lit8 v2, v1, 0x1

    .line 1097
    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_0

    .line 1106
    .end local v1    # "bit":I
    :cond_1
    return v0
.end method

.method private static wifiConfigurationToSupplicantVendorProtoMask(Ljava/util/BitSet;)I
    .locals 5
    .param p0, "protoMask"    # Ljava/util/BitSet;

    .line 968
    const/4 v0, 0x0

    .line 969
    .local v0, "mask":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    .local v1, "bit":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 970
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 978
    const-string v2, "SupplicantStaNetworkHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid protoMask bit in wificonfig: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 974
    :cond_0
    or-int/lit8 v0, v0, 0x4

    .line 975
    nop

    .line 969
    :goto_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_0

    .line 981
    .end local v1    # "bit":I
    :cond_1
    return v0
.end method


# virtual methods
.method enableVerboseLogging(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 164
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mVerboseLoggingEnabled:Z

    .line 166
    monitor-exit v0

    .line 167
    return-void

    .line 166
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public fetchEapAnonymousIdentity()Ljava/lang/String;
    .locals 2

    .line 2590
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2591
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapAnonymousIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2592
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 2594
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapAnonymousIdentity:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->stringFromByteArrayList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2595
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getId()Z
    .locals 6

    .line 1360
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1361
    :try_start_0
    const-string v1, "getId"

    .line 1362
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "getId"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 1364
    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 1365
    .local v2, "statusOk":Landroid/util/MutableBoolean;
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$IRxqwt7Zayh6hYF7VQ3jt-Epcrc;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$IRxqwt7Zayh6hYF7VQ3jt-Epcrc;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V

    invoke-interface {v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->getId(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getIdCallback;)V

    .line 1373
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 1374
    .end local v2    # "statusOk":Landroid/util/MutableBoolean;
    :catch_0
    move-exception v2

    .line 1375
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "getId"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 1376
    monitor-exit v0

    return v3

    .line 1378
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getNetworkId()I
    .locals 1

    .line 1383
    iget v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mNetworkId:I

    return v0
.end method

.method protected getSupplicantStaNetworkForV1_1Mockable()Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork;
    .locals 1

    .line 3095
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3096
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-static {v0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork;

    move-result-object v0

    return-object v0
.end method

.method public getWpsNfcConfigurationToken()Ljava/lang/String;
    .locals 3

    .line 3158
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3159
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getWpsNfcConfigurationTokenInternal()Ljava/util/ArrayList;

    move-result-object v1

    .line 3160
    .local v1, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    if-nez v1, :cond_0

    .line 3161
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 3163
    :cond_0
    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/util/NativeUtil;->hexStringFromByteArray([B)Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 3164
    .end local v1    # "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public loadWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Ljava/util/Map;)Z
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 179
    .local p2, "networkExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    const/4 v1, 0x0

    if-nez p1, :cond_0

    :try_start_0
    monitor-exit v0

    return v1

    .line 292
    :catchall_0
    move-exception v1

    goto/16 :goto_4

    .line 182
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 183
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getSsid()Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mSsid:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 184
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mSsid:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/server/wifi/util/NativeUtil;->encodeSsid(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 190
    const/4 v3, -0x1

    iput v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 191
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getId()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 192
    iget v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mNetworkId:I

    iput v4, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 198
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionBSSID(Ljava/lang/String;)V

    .line 199
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getBssid()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mBssid:[B

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v4

    if-nez v4, :cond_1

    .line 200
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mBssid:[B

    .line 201
    invoke-static {v5}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v5

    .line 200
    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionBSSID(Ljava/lang/String;)V

    .line 204
    :cond_1
    iput-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 205
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getScanSsid()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 206
    iget-boolean v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mScanSsid:Z

    iput-boolean v4, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 209
    :cond_2
    iput-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    .line 210
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getRequirePmf()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 211
    iget-boolean v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mRequirePmf:Z

    iput-boolean v4, p1, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    .line 214
    :cond_3
    iput v3, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 215
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getWepTxKeyIdx()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 216
    iget v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWepTxKeyIdx:I

    iput v3, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 218
    :cond_4
    nop

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_6

    .line 219
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v2, v3, v1

    .line 220
    invoke-direct {p0, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getWepKey(I)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWepKey:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 221
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWepKey:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/server/wifi/util/NativeUtil;->bytesToHexOrQuotedString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 218
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    .end local v1    # "i":I
    :cond_6
    iput-object v2, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 226
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getPskPassphrase()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mPskPassphrase:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 227
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mPskPassphrase:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->addEnclosingQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1

    .line 228
    :cond_7
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getPsk()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mPsk:[B

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v1

    if-nez v1, :cond_8

    .line 229
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mPsk:[B

    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->hexStringFromByteArray([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 232
    :cond_8
    :goto_1
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getKeyMgmt()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 233
    iget v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mKeyMgmtMask:I

    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantToWifiConfigurationKeyMgmtMask(I)Ljava/util/BitSet;

    move-result-object v1

    .line 234
    .local v1, "keyMgmtMask":Ljava/util/BitSet;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->removeFastTransitionFlags(Ljava/util/BitSet;)Ljava/util/BitSet;

    move-result-object v2

    iput-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 238
    .end local v1    # "keyMgmtMask":Ljava/util/BitSet;
    :cond_9
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0xbe

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 239
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getWapiPskType()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 240
    iget v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWapiPskType:I

    iput v1, p1, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    .line 242
    :cond_a
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    if-nez v1, :cond_b

    .line 243
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getWapiPsk()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 244
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWapiPsk:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->addEnclosingQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    goto :goto_2

    .line 247
    :cond_b
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getWapiPsk()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 248
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWapiPsk:Ljava/lang/String;

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    goto :goto_2

    .line 253
    :cond_c
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0xbf

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 254
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getWapiCertSelMode()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 255
    iget v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWapiCertSelMode:I

    iput v1, p1, Landroid/net/wifi/WifiConfiguration;->wapiCertSelMode:I

    .line 257
    :cond_d
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->wapiCertSelMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    .line 258
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getWapiCertSel()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 259
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWapiCertSel:Ljava/lang/String;

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wapiCertSel:Ljava/lang/String;

    .line 265
    :cond_e
    :goto_2
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getProto()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 266
    iget v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mProtoMask:I

    .line 267
    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantToWifiConfigurationProtoMask(I)Ljava/util/BitSet;

    move-result-object v1

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 270
    :cond_f
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getAuthAlg()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 271
    iget v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mAuthAlgMask:I

    .line 272
    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantToWifiConfigurationAuthAlgMask(I)Ljava/util/BitSet;

    move-result-object v1

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 275
    :cond_10
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getGroupCipher()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 276
    iget v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mGroupCipherMask:I

    .line 277
    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantToWifiConfigurationGroupCipherMask(I)Ljava/util/BitSet;

    move-result-object v1

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 280
    :cond_11
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getPairwiseCipher()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 281
    iget v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mPairwiseCipherMask:I

    .line 282
    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantToWifiConfigurationPairwiseCipherMask(I)Ljava/util/BitSet;

    move-result-object v1

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 285
    :cond_12
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getIdStr()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mIdStr:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 286
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mIdStr:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->parseNetworkExtra(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 287
    .local v1, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 288
    .end local v1    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_3

    .line 289
    :cond_13
    const-string v1, "SupplicantStaNetworkHal"

    const-string v2, "getIdStr failed or empty"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :goto_3
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->loadWifiEnterpriseConfig(Ljava/lang/String;Landroid/net/wifi/WifiEnterpriseConfig;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 194
    :cond_14
    const-string v2, "SupplicantStaNetworkHal"

    const-string v3, "getId failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    monitor-exit v0

    return v1

    .line 186
    :cond_15
    const-string v2, "SupplicantStaNetworkHal"

    const-string v3, "failed to read ssid"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    monitor-exit v0

    return v1

    .line 292
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public saveWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 9
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 303
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 304
    const/4 v1, 0x0

    if-nez p1, :cond_0

    :try_start_0
    monitor-exit v0

    return v1

    .line 521
    :catchall_0
    move-exception v1

    goto/16 :goto_2

    .line 306
    :cond_0
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 307
    invoke-static {p1}, Lcom/android/server/wifi/WifiGbk;->getRealSsid(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, "ssid":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/wifi/util/NativeUtil;->decodeSsid(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setSsid(Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 309
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to set SSID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    monitor-exit v0

    return v1

    .line 314
    .end local v2    # "ssid":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionBSSID()Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "bssidStr":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 316
    invoke-static {v2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 317
    .local v3, "bssid":[B
    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setBssid([B)Z

    move-result v4

    if-nez v4, :cond_2

    .line 318
    const-string v4, "SupplicantStaNetworkHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set BSSID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    monitor-exit v0

    return v1

    .line 324
    .end local v3    # "bssid":[B
    :cond_2
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const/4 v4, -0x1

    if-eqz v3, :cond_4

    .line 325
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x2

    if-eqz v3, :cond_3

    .line 326
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/wifi/util/NativeUtil;->removeEnclosingQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setPskPassphrase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 327
    const-string v3, "SupplicantStaNetworkHal"

    const-string v6, "failed to set psk passphrase"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v6, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v3, v6, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->broadcastAuthenticationFailureEvent(Ljava/lang/String;II)V

    .line 332
    monitor-exit v0

    return v1

    .line 335
    :cond_3
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setPsk([B)Z

    move-result v3

    if-nez v3, :cond_4

    .line 336
    const-string v3, "SupplicantStaNetworkHal"

    const-string v6, "failed to set psk"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v6, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v3, v6, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->broadcastAuthenticationFailureEvent(Ljava/lang/String;II)V

    .line 341
    monitor-exit v0

    return v1

    .line 347
    :cond_4
    const/4 v3, 0x0

    .line 348
    .local v3, "hasSetKey":Z
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 349
    move v5, v3

    move v3, v1

    .local v3, "i":I
    .local v5, "hasSetKey":Z
    :goto_0
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_7

    .line 350
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v6, v6, v3

    if-eqz v6, :cond_6

    .line 351
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v6, v6, v3

    .line 352
    invoke-static {v6}, Lcom/android/server/wifi/util/NativeUtil;->hexOrQuotedStringToBytes(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 351
    invoke-direct {p0, v3, v6}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setWepKey(ILjava/util/ArrayList;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 353
    const-string v4, "SupplicantStaNetworkHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to set wep_key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    monitor-exit v0

    return v1

    .line 356
    :cond_5
    const/4 v5, 0x1

    .line 349
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 361
    .end local v3    # "i":I
    :cond_7
    move v3, v5

    .end local v5    # "hasSetKey":Z
    .local v3, "hasSetKey":Z
    :cond_8
    if-eqz v3, :cond_9

    .line 362
    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-direct {p0, v5}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setWepTxKeyIdx(I)Z

    move-result v5

    if-nez v5, :cond_9

    .line 363
    const-string v4, "SupplicantStaNetworkHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set wep_tx_keyidx: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    monitor-exit v0

    return v1

    .line 368
    :cond_9
    iget-boolean v5, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-direct {p0, v5}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setScanSsid(Z)Z

    move-result v5

    if-nez v5, :cond_a

    .line 369
    const-string v4, "SupplicantStaNetworkHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": failed to set hiddenSSID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    monitor-exit v0

    return v1

    .line 373
    :cond_a
    iget-boolean v5, p1, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    invoke-direct {p0, v5}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setRequirePmf(Z)Z

    move-result v5

    if-nez v5, :cond_b

    .line 374
    const-string v4, "SupplicantStaNetworkHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": failed to set requirePMF: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p1, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    monitor-exit v0

    return v1

    .line 378
    :cond_b
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    if-eqz v5, :cond_11

    .line 380
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-direct {p0, v5}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->addFastTransitionFlags(Ljava/util/BitSet;)Ljava/util/BitSet;

    move-result-object v5

    .line 381
    .local v5, "keyMgmtMask":Ljava/util/BitSet;
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->wifiConfigurationToSupplicantKeyMgmtMask(Ljava/util/BitSet;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setKeyMgmt(I)Z

    move-result v6

    if-nez v6, :cond_c

    .line 382
    const-string v4, "SupplicantStaNetworkHal"

    const-string v6, "failed to set Key Management"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    monitor-exit v0

    return v1

    .line 386
    :cond_c
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->wifiConfigurationToSupplicantVendorKeyMgmtMask(Ljava/util/BitSet;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setVendorKeyMgmt(I)Z

    move-result v6

    if-nez v6, :cond_d

    .line 387
    const-string v6, "SupplicantStaNetworkHal"

    const-string v7, "failed to set Vendor Key Management"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 389
    :cond_d
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_e

    const/16 v6, 0x9

    .line 390
    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 391
    :cond_e
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v7, "eap_erp"

    const-string v8, "1"

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_f
    :goto_1
    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->saveDppConfig(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 396
    const-string v4, "SupplicantStaNetworkHal"

    const-string v6, "Failed to set DPP configurations."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    monitor-exit v0

    return v1

    .line 400
    :cond_10
    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->saveSuiteBConfig(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 401
    const-string v4, "SupplicantStaNetworkHal"

    const-string v6, "Failed to set Suite_B_192 configurations."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    monitor-exit v0

    return v1

    .line 408
    .end local v5    # "keyMgmtMask":Ljava/util/BitSet;
    :cond_11
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v6, 0xbe

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_14

    .line 409
    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-direct {p0, v5}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setWapiPskType(I)Z

    move-result v5

    if-nez v5, :cond_12

    .line 410
    const-string v4, "SupplicantStaNetworkHal"

    const-string v5, "failed to set wapiPskType"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    monitor-exit v0

    return v1

    .line 414
    :cond_12
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    if-eqz v5, :cond_16

    .line 415
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    const-string v7, "\""

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 416
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/wifi/util/NativeUtil;->removeEnclosingQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setWapiPsk(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 417
    const-string v4, "SupplicantStaNetworkHal"

    const-string v5, "failed to set wapiPsk with quotes"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    monitor-exit v0

    return v1

    .line 421
    :cond_13
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setWapiPsk(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 422
    const-string v4, "SupplicantStaNetworkHal"

    const-string v5, "failed to set wapiPsk"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    monitor-exit v0

    return v1

    .line 429
    :cond_14
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v7, 0xbf

    invoke-virtual {v5, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 430
    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->wapiCertSelMode:I

    invoke-direct {p0, v5}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setWapiCertSelMode(I)Z

    move-result v5

    if-nez v5, :cond_15

    .line 431
    const-string v4, "SupplicantStaNetworkHal"

    const-string v5, "failed to set wapiCertSelMode"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    monitor-exit v0

    return v1

    .line 434
    :cond_15
    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->wapiCertSelMode:I

    if-ne v5, v6, :cond_16

    .line 435
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->wapiCertSel:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setWapiCertSel(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 436
    const-string v4, "SupplicantStaNetworkHal"

    const-string v5, "failed to set wapiCertSel"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    monitor-exit v0

    return v1

    .line 443
    :cond_16
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    if-eqz v5, :cond_17

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 444
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->wifiConfigurationToSupplicantProtoMask(Ljava/util/BitSet;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setProto(I)Z

    move-result v5

    if-nez v5, :cond_17

    .line 445
    const-string v4, "SupplicantStaNetworkHal"

    const-string v5, "failed to set Security Protocol"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    monitor-exit v0

    return v1

    .line 449
    :cond_17
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    if-eqz v5, :cond_18

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 450
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->wifiConfigurationToSupplicantVendorProtoMask(Ljava/util/BitSet;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setVendorProto(I)Z

    move-result v5

    if-nez v5, :cond_18

    .line 451
    const-string v5, "SupplicantStaNetworkHal"

    const-string v7, "failed to set Vendor Security Protocol"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_18
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    if-eqz v5, :cond_19

    .line 456
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->isAuthAlgNeeded(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-eqz v5, :cond_19

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 457
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->wifiConfigurationToSupplicantAuthAlgMask(Ljava/util/BitSet;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setAuthAlg(I)Z

    move-result v5

    if-nez v5, :cond_19

    .line 459
    const-string v4, "SupplicantStaNetworkHal"

    const-string v5, "failed to set AuthAlgorithm"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    monitor-exit v0

    return v1

    .line 463
    :cond_19
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    if-eqz v5, :cond_1a

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 464
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->wifiConfigurationToSupplicantGroupCipherMask(Ljava/util/BitSet;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setGroupCipher(I)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 466
    const-string v4, "SupplicantStaNetworkHal"

    const-string v5, "failed to set Group Cipher"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    monitor-exit v0

    return v1

    .line 470
    :cond_1a
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    if-eqz v5, :cond_1b

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 471
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->wifiConfigurationToSupplicantVendorGroupCipherMask(Ljava/util/BitSet;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setVendorGroupCipher(I)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 473
    const-string v5, "SupplicantStaNetworkHal"

    const-string v7, "failed to set Vendor Group Cipher"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_1b
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    if-eqz v5, :cond_1c

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 477
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->wifiConfigurationToSupplicantPairwiseCipherMask(Ljava/util/BitSet;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setPairwiseCipher(I)Z

    move-result v5

    if-nez v5, :cond_1c

    .line 479
    const-string v4, "SupplicantStaNetworkHal"

    const-string v5, "failed to set PairwiseCipher"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    monitor-exit v0

    return v1

    .line 483
    :cond_1c
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    if-eqz v5, :cond_1d

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 484
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->wifiConfigurationToSupplicantVendorPairwiseCipherMask(Ljava/util/BitSet;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setVendorPairwiseCipher(I)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 486
    const-string v5, "SupplicantStaNetworkHal"

    const-string v7, "failed to set Vendor Group Cipher"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_1d
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 490
    .local v5, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 491
    const-string v7, "fqdn"

    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    :cond_1e
    const-string v7, "configKey"

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    const-string v7, "creatorUid"

    iget v8, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->createNetworkExtra(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setIdStr(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1f

    .line 496
    const-string v4, "SupplicantStaNetworkHal"

    const-string v6, "failed to set id string"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    monitor-exit v0

    return v1

    .line 500
    :cond_1f
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    if-eqz v7, :cond_20

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    .line 501
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setUpdateIdentifier(I)Z

    move-result v7

    if-nez v7, :cond_20

    .line 502
    const-string v4, "SupplicantStaNetworkHal"

    const-string v6, "failed to set update identifier"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    monitor-exit v0

    return v1

    .line 506
    :cond_20
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v7, :cond_21

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 507
    invoke-virtual {v7}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v7

    if-eq v7, v4, :cond_21

    .line 508
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {p0, v4, v7}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->saveWifiEnterpriseConfig(Ljava/lang/String;Landroid/net/wifi/WifiEnterpriseConfig;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 509
    monitor-exit v0

    return v1

    .line 514
    :cond_21
    new-instance v4, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {v4, p0, v7, v8}, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;ILjava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetworkCallback:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;

    .line 516
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetworkCallback:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;

    invoke-direct {p0, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 517
    const-string v4, "SupplicantStaNetworkHal"

    const-string v6, "Failed to register callback"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    monitor-exit v0

    return v1

    .line 520
    :cond_22
    monitor-exit v0

    return v6

    .line 521
    .end local v2    # "bssidStr":Ljava/lang/String;
    .end local v3    # "hasSetKey":Z
    .end local v5    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public select()Z
    .locals 5

    .line 2882
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2883
    :try_start_0
    const-string v1, "select"

    .line 2884
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "select"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2886
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->select()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2887
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "select"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2888
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 2889
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "select"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2890
    monitor-exit v0

    return v3

    .line 2892
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public sendNetworkEapIdentityResponse(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "identityStr"    # Ljava/lang/String;
    .param p2, "encryptedIdentityStr"    # Ljava/lang/String;

    .line 3109
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3111
    nop

    .line 3112
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->stringToByteArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3113
    .local v1, "unencryptedIdentity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v2, 0x0

    .line 3114
    .local v2, "encryptedIdentity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3115
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->stringToByteArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    move-object v2, v3

    .line 3117
    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->sendNetworkEapIdentityResponse(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return v3

    .line 3122
    .end local v1    # "unencryptedIdentity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "encryptedIdentity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 3118
    :catch_0
    move-exception v1

    .line 3119
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "SupplicantStaNetworkHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal argument "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3120
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 3122
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public sendNetworkEapSimGsmAuthFailure()Z
    .locals 5

    .line 2959
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2960
    :try_start_0
    const-string v1, "sendNetworkEapSimGsmAuthFailure"

    .line 2961
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "sendNetworkEapSimGsmAuthFailure"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 2963
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->sendNetworkEapSimGsmAuthFailure()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2964
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "sendNetworkEapSimGsmAuthFailure"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 2965
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 2966
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "sendNetworkEapSimGsmAuthFailure"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2967
    monitor-exit v0

    return v3

    .line 2969
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public sendNetworkEapSimGsmAuthResponse(Ljava/lang/String;)Z
    .locals 11
    .param p1, "paramsStr"    # Ljava/lang/String;

    .line 2902
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2904
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/android/server/wifi/SupplicantStaNetworkHal;->GSM_AUTH_RESPONSE_PARAMS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 2905
    .local v2, "match":Ljava/util/regex/Matcher;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2907
    .local v3, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;>;"
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_5

    .line 2908
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v4

    if-eq v4, v5, :cond_0

    .line 2909
    const-string v4, "SupplicantStaNetworkHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Malformed gsm auth response params: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2910
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    .line 2912
    :cond_0
    :try_start_2
    new-instance v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;

    invoke-direct {v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;-><init>()V

    .line 2914
    .local v4, "param":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 2915
    .local v7, "kc":[B
    if-eqz v7, :cond_4

    array-length v8, v7

    iget-object v9, v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;->kc:[B

    array-length v9, v9

    if-eq v8, v9, :cond_1

    goto :goto_2

    .line 2919
    :cond_1
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 2920
    .local v6, "sres":[B
    if-eqz v6, :cond_3

    array-length v8, v6

    iget-object v9, v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;->sres:[B

    array-length v9, v9

    if-eq v8, v9, :cond_2

    goto :goto_1

    .line 2924
    :cond_2
    iget-object v5, v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;->kc:[B

    iget-object v8, v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;->kc:[B

    array-length v8, v8

    invoke-static {v7, v1, v5, v1, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 2925
    iget-object v5, v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;->sres:[B

    iget-object v8, v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;->sres:[B

    array-length v8, v8

    invoke-static {v6, v1, v5, v1, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 2926
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2927
    .end local v4    # "param":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;
    .end local v6    # "sres":[B
    .end local v7    # "kc":[B
    goto :goto_0

    .line 2921
    .restart local v4    # "param":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;
    .restart local v6    # "sres":[B
    .restart local v7    # "kc":[B
    :cond_3
    :goto_1
    const-string v8, "SupplicantStaNetworkHal"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid sres value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2922
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v1

    .line 2916
    .end local v6    # "sres":[B
    :cond_4
    :goto_2
    :try_start_4
    const-string v5, "SupplicantStaNetworkHal"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid kc value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2917
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return v1

    .line 2929
    .end local v4    # "param":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;
    .end local v7    # "kc":[B
    :cond_5
    :try_start_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x3

    if-gt v4, v6, :cond_7

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v5, :cond_6

    goto :goto_3

    .line 2933
    :cond_6
    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->sendNetworkEapSimGsmAuthResponse(Ljava/util/ArrayList;)Z

    move-result v4
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    return v4

    .line 2930
    :cond_7
    :goto_3
    :try_start_8
    const-string v4, "SupplicantStaNetworkHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Malformed gsm auth response params: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2931
    :try_start_9
    monitor-exit v0

    return v1

    .line 2938
    .end local v2    # "match":Ljava/util/regex/Matcher;
    .end local v3    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;>;"
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 2934
    :catch_0
    move-exception v2

    .line 2935
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal argument "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2936
    monitor-exit v0

    return v1

    .line 2938
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_4
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v1
.end method

.method public sendNetworkEapSimUmtsAuthFailure()Z
    .locals 5

    .line 3074
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3075
    :try_start_0
    const-string v1, "sendNetworkEapSimUmtsAuthFailure"

    .line 3076
    .local v1, "methodStr":Ljava/lang/String;
    const-string v2, "sendNetworkEapSimUmtsAuthFailure"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 3078
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;

    invoke-interface {v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;->sendNetworkEapSimUmtsAuthFailure()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 3079
    .local v2, "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    const-string v4, "sendNetworkEapSimUmtsAuthFailure"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v4

    .line 3080
    .end local v2    # "status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catch_0
    move-exception v2

    .line 3081
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "sendNetworkEapSimUmtsAuthFailure"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 3082
    monitor-exit v0

    return v3

    .line 3084
    .end local v1    # "methodStr":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public sendNetworkEapSimUmtsAuthResponse(Ljava/lang/String;)Z
    .locals 12
    .param p1, "paramsStr"    # Ljava/lang/String;

    .line 2978
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2980
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/android/server/wifi/SupplicantStaNetworkHal;->UMTS_AUTH_RESPONSE_PARAMS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 2981
    .local v2, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    goto/16 :goto_4

    .line 2985
    :cond_0
    new-instance v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;

    invoke-direct {v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;-><init>()V

    .line 2987
    .local v3, "params":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 2988
    .local v6, "ik":[B
    if-eqz v6, :cond_7

    array-length v7, v6

    iget-object v8, v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->ik:[B

    array-length v8, v8

    if-eq v7, v8, :cond_1

    goto/16 :goto_3

    .line 2992
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 2993
    .local v7, "ck":[B
    if-eqz v7, :cond_6

    array-length v8, v7

    iget-object v9, v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->ck:[B

    array-length v9, v9

    if-eq v8, v9, :cond_2

    goto :goto_2

    .line 2997
    :cond_2
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 2998
    .local v5, "res":[B
    if-eqz v5, :cond_5

    array-length v8, v5

    if-nez v8, :cond_3

    goto :goto_1

    .line 3002
    :cond_3
    iget-object v4, v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->ik:[B

    iget-object v8, v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->ik:[B

    array-length v8, v8

    invoke-static {v6, v1, v4, v1, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 3003
    iget-object v4, v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->ck:[B

    iget-object v8, v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->ck:[B

    array-length v8, v8

    invoke-static {v7, v1, v4, v1, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 3004
    array-length v4, v5

    move v8, v1

    :goto_0
    if-ge v8, v4, :cond_4

    aget-byte v9, v5, v8

    .line 3005
    .local v9, "b":B
    iget-object v10, v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->res:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3004
    .end local v9    # "b":B
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3007
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->sendNetworkEapSimUmtsAuthResponse(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v4

    .line 2999
    :cond_5
    :goto_1
    :try_start_2
    const-string v8, "SupplicantStaNetworkHal"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid res value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3000
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v1

    .line 2994
    .end local v5    # "res":[B
    :cond_6
    :goto_2
    :try_start_4
    const-string v4, "SupplicantStaNetworkHal"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid ck value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2995
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return v1

    .line 2989
    .end local v7    # "ck":[B
    :cond_7
    :goto_3
    :try_start_6
    const-string v4, "SupplicantStaNetworkHal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid ik value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2990
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    return v1

    .line 2982
    .end local v3    # "params":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;
    .end local v6    # "ik":[B
    :cond_8
    :goto_4
    :try_start_8
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Malformed umts auth response params: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2983
    :try_start_9
    monitor-exit v0

    return v1

    .line 3012
    .end local v2    # "match":Ljava/util/regex/Matcher;
    :catchall_0
    move-exception v1

    goto :goto_5

    .line 3008
    :catch_0
    move-exception v2

    .line 3009
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal argument "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3010
    monitor-exit v0

    return v1

    .line 3012
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_5
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v1
.end method

.method public sendNetworkEapSimUmtsAutsResponse(Ljava/lang/String;)Z
    .locals 8
    .param p1, "paramsStr"    # Ljava/lang/String;

    .line 3038
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3040
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/android/server/wifi/SupplicantStaNetworkHal;->UMTS_AUTS_RESPONSE_PARAMS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 3041
    .local v2, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 3045
    :cond_0
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 3046
    .local v3, "auts":[B
    if-eqz v3, :cond_2

    array-length v5, v3

    const/16 v6, 0xe

    if-eq v5, v6, :cond_1

    goto :goto_0

    .line 3050
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->sendNetworkEapSimUmtsAutsResponse([B)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v4

    .line 3047
    :cond_2
    :goto_0
    :try_start_2
    const-string v5, "SupplicantStaNetworkHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid auts value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3048
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v1

    .line 3042
    .end local v3    # "auts":[B
    :cond_3
    :goto_1
    :try_start_4
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Malformed umts auts response params: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3043
    :try_start_5
    monitor-exit v0

    return v1

    .line 3055
    .end local v2    # "match":Ljava/util/regex/Matcher;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 3051
    :catch_0
    move-exception v2

    .line 3052
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal argument "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3053
    monitor-exit v0

    return v1

    .line 3055
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1
.end method

.method public setBssid(Ljava/lang/String;)Z
    .locals 5
    .param p1, "bssidStr"    # Ljava/lang/String;

    .line 1434
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1436
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setBssid([B)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return v1

    .line 1441
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1437
    :catch_0
    move-exception v1

    .line 1438
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "SupplicantStaNetworkHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal argument "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1439
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1441
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setVendorStaNetwork(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;)V
    .locals 3
    .param p1, "vendor_network"    # Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    .line 1388
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stanetwork getId >>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mNetworkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1389
    if-eqz p1, :cond_0

    .line 1390
    const-string v0, "SupplicantStaNetworkHal"

    const-string v1, "set ISupplicantVendorStaNetwork successfull"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantVendorStaNetwork:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork;

    goto :goto_0

    .line 1393
    :cond_0
    const-string v0, "SupplicantStaNetworkHal"

    const-string v1, "Failed to set ISupplicantVendorStaNetwork due to null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    :goto_0
    return-void
.end method
