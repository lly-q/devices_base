.class public Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
.super Ljava/lang/Object;
.source "PackageDexUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/dex/PackageDexUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DexUseInfo"
.end annotation


# instance fields
.field private mClassLoaderContext:Ljava/lang/String;

.field private mIsUsedByOtherApps:Z

.field private final mLoaderIsas:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoadingPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mOwnerUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)V
    .locals 2
    .param p1, "other"    # Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 812
    iget-boolean v0, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    iput-boolean v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    .line 813
    iget v0, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mOwnerUserId:I

    iput v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mOwnerUserId:I

    .line 814
    iget-object v0, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    .line 815
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoaderIsas:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoaderIsas:Ljava/util/Set;

    .line 816
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoadingPackages:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoadingPackages:Ljava/util/Set;

    .line 817
    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "isUsedByOtherApps"    # Z
    .param p2, "ownerUserId"    # I
    .param p3, "classLoaderContext"    # Ljava/lang/String;
    .param p4, "loaderIsa"    # Ljava/lang/String;

    .line 799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 800
    iput-boolean p1, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    .line 801
    iput p2, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mOwnerUserId:I

    .line 802
    iput-object p3, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    .line 803
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoaderIsas:Ljava/util/Set;

    .line 804
    if-eqz p4, :cond_0

    .line 805
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoaderIsas:Ljava/util/Set;

    invoke-interface {v0, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 807
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoadingPackages:Ljava/util/Set;

    .line 808
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 786
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoadingPackages:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 786
    iget v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mOwnerUserId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .param p1, "x1"    # Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 786
    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->merge(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 786
    iget-boolean v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 786
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoaderIsas:Ljava/util/Set;

    return-object v0
.end method

.method private merge(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Z
    .locals 8
    .param p1, "dexUseInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 820
    iget-boolean v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    .line 821
    .local v0, "oldIsUsedByOtherApps":Z
    iget-boolean v1, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-boolean v1, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    .line 822
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoaderIsas:Ljava/util/Set;

    iget-object v4, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoaderIsas:Ljava/util/Set;

    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v1

    .line 823
    .local v1, "updateIsas":Z
    iget-object v4, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoadingPackages:Ljava/util/Set;

    iget-object v5, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoadingPackages:Ljava/util/Set;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v4

    .line 825
    .local v4, "updateLoadingPackages":Z
    iget-object v5, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    .line 826
    .local v5, "oldClassLoaderContext":Ljava/lang/String;
    const-string v6, "=UnknownClassLoaderContext="

    iget-object v7, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 828
    iget-object v6, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    goto :goto_2

    .line 829
    :cond_2
    const-string v6, "=UnsupportedClassLoaderContext="

    iget-object v7, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 831
    const-string v6, "=UnsupportedClassLoaderContext="

    iput-object v6, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    goto :goto_2

    .line 832
    :cond_3
    const-string v6, "=UnsupportedClassLoaderContext="

    iget-object v7, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    .line 833
    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 835
    const-string v6, "=VariableClassLoaderContext="

    iput-object v6, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    .line 838
    :cond_4
    :goto_2
    if-nez v1, :cond_6

    iget-boolean v6, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    if-ne v0, v6, :cond_6

    if-nez v4, :cond_6

    iget-object v6, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    .line 841
    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_3

    .line 838
    :cond_5
    move v2, v3

    goto :goto_4

    .line 841
    :cond_6
    :goto_3
    nop

    .line 838
    :goto_4
    return v2
.end method


# virtual methods
.method public getClassLoaderContext()Ljava/lang/String;
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    return-object v0
.end method

.method public getLoaderIsas()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 853
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoaderIsas:Ljava/util/Set;

    return-object v0
.end method

.method public getLoadingPackages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 857
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoadingPackages:Ljava/util/Set;

    return-object v0
.end method

.method public getOwnerUserId()I
    .locals 1

    .line 849
    iget v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mOwnerUserId:I

    return v0
.end method

.method public isUnknownClassLoaderContext()Z
    .locals 2

    .line 869
    const-string v0, "=UnknownClassLoaderContext="

    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUnsupportedClassLoaderContext()Z
    .locals 2

    .line 863
    const-string v0, "=UnsupportedClassLoaderContext="

    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUsedByOtherApps()Z
    .locals 1

    .line 845
    iget-boolean v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    return v0
.end method

.method public isVariableClassLoaderContext()Z
    .locals 2

    .line 873
    const-string v0, "=VariableClassLoaderContext="

    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
