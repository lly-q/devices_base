.class Lcom/android/server/clipboard/ClipboardService$ListenerInfo;
.super Ljava/lang/Object;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/clipboard/ClipboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerInfo"
.end annotation


# instance fields
.field final mPackageName:Ljava/lang/String;

.field final mUid:I

.field final synthetic this$0:Lcom/android/server/clipboard/ClipboardService;


# direct methods
.method constructor <init>(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;)V
    .locals 0
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 207
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput p2, p0, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mUid:I

    .line 209
    iput-object p3, p0, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mPackageName:Ljava/lang/String;

    .line 210
    return-void
.end method
