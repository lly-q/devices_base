.class public Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;
.super Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
.source "KnownBandsChannelHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KnownBandsChannelCollection"
.end annotation


# instance fields
.field private mAllBands:I

.field private final mChannels:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mExactBands:I

.field final synthetic this$0:Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;

    .line 140
    iput-object p1, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->this$0:Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;

    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;-><init>(Lcom/android/server/wifi/scanner/ChannelHelper;)V

    .line 144
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    .line 148
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mExactBands:I

    .line 153
    iput v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mAllBands:I

    return-void
.end method


# virtual methods
.method public addBand(I)V
    .locals 6
    .param p1, "band"    # I

    .line 163
    iget v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mExactBands:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mExactBands:I

    .line 164
    iget v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mAllBands:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mAllBands:I

    .line 165
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->this$0:Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->getAvailableScanChannels(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-result-object v0

    .line 166
    .local v0, "bandChannels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 169
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    aget-object v3, v0, v1

    iget v3, v3, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    goto :goto_1

    .line 170
    :catch_0
    move-exception v2

    .line 171
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "KnownBandsChannelHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error log: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v3, "KnownBandsChannelHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "band = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " frequency = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v1

    iget v5, v5, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public addChannel(I)V
    .locals 2
    .param p1, "frequency"    # I

    .line 157
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 158
    iget v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mAllBands:I

    iget-object v1, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->this$0:Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;

    invoke-static {v1, p1}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->access$000(Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;I)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mAllBands:I

    .line 159
    return-void
.end method

.method public clear()V
    .locals 1

    .line 218
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mAllBands:I

    .line 219
    iput v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mExactBands:I

    .line 220
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 221
    return-void
.end method

.method public containsBand(I)Z
    .locals 5
    .param p1, "band"    # I

    .line 185
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->this$0:Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->getAvailableScanChannels(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-result-object v0

    .line 186
    .local v0, "bandChannels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 187
    iget-object v3, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    aget-object v4, v0, v2

    iget v4, v4, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 188
    return v1

    .line 186
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    .end local v2    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public containsChannel(I)Z
    .locals 2
    .param p1, "channel"    # I

    .line 180
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public fillBucketSettings(Lcom/android/server/wifi/WifiNative$BucketSettings;I)V
    .locals 3
    .param p1, "bucketSettings"    # Lcom/android/server/wifi/WifiNative$BucketSettings;
    .param p2, "maxChannels"    # I

    .line 258
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gt v0, p2, :cond_0

    iget v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mAllBands:I

    iget v2, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mExactBands:I

    if-ne v0, v2, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mAllBands:I

    if-eqz v0, :cond_1

    .line 260
    iget v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mAllBands:I

    iput v0, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    .line 261
    iput v1, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    .line 262
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    goto :goto_1

    .line 264
    :cond_1
    iput v1, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    .line 265
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    iput v0, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    .line 266
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/server/wifi/WifiNative$ChannelSettings;

    iput-object v0, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    .line 267
    nop

    .local v1, "i":I
    :goto_0
    move v0, v1

    .end local v1    # "i":I
    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 268
    new-instance v1, Lcom/android/server/wifi/WifiNative$ChannelSettings;

    invoke-direct {v1}, Lcom/android/server/wifi/WifiNative$ChannelSettings;-><init>()V

    .line 269
    .local v1, "channelSettings":Lcom/android/server/wifi/WifiNative$ChannelSettings;
    iget-object v2, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    .line 270
    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    aput-object v1, v2, v0

    .line 267
    .end local v1    # "channelSettings":Lcom/android/server/wifi/WifiNative$ChannelSettings;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    goto :goto_0

    .line 273
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return-void
.end method

.method public getAllChannels()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 285
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    return-object v0
.end method

.method public getChannelSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 249
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mAllBands:I

    iget v1, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mExactBands:I

    if-eq v0, v1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    return-object v0

    .line 252
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    return-object v0
.end method

.method public getContainingChannelsFromBand(I)Ljava/util/Set;
    .locals 5
    .param p1, "band"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 237
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 238
    .local v0, "containingChannels":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->this$0:Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->getAvailableScanChannels(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-result-object v1

    .line 239
    .local v1, "bandChannels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 240
    iget-object v3, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    aget-object v4, v1, v2

    iget v4, v4, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    aget-object v3, v1, v2

    iget v3, v3, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 244
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public getMissingChannelsFromBand(I)Ljava/util/Set;
    .locals 5
    .param p1, "band"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 225
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 226
    .local v0, "missingChannels":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->this$0:Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->getAvailableScanChannels(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-result-object v1

    .line 227
    .local v1, "bandChannels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 228
    iget-object v3, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    aget-object v4, v1, v2

    iget v4, v4, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 229
    aget-object v3, v1, v2

    iget v3, v3, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public getScanFreqs()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 277
    iget v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mExactBands:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 278
    const/4 v0, 0x0

    return-object v0

    .line 280
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    return-object v0
.end method

.method public isAllChannels()Z
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->this$0:Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->getAvailableScanChannels(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    .line 213
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 212
    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public partiallyContainsBand(I)Z
    .locals 5
    .param p1, "band"    # I

    .line 196
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->this$0:Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->getAvailableScanChannels(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-result-object v0

    .line 197
    .local v0, "bandChannels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 198
    iget-object v3, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    aget-object v4, v0, v2

    iget v4, v4, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    const/4 v1, 0x1

    return v1

    .line 197
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    .end local v2    # "i":I
    :cond_1
    return v1
.end method
