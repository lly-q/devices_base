.class public Lnet/oneplus/odm/insight/AssistantEventCollector;
.super Ljava/lang/Object;
.source "AssistantEventCollector.java"


# static fields
.field public static final APPID:Ljava/lang/String; = "Y1K5J5SRDP"

.field private static DEBUG_ONEPLUS:Z = false

.field private static final DEFAULT_ASSISTANT:Ljava/lang/String; = "default_assistant"

.field public static final DOUBLE_CLICK_BACK:I = 0x6

.field public static final DOUBLE_CLICK_HOME:I = 0x4

.field public static final DOUBLE_CLICK_RECENT:I = 0x8

.field public static final KEYGUARD_SHORTCUT:I = 0x9

.field public static final LAUNCHER:I = 0xa

.field public static final LONG_PRESS_BACK:I = 0x5

.field public static final LONG_PRESS_HOME:I = 0x3

.field public static final LONG_PRESS_POWER:I = 0x1

.field public static final LONG_PRESS_RECENT:I = 0x7

.field public static final MSG_SUBMIT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AssistantEvent"

.field public static final VOICE:I = 0x2

.field private static mCollector:Lnet/oneplus/odm/insight/AssistantEventCollector;


# instance fields
.field private mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lnet/oneplus/odm/insight/AssistantEventCollector;->DEBUG_ONEPLUS:Z

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lnet/oneplus/odm/insight/AssistantEventCollector;->mCollector:Lnet/oneplus/odm/insight/AssistantEventCollector;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/odm/insight/AssistantEventCollector;->mContentResolver:Landroid/content/ContentResolver;

    .line 52
    iput-object v0, p0, Lnet/oneplus/odm/insight/AssistantEventCollector;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 54
    iput-object p1, p0, Lnet/oneplus/odm/insight/AssistantEventCollector;->mContext:Landroid/content/Context;

    .line 55
    new-instance v0, Lnet/oneplus/odm/insight/tracker/OSTracker;

    const-string v1, "Y1K5J5SRDP"

    invoke-direct {v0, p1, v1}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/oneplus/odm/insight/AssistantEventCollector;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 56
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lnet/oneplus/odm/insight/AssistantEventCollector;->DEBUG_ONEPLUS:Z

    .line 57
    invoke-direct {p0}, Lnet/oneplus/odm/insight/AssistantEventCollector;->initHandler()V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/odm/insight/AssistantEventCollector;->mContentResolver:Landroid/content/ContentResolver;

    .line 59
    new-instance v0, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/oneplus/odm/insight/AssistantEventCollector;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/odm/insight/AssistantEventCollector;)Lnet/oneplus/odm/insight/tracker/OSTracker;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/odm/insight/AssistantEventCollector;

    .line 23
    iget-object v0, p0, Lnet/oneplus/odm/insight/AssistantEventCollector;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    return-object v0
.end method

.method static synthetic access$002(Lnet/oneplus/odm/insight/AssistantEventCollector;Lnet/oneplus/odm/insight/tracker/OSTracker;)Lnet/oneplus/odm/insight/tracker/OSTracker;
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/odm/insight/AssistantEventCollector;
    .param p1, "x1"    # Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 23
    iput-object p1, p0, Lnet/oneplus/odm/insight/AssistantEventCollector;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    return-object p1
.end method

.method static synthetic access$100(Lnet/oneplus/odm/insight/AssistantEventCollector;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/odm/insight/AssistantEventCollector;

    .line 23
    iget-object v0, p0, Lnet/oneplus/odm/insight/AssistantEventCollector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lnet/oneplus/odm/insight/AssistantEventCollector;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 63
    sget-object v0, Lnet/oneplus/odm/insight/AssistantEventCollector;->mCollector:Lnet/oneplus/odm/insight/AssistantEventCollector;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lnet/oneplus/odm/insight/AssistantEventCollector;

    invoke-direct {v0, p0}, Lnet/oneplus/odm/insight/AssistantEventCollector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/oneplus/odm/insight/AssistantEventCollector;->mCollector:Lnet/oneplus/odm/insight/AssistantEventCollector;

    .line 66
    :cond_0
    sget-object v0, Lnet/oneplus/odm/insight/AssistantEventCollector;->mCollector:Lnet/oneplus/odm/insight/AssistantEventCollector;

    return-object v0
.end method

.method private initHandler()V
    .locals 2

    .line 103
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AssistantEvent"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/oneplus/odm/insight/AssistantEventCollector;->mHandlerThread:Landroid/os/HandlerThread;

    .line 104
    iget-object v0, p0, Lnet/oneplus/odm/insight/AssistantEventCollector;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 105
    new-instance v0, Lnet/oneplus/odm/insight/AssistantEventCollector$1;

    iget-object v1, p0, Lnet/oneplus/odm/insight/AssistantEventCollector;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/oneplus/odm/insight/AssistantEventCollector$1;-><init>(Lnet/oneplus/odm/insight/AssistantEventCollector;Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/oneplus/odm/insight/AssistantEventCollector;->mHandler:Landroid/os/Handler;

    .line 125
    return-void
.end method

.method private submit(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 92
    .local p2, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lnet/oneplus/odm/insight/AssistantEventCollector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 93
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 94
    if-eqz p2, :cond_0

    .line 95
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "hashmap"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 97
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 99
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    iget-object v1, p0, Lnet/oneplus/odm/insight/AssistantEventCollector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 100
    return-void
.end method


# virtual methods
.method public collectOpenAssistantEvent(I)V
    .locals 5
    .param p1, "method"    # I

    .line 70
    invoke-virtual {p0}, Lnet/oneplus/odm/insight/AssistantEventCollector;->getCurrentAssistantPackageName()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "pn":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 72
    .local v1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "pn"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v2, "method"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-boolean v2, Lnet/oneplus/odm/insight/AssistantEventCollector;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_0

    .line 75
    const-string v2, "AssistantEvent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "collectOpenAssistant:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", method:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    const-string v2, "open_assistant"

    invoke-direct {p0, v2, v1}, Lnet/oneplus/odm/insight/AssistantEventCollector;->submit(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 78
    return-void
.end method

.method public getCurrentAssistantPackageName()Ljava/lang/String;
    .locals 3

    .line 81
    iget-object v0, p0, Lnet/oneplus/odm/insight/AssistantEventCollector;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 83
    .local v0, "component":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 84
    const-string v1, "default_assistant"

    .line 85
    .local v1, "packageName":Ljava/lang/String;
    return-object v1

    .line 87
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    .restart local v1    # "packageName":Ljava/lang/String;
    return-object v1
.end method
