.class final Landroid/database/ContentObserver$Transport;
.super Landroid/database/IContentObserver$Stub;
.source "ContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Transport"
.end annotation


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/database/ContentObserver;)V
    .locals 0
    .param p1, "contentObserver"    # Landroid/database/ContentObserver;

    .line 223
    invoke-direct {p0}, Landroid/database/IContentObserver$Stub;-><init>()V

    .line 224
    iput-object p1, p0, Landroid/database/ContentObserver$Transport;->mContentObserver:Landroid/database/ContentObserver;

    .line 225
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 229
    iget-object v0, p0, Landroid/database/ContentObserver$Transport;->mContentObserver:Landroid/database/ContentObserver;

    .line 230
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    if-eqz v0, :cond_0

    .line 231
    invoke-static {v0, p1, p2, p3}, Landroid/database/ContentObserver;->access$000(Landroid/database/ContentObserver;ZLandroid/net/Uri;I)V

    .line 233
    :cond_0
    return-void
.end method

.method public releaseContentObserver()V
    .locals 1

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/ContentObserver$Transport;->mContentObserver:Landroid/database/ContentObserver;

    .line 237
    return-void
.end method
