.class Landroid/os/ShellCallback$MyShellCallback;
.super Lcom/android/internal/os/IShellCallback$Stub;
.source "ShellCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ShellCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyShellCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/ShellCallback;


# direct methods
.method constructor <init>(Landroid/os/ShellCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/ShellCallback;

    .line 37
    iput-object p1, p0, Landroid/os/ShellCallback$MyShellCallback;->this$0:Landroid/os/ShellCallback;

    invoke-direct {p0}, Lcom/android/internal/os/IShellCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public openFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "seLinuxContext"    # Ljava/lang/String;
    .param p3, "mode"    # Ljava/lang/String;

    .line 40
    iget-object v0, p0, Landroid/os/ShellCallback$MyShellCallback;->this$0:Landroid/os/ShellCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/ShellCallback;->onOpenFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method
