.class public Lcom/android/internal/telephony/CountryMonitor;
.super Ljava/lang/Object;
.source "CountryMonitor.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentCountryIso:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/internal/telephony/CountryMonitor;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/CountryMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CountryMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/android/internal/telephony/CountryMonitor;->mCurrentCountryIso:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public declared-synchronized getCountryIso()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/CountryMonitor;->mCurrentCountryIso:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/CountryMonitor;->mContext:Landroid/content/Context;

    const-string v1, "country_detector"

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    .line 51
    .local v0, "countryDetector":Landroid/location/CountryDetector;
    const/4 v1, 0x0

    .line 52
    .local v1, "country":Landroid/location/Country;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v2

    move-object v1, v2

    .line 54
    :cond_0
    if-nez v1, :cond_1

    .line 56
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 59
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/CountryMonitor;->mCurrentCountryIso:Ljava/lang/String;

    .line 60
    new-instance v2, Lcom/android/internal/telephony/CountryMonitor$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/CountryMonitor$1;-><init>(Lcom/android/internal/telephony/CountryMonitor;)V

    .line 64
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    .line 60
    invoke-virtual {v0, v2, v3}, Landroid/location/CountryDetector;->addCountryListener(Landroid/location/CountryListener;Landroid/os/Looper;)V

    .line 66
    .end local v0    # "countryDetector":Landroid/location/CountryDetector;
    .end local v1    # "country":Landroid/location/Country;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/CountryMonitor;->mCurrentCountryIso:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/CountryMonitor;
    throw v0
.end method
