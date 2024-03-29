.class public Landroid/security/keymaster/KeyAttestationPackageInfo;
.super Ljava/lang/Object;
.source "KeyAttestationPackageInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/keymaster/KeyAttestationPackageInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mPackageSignatures:[Landroid/content/pm/Signature;

.field private final mPackageVersionCode:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Landroid/security/keymaster/KeyAttestationPackageInfo$1;

    invoke-direct {v0}, Landroid/security/keymaster/KeyAttestationPackageInfo$1;-><init>()V

    sput-object v0, Landroid/security/keymaster/KeyAttestationPackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keymaster/KeyAttestationPackageInfo;->mPackageName:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/security/keymaster/KeyAttestationPackageInfo;->mPackageVersionCode:J

    .line 93
    sget-object v0, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/Signature;

    iput-object v0, p0, Landroid/security/keymaster/KeyAttestationPackageInfo;->mPackageSignatures:[Landroid/content/pm/Signature;

    .line 94
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/security/keymaster/KeyAttestationPackageInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/security/keymaster/KeyAttestationPackageInfo$1;

    .line 29
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeyAttestationPackageInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J[Landroid/content/pm/Signature;)V
    .locals 0
    .param p1, "mPackageName"    # Ljava/lang/String;
    .param p2, "mPackageVersionCode"    # J
    .param p4, "mPackageSignatures"    # [Landroid/content/pm/Signature;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroid/security/keymaster/KeyAttestationPackageInfo;->mPackageName:Ljava/lang/String;

    .line 43
    iput-wide p2, p0, Landroid/security/keymaster/KeyAttestationPackageInfo;->mPackageVersionCode:J

    .line 44
    iput-object p4, p0, Landroid/security/keymaster/KeyAttestationPackageInfo;->mPackageSignatures:[Landroid/content/pm/Signature;

    .line 45
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Landroid/security/keymaster/KeyAttestationPackageInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageSignatures()[Landroid/content/pm/Signature;
    .locals 1

    .line 62
    iget-object v0, p0, Landroid/security/keymaster/KeyAttestationPackageInfo;->mPackageSignatures:[Landroid/content/pm/Signature;

    return-object v0
.end method

.method public getPackageVersionCode()J
    .locals 2

    .line 56
    iget-wide v0, p0, Landroid/security/keymaster/KeyAttestationPackageInfo;->mPackageVersionCode:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 72
    iget-object v0, p0, Landroid/security/keymaster/KeyAttestationPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-wide v0, p0, Landroid/security/keymaster/KeyAttestationPackageInfo;->mPackageVersionCode:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 74
    iget-object v0, p0, Landroid/security/keymaster/KeyAttestationPackageInfo;->mPackageSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 75
    return-void
.end method
