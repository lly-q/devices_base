.class Landroid/text/method/TextKeyListener$NullKeyListener;
.super Ljava/lang/Object;
.source "TextKeyListener.java"

# interfaces
.implements Landroid/text/method/KeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/TextKeyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullKeyListener"
.end annotation


# static fields
.field private static sInstance:Landroid/text/method/TextKeyListener$NullKeyListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/text/method/TextKeyListener$NullKeyListener;
    .locals 1

    .line 240
    sget-object v0, Landroid/text/method/TextKeyListener$NullKeyListener;->sInstance:Landroid/text/method/TextKeyListener$NullKeyListener;

    if-eqz v0, :cond_0

    .line 241
    sget-object v0, Landroid/text/method/TextKeyListener$NullKeyListener;->sInstance:Landroid/text/method/TextKeyListener$NullKeyListener;

    return-object v0

    .line 243
    :cond_0
    new-instance v0, Landroid/text/method/TextKeyListener$NullKeyListener;

    invoke-direct {v0}, Landroid/text/method/TextKeyListener$NullKeyListener;-><init>()V

    sput-object v0, Landroid/text/method/TextKeyListener$NullKeyListener;->sInstance:Landroid/text/method/TextKeyListener$NullKeyListener;

    .line 244
    sget-object v0, Landroid/text/method/TextKeyListener$NullKeyListener;->sInstance:Landroid/text/method/TextKeyListener$NullKeyListener;

    return-object v0
.end method


# virtual methods
.method public clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "states"    # I

    .line 237
    return-void
.end method

.method public getInputType()I
    .locals 1

    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 229
    const/4 v0, 0x0

    return v0
.end method
