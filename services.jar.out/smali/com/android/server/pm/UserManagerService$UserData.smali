.class Lcom/android/server/pm/UserManagerService$UserData;
.super Ljava/lang/Object;
.source "UserManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UserData"
.end annotation


# instance fields
.field account:Ljava/lang/String;

.field info:Landroid/content/pm/UserInfo;

.field persistSeedData:Z

.field seedAccountName:Ljava/lang/String;

.field seedAccountOptions:Landroid/os/PersistableBundle;

.field seedAccountType:Ljava/lang/String;

.field startRealtime:J

.field unlockRealtime:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method clearSeedAccountData()V
    .locals 1

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    .line 284
    iput-object v0, p0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    .line 285
    iput-object v0, p0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    .line 287
    return-void
.end method
