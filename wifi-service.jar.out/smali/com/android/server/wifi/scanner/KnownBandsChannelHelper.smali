.class public Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;
.super Lcom/android/server/wifi/scanner/ChannelHelper;
.source "KnownBandsChannelHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;
    }
.end annotation


# instance fields
.field private mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/ChannelHelper;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;
    .param p1, "x1"    # I

    .line 33
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->getBandFromChannel(I)I

    move-result v0

    return v0
.end method

.method private static copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V
    .locals 4
    .param p0, "channelSpec"    # [Landroid/net/wifi/WifiScanner$ChannelSpec;
    .param p1, "offset"    # I
    .param p2, "channels"    # [I

    .line 72
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 73
    add-int v1, p1, v0

    new-instance v2, Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget v3, p2, v0

    invoke-direct {v2, v3}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v2, p0, v1

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private getBandFromChannel(I)I
    .locals 1
    .param p1, "frequency"    # I

    .line 108
    const/16 v0, 0x960

    if-gt v0, p1, :cond_0

    const/16 v0, 0x9c4

    if-ge p1, v0, :cond_0

    .line 109
    const/4 v0, 0x1

    return v0

    .line 110
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->isDfsChannel(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    const/4 v0, 0x4

    return v0

    .line 112
    :cond_1
    const/16 v0, 0x13ec

    if-gt v0, p1, :cond_2

    const/16 v0, 0x1770

    if-ge p1, v0, :cond_2

    .line 113
    const/4 v0, 0x2

    return v0

    .line 115
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isDfsChannel(I)Z
    .locals 6
    .param p1, "frequency"    # I

    .line 98
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 99
    .local v4, "dfsChannel":Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget v5, v4, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    if-ne p1, v5, :cond_0

    .line 100
    const/4 v0, 0x1

    return v0

    .line 98
    .end local v4    # "dfsChannel":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    :cond_1
    return v2
.end method


# virtual methods
.method public bridge synthetic createChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->createChannelCollection()Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;

    move-result-object v0

    return-object v0
.end method

.method public createChannelCollection()Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;
    .locals 1

    .line 292
    new-instance v0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;-><init>(Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;)V

    return-object v0
.end method

.method public estimateScanDuration(Landroid/net/wifi/WifiScanner$ScanSettings;)I
    .locals 1
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 89
    iget v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v0, v0

    mul-int/lit16 v0, v0, 0xc8

    return v0

    .line 92
    :cond_0
    iget v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->getAvailableScanChannels(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-result-object v0

    array-length v0, v0

    mul-int/lit16 v0, v0, 0xc8

    return v0
.end method

.method public getAvailableScanChannels(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;
    .locals 1
    .param p1, "band"    # I

    .line 79
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/4 v0, 0x7

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v0, v0, p1

    return-object v0

    .line 81
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->NO_CHANNELS:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    return-object v0
.end method

.method protected setBandChannels([I[I[I)V
    .locals 4
    .param p1, "channels2G"    # [I
    .param p2, "channels5G"    # [I
    .param p3, "channelsDfs"    # [I

    .line 38
    const/16 v0, 0x8

    new-array v0, v0, [[Landroid/net/wifi/WifiScanner$ChannelSpec;

    iput-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 40
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    sget-object v1, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->NO_CHANNELS:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 42
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v1, p1

    new-array v1, v1, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 43
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v0, v0, v3

    invoke-static {v0, v2, p1}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 45
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v1, p2

    new-array v1, v1, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 46
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v0, v0, v3

    invoke-static {v0, v2, p2}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 48
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v1, p1

    array-length v3, p2

    add-int/2addr v1, v3

    new-array v1, v1, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 49
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v0, v0, v3

    invoke-static {v0, v2, p1}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 50
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v0, v0, v3

    array-length v1, p1

    invoke-static {v0, v1, p2}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v1, p3

    new-array v1, v1, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    .line 53
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v0, v0, v3

    invoke-static {v0, v2, p3}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 55
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v1, p1

    array-length v3, p3

    add-int/2addr v1, v3

    new-array v1, v1, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    .line 56
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v0, v0, v3

    invoke-static {v0, v2, p1}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 57
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v0, v0, v3

    array-length v1, p1

    invoke-static {v0, v1, p3}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 59
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v1, p2

    array-length v3, p3

    add-int/2addr v1, v3

    new-array v1, v1, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v3, 0x6

    aput-object v1, v0, v3

    .line 60
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v0, v0, v3

    invoke-static {v0, v2, p2}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 61
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v0, v0, v3

    array-length v1, p2

    invoke-static {v0, v1, p3}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 63
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v1, p1

    array-length v3, p2

    add-int/2addr v1, v3

    array-length v3, p3

    add-int/2addr v1, v3

    new-array v1, v1, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v3, 0x7

    aput-object v1, v0, v3

    .line 65
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v0, v0, v3

    invoke-static {v0, v2, p1}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 66
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v0, v0, v3

    array-length v1, p1

    invoke-static {v0, v1, p2}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 67
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v0, v0, v3

    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    invoke-static {v0, v1, p3}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 68
    return-void
.end method

.method public settingsContainChannel(Landroid/net/wifi/WifiScanner$ScanSettings;I)Z
    .locals 4
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "channel"    # I

    .line 122
    iget v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .local v0, "settingsChannels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    goto :goto_0

    .line 125
    .end local v0    # "settingsChannels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_0
    iget v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->getAvailableScanChannels(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-result-object v0

    .line 127
    .restart local v0    # "settingsChannels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    :goto_0
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 128
    aget-object v3, v0, v2

    iget v3, v3, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    if-ne v3, p2, :cond_1

    .line 129
    const/4 v1, 0x1

    return v1

    .line 127
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 132
    .end local v2    # "i":I
    :cond_2
    return v1
.end method
