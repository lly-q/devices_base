.class public final Lcom/oneplus/server/TriggerManager;
.super Ljava/lang/Object;
.source "TriggerManager.java"


# static fields
.field private static final CONFIG_FILE_NAME:Ljava/lang/String; = "oimc.json"

.field private static final CONFIG_VERSION:Ljava/lang/String; = "1.0"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDataDir:Ljava/io/File;

.field private mFuncToRunningRules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/oneplus/server/OPFunction;",
            "Ljava/util/HashSet<",
            "Lcom/oneplus/server/Rule;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFunctionManager:Lcom/oneplus/server/FunctionManager;

.field private mInTestMode:Z

.field private mModeManager:Lcom/oneplus/server/ModeManager;

.field private mModeToFuncs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/oneplus/server/SceneMode;",
            "Ljava/util/HashMap<",
            "Lcom/oneplus/server/OPFunction;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mModeToRules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/oneplus/server/SceneMode;",
            "Ljava/util/HashSet<",
            "Lcom/oneplus/server/Rule;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRuleManager:Lcom/oneplus/server/RuleManager;

.field private mRunningFuncs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/server/OPFunction;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningPool:Lcom/oneplus/server/RunningPool;

.field private mRunningRules:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/oneplus/server/Rule;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemDir:Ljava/io/File;

.field private final printDebug:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/oneplus/server/ModeManager;Lcom/oneplus/server/FunctionManager;Lcom/oneplus/server/RuleManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mm"    # Lcom/oneplus/server/ModeManager;
    .param p3, "fm"    # Lcom/oneplus/server/FunctionManager;
    .param p4, "rm"    # Lcom/oneplus/server/RuleManager;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-boolean v0, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    iput-boolean v0, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/server/TriggerManager;->mInTestMode:Z

    .line 78
    iput-object p1, p0, Lcom/oneplus/server/TriggerManager;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    .line 80
    iput-object p3, p0, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    .line 81
    iput-object p4, p0, Lcom/oneplus/server/TriggerManager;->mRuleManager:Lcom/oneplus/server/RuleManager;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/server/TriggerManager;->mModeToRules:Ljava/util/HashMap;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/server/TriggerManager;->mModeToFuncs:Ljava/util/HashMap;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRunningFuncs:Ljava/util/HashMap;

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    .line 87
    new-instance v0, Lcom/oneplus/server/RunningPool;

    invoke-direct {v0, p1}, Lcom/oneplus/server/RunningPool;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    .line 88
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    invoke-virtual {v0}, Lcom/oneplus/server/RunningPool;->start()V

    .line 90
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/server/TriggerManager;->mDataDir:Ljava/io/File;

    .line 91
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/server/TriggerManager;->mSystemDir:Ljava/io/File;

    .line 92
    return-void
.end method

.method private addRuleInt(Ljava/util/ArrayList;ILjava/lang/String;II)Lcom/oneplus/server/Rule;
    .locals 7
    .param p2, "request"    # I
    .param p3, "fname"    # Ljava/lang/String;
    .param p4, "level"    # I
    .param p5, "sourceFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "II)",
            "Lcom/oneplus/server/Rule;"
        }
    .end annotation

    .line 774
    .local p1, "mNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRuleManager:Lcom/oneplus/server/RuleManager;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/server/RuleManager;->addRule(Ljava/util/ArrayList;ILjava/lang/String;II)Lcom/oneplus/server/Rule;

    move-result-object v0

    .line 775
    .local v0, "rule":Lcom/oneplus/server/Rule;
    if-nez v0, :cond_0

    .line 776
    const/4 v1, 0x0

    return-object v1

    .line 778
    :cond_0
    invoke-virtual {v0, p5}, Lcom/oneplus/server/Rule;->setSourceFlag(I)V

    .line 780
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getModes()Ljava/util/ArrayList;

    move-result-object v1

    .line 781
    .local v1, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/server/SceneMode;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 782
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mModeToFuncs:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 783
    .local v3, "fl":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/oneplus/server/OPFunction;Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/oneplus/server/TriggerManager;->mModeToRules:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 784
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 785
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 786
    .local v4, "count":I
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    .end local v4    # "count":I
    goto :goto_1

    .line 788
    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    .end local v3    # "fl":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/oneplus/server/OPFunction;Ljava/lang/Integer;>;"
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 792
    .end local v2    # "i":I
    :cond_2
    iget-boolean v2, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add rule done for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 793
    :cond_3
    return-object v0
.end method

.method private addRuntimeRule(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z
    .locals 8
    .param p1, "r"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;
    .param p3, "sourceFlag"    # I

    .line 822
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getFuncName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/server/FunctionManager;->getFunc(Ljava/lang/String;)Lcom/oneplus/server/OPFunction;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 823
    return v1

    .line 825
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getTriggerModes()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 826
    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getAction()I

    move-result v4

    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getFuncName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getLevel()I

    move-result v6

    .line 825
    move-object v2, p0

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/server/TriggerManager;->addRuleInt(Ljava/util/ArrayList;ILjava/lang/String;II)Lcom/oneplus/server/Rule;

    move-result-object v0

    .line 827
    .local v0, "rule":Lcom/oneplus/server/Rule;
    if-nez v0, :cond_1

    .line 828
    return v1

    .line 830
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/server/Rule;->setRuleLevel(I)V

    .line 831
    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getDifferenceSwitch()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/server/Rule;->setDifferenceSwitch([Ljava/lang/String;)V

    .line 832
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/server/Rule;->setRinfo(Ljava/lang/Object;)V

    .line 833
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->isRunnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 835
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 836
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 837
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/server/OPFunction;->getFlag()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 838
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v2

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/oneplus/server/TriggerManager;->calcFuncStatus(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/oneplus/server/TriggerManager;->getHighestLevelRule(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;

    move-result-object v2

    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/oneplus/server/TriggerManager;->triggerFunction(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;Ljava/lang/Object;)V

    .line 840
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private addRuntimeRule(Ljava/util/ArrayList;ILjava/lang/String;ILcom/oneplus/server/MsgObjectArg;I)Z
    .locals 8
    .param p2, "request"    # I
    .param p3, "fname"    # Ljava/lang/String;
    .param p4, "level"    # I
    .param p5, "arg"    # Lcom/oneplus/server/MsgObjectArg;
    .param p6, "sourceFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "I",
            "Lcom/oneplus/server/MsgObjectArg;",
            "I)Z"
        }
    .end annotation

    .line 844
    .local p1, "mNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {v0, p3}, Lcom/oneplus/server/FunctionManager;->getFunc(Ljava/lang/String;)Lcom/oneplus/server/OPFunction;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 845
    return v1

    .line 847
    :cond_0
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/server/TriggerManager;->addRuleInt(Ljava/util/ArrayList;ILjava/lang/String;II)Lcom/oneplus/server/Rule;

    move-result-object v0

    .line 848
    .local v0, "rule":Lcom/oneplus/server/Rule;
    if-nez v0, :cond_1

    .line 849
    return v1

    .line 851
    :cond_1
    invoke-virtual {p5}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/server/Rule;->setRinfo(Ljava/lang/Object;)V

    .line 852
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->isRunnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 854
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 855
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 856
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/server/OPFunction;->getFlag()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 857
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v2

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/oneplus/server/TriggerManager;->calcFuncStatus(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/oneplus/server/TriggerManager;->getHighestLevelRule(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;

    move-result-object v2

    invoke-virtual {p5}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/oneplus/server/TriggerManager;->triggerFunction(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;Ljava/lang/Object;)V

    .line 860
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private addRuntimeRuleAsUser(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z
    .locals 3
    .param p1, "r"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;
    .param p3, "userId"    # I

    .line 904
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getTriggerModes()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 905
    .local v0, "mNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/oneplus/server/TriggerManager;->addRuntimeRule(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z

    move-result v1

    return v1
.end method

.method private addRuntimeRuleByCmd(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;)Z
    .locals 1
    .param p1, "r"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;

    .line 928
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/server/TriggerManager;->addRuntimeRule(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z

    move-result v0

    return v0
.end method

.method private addRuntimeRuleForAll(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;)Z
    .locals 1
    .param p1, "r"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;

    .line 916
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/server/TriggerManager;->addRuntimeRule(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z

    move-result v0

    return v0
.end method

.method private applyOnlineConfig(Landroid/util/ArraySet;I)V
    .locals 12
    .param p2, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1296
    .local p1, "configSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRuleManager:Lcom/oneplus/server/RuleManager;

    .line 1297
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/oneplus/server/RuleManager;->getRuleSet(II)Landroid/util/ArraySet;

    move-result-object v0

    .line 1298
    .local v0, "currRules":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/oneplus/server/Rule;>;"
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1299
    .local v1, "pendingRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/oneplus/server/Rule;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/server/Rule;

    .line 1301
    .local v3, "rule":Lcom/oneplus/server/Rule;
    invoke-virtual {v3}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1302
    invoke-virtual {v3}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1304
    :cond_0
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1306
    .end local v3    # "rule":Lcom/oneplus/server/Rule;
    :goto_1
    goto :goto_0

    .line 1308
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1309
    .local v2, "mode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "SystemMode"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1310
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/oneplus/server/Rule;

    .line 1312
    .local v11, "rule":Lcom/oneplus/server/Rule;
    nop

    .line 1313
    invoke-virtual {v11}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11}, Lcom/oneplus/server/Rule;->getRuleLevel()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1312
    move-object v3, p0

    move-object v4, v2

    move v5, p2

    invoke-direct/range {v3 .. v9}, Lcom/oneplus/server/TriggerManager;->removeRuntimeRule(Ljava/util/ArrayList;ILjava/lang/String;ILcom/oneplus/server/MsgObjectArg;I)Z

    .line 1314
    .end local v11    # "rule":Lcom/oneplus/server/Rule;
    goto :goto_2

    .line 1316
    :cond_2
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Ljava/lang/String;

    .line 1318
    .local v11, "targetFunc":Ljava/lang/String;
    const/16 v7, 0x32

    .line 1320
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    const/4 v9, 0x1

    .line 1318
    move-object v3, p0

    move-object v4, v2

    move v5, p2

    move-object v6, v11

    invoke-direct/range {v3 .. v9}, Lcom/oneplus/server/TriggerManager;->addRuntimeRule(Ljava/util/ArrayList;ILjava/lang/String;ILcom/oneplus/server/MsgObjectArg;I)Z

    .line 1322
    .end local v11    # "targetFunc":Ljava/lang/String;
    goto :goto_3

    .line 1323
    :cond_3
    return-void
.end method

.method private bindRemoteAction(Ljava/lang/String;Lcom/oneplus/os/IOIMCRemoteAction;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "action"    # Lcom/oneplus/os/IOIMCRemoteAction;

    .line 639
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/server/FunctionManager;->getFunc(Ljava/lang/String;)Lcom/oneplus/server/OPFunction;

    move-result-object v0

    .line 640
    .local v0, "oFunc":Lcom/oneplus/server/OPFunction;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 641
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bind for remote func "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed, function is not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 642
    return v1

    .line 645
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/server/OPFunction;->getFunc()Lcom/oneplus/oimc/IOPFunction;

    move-result-object v2

    .line 646
    .local v2, "iop":Lcom/oneplus/oimc/IOPFunction;
    instance-of v3, v2, Lcom/oneplus/oimc/OIMCRemoteFunc;

    if-eqz v3, :cond_2

    .line 647
    move-object v1, v2

    check-cast v1, Lcom/oneplus/oimc/OIMCRemoteFunc;

    .line 648
    .local v1, "rfunc":Lcom/oneplus/oimc/OIMCRemoteFunc;
    invoke-virtual {v1, p2}, Lcom/oneplus/oimc/OIMCRemoteFunc;->bindRemoteAction(Lcom/oneplus/os/IOIMCRemoteAction;)Z

    .line 650
    iget-boolean v3, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v3, :cond_1

    .line 651
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bind remote func "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " success"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 653
    .end local v1    # "rfunc":Lcom/oneplus/oimc/OIMCRemoteFunc;
    :cond_1
    nop

    .line 657
    const/4 v1, 0x1

    return v1

    .line 654
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bind for remote func "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " failed, not an OIMCRemoteFunc type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 655
    return v1
.end method

.method private calcFuncStatus(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;
    .locals 10
    .param p1, "func"    # Lcom/oneplus/server/OPFunction;
    .param p2, "extraRule"    # Lcom/oneplus/server/Rule;

    .line 132
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 133
    .local v0, "rules":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/oneplus/server/Rule;>;"
    const/16 v1, 0xff

    .line 134
    .local v1, "eprio":I
    const/16 v2, 0xff

    .line 135
    .local v2, "dprio":I
    const/4 v3, 0x0

    .line 136
    .local v3, "r_enable":Lcom/oneplus/server/Rule;
    const/4 v4, 0x0

    .line 137
    .local v4, "r_disable":Lcom/oneplus/server/Rule;
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/server/Rule;

    .line 138
    .local v6, "r":Lcom/oneplus/server/Rule;
    invoke-virtual {v6}, Lcom/oneplus/server/Rule;->getRulePrio()I

    move-result v8

    .line 139
    .local v8, "prio":I
    invoke-virtual {v6}, Lcom/oneplus/server/Rule;->getRequest()I

    move-result v9

    if-ne v9, v7, :cond_0

    .line 140
    invoke-static {v2, v8}, Lcom/oneplus/server/SceneMode;->comparePrio(II)I

    move-result v7

    if-gez v7, :cond_1

    .line 141
    move v2, v8

    .line 142
    move-object v4, v6

    goto :goto_1

    .line 145
    :cond_0
    invoke-static {v1, v8}, Lcom/oneplus/server/SceneMode;->comparePrio(II)I

    move-result v7

    if-gez v7, :cond_1

    .line 146
    move v1, v8

    .line 147
    move-object v3, v6

    .line 150
    .end local v6    # "r":Lcom/oneplus/server/Rule;
    .end local v8    # "prio":I
    :cond_1
    :goto_1
    goto :goto_0

    .line 152
    :cond_2
    if-eqz p2, :cond_4

    .line 153
    invoke-virtual {p2}, Lcom/oneplus/server/Rule;->getRulePrio()I

    move-result v5

    .line 154
    .local v5, "prio":I
    invoke-virtual {p2}, Lcom/oneplus/server/Rule;->getRequest()I

    move-result v6

    if-ne v6, v7, :cond_3

    .line 155
    invoke-static {v2, v5}, Lcom/oneplus/server/SceneMode;->comparePrio(II)I

    move-result v6

    if-gez v6, :cond_4

    .line 156
    move v2, v5

    .line 157
    move-object v4, p2

    goto :goto_2

    .line 160
    :cond_3
    invoke-static {v1, v5}, Lcom/oneplus/server/SceneMode;->comparePrio(II)I

    move-result v6

    if-gez v6, :cond_4

    .line 161
    move v1, v5

    .line 162
    move-object v3, p2

    .line 167
    .end local v5    # "prio":I
    :cond_4
    :goto_2
    const/16 v5, 0xff

    if-ne v1, v5, :cond_6

    .line 168
    if-ne v2, v5, :cond_5

    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    move-object v5, v4

    :goto_3
    return-object v5

    .line 170
    :cond_6
    if-ne v2, v5, :cond_7

    .line 171
    return-object v3

    .line 173
    :cond_7
    invoke-static {v1, v2}, Lcom/oneplus/server/SceneMode;->comparePrio(II)I

    move-result v5

    if-lez v5, :cond_8

    .line 174
    return-object v3

    .line 176
    :cond_8
    return-object v4
.end method

.method private doDumpRunningFunctions(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 733
    const-string v0, "Current Running Functions: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRunningFuncs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 735
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 736
    .end local v1    # "name":Ljava/lang/String;
    goto :goto_0

    .line 737
    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 738
    return-void
.end method

.method private doDumpSysInfo(ILcom/oneplus/server/MsgObjectArg;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .line 752
    const-string v0, "================ Dumping OIMC Information ================="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 754
    and-int/lit8 v0, p1, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 755
    invoke-direct {p0, p3}, Lcom/oneplus/server/TriggerManager;->doDumpSystemMode(Ljava/io/PrintWriter;)V

    .line 757
    :cond_0
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 758
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v0, p3}, Lcom/oneplus/server/ModeManager;->dumpAllModes(Ljava/io/PrintWriter;)V

    .line 760
    :cond_1
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 761
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {v0, p3}, Lcom/oneplus/server/FunctionManager;->dumpAllFunctions(Ljava/io/PrintWriter;)V

    .line 763
    :cond_2
    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 764
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRuleManager:Lcom/oneplus/server/RuleManager;

    invoke-virtual {v0, p3}, Lcom/oneplus/server/RuleManager;->dump(Ljava/io/PrintWriter;)V

    .line 766
    :cond_3
    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 767
    invoke-direct {p0, p3}, Lcom/oneplus/server/TriggerManager;->doDumpRunningFunctions(Ljava/io/PrintWriter;)V

    .line 769
    :cond_4
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 770
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    invoke-virtual {v0, p3}, Lcom/oneplus/server/RunningPool;->dump(Ljava/io/PrintWriter;)V

    .line 771
    :cond_5
    return-void
.end method

.method private doDumpSystemMode(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 741
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v0}, Lcom/oneplus/server/ModeManager;->getCurrentSystemMode()Lcom/oneplus/server/SceneMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current System Mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v1}, Lcom/oneplus/server/ModeManager;->getCurrentSystemMode()Lcom/oneplus/server/SceneMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/server/SceneMode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 743
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/server/ModeManager;->dumpCurrNonSysModes(Ljava/io/PrintWriter;)V

    .line 744
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/server/ModeManager;->dumpCurrUserMode(Ljava/io/PrintWriter;)V

    .line 745
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 747
    :cond_0
    const-string v0, "Current System Mode is unset"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 749
    :goto_0
    return-void
.end method

.method private doGetFuncConfig(ILcom/oneplus/server/MsgObjectArg;)Z
    .locals 3
    .param p1, "type"    # I
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;

    .line 696
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 697
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {v1, v0}, Lcom/oneplus/server/FunctionManager;->getFunc(Ljava/lang/String;)Lcom/oneplus/server/OPFunction;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 698
    invoke-virtual {p2, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    goto :goto_0

    .line 700
    :cond_0
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {v1, v0}, Lcom/oneplus/server/FunctionManager;->getFunc(Ljava/lang/String;)Lcom/oneplus/server/OPFunction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/server/OPFunction;->getActionRule()Lcom/oneplus/server/Rule;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 701
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {v1, v0}, Lcom/oneplus/server/FunctionManager;->getFunc(Ljava/lang/String;)Lcom/oneplus/server/OPFunction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/server/OPFunction;->getActionRule()Lcom/oneplus/server/Rule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/server/Rule;->getDifferenceSwitch()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    goto :goto_0

    .line 703
    :cond_1
    invoke-virtual {p2, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    .line 707
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private doGetFuncStatus(ILcom/oneplus/server/MsgObjectArg;)Z
    .locals 3
    .param p1, "type"    # I
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;

    .line 683
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 684
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {v1, v0}, Lcom/oneplus/server/FunctionManager;->getFunc(Ljava/lang/String;)Lcom/oneplus/server/OPFunction;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 685
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    goto :goto_0

    .line 686
    :cond_0
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mRunningFuncs:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 687
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    goto :goto_0

    .line 689
    :cond_1
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    .line 692
    :goto_0
    return v2
.end method

.method private doGetSysInfo(ILcom/oneplus/server/MsgObjectArg;)Z
    .locals 2
    .param p1, "type"    # I
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;

    .line 711
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 712
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {p2, v1}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    .line 713
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 714
    return v0

    .line 715
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 716
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {p2, v1}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    .line 717
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 718
    return v0

    .line 719
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 720
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mRuleManager:Lcom/oneplus/server/RuleManager;

    invoke-virtual {p2, v1}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    .line 721
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 722
    return v0

    .line 723
    :cond_2
    const/16 v1, 0x8

    if-ne p1, v1, :cond_3

    .line 724
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v1}, Lcom/oneplus/server/ModeManager;->getCurrentSystemMode()Lcom/oneplus/server/SceneMode;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    .line 725
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 726
    return v0

    .line 729
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private doModeSwitchUpdate(ILcom/oneplus/server/SceneMode;Lcom/oneplus/server/SceneMode;Ljava/lang/Object;)V
    .locals 8
    .param p1, "act"    # I
    .param p2, "oMode"    # Lcom/oneplus/server/SceneMode;
    .param p3, "nMode"    # Lcom/oneplus/server/SceneMode;
    .param p4, "arg"    # Ljava/lang/Object;

    .line 342
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mModeToRules:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 343
    .local v0, "rules":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/oneplus/server/Rule;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/server/Rule;

    .line 344
    .local v2, "rule":Lcom/oneplus/server/Rule;
    invoke-virtual {v2}, Lcom/oneplus/server/Rule;->isRunnable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 345
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 346
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 349
    :cond_0
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 350
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 351
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 353
    .end local v2    # "rule":Lcom/oneplus/server/Rule;
    :cond_1
    :goto_1
    goto :goto_0

    .line 356
    :cond_2
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeToRules:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/HashSet;

    .line 357
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/server/Rule;

    .line 358
    .restart local v2    # "rule":Lcom/oneplus/server/Rule;
    invoke-virtual {v2}, Lcom/oneplus/server/Rule;->isRunnable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 359
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 360
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 361
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 363
    :cond_3
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 364
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 365
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 367
    .end local v2    # "rule":Lcom/oneplus/server/Rule;
    :cond_4
    :goto_3
    goto :goto_2

    .line 369
    :cond_5
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeToFuncs:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 370
    .local v1, "oflist":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/oneplus/server/OPFunction;Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/server/OPFunction;

    .line 371
    .local v3, "func":Lcom/oneplus/server/OPFunction;
    invoke-virtual {v3}, Lcom/oneplus/server/OPFunction;->getFlag()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    .line 372
    goto :goto_4

    .line 374
    :cond_6
    invoke-direct {p0, v3, v5}, Lcom/oneplus/server/TriggerManager;->calcFuncStatus(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/oneplus/server/TriggerManager;->getHighestLevelRule(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;

    move-result-object v5

    invoke-direct {p0, v3, v5, p4, v4}, Lcom/oneplus/server/TriggerManager;->prepareFunction(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;Ljava/lang/Object;Z)V

    .line 375
    .end local v3    # "func":Lcom/oneplus/server/OPFunction;
    goto :goto_4

    .line 377
    :cond_7
    iget-object v2, p0, Lcom/oneplus/server/TriggerManager;->mModeToFuncs:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 378
    .local v2, "nflist":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/oneplus/server/OPFunction;Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/server/OPFunction;

    .line 379
    .local v6, "func":Lcom/oneplus/server/OPFunction;
    invoke-direct {p0, v6, v5}, Lcom/oneplus/server/TriggerManager;->calcFuncStatus(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/oneplus/server/TriggerManager;->getHighestLevelRule(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;

    move-result-object v7

    invoke-direct {p0, v6, v7, p4, v4}, Lcom/oneplus/server/TriggerManager;->prepareFunction(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;Ljava/lang/Object;Z)V

    .line 380
    .end local v6    # "func":Lcom/oneplus/server/OPFunction;
    goto :goto_5

    .line 382
    :cond_8
    invoke-direct {p0}, Lcom/oneplus/server/TriggerManager;->prepareFunctionDone()V

    .line 383
    return-void
.end method

.method private doModeUpdate(ILcom/oneplus/server/SceneMode;Ljava/lang/Object;)V
    .locals 7
    .param p1, "act"    # I
    .param p2, "mode"    # Lcom/oneplus/server/SceneMode;
    .param p3, "arg"    # Ljava/lang/Object;

    .line 310
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mModeToFuncs:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 313
    .local v0, "flist":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/oneplus/server/OPFunction;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeToRules:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 314
    .local v1, "rules":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/oneplus/server/Rule;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/server/Rule;

    .line 315
    .local v3, "rule":Lcom/oneplus/server/Rule;
    invoke-virtual {v3}, Lcom/oneplus/server/Rule;->isRunnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 316
    iget-object v4, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 317
    iget-object v4, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v4, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 320
    :cond_0
    iget-object v4, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 321
    iget-object v4, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 322
    iget-object v4, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 324
    .end local v3    # "rule":Lcom/oneplus/server/Rule;
    :cond_1
    :goto_1
    goto :goto_0

    .line 326
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/server/OPFunction;

    .line 327
    .local v3, "func":Lcom/oneplus/server/OPFunction;
    const/4 v4, 0x1

    if-eq p1, v4, :cond_3

    invoke-virtual {v3}, Lcom/oneplus/server/OPFunction;->getFlag()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 328
    goto :goto_2

    .line 330
    :cond_3
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/oneplus/server/TriggerManager;->calcFuncStatus(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/oneplus/server/TriggerManager;->getHighestLevelRule(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;

    move-result-object v5

    invoke-direct {p0, v3, v5, p3, v4}, Lcom/oneplus/server/TriggerManager;->prepareFunction(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;Ljava/lang/Object;Z)V

    .line 331
    .end local v3    # "func":Lcom/oneplus/server/OPFunction;
    goto :goto_2

    .line 333
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/server/TriggerManager;->prepareFunctionDone()V

    .line 334
    return-void
.end method

.method private flushLoop(Lcom/oneplus/server/OPFunction;)V
    .locals 3
    .param p1, "f"    # Lcom/oneplus/server/OPFunction;

    .line 982
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/oneplus/server/RunningPool;->postAction(Lcom/oneplus/server/OPFunction;ILjava/lang/Object;)V

    .line 983
    return-void
.end method

.method private funcConfig(Ljava/lang/String;Lcom/oneplus/server/MsgObjectArg;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;

    .line 936
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/server/FunctionManager;->getFunc(Ljava/lang/String;)Lcom/oneplus/server/OPFunction;

    move-result-object v0

    .line 937
    .local v0, "f":Lcom/oneplus/server/OPFunction;
    if-eqz v0, :cond_0

    .line 938
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    const/4 v2, 0x3

    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/oneplus/server/RunningPool;->postAction(Lcom/oneplus/server/OPFunction;ILjava/lang/Object;)V

    .line 939
    const/4 v1, 0x1

    return v1

    .line 942
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private genCustomConfigString()Ljava/lang/String;
    .locals 19

    .line 1184
    move-object/from16 v1, p0

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1185
    .local v0, "contentArray":Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1186
    .local v2, "version":Lorg/json/JSONObject;
    const-string/jumbo v3, "version"

    const-string v4, "1.0"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1187
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1189
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1190
    .local v3, "content":Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 1192
    .local v4, "functionList":Lorg/json/JSONArray;
    iget-object v5, v1, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {v5}, Lcom/oneplus/server/FunctionManager;->getFunctionTable()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1193
    .local v6, "funcName":Ljava/lang/String;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 1194
    .local v7, "funcObj":Lorg/json/JSONObject;
    const-string/jumbo v8, "name"

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1195
    iget-object v8, v1, Lcom/oneplus/server/TriggerManager;->mRuleManager:Lcom/oneplus/server/RuleManager;

    const/4 v9, 0x1

    .line 1196
    const/4 v10, 0x0

    invoke-virtual {v8, v6, v10, v9}, Lcom/oneplus/server/RuleManager;->getRuleSetByFunc(Ljava/lang/String;II)Landroid/util/ArraySet;

    move-result-object v8

    .line 1197
    .local v8, "enableRules":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/oneplus/server/Rule;>;"
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 1198
    .local v9, "onArray":Lorg/json/JSONArray;
    invoke-virtual {v8}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oneplus/server/Rule;

    .line 1199
    .local v12, "rule":Lcom/oneplus/server/Rule;
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 1200
    .local v13, "modeArray":Lorg/json/JSONArray;
    invoke-virtual {v12}, Lcom/oneplus/server/Rule;->getModes()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/oneplus/server/SceneMode;

    .line 1201
    .local v15, "mode":Lcom/oneplus/server/SceneMode;
    invoke-virtual {v15}, Lcom/oneplus/server/SceneMode;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1202
    .end local v15    # "mode":Lcom/oneplus/server/SceneMode;
    nop

    .line 1200
    const/4 v10, 0x0

    goto :goto_2

    .line 1203
    :cond_0
    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1204
    .end local v12    # "rule":Lcom/oneplus/server/Rule;
    .end local v13    # "modeArray":Lorg/json/JSONArray;
    nop

    .line 1198
    const/4 v10, 0x0

    goto :goto_1

    .line 1205
    :cond_1
    const-string/jumbo v10, "on"

    invoke-virtual {v7, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1207
    iget-object v10, v1, Lcom/oneplus/server/TriggerManager;->mRuleManager:Lcom/oneplus/server/RuleManager;

    const/4 v11, 0x2

    .line 1208
    const/4 v12, 0x0

    invoke-virtual {v10, v6, v12, v11}, Lcom/oneplus/server/RuleManager;->getRuleSetByFunc(Ljava/lang/String;II)Landroid/util/ArraySet;

    move-result-object v10

    .line 1209
    .local v10, "disableRules":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/oneplus/server/Rule;>;"
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 1210
    .local v11, "offArray":Lorg/json/JSONArray;
    invoke-virtual {v10}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/oneplus/server/Rule;

    .line 1211
    .local v13, "rule":Lcom/oneplus/server/Rule;
    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    .line 1212
    .local v14, "modeArray":Lorg/json/JSONArray;
    invoke-virtual {v13}, Lcom/oneplus/server/Rule;->getModes()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/oneplus/server/SceneMode;

    move-object/from16 v17, v16

    .line 1213
    .local v17, "mode":Lcom/oneplus/server/SceneMode;
    move-object/from16 v18, v2

    move-object/from16 v1, v17

    invoke-virtual {v1}, Lcom/oneplus/server/SceneMode;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1213
    .end local v2    # "version":Lorg/json/JSONObject;
    .end local v17    # "mode":Lcom/oneplus/server/SceneMode;
    .local v1, "mode":Lcom/oneplus/server/SceneMode;
    .local v18, "version":Lorg/json/JSONObject;
    invoke-virtual {v14, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1214
    .end local v1    # "mode":Lcom/oneplus/server/SceneMode;
    nop

    .line 1212
    move-object/from16 v2, v18

    move-object/from16 v1, p0

    goto :goto_4

    .line 1215
    .end local v18    # "version":Lorg/json/JSONObject;
    .restart local v2    # "version":Lorg/json/JSONObject;
    :cond_2
    move-object/from16 v18, v2

    .line 1215
    .end local v2    # "version":Lorg/json/JSONObject;
    .restart local v18    # "version":Lorg/json/JSONObject;
    invoke-virtual {v11, v14}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1216
    .end local v13    # "rule":Lcom/oneplus/server/Rule;
    .end local v14    # "modeArray":Lorg/json/JSONArray;
    nop

    .line 1210
    move-object/from16 v2, v18

    move-object/from16 v1, p0

    goto :goto_3

    .line 1217
    .end local v18    # "version":Lorg/json/JSONObject;
    .restart local v2    # "version":Lorg/json/JSONObject;
    :cond_3
    move-object/from16 v18, v2

    .line 1217
    .end local v2    # "version":Lorg/json/JSONObject;
    .restart local v18    # "version":Lorg/json/JSONObject;
    const-string/jumbo v1, "off"

    invoke-virtual {v7, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1219
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1220
    .end local v6    # "funcName":Ljava/lang/String;
    .end local v7    # "funcObj":Lorg/json/JSONObject;
    .end local v8    # "enableRules":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/oneplus/server/Rule;>;"
    .end local v9    # "onArray":Lorg/json/JSONArray;
    .end local v10    # "disableRules":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/oneplus/server/Rule;>;"
    .end local v11    # "offArray":Lorg/json/JSONArray;
    nop

    .line 1192
    move-object/from16 v2, v18

    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 1222
    .end local v18    # "version":Lorg/json/JSONObject;
    .restart local v2    # "version":Lorg/json/JSONObject;
    :cond_4
    move-object/from16 v18, v2

    .line 1222
    .end local v2    # "version":Lorg/json/JSONObject;
    .restart local v18    # "version":Lorg/json/JSONObject;
    const-string v1, "Functionlist"

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1223
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1224
    sget-boolean v1, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "output: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 1226
    :cond_5
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1228
    .end local v0    # "contentArray":Lorg/json/JSONArray;
    .end local v3    # "content":Lorg/json/JSONObject;
    .end local v4    # "functionList":Lorg/json/JSONArray;
    .end local v18    # "version":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1229
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error while write config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 1230
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1232
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private getConfigFile(Ljava/io/File;)Ljava/io/File;
    .locals 2
    .param p1, "dir"    # Ljava/io/File;

    .line 1358
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "oimc.json"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getHighestLevelRule(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;
    .locals 1
    .param p1, "func"    # Lcom/oneplus/server/OPFunction;
    .param p2, "rule"    # Lcom/oneplus/server/Rule;

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/server/TriggerManager;->getHighestLevelRule(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;

    move-result-object v0

    return-object v0
.end method

.method private getHighestLevelRule(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;
    .locals 7
    .param p1, "func"    # Lcom/oneplus/server/OPFunction;
    .param p2, "rule"    # Lcom/oneplus/server/Rule;
    .param p3, "extraRule"    # Lcom/oneplus/server/Rule;

    .line 99
    if-nez p2, :cond_0

    .line 100
    const/4 v0, 0x0

    return-object v0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 104
    .local v0, "rules":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/oneplus/server/Rule;>;"
    move-object v1, p2

    .line 105
    .local v1, "highestRule":Lcom/oneplus/server/Rule;
    invoke-virtual {p2}, Lcom/oneplus/server/Rule;->getRuleLevel()I

    move-result v2

    .line 106
    .local v2, "highestLevel":I
    invoke-virtual {p2}, Lcom/oneplus/server/Rule;->getRequest()I

    move-result v3

    .line 107
    .local v3, "request":I
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/server/Rule;

    .line 108
    .local v5, "r":Lcom/oneplus/server/Rule;
    invoke-virtual {v5}, Lcom/oneplus/server/Rule;->getRequest()I

    move-result v6

    if-ne v6, v3, :cond_1

    .line 109
    invoke-virtual {v5}, Lcom/oneplus/server/Rule;->getRuleLevel()I

    move-result v6

    if-le v6, v2, :cond_1

    .line 110
    invoke-virtual {v5}, Lcom/oneplus/server/Rule;->getRuleLevel()I

    move-result v2

    .line 111
    move-object v1, v5

    .line 114
    .end local v5    # "r":Lcom/oneplus/server/Rule;
    :cond_1
    goto :goto_0

    .line 116
    :cond_2
    if-eqz p3, :cond_3

    .line 117
    invoke-virtual {p3}, Lcom/oneplus/server/Rule;->getRequest()I

    move-result v4

    if-ne v4, v3, :cond_3

    .line 118
    invoke-virtual {p3}, Lcom/oneplus/server/Rule;->getRuleLevel()I

    move-result v4

    if-le v4, v2, :cond_3

    .line 119
    invoke-virtual {p3}, Lcom/oneplus/server/Rule;->getRuleLevel()I

    move-result v2

    .line 120
    move-object v1, p3

    .line 125
    :cond_3
    return-object v1
.end method

.method private modeConfig(IILcom/oneplus/server/MsgObjectArg;)Z
    .locals 5
    .param p1, "act"    # I
    .param p2, "prio"    # I
    .param p3, "arg"    # Lcom/oneplus/server/MsgObjectArg;

    .line 534
    invoke-virtual {p3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 535
    .local v0, "mName":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v1, v0}, Lcom/oneplus/server/ModeManager;->getMode(Ljava/lang/String;)Lcom/oneplus/server/SceneMode;

    move-result-object v1

    .line 536
    .local v1, "mode":Lcom/oneplus/server/SceneMode;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 537
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Config mode failed, mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 538
    return v2

    .line 541
    :cond_0
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v3, v0}, Lcom/oneplus/server/ModeManager;->isSystemMode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 542
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Config mode failed, can\'t change system mode priority: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 543
    return v2

    .line 546
    :cond_1
    invoke-virtual {v1}, Lcom/oneplus/server/SceneMode;->getPrio()I

    move-result v3

    if-ne v3, p2, :cond_2

    .line 547
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Config mode failed, same priority: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 548
    return v2

    .line 551
    :cond_2
    iget-boolean v2, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v2, :cond_3

    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Configuring mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to priority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 554
    :cond_3
    invoke-virtual {v1, p2}, Lcom/oneplus/server/SceneMode;->setPrio(I)V

    .line 555
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/oneplus/server/TriggerManager;->doModeUpdate(ILcom/oneplus/server/SceneMode;Ljava/lang/Object;)V

    .line 556
    const/4 v2, 0x1

    return v2
.end method

.method private modeEnter(ILcom/oneplus/server/MsgObjectArg;)Z
    .locals 5
    .param p1, "act"    # I
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;

    .line 386
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 387
    .local v0, "mName":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 388
    const-string v2, "Mode enter failed, mode is null"

    invoke-static {v2}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 389
    return v1

    .line 392
    :cond_0
    iget-object v2, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v2, v0}, Lcom/oneplus/server/ModeManager;->getMode(Ljava/lang/String;)Lcom/oneplus/server/SceneMode;

    move-result-object v2

    .line 393
    .local v2, "mode":Lcom/oneplus/server/SceneMode;
    if-nez v2, :cond_1

    .line 394
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 395
    return v1

    .line 398
    :cond_1
    invoke-virtual {v2}, Lcom/oneplus/server/SceneMode;->getStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 399
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is already entered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 400
    return v1

    .line 404
    :cond_2
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v3, v2}, Lcom/oneplus/server/ModeManager;->isSystemMode(Lcom/oneplus/server/SceneMode;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 405
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v3}, Lcom/oneplus/server/ModeManager;->getCurrentSystemMode()Lcom/oneplus/server/SceneMode;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 406
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Warning] Use mode switch to change between system modes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 407
    return v1

    .line 410
    :cond_3
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v1, v2}, Lcom/oneplus/server/ModeManager;->setSystemMode(Lcom/oneplus/server/SceneMode;)V

    .line 413
    :cond_4
    iget-boolean v1, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v1, :cond_5

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entering mode "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/oneplus/server/SceneMode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 416
    :cond_5
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v1, v0}, Lcom/oneplus/server/ModeManager;->isTestMode(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    .line 417
    iput-boolean v3, p0, Lcom/oneplus/server/TriggerManager;->mInTestMode:Z

    .line 419
    :cond_6
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v1, v0}, Lcom/oneplus/server/ModeManager;->isMainUserMode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 420
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v1, v0}, Lcom/oneplus/server/ModeManager;->setCurrUserMode(Ljava/lang/String;)V

    .line 423
    :cond_7
    invoke-virtual {v2, v4}, Lcom/oneplus/server/SceneMode;->setStatus(I)V

    .line 424
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/oneplus/server/SceneMode;->setRinfo(Ljava/lang/Object;)V

    .line 425
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeToRules:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 426
    .local v1, "rules":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/oneplus/server/Rule;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v4

    if-gtz v4, :cond_8

    .line 427
    return v3

    .line 429
    :cond_8
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, p1, v2, v4}, Lcom/oneplus/server/TriggerManager;->doModeUpdate(ILcom/oneplus/server/SceneMode;Ljava/lang/Object;)V

    .line 430
    return v3
.end method

.method private modeExit(ILcom/oneplus/server/MsgObjectArg;)Z
    .locals 6
    .param p1, "act"    # I
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;

    .line 434
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 435
    .local v0, "mName":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 436
    const-string v2, "Mode enter failed, mode is null"

    invoke-static {v2}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 437
    return v1

    .line 440
    :cond_0
    iget-object v2, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v2, v0}, Lcom/oneplus/server/ModeManager;->getMode(Ljava/lang/String;)Lcom/oneplus/server/SceneMode;

    move-result-object v2

    .line 441
    .local v2, "mode":Lcom/oneplus/server/SceneMode;
    if-nez v2, :cond_1

    .line 442
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 443
    return v1

    .line 446
    :cond_1
    invoke-virtual {v2}, Lcom/oneplus/server/SceneMode;->getStatus()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 447
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not entered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 448
    return v1

    .line 451
    :cond_2
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v3, v0}, Lcom/oneplus/server/ModeManager;->isSystemMode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 452
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t exit system mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 453
    return v1

    .line 456
    :cond_3
    iget-boolean v3, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v3, :cond_4

    .line 457
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exiting mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 459
    :cond_4
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/oneplus/server/SceneMode;->setStatus(I)V

    .line 460
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/oneplus/server/SceneMode;->setRinfo(Ljava/lang/Object;)V

    .line 461
    iget-object v4, p0, Lcom/oneplus/server/TriggerManager;->mModeToRules:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 462
    .local v4, "rules":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/oneplus/server/Rule;>;"
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 463
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, p1, v2, v5}, Lcom/oneplus/server/TriggerManager;->doModeUpdate(ILcom/oneplus/server/SceneMode;Ljava/lang/Object;)V

    .line 465
    :cond_5
    iget-object v5, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v5, v0}, Lcom/oneplus/server/ModeManager;->isTestMode(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 466
    iput-boolean v1, p0, Lcom/oneplus/server/TriggerManager;->mInTestMode:Z

    .line 468
    :cond_6
    return v3
.end method

.method private modeSwitch(ILcom/oneplus/server/MsgObjectArg;)Z
    .locals 8
    .param p1, "act"    # I
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;

    .line 472
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 476
    .local v0, "nName":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v1, v0}, Lcom/oneplus/server/ModeManager;->isSystemMode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v1}, Lcom/oneplus/server/ModeManager;->getCurrentSystemMode()Lcom/oneplus/server/SceneMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/server/SceneMode;->getName()Ljava/lang/String;

    move-result-object v1

    .local v1, "oName":Ljava/lang/String;
    goto :goto_0

    .line 479
    .end local v1    # "oName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 482
    .restart local v1    # "oName":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_b

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 487
    :cond_1
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v3, v0}, Lcom/oneplus/server/ModeManager;->getMode(Ljava/lang/String;)Lcom/oneplus/server/SceneMode;

    move-result-object v3

    .line 488
    .local v3, "nMode":Lcom/oneplus/server/SceneMode;
    if-nez v3, :cond_2

    .line 489
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 490
    return v2

    .line 493
    :cond_2
    iget-object v4, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v4, v1}, Lcom/oneplus/server/ModeManager;->getMode(Ljava/lang/String;)Lcom/oneplus/server/SceneMode;

    move-result-object v4

    .line 494
    .local v4, "oMode":Lcom/oneplus/server/SceneMode;
    if-nez v4, :cond_3

    .line 495
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is not exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 496
    return v2

    .line 499
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 500
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mode switch failed, mode is same: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 501
    return v2

    .line 504
    :cond_4
    invoke-virtual {v4}, Lcom/oneplus/server/SceneMode;->getStatus()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_a

    .line 505
    invoke-virtual {v3}, Lcom/oneplus/server/SceneMode;->getStatus()I

    move-result v5

    if-ne v5, v6, :cond_5

    goto :goto_1

    .line 511
    :cond_5
    iget-boolean v5, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v5, :cond_6

    .line 512
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Switching mode from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 514
    :cond_6
    iget-object v5, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v5, v0}, Lcom/oneplus/server/ModeManager;->isTestMode(Ljava/lang/String;)Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_7

    .line 515
    iput-boolean v7, p0, Lcom/oneplus/server/TriggerManager;->mInTestMode:Z

    .line 517
    :cond_7
    invoke-virtual {v3, v6}, Lcom/oneplus/server/SceneMode;->setStatus(I)V

    .line 518
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/oneplus/server/SceneMode;->setRinfo(Ljava/lang/Object;)V

    .line 519
    invoke-virtual {v4, v7}, Lcom/oneplus/server/SceneMode;->setStatus(I)V

    .line 520
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/oneplus/server/SceneMode;->setRinfo(Ljava/lang/Object;)V

    .line 522
    iget-object v5, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v5, v0}, Lcom/oneplus/server/ModeManager;->isSystemMode(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 523
    iget-object v5, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v5, v3}, Lcom/oneplus/server/ModeManager;->setSystemMode(Lcom/oneplus/server/SceneMode;)V

    .line 526
    :cond_8
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, p1, v4, v3, v5}, Lcom/oneplus/server/TriggerManager;->doModeSwitchUpdate(ILcom/oneplus/server/SceneMode;Lcom/oneplus/server/SceneMode;Ljava/lang/Object;)V

    .line 527
    iget-object v5, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v5, v1}, Lcom/oneplus/server/ModeManager;->isTestMode(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 528
    iput-boolean v2, p0, Lcom/oneplus/server/TriggerManager;->mInTestMode:Z

    .line 530
    :cond_9
    return v7

    .line 506
    :cond_a
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is not entered, or mode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is already exited"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 508
    return v2

    .line 483
    .end local v3    # "nMode":Lcom/oneplus/server/SceneMode;
    .end local v4    # "oMode":Lcom/oneplus/server/SceneMode;
    :cond_b
    :goto_2
    const-string v3, "Mode switch failed, mode missed"

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 484
    return v2
.end method

.method private modeTransition(ILcom/oneplus/server/MsgObjectArg;)Z
    .locals 6
    .param p1, "act"    # I
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;

    .line 560
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 561
    .local v0, "mName":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v1, v0}, Lcom/oneplus/server/ModeManager;->getMode(Ljava/lang/String;)Lcom/oneplus/server/SceneMode;

    move-result-object v1

    .line 562
    .local v1, "mode":Lcom/oneplus/server/SceneMode;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 563
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "modeTransition failed, mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 564
    return v2

    .line 567
    :cond_0
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v3, v0}, Lcom/oneplus/server/ModeManager;->isSystemMode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 568
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No mode transition for system mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 569
    return v2

    .line 572
    :cond_1
    invoke-virtual {v1}, Lcom/oneplus/server/SceneMode;->getStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 573
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t do transition, mode already entered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 574
    return v2

    .line 577
    :cond_2
    iget-boolean v3, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v3, :cond_3

    .line 578
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transiting mode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 580
    :cond_3
    invoke-virtual {v1, v4}, Lcom/oneplus/server/SceneMode;->setStatus(I)V

    .line 581
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oneplus/server/SceneMode;->setRinfo(Ljava/lang/Object;)V

    .line 582
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v3, v1}, Lcom/oneplus/server/ModeManager;->isTestMode(Lcom/oneplus/server/SceneMode;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    .line 583
    iput-boolean v5, p0, Lcom/oneplus/server/TriggerManager;->mInTestMode:Z

    .line 584
    :cond_4
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v5, v1, v3}, Lcom/oneplus/server/TriggerManager;->doModeUpdate(ILcom/oneplus/server/SceneMode;Ljava/lang/Object;)V

    .line 586
    invoke-virtual {v1, v5}, Lcom/oneplus/server/SceneMode;->setStatus(I)V

    .line 587
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/oneplus/server/SceneMode;->setRinfo(Ljava/lang/Object;)V

    .line 588
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v4, v1, v3}, Lcom/oneplus/server/TriggerManager;->doModeUpdate(ILcom/oneplus/server/SceneMode;Ljava/lang/Object;)V

    .line 590
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v3, v1}, Lcom/oneplus/server/ModeManager;->isTestMode(Lcom/oneplus/server/SceneMode;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 591
    iput-boolean v2, p0, Lcom/oneplus/server/TriggerManager;->mInTestMode:Z

    .line 594
    :cond_5
    return v5
.end method

.method private parseLocalConfig(Ljava/lang/String;)V
    .locals 21
    .param p1, "configStr"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 1237
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1238
    const-string/jumbo v0, "local config is empty!"

    invoke-static {v0}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 1239
    return-void

    .line 1242
    :cond_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1243
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1246
    .local v0, "contentArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1247
    .local v4, "version":Lorg/json/JSONObject;
    const-string/jumbo v5, "version"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1248
    .local v5, "verStr":Ljava/lang/String;
    sget-boolean v6, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "config version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 1250
    :cond_1
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 1251
    .local v7, "functions":Lorg/json/JSONObject;
    if-eqz v7, :cond_b

    .line 1252
    const-string v8, "Functionlist"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 1253
    .local v8, "functionlist":Lorg/json/JSONArray;
    move v9, v3

    .line 1253
    .local v9, "fidx":I
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_b

    .line 1255
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 1256
    .local v10, "function":Lorg/json/JSONObject;
    const-string/jumbo v11, "name"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1257
    .local v11, "funcName":Ljava/lang/String;
    sget-boolean v12, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    if-eqz v12, :cond_2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "function name "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 1258
    :cond_2
    const-string/jumbo v12, "on"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 1259
    .local v12, "onArray":Lorg/json/JSONArray;
    move v13, v3

    .line 1259
    .local v13, "idx":I
    :goto_1
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_6

    .line 1260
    sget-boolean v14, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    if-eqz v14, :cond_3

    const-string v14, "===="

    invoke-static {v14}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 1261
    :cond_3
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1262
    .local v14, "modeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v16

    move-object/from16 v17, v16

    .line 1263
    .local v17, "innerarray":Lorg/json/JSONArray;
    move/from16 v16, v3

    .line 1263
    .local v16, "iidx":I
    :goto_2
    move/from16 v18, v16

    .line 1263
    .end local v16    # "iidx":I
    .local v18, "iidx":I
    move-object/from16 v3, v17

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 1263
    .end local v17    # "innerarray":Lorg/json/JSONArray;
    .local v3, "innerarray":Lorg/json/JSONArray;
    move/from16 v15, v18

    if-ge v15, v6, :cond_5

    .line 1264
    .end local v18    # "iidx":I
    .local v15, "iidx":I
    sget-boolean v6, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v0

    const-string/jumbo v0, "on "

    .line 1264
    .end local v0    # "contentArray":Lorg/json/JSONArray;
    .local v19, "contentArray":Lorg/json/JSONArray;
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1265
    .end local v19    # "contentArray":Lorg/json/JSONArray;
    .restart local v0    # "contentArray":Lorg/json/JSONArray;
    :cond_4
    move-object/from16 v19, v0

    .line 1265
    .end local v0    # "contentArray":Lorg/json/JSONArray;
    .restart local v19    # "contentArray":Lorg/json/JSONArray;
    :goto_3
    invoke-virtual {v3, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1263
    add-int/lit8 v16, v15, 0x1

    .line 1263
    .end local v15    # "iidx":I
    .restart local v16    # "iidx":I
    move-object/from16 v17, v3

    move-object/from16 v0, v19

    const/4 v3, 0x0

    const/4 v6, 0x1

    goto :goto_2

    .line 1267
    .end local v16    # "iidx":I
    .end local v19    # "contentArray":Lorg/json/JSONArray;
    .restart local v0    # "contentArray":Lorg/json/JSONArray;
    :cond_5
    move-object/from16 v19, v0

    .line 1267
    .end local v0    # "contentArray":Lorg/json/JSONArray;
    .restart local v19    # "contentArray":Lorg/json/JSONArray;
    const/4 v0, 0x1

    const/16 v6, 0x32

    invoke-virtual {v1, v14, v0, v11, v6}, Lcom/oneplus/server/TriggerManager;->addRule(Ljava/util/ArrayList;ILjava/lang/String;I)Lcom/oneplus/server/Rule;

    .line 1259
    .end local v3    # "innerarray":Lorg/json/JSONArray;
    .end local v14    # "modeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    add-int/lit8 v13, v13, 0x1

    move v6, v0

    move-object/from16 v0, v19

    const/4 v3, 0x0

    goto :goto_1

    .line 1270
    .end local v13    # "idx":I
    .end local v19    # "contentArray":Lorg/json/JSONArray;
    .restart local v0    # "contentArray":Lorg/json/JSONArray;
    :cond_6
    move-object/from16 v19, v0

    move v0, v6

    .line 1270
    .end local v0    # "contentArray":Lorg/json/JSONArray;
    .restart local v19    # "contentArray":Lorg/json/JSONArray;
    const-string/jumbo v3, "off"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1271
    .local v3, "offArray":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .line 1271
    .local v6, "idx":I
    :goto_4
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v6, v13, :cond_a

    .line 1272
    sget-boolean v13, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    if-eqz v13, :cond_7

    const-string v13, "===="

    invoke-static {v13}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 1273
    :cond_7
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1274
    .local v13, "modeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v14

    .line 1275
    .local v14, "innerarray":Lorg/json/JSONArray;
    const/4 v15, 0x0

    .line 1275
    .restart local v15    # "iidx":I
    :goto_5
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v15, v0, :cond_9

    .line 1276
    sget-boolean v0, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "off "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 1277
    :cond_8
    invoke-virtual {v14, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1275
    add-int/lit8 v15, v15, 0x1

    const/4 v0, 0x1

    move-object/from16 v2, p1

    goto :goto_5

    .line 1279
    .end local v15    # "iidx":I
    :cond_9
    const/4 v0, 0x2

    const/16 v2, 0x32

    invoke-virtual {v1, v13, v0, v11, v2}, Lcom/oneplus/server/TriggerManager;->addRule(Ljava/util/ArrayList;ILjava/lang/String;I)Lcom/oneplus/server/Rule;

    .line 1271
    .end local v13    # "modeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "innerarray":Lorg/json/JSONArray;
    add-int/lit8 v6, v6, 0x1

    const/4 v0, 0x1

    move-object/from16 v2, p1

    goto :goto_4

    .line 1253
    .end local v3    # "offArray":Lorg/json/JSONArray;
    .end local v6    # "idx":I
    .end local v10    # "function":Lorg/json/JSONObject;
    .end local v11    # "funcName":Ljava/lang/String;
    .end local v12    # "onArray":Lorg/json/JSONArray;
    :cond_a
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v19

    move-object/from16 v2, p1

    const/4 v3, 0x0

    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1284
    .end local v4    # "version":Lorg/json/JSONObject;
    .end local v5    # "verStr":Ljava/lang/String;
    .end local v7    # "functions":Lorg/json/JSONObject;
    .end local v8    # "functionlist":Lorg/json/JSONArray;
    .end local v9    # "fidx":I
    .end local v19    # "contentArray":Lorg/json/JSONArray;
    :cond_b
    monitor-exit p0

    .line 1288
    goto :goto_6

    .line 1284
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1286
    :catch_0
    move-exception v0

    .line 1287
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resolve local config error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 1289
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    return-void
.end method

.method private final prepareFunction(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;Ljava/lang/Object;Z)V
    .locals 7
    .param p1, "func"    # Lcom/oneplus/server/OPFunction;
    .param p2, "rule"    # Lcom/oneplus/server/Rule;
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "buffered"    # Z

    .line 197
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRunningFuncs:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/server/OPFunction;

    .line 199
    .local v0, "rf":Lcom/oneplus/server/OPFunction;
    if-eqz p2, :cond_0

    .line 200
    invoke-virtual {p2}, Lcom/oneplus/server/Rule;->getRequest()I

    move-result v1

    .line 200
    .local v1, "cstate":I
    goto :goto_0

    .line 202
    .end local v1    # "cstate":I
    :cond_0
    const/4 v1, 0x0

    .line 205
    .restart local v1    # "cstate":I
    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v2, :cond_b

    .line 206
    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getFlag()I

    move-result v4

    if-ne v4, v3, :cond_3

    .line 207
    iget-boolean v3, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v3, :cond_1

    .line 208
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "starting REPEAT function "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 209
    :cond_1
    if-eqz p4, :cond_2

    .line 210
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    invoke-virtual {p2}, Lcom/oneplus/server/Rule;->getDifferenceSwitch()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v2, v4}, Lcom/oneplus/server/RunningPool;->prepareAction(Lcom/oneplus/server/OPFunction;ILjava/lang/Object;)V

    goto :goto_1

    .line 212
    :cond_2
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    invoke-virtual {p2}, Lcom/oneplus/server/Rule;->getDifferenceSwitch()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v2, v4}, Lcom/oneplus/server/RunningPool;->postAction(Lcom/oneplus/server/OPFunction;ILjava/lang/Object;)V

    .line 213
    :goto_1
    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->incCount()V

    goto/16 :goto_5

    .line 214
    :cond_3
    if-nez v0, :cond_6

    .line 215
    iget-boolean v3, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v3, :cond_4

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "starting ONESHOT function "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 217
    :cond_4
    invoke-virtual {p1, p2}, Lcom/oneplus/server/OPFunction;->setActionRule(Lcom/oneplus/server/Rule;)V

    .line 218
    if-eqz p4, :cond_5

    .line 219
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    invoke-virtual {p2}, Lcom/oneplus/server/Rule;->getDifferenceSwitch()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v2, v4}, Lcom/oneplus/server/RunningPool;->prepareAction(Lcom/oneplus/server/OPFunction;ILjava/lang/Object;)V

    goto :goto_2

    .line 221
    :cond_5
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    invoke-virtual {p2}, Lcom/oneplus/server/Rule;->getDifferenceSwitch()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v2, v4}, Lcom/oneplus/server/RunningPool;->postAction(Lcom/oneplus/server/OPFunction;ILjava/lang/Object;)V

    .line 222
    :goto_2
    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->incCount()V

    .line 223
    iget-object v2, p0, Lcom/oneplus/server/TriggerManager;->mRunningFuncs:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 225
    :cond_6
    iget-boolean v2, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v2, :cond_7

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ONESHOT function "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " already running"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 227
    :cond_7
    const/16 v2, 0x32

    .line 228
    .local v2, "oldLevel":I
    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getActionRule()Lcom/oneplus/server/Rule;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 229
    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getActionRule()Lcom/oneplus/server/Rule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/server/Rule;->getRuleLevel()I

    move-result v2

    .line 231
    :cond_8
    invoke-virtual {p2}, Lcom/oneplus/server/Rule;->getRuleLevel()I

    move-result v3

    .line 232
    .local v3, "newLevel":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ONESHOT oldLevel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " |newLevel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 233
    if-eq v3, v2, :cond_a

    .line 234
    invoke-virtual {p1, p2}, Lcom/oneplus/server/OPFunction;->setActionRule(Lcom/oneplus/server/Rule;)V

    .line 235
    const/4 v4, 0x3

    if-eqz p4, :cond_9

    .line 236
    iget-object v5, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    invoke-virtual {p2}, Lcom/oneplus/server/Rule;->getDifferenceSwitch()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, v4, v6}, Lcom/oneplus/server/RunningPool;->prepareAction(Lcom/oneplus/server/OPFunction;ILjava/lang/Object;)V

    goto :goto_3

    .line 238
    :cond_9
    iget-object v5, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    invoke-virtual {p2}, Lcom/oneplus/server/Rule;->getDifferenceSwitch()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, v4, v6}, Lcom/oneplus/server/RunningPool;->postAction(Lcom/oneplus/server/OPFunction;ILjava/lang/Object;)V

    .line 240
    .end local v2    # "oldLevel":I
    .end local v3    # "newLevel":I
    :cond_a
    :goto_3
    goto :goto_5

    .line 241
    :cond_b
    if-eq v1, v3, :cond_c

    if-nez v1, :cond_11

    .line 242
    :cond_c
    if-eqz v0, :cond_11

    .line 243
    iget-object v2, p0, Lcom/oneplus/server/TriggerManager;->mRunningFuncs:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-boolean v2, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v2, :cond_d

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stoping ONESHOT function "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 246
    :cond_d
    if-eqz v1, :cond_f

    .line 247
    invoke-virtual {p1, p2}, Lcom/oneplus/server/OPFunction;->setActionRule(Lcom/oneplus/server/Rule;)V

    .line 248
    if-eqz p4, :cond_e

    .line 249
    iget-object v2, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    invoke-virtual {p2}, Lcom/oneplus/server/Rule;->getDifferenceSwitch()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/oneplus/server/RunningPool;->prepareAction(Lcom/oneplus/server/OPFunction;ILjava/lang/Object;)V

    goto :goto_5

    .line 251
    :cond_e
    iget-object v2, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    invoke-virtual {p2}, Lcom/oneplus/server/Rule;->getDifferenceSwitch()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/oneplus/server/RunningPool;->postAction(Lcom/oneplus/server/OPFunction;ILjava/lang/Object;)V

    goto :goto_5

    .line 253
    :cond_f
    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getActionRule()Lcom/oneplus/server/Rule;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 254
    if-eqz p4, :cond_10

    .line 255
    iget-object v2, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getActionRule()Lcom/oneplus/server/Rule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/server/Rule;->getDifferenceSwitch()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/oneplus/server/RunningPool;->prepareAction(Lcom/oneplus/server/OPFunction;ILjava/lang/Object;)V

    goto :goto_4

    .line 257
    :cond_10
    iget-object v2, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getActionRule()Lcom/oneplus/server/Rule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/server/Rule;->getDifferenceSwitch()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/oneplus/server/RunningPool;->postAction(Lcom/oneplus/server/OPFunction;ILjava/lang/Object;)V

    .line 258
    :goto_4
    invoke-virtual {p1, p2}, Lcom/oneplus/server/OPFunction;->setActionRule(Lcom/oneplus/server/Rule;)V

    .line 263
    :cond_11
    :goto_5
    return-void
.end method

.method private final prepareFunctionDone()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    invoke-virtual {v0}, Lcom/oneplus/server/RunningPool;->prepareActionDone()V

    .line 184
    return-void
.end method

.method private registerFunctionExt(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "settingProviderKey"    # Ljava/lang/String;
    .param p3, "flag"    # I

    .line 626
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/server/FunctionManager;->addFunction(Ljava/lang/String;Ljava/lang/String;I)Lcom/oneplus/server/OPFunction;

    move-result-object v0

    .line 627
    .local v0, "oFunc":Lcom/oneplus/server/OPFunction;
    if-nez v0, :cond_0

    .line 628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Register func "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 629
    const/4 v1, 0x0

    return v1

    .line 630
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v1, :cond_1

    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered func "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 634
    :cond_1
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    const/4 v1, 0x1

    return v1
.end method

.method private registerFunctionInt(Ljava/lang/String;Lcom/oneplus/oimc/IOPFunction;I)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "func"    # Lcom/oneplus/oimc/IOPFunction;
    .param p3, "flag"    # I

    .line 612
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/server/FunctionManager;->addFunction(Ljava/lang/String;Lcom/oneplus/oimc/IOPFunction;I)Lcom/oneplus/server/OPFunction;

    move-result-object v0

    .line 613
    .local v0, "oFunc":Lcom/oneplus/server/OPFunction;
    if-nez v0, :cond_0

    .line 614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Register func "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 615
    const/4 v1, 0x0

    return v1

    .line 616
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v1, :cond_1

    .line 617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered func "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 620
    :cond_1
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    const/4 v1, 0x1

    return v1
.end method

.method private registerModeInt(Lcom/oneplus/server/SceneMode;)Z
    .locals 2
    .param p1, "mode"    # Lcom/oneplus/server/SceneMode;

    .line 598
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/server/ModeManager;->addMode(Lcom/oneplus/server/SceneMode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Register mode failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/server/SceneMode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 600
    const/4 v0, 0x0

    return v0

    .line 601
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v0, :cond_1

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Registered mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/server/SceneMode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 605
    :cond_1
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mModeToRules:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mModeToFuncs:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    const/4 v0, 0x1

    return v0
.end method

.method private removeRuleInt(Lcom/oneplus/server/Rule;)Z
    .locals 9
    .param p1, "rule"    # Lcom/oneplus/server/Rule;

    .line 273
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRuleManager:Lcom/oneplus/server/RuleManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/server/RuleManager;->removeRule(Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 274
    const-string v0, "Remove rule failed"

    invoke-static {v0}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 275
    return v1

    .line 278
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/server/Rule;->getModes()Ljava/util/ArrayList;

    move-result-object v0

    .line 279
    .local v0, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/server/SceneMode;>;"
    invoke-virtual {p1}, Lcom/oneplus/server/Rule;->getRequest()I

    move-result v2

    .line 280
    .local v2, "req":I
    move v3, v1

    .line 280
    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_3

    .line 281
    iget-object v4, p0, Lcom/oneplus/server/TriggerManager;->mModeToRules:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 282
    .local v4, "h":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/oneplus/server/Rule;>;"
    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 283
    const-string/jumbo v6, "rule in enable table is broken"

    invoke-static {v6}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 285
    :cond_1
    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 286
    iget-object v6, p0, Lcom/oneplus/server/TriggerManager;->mModeToFuncs:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 287
    .local v6, "fl":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/oneplus/server/OPFunction;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 288
    .local v7, "count":I
    if-gt v7, v5, :cond_2

    .line 289
    invoke-virtual {p1}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 291
    :cond_2
    invoke-virtual {p1}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v5

    add-int/lit8 v8, v7, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .end local v4    # "h":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/oneplus/server/Rule;>;"
    .end local v6    # "fl":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/oneplus/server/OPFunction;Ljava/lang/Integer;>;"
    .end local v7    # "count":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 295
    .end local v3    # "i":I
    :cond_3
    sget-boolean v3, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    if-eqz v3, :cond_6

    .line 296
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed rule, function "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 297
    new-instance v3, Ljava/lang/StringBuffer;

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    const-string v4, "DISABLE: "

    goto :goto_2

    :cond_4
    const-string v4, "ENABLE: "

    :goto_2
    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 298
    .local v3, "sb":Ljava/lang/StringBuffer;
    nop

    .line 298
    .local v1, "i":I
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 299
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/server/SceneMode;

    invoke-virtual {v6}, Lcom/oneplus/server/SceneMode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "    "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 300
    .end local v1    # "i":I
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 302
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_6
    return v5
.end method

.method private removeRuntimeRule(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z
    .locals 5
    .param p1, "r"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;
    .param p3, "sourceFlag"    # I

    .line 864
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRuleManager:Lcom/oneplus/server/RuleManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getTriggerModes()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 865
    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getAction()I

    move-result v2

    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getFuncName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getLevel()I

    move-result v4

    .line 864
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oneplus/server/RuleManager;->getRule(Ljava/util/ArrayList;ILjava/lang/String;I)Lcom/oneplus/server/Rule;

    move-result-object v0

    .line 867
    .local v0, "rule":Lcom/oneplus/server/Rule;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getSourceFlag()I

    move-result v1

    if-ne v1, p3, :cond_2

    .line 868
    invoke-direct {p0, v0}, Lcom/oneplus/server/TriggerManager;->removeRuleInt(Lcom/oneplus/server/Rule;)Z

    .line 869
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->isRunnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 870
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->isRunnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 871
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 872
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 875
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/server/OPFunction;->getFlag()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 876
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v2

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/oneplus/server/TriggerManager;->calcFuncStatus(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/oneplus/server/TriggerManager;->getHighestLevelRule(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;

    move-result-object v2

    invoke-direct {p0, v1, v2, v4}, Lcom/oneplus/server/TriggerManager;->triggerFunction(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;Ljava/lang/Object;)V

    .line 878
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 880
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private removeRuntimeRule(Ljava/util/ArrayList;ILjava/lang/String;ILcom/oneplus/server/MsgObjectArg;I)Z
    .locals 5
    .param p2, "request"    # I
    .param p3, "fname"    # Ljava/lang/String;
    .param p4, "level"    # I
    .param p5, "arg"    # Lcom/oneplus/server/MsgObjectArg;
    .param p6, "sourceFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "I",
            "Lcom/oneplus/server/MsgObjectArg;",
            "I)Z"
        }
    .end annotation

    .line 884
    .local p1, "mNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRuleManager:Lcom/oneplus/server/RuleManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oneplus/server/RuleManager;->getRule(Ljava/util/ArrayList;ILjava/lang/String;I)Lcom/oneplus/server/Rule;

    move-result-object v0

    .line 886
    .local v0, "rule":Lcom/oneplus/server/Rule;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getSourceFlag()I

    move-result v1

    if-ne v1, p6, :cond_2

    .line 887
    invoke-direct {p0, v0}, Lcom/oneplus/server/TriggerManager;->removeRuleInt(Lcom/oneplus/server/Rule;)Z

    .line 888
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->isRunnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 889
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->isRunnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 890
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 891
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 894
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/server/OPFunction;->getFlag()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 895
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v2

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/oneplus/server/TriggerManager;->calcFuncStatus(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/oneplus/server/TriggerManager;->getHighestLevelRule(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;

    move-result-object v2

    invoke-direct {p0, v1, v2, v4}, Lcom/oneplus/server/TriggerManager;->triggerFunction(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;Ljava/lang/Object;)V

    .line 897
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 900
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private removeRuntimeRuleAsUser(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z
    .locals 3
    .param p1, "r"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;
    .param p3, "userId"    # I

    .line 910
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getTriggerModes()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 911
    .local v0, "mNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/oneplus/server/TriggerManager;->removeRuntimeRule(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z

    move-result v1

    return v1
.end method

.method private removeRuntimeRuleByCmd(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;)Z
    .locals 1
    .param p1, "r"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;

    .line 932
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/server/TriggerManager;->removeRuntimeRule(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z

    move-result v0

    return v0
.end method

.method private removeRuntimeRuleForAll(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;)Z
    .locals 1
    .param p1, "r"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;

    .line 920
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/server/TriggerManager;->removeRuntimeRule(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z

    move-result v0

    return v0
.end method

.method private runRule(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z
    .locals 9
    .param p1, "r"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;
    .param p3, "sourceFlag"    # I

    .line 797
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getFuncName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/server/FunctionManager;->getFunc(Ljava/lang/String;)Lcom/oneplus/server/OPFunction;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 798
    return v1

    .line 800
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 801
    return v1

    .line 803
    :cond_1
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mRuleManager:Lcom/oneplus/server/RuleManager;

    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getTriggerModes()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 804
    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getAction()I

    move-result v5

    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getFuncName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getLevel()I

    move-result v7

    .line 803
    move v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/oneplus/server/RuleManager;->tryConstructRule(Ljava/util/ArrayList;ILjava/lang/String;II)Lcom/oneplus/server/Rule;

    move-result-object v0

    .line 805
    .local v0, "rule":Lcom/oneplus/server/Rule;
    if-nez v0, :cond_2

    .line 806
    return v1

    .line 808
    :cond_2
    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getLevel()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/oneplus/server/Rule;->setRuleLevel(I)V

    .line 809
    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getDifferenceSwitch()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oneplus/server/Rule;->setDifferenceSwitch([Ljava/lang/String;)V

    .line 810
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oneplus/server/Rule;->setRinfo(Ljava/lang/Object;)V

    .line 811
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/server/OPFunction;->getFlag()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    .line 812
    return v1

    .line 814
    :cond_3
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->isRunnable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 815
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v3

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lcom/oneplus/server/TriggerManager;->calcFuncStatus(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;

    move-result-object v4

    invoke-direct {p0, v3, v4, v0}, Lcom/oneplus/server/TriggerManager;->getHighestLevelRule(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;

    move-result-object v3

    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/oneplus/server/TriggerManager;->triggerFunction(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;Ljava/lang/Object;)V

    .line 818
    :cond_4
    return v2
.end method

.method private runRuleForAll(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;)Z
    .locals 1
    .param p1, "r"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;

    .line 924
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/server/TriggerManager;->runRule(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z

    move-result v0

    return v0
.end method

.method private final triggerFunction(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;Ljava/lang/Object;)V
    .locals 1
    .param p1, "func"    # Lcom/oneplus/server/OPFunction;
    .param p2, "rule"    # Lcom/oneplus/server/Rule;
    .param p3, "obj"    # Ljava/lang/Object;

    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/server/TriggerManager;->prepareFunction(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;Ljava/lang/Object;Z)V

    .line 191
    return-void
.end method

.method private unBindRemoteAction(Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 661
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/server/FunctionManager;->getFunc(Ljava/lang/String;)Lcom/oneplus/server/OPFunction;

    move-result-object v0

    .line 662
    .local v0, "oFunc":Lcom/oneplus/server/OPFunction;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 663
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unbind for remote func "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed, function is not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 664
    return v1

    .line 667
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/server/OPFunction;->getFunc()Lcom/oneplus/oimc/IOPFunction;

    move-result-object v2

    .line 668
    .local v2, "iop":Lcom/oneplus/oimc/IOPFunction;
    instance-of v3, v2, Lcom/oneplus/oimc/OIMCRemoteFunc;

    if-eqz v3, :cond_2

    .line 669
    move-object v1, v2

    check-cast v1, Lcom/oneplus/oimc/OIMCRemoteFunc;

    .line 670
    .local v1, "rfunc":Lcom/oneplus/oimc/OIMCRemoteFunc;
    invoke-virtual {v1}, Lcom/oneplus/oimc/OIMCRemoteFunc;->unBindRemoteAction()Z

    .line 672
    iget-boolean v3, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v3, :cond_1

    .line 673
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unbind for remote func "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " success"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 675
    .end local v1    # "rfunc":Lcom/oneplus/oimc/OIMCRemoteFunc;
    :cond_1
    nop

    .line 679
    const/4 v1, 0x1

    return v1

    .line 676
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unbind for remote func "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " failed, not an OIMCRemoteFunc type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 677
    return v1
.end method

.method private userSwitch(I)V
    .locals 3
    .param p1, "newUserId"    # I

    .line 1103
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v0}, Lcom/oneplus/server/ModeManager;->getCurrUserModeName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1104
    return-void

    .line 1107
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1108
    .local v0, "newUserIdModeName":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v1, v0}, Lcom/oneplus/server/ModeManager;->getMode(Ljava/lang/String;)Lcom/oneplus/server/SceneMode;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1109
    new-instance v1, Lcom/oneplus/server/SceneMode;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/oneplus/server/SceneMode;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lcom/oneplus/server/TriggerManager;->registerMode(Lcom/oneplus/server/SceneMode;)Z

    .line 1112
    :cond_1
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 1113
    invoke-virtual {v1, v0}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    .line 1114
    invoke-virtual {v2}, Lcom/oneplus/server/ModeManager;->getCurrUserModeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 1115
    .local v1, "arg":Lcom/oneplus/server/MsgObjectArg;
    const/4 v2, 0x3

    invoke-direct {p0, v2, v1}, Lcom/oneplus/server/TriggerManager;->modeSwitch(ILcom/oneplus/server/MsgObjectArg;)Z

    .line 1117
    iget-object v2, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v2, v0}, Lcom/oneplus/server/ModeManager;->setCurrUserMode(Ljava/lang/String;)V

    .line 1118
    return-void
.end method

.method private writeLocalConfig()V
    .locals 6

    .line 1161
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/oneplus/server/TriggerManager;->getConfigFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 1162
    .local v0, "configFile":Ljava/io/File;
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1163
    .local v1, "mAtomicFile":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    .line 1164
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-direct {p0}, Lcom/oneplus/server/TriggerManager;->genCustomConfigString()Ljava/lang/String;

    move-result-object v3

    .line 1165
    .local v3, "configStr":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1167
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v2, v4

    .line 1168
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1169
    .local v4, "out":Ljava/io/BufferedOutputStream;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1170
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1171
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 1172
    sget-boolean v5, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "writeLocalConfig complete"

    invoke-static {v5}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1178
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    :cond_0
    goto :goto_0

    .line 1173
    :catch_0
    move-exception v4

    .line 1174
    .local v4, "e":Ljava/lang/Exception;
    if-eqz v2, :cond_1

    .line 1175
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1177
    :cond_1
    const-string v5, "Failed to write local config"

    invoke-static {v5, v4}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1180
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addRule(Ljava/util/ArrayList;ILjava/lang/String;I)Lcom/oneplus/server/Rule;
    .locals 6
    .param p2, "request"    # I
    .param p3, "fname"    # Ljava/lang/String;
    .param p4, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "I)",
            "Lcom/oneplus/server/Rule;"
        }
    .end annotation

    .line 267
    .local p1, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-enter p0

    .line 268
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/oneplus/server/TriggerManager;->addRuleInt(Ljava/util/ArrayList;ILjava/lang/String;II)Lcom/oneplus/server/Rule;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dumpSysInfo(ILcom/oneplus/server/MsgObjectArg;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .line 964
    monitor-enter p0

    .line 965
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/server/TriggerManager;->doDumpSysInfo(ILcom/oneplus/server/MsgObjectArg;Ljava/io/PrintWriter;)V

    .line 966
    monitor-exit p0

    .line 967
    return-void

    .line 966
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFuncConfig(ILcom/oneplus/server/MsgObjectArg;)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;

    .line 958
    monitor-enter p0

    .line 959
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/oneplus/server/TriggerManager;->doGetFuncConfig(ILcom/oneplus/server/MsgObjectArg;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 960
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFuncStatus(ILcom/oneplus/server/MsgObjectArg;)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;

    .line 952
    monitor-enter p0

    .line 953
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/oneplus/server/TriggerManager;->doGetFuncStatus(ILcom/oneplus/server/MsgObjectArg;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 954
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSysInfo(ILcom/oneplus/server/MsgObjectArg;)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;

    .line 946
    monitor-enter p0

    .line 947
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/oneplus/server/TriggerManager;->doGetSysInfo(ILcom/oneplus/server/MsgObjectArg;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 948
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public parseOnlineConfig(Lorg/json/JSONArray;)V
    .locals 9
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 1328
    if-nez p1, :cond_0

    .line 1329
    return-void

    .line 1332
    :cond_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1333
    const/4 v0, 0x0

    move v1, v0

    .line 1333
    .local v1, "index":I
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 1334
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1336
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "force_disable_func_list"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1337
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 1338
    .local v3, "disableSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1339
    .local v4, "disableListJsonArray":Lorg/json/JSONArray;
    move v5, v0

    .line 1339
    .local v5, "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 1340
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1341
    .local v6, "disabledFunc":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1342
    sget-boolean v7, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onlineconfig disable "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 1343
    :cond_1
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1339
    .end local v6    # "disabledFunc":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1346
    .end local v5    # "i":I
    :cond_3
    const/4 v5, 0x2

    invoke-direct {p0, v3, v5}, Lcom/oneplus/server/TriggerManager;->applyOnlineConfig(Landroid/util/ArraySet;I)V

    .line 1333
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "disableSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "disableListJsonArray":Lorg/json/JSONArray;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1349
    .end local v1    # "index":I
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1350
    :try_start_2
    const-string v0, "apply onlineconfig done"

    invoke-static {v0}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1354
    goto :goto_2

    .line 1349
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1352
    :catch_0
    move-exception v0

    .line 1353
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resolve online config error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 1355
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public readLocalConfig()V
    .locals 9

    .line 1121
    const/4 v0, 0x0

    .line 1131
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mSystemDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/oneplus/server/TriggerManager;->getConfigFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 1132
    .local v1, "configFile":Ljava/io/File;
    const-string/jumbo v2, "load default config"

    invoke-static {v2}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 1134
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1135
    .local v2, "mAtomicFile":Landroid/util/AtomicFile;
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v0, v3

    .line 1136
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 1137
    .local v3, "writer":Ljava/io/Writer;
    const/16 v4, 0x400

    new-array v4, v4, [C

    .line 1138
    .local v4, "buffer":[C
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v0, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1140
    .local v5, "reader":Ljava/io/Reader;
    :goto_0
    invoke-virtual {v5, v4}, Ljava/io/Reader;->read([C)I

    move-result v6

    move v7, v6

    .line 1140
    .local v7, "n":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_0

    .line 1141
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v7}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 1144
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1145
    .local v6, "jsonString":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/oneplus/server/TriggerManager;->parseLocalConfig(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1151
    .end local v1    # "configFile":Ljava/io/File;
    .end local v2    # "mAtomicFile":Landroid/util/AtomicFile;
    .end local v3    # "writer":Ljava/io/Writer;
    .end local v4    # "buffer":[C
    .end local v5    # "reader":Ljava/io/Reader;
    .end local v6    # "jsonString":Ljava/lang/String;
    .end local v7    # "n":I
    if-eqz v0, :cond_1

    .line 1152
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1154
    :catch_0
    move-exception v1

    .line 1157
    goto :goto_2

    .line 1156
    :cond_1
    :goto_1
    goto :goto_2

    .line 1150
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 1147
    :catch_1
    move-exception v1

    .line 1148
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "read json config error message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1151
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_1

    .line 1152
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1158
    :goto_2
    return-void

    .line 1150
    :goto_3
    nop

    .line 1151
    if-eqz v0, :cond_2

    .line 1152
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 1154
    :catch_2
    move-exception v2

    nop

    .line 1156
    :cond_2
    :goto_4
    throw v1
.end method

.method public registerFunction(Ljava/lang/String;Lcom/oneplus/oimc/IOPFunction;I)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "func"    # Lcom/oneplus/oimc/IOPFunction;
    .param p3, "flag"    # I

    .line 970
    monitor-enter p0

    .line 971
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/server/TriggerManager;->registerFunctionInt(Ljava/lang/String;Lcom/oneplus/oimc/IOPFunction;I)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 972
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerMode(Lcom/oneplus/server/SceneMode;)Z
    .locals 1
    .param p1, "mode"    # Lcom/oneplus/server/SceneMode;

    .line 976
    monitor-enter p0

    .line 977
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oneplus/server/TriggerManager;->registerModeInt(Lcom/oneplus/server/SceneMode;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 978
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateTrigger(Landroid/os/Message;)Z
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 989
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/oneplus/server/OIMCMessage;->getModeType(I)I

    move-result v0

    .line 990
    .local v0, "ttype":I
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->getMajorType(I)I

    move-result v1

    .line 992
    .local v1, "mtype":I
    iget-boolean v2, p0, Lcom/oneplus/server/TriggerManager;->mInTestMode:Z

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    xor-int/2addr v2, v4

    if-eqz v2, :cond_1

    .line 993
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Test mode: discard message "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/server/TriggerManager;->mInTestMode:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 994
    return v3

    .line 997
    :cond_1
    const/4 v2, 0x0

    .line 998
    .local v2, "ret":Z
    monitor-enter p0

    .line 999
    const/16 v3, 0x2710

    if-eq v1, v3, :cond_2

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    packed-switch v1, :pswitch_data_4

    .line 1093
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "major type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1096
    :catchall_0
    move-exception v3

    goto/16 :goto_2

    .line 1042
    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/oimc/OIMCRule;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/oneplus/server/MsgObjectArg;

    invoke-direct {p0, v3, v4}, Lcom/oneplus/server/TriggerManager;->runRuleForAll(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;)Z

    move-result v3

    move v2, v3

    .line 1043
    goto/16 :goto_1

    .line 1090
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/oneplus/server/TriggerManager;->unBindRemoteAction(Ljava/lang/String;)Z

    move-result v3

    move v2, v3

    .line 1091
    goto/16 :goto_1

    .line 1086
    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/oneplus/server/MsgObjectArg;

    .line 1087
    invoke-virtual {v4}, Lcom/oneplus/server/MsgObjectArg;->getArg2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/os/IOIMCRemoteAction;

    .line 1086
    invoke-direct {p0, v3, v4}, Lcom/oneplus/server/TriggerManager;->bindRemoteAction(Ljava/lang/String;Lcom/oneplus/os/IOIMCRemoteAction;)Z

    move-result v3

    move v2, v3

    .line 1088
    goto/16 :goto_1

    .line 1039
    :pswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/oimc/OIMCRule;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/oneplus/server/MsgObjectArg;

    invoke-direct {p0, v3, v4}, Lcom/oneplus/server/TriggerManager;->removeRuntimeRuleForAll(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;)Z

    move-result v3

    move v2, v3

    .line 1040
    goto/16 :goto_1

    .line 1036
    :pswitch_4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/oimc/OIMCRule;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/oneplus/server/MsgObjectArg;

    invoke-direct {p0, v3, v4}, Lcom/oneplus/server/TriggerManager;->addRuntimeRuleForAll(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;)Z

    move-result v3

    move v2, v3

    .line 1037
    goto/16 :goto_1

    .line 1083
    :pswitch_5
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/oimc/OIMCRule;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/oneplus/server/MsgObjectArg;

    invoke-direct {p0, v3, v4}, Lcom/oneplus/server/TriggerManager;->removeRuntimeRuleByCmd(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;)Z

    move-result v3

    move v2, v3

    .line 1084
    goto/16 :goto_1

    .line 1080
    :pswitch_6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/oimc/OIMCRule;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/oneplus/server/MsgObjectArg;

    invoke-direct {p0, v3, v4}, Lcom/oneplus/server/TriggerManager;->addRuntimeRuleByCmd(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;)Z

    move-result v3

    move v2, v3

    .line 1081
    goto/16 :goto_1

    .line 1074
    :pswitch_7
    invoke-direct {p0}, Lcom/oneplus/server/TriggerManager;->writeLocalConfig()V

    .line 1075
    goto/16 :goto_1

    .line 1033
    :pswitch_8
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/oimc/OIMCRule;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/oneplus/server/MsgObjectArg;

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v3, v4, v5}, Lcom/oneplus/server/TriggerManager;->removeRuntimeRuleAsUser(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z

    move-result v3

    move v2, v3

    .line 1034
    goto/16 :goto_1

    .line 1030
    :pswitch_9
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/oimc/OIMCRule;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/oneplus/server/MsgObjectArg;

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v3, v4, v5}, Lcom/oneplus/server/TriggerManager;->addRuntimeRuleAsUser(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z

    move-result v3

    move v2, v3

    .line 1031
    goto/16 :goto_1

    .line 1071
    :pswitch_a
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v3}, Lcom/oneplus/server/TriggerManager;->userSwitch(I)V

    .line 1072
    goto/16 :goto_1

    .line 1069
    :pswitch_b
    goto/16 :goto_1

    .line 1065
    :pswitch_c
    invoke-virtual {p0}, Lcom/oneplus/server/TriggerManager;->readLocalConfig()V

    .line 1066
    goto/16 :goto_1

    .line 1057
    :pswitch_d
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/oneplus/server/MsgObjectArg;

    .line 1058
    invoke-virtual {v4}, Lcom/oneplus/server/MsgObjectArg;->getArg2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 1057
    invoke-direct {p0, v3, v4, v5}, Lcom/oneplus/server/TriggerManager;->registerFunctionExt(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    move v2, v3

    .line 1060
    goto/16 :goto_1

    .line 1052
    :pswitch_e
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/oneplus/server/MsgObjectArg;

    .line 1053
    invoke-virtual {v4}, Lcom/oneplus/server/MsgObjectArg;->getArg2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/oimc/IOPFunction;

    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 1052
    invoke-direct {p0, v3, v4, v5}, Lcom/oneplus/server/TriggerManager;->registerFunctionInt(Ljava/lang/String;Lcom/oneplus/oimc/IOPFunction;I)Z

    move-result v3

    move v2, v3

    .line 1055
    goto/16 :goto_1

    .line 1049
    :pswitch_f
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/server/SceneMode;

    invoke-direct {p0, v3}, Lcom/oneplus/server/TriggerManager;->registerModeInt(Lcom/oneplus/server/SceneMode;)Z

    move-result v3

    move v2, v3

    .line 1050
    goto/16 :goto_1

    .line 1077
    :pswitch_10
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/oneplus/server/MsgObjectArg;

    invoke-direct {p0, v3, v4}, Lcom/oneplus/server/TriggerManager;->funcConfig(Ljava/lang/String;Lcom/oneplus/server/MsgObjectArg;)Z

    move-result v3

    move v2, v3

    .line 1078
    goto/16 :goto_1

    .line 1045
    :pswitch_11
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/oneplus/server/MsgObjectArg;

    invoke-direct {p0, v3, v4}, Lcom/oneplus/server/TriggerManager;->funcConfig(Ljava/lang/String;Lcom/oneplus/server/MsgObjectArg;)Z

    move-result v3

    move v2, v3

    .line 1047
    goto/16 :goto_1

    .line 1023
    :pswitch_12
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/util/ArrayList;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    .line 1025
    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg2()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    const/16 v8, 0x32

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v9, v3

    check-cast v9, Lcom/oneplus/server/MsgObjectArg;

    iget v10, p1, Landroid/os/Message;->arg2:I

    .line 1023
    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/oneplus/server/TriggerManager;->removeRuntimeRule(Ljava/util/ArrayList;ILjava/lang/String;ILcom/oneplus/server/MsgObjectArg;I)Z

    move-result v3

    move v2, v3

    .line 1028
    goto/16 :goto_1

    .line 1016
    :pswitch_13
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/util/ArrayList;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    .line 1018
    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg2()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    const/16 v8, 0x32

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v9, v3

    check-cast v9, Lcom/oneplus/server/MsgObjectArg;

    iget v10, p1, Landroid/os/Message;->arg2:I

    .line 1016
    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/oneplus/server/TriggerManager;->addRuntimeRule(Ljava/util/ArrayList;ILjava/lang/String;ILcom/oneplus/server/MsgObjectArg;I)Z

    move-result v3

    move v2, v3

    .line 1021
    goto :goto_1

    .line 1013
    :pswitch_14
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-direct {p0, v1, v3}, Lcom/oneplus/server/TriggerManager;->modeTransition(ILcom/oneplus/server/MsgObjectArg;)Z

    move-result v3

    move v2, v3

    .line 1014
    goto :goto_1

    .line 1010
    :pswitch_15
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/oneplus/server/MsgObjectArg;

    invoke-direct {p0, v1, v3, v4}, Lcom/oneplus/server/TriggerManager;->modeConfig(IILcom/oneplus/server/MsgObjectArg;)Z

    move-result v3

    move v2, v3

    .line 1011
    goto :goto_1

    .line 1007
    :pswitch_16
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-direct {p0, v1, v3}, Lcom/oneplus/server/TriggerManager;->modeSwitch(ILcom/oneplus/server/MsgObjectArg;)Z

    move-result v3

    move v2, v3

    .line 1008
    goto :goto_1

    .line 1004
    :pswitch_17
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-direct {p0, v1, v3}, Lcom/oneplus/server/TriggerManager;->modeExit(ILcom/oneplus/server/MsgObjectArg;)Z

    move-result v3

    move v2, v3

    .line 1005
    goto :goto_1

    .line 1001
    :pswitch_18
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-direct {p0, v1, v3}, Lcom/oneplus/server/TriggerManager;->modeEnter(ILcom/oneplus/server/MsgObjectArg;)Z

    move-result v3

    move v2, v3

    .line 1002
    goto :goto_1

    .line 1062
    :cond_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/OPFunction;

    invoke-direct {p0, v3}, Lcom/oneplus/server/TriggerManager;->flushLoop(Lcom/oneplus/server/OPFunction;)V

    .line 1063
    nop

    .line 1096
    :goto_1
    monitor-exit p0

    .line 1098
    return v2

    .line 1096
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x65
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x68
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xc9
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xd0
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
    .end packed-switch
.end method
