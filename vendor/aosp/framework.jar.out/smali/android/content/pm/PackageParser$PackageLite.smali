.class public Landroid/content/pm/PackageParser$PackageLite;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageLite"
.end annotation


# instance fields
.field public final baseCodePath:Ljava/lang/String;

.field public final baseRevisionCode:I

.field public final codePath:Ljava/lang/String;

.field public final configForSplit:[Ljava/lang/String;

.field public final coreApp:Z

.field public final debuggable:Z

.field public final extractNativeLibs:Z

.field public final installLocation:I

.field public final isFeatureSplits:[Z

.field public final isolatedSplits:Z

.field public final multiArch:Z

.field public final oplibDependencyStr:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final splitCodePaths:[Ljava/lang/String;

.field public final splitNames:[Ljava/lang/String;

.field public final splitRevisionCodes:[I

.field public final use32bitAbi:Z

.field public final usesSplitNames:[Ljava/lang/String;

.field public final verifiers:[Landroid/content/pm/VerifierInfo;

.field public final versionCode:I

.field public final versionCodeMajor:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "codePath"    # Ljava/lang/String;
    .param p2, "baseApk"    # Landroid/content/pm/PackageParser$ApkLite;
    .param p3, "splitNames"    # [Ljava/lang/String;
    .param p4, "isFeatureSplits"    # [Z
    .param p5, "usesSplitNames"    # [Ljava/lang/String;
    .param p6, "configForSplit"    # [Ljava/lang/String;
    .param p7, "splitCodePaths"    # [Ljava/lang/String;
    .param p8, "splitRevisionCodes"    # [I

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iget-object v0, p2, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    .line 458
    iget v0, p2, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    iput v0, p0, Landroid/content/pm/PackageParser$PackageLite;->versionCode:I

    .line 459
    iget v0, p2, Landroid/content/pm/PackageParser$ApkLite;->versionCodeMajor:I

    iput v0, p0, Landroid/content/pm/PackageParser$PackageLite;->versionCodeMajor:I

    .line 460
    iget v0, p2, Landroid/content/pm/PackageParser$ApkLite;->installLocation:I

    iput v0, p0, Landroid/content/pm/PackageParser$PackageLite;->installLocation:I

    .line 461
    iget-object v0, p2, Landroid/content/pm/PackageParser$ApkLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    iput-object v0, p0, Landroid/content/pm/PackageParser$PackageLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    .line 462
    iput-object p3, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    .line 463
    iput-object p4, p0, Landroid/content/pm/PackageParser$PackageLite;->isFeatureSplits:[Z

    .line 464
    iput-object p5, p0, Landroid/content/pm/PackageParser$PackageLite;->usesSplitNames:[Ljava/lang/String;

    .line 465
    iput-object p6, p0, Landroid/content/pm/PackageParser$PackageLite;->configForSplit:[Ljava/lang/String;

    .line 466
    iput-object p1, p0, Landroid/content/pm/PackageParser$PackageLite;->codePath:Ljava/lang/String;

    .line 467
    iget-object v0, p2, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    .line 468
    iput-object p7, p0, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    .line 469
    iget v0, p2, Landroid/content/pm/PackageParser$ApkLite;->revisionCode:I

    iput v0, p0, Landroid/content/pm/PackageParser$PackageLite;->baseRevisionCode:I

    .line 470
    iput-object p8, p0, Landroid/content/pm/PackageParser$PackageLite;->splitRevisionCodes:[I

    .line 471
    iget-boolean v0, p2, Landroid/content/pm/PackageParser$ApkLite;->coreApp:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageParser$PackageLite;->coreApp:Z

    .line 472
    iget-boolean v0, p2, Landroid/content/pm/PackageParser$ApkLite;->debuggable:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageParser$PackageLite;->debuggable:Z

    .line 473
    iget-boolean v0, p2, Landroid/content/pm/PackageParser$ApkLite;->multiArch:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageParser$PackageLite;->multiArch:Z

    .line 474
    iget-boolean v0, p2, Landroid/content/pm/PackageParser$ApkLite;->use32bitAbi:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageParser$PackageLite;->use32bitAbi:Z

    .line 475
    iget-boolean v0, p2, Landroid/content/pm/PackageParser$ApkLite;->extractNativeLibs:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageParser$PackageLite;->extractNativeLibs:Z

    .line 476
    iget-boolean v0, p2, Landroid/content/pm/PackageParser$ApkLite;->isolatedSplits:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageParser$PackageLite;->isolatedSplits:Z

    .line 479
    iget-object v0, p2, Landroid/content/pm/PackageParser$ApkLite;->oplibDependencyStr:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageParser$PackageLite;->oplibDependencyStr:Ljava/lang/String;

    .line 481
    return-void
.end method


# virtual methods
.method public getAllCodePaths()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 484
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 485
    .local v0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    iget-object v1, p0, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 487
    iget-object v1, p0, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 489
    :cond_0
    return-object v0
.end method
