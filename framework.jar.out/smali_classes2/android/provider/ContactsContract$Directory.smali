.class public final Landroid/provider/ContactsContract$Directory;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Directory"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "accountName"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "accountType"

.field public static final CALLER_PACKAGE_PARAM_KEY:Ljava/lang/String; = "callerPackage"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/contact_directory"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contact_directories"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT:J = 0x0L

.field public static final DIRECTORY_AUTHORITY:Ljava/lang/String; = "authority"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field public static final ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

.field public static final ENTERPRISE_DEFAULT:J = 0x3b9aca00L

.field public static final ENTERPRISE_DIRECTORY_ID_BASE:J = 0x3b9aca00L

.field public static final ENTERPRISE_FILE_URI:Landroid/net/Uri;

.field public static final ENTERPRISE_LOCAL_INVISIBLE:J = 0x3b9aca01L

.field public static final EXPORT_SUPPORT:Ljava/lang/String; = "exportSupport"

.field public static final EXPORT_SUPPORT_ANY_ACCOUNT:I = 0x2

.field public static final EXPORT_SUPPORT_NONE:I = 0x0

.field public static final EXPORT_SUPPORT_SAME_ACCOUNT_ONLY:I = 0x1

.field public static final LOCAL_INVISIBLE:J = 0x1L

.field public static final PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final PHOTO_SUPPORT:Ljava/lang/String; = "photoSupport"

.field public static final PHOTO_SUPPORT_FULL:I = 0x3

.field public static final PHOTO_SUPPORT_FULL_SIZE_ONLY:I = 0x2

.field public static final PHOTO_SUPPORT_NONE:I = 0x0

.field public static final PHOTO_SUPPORT_THUMBNAIL_ONLY:I = 0x1

.field public static final SHORTCUT_SUPPORT:Ljava/lang/String; = "shortcutSupport"

.field public static final SHORTCUT_SUPPORT_DATA_ITEMS_ONLY:I = 0x1

.field public static final SHORTCUT_SUPPORT_FULL:I = 0x2

.field public static final SHORTCUT_SUPPORT_NONE:I = 0x0

.field public static final TYPE_RESOURCE_ID:Ljava/lang/String; = "typeResourceId"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 415
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "directories"

    .line 416
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$Directory;->CONTENT_URI:Landroid/net/Uri;

    .line 430
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "directories_enterprise"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$Directory;->ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

    .line 443
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "directory_file_enterprise"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$Directory;->ENTERPRISE_FILE_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    return-void
.end method

.method public static isEnterpriseDirectoryId(J)Z
    .locals 2
    .param p0, "directoryId"    # J

    .line 657
    const-wide/32 v0, 0x3b9aca00

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRemoteDirectory(J)Z
    .locals 1
    .param p0, "directoryId"    # J

    .line 649
    invoke-static {p0, p1}, Landroid/provider/ContactsContract$Directory;->isRemoteDirectoryId(J)Z

    move-result v0

    return v0
.end method

.method public static isRemoteDirectoryId(J)Z
    .locals 2
    .param p0, "directoryId"    # J

    .line 636
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x3b9aca00

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x3b9aca01

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static notifyDirectoryChange(Landroid/content/ContentResolver;)V
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .line 670
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 671
    .local v0, "contentValues":Landroid/content/ContentValues;
    sget-object v1, Landroid/provider/ContactsContract$Directory;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 672
    return-void
.end method
