.class public Landroid/net/IpConfiguration;
.super Ljava/lang/Object;
.source "IpConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IpConfiguration$ProxySettings;,
        Landroid/net/IpConfiguration$IpAssignment;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/IpConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "IpConfiguration"


# instance fields
.field public httpProxy:Landroid/net/ProxyInfo;

.field public ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field public proxySettings:Landroid/net/IpConfiguration$ProxySettings;

.field public staticIpConfiguration:Landroid/net/StaticIpConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 187
    new-instance v0, Landroid/net/IpConfiguration$1;

    invoke-direct {v0}, Landroid/net/IpConfiguration$1;-><init>()V

    sput-object v0, Landroid/net/IpConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Landroid/net/IpConfiguration;->init(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V
    .locals 0
    .param p1, "ipAssignment"    # Landroid/net/IpConfiguration$IpAssignment;
    .param p2, "proxySettings"    # Landroid/net/IpConfiguration$ProxySettings;
    .param p3, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;
    .param p4, "httpProxy"    # Landroid/net/ProxyInfo;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/IpConfiguration;->init(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/net/IpConfiguration;)V
    .locals 4
    .param p1, "source"    # Landroid/net/IpConfiguration;

    .line 90
    invoke-direct {p0}, Landroid/net/IpConfiguration;-><init>()V

    .line 91
    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p1, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v1, p1, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v2, p1, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    iget-object v3, p1, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/net/IpConfiguration;->init(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    .line 95
    :cond_0
    return-void
.end method

.method private init(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V
    .locals 2
    .param p1, "ipAssignment"    # Landroid/net/IpConfiguration$IpAssignment;
    .param p2, "proxySettings"    # Landroid/net/IpConfiguration$ProxySettings;
    .param p3, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;
    .param p4, "httpProxy"    # Landroid/net/ProxyInfo;

    .line 70
    iput-object p1, p0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 71
    iput-object p2, p0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 72
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 73
    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/net/StaticIpConfiguration;

    invoke-direct {v1, p3}, Landroid/net/StaticIpConfiguration;-><init>(Landroid/net/StaticIpConfiguration;)V

    :goto_0
    iput-object v1, p0, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 74
    if-nez p4, :cond_1

    .line 75
    goto :goto_1

    :cond_1
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-direct {v0, p4}, Landroid/net/ProxyInfo;-><init>(Landroid/net/ProxyInfo;)V

    :goto_1
    iput-object v0, p0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 76
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 150
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 151
    return v0

    .line 154
    :cond_0
    instance-of v1, p1, Landroid/net/IpConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 155
    return v2

    .line 158
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/net/IpConfiguration;

    .line 159
    .local v1, "other":Landroid/net/IpConfiguration;
    iget-object v3, p0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v4, v1, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v4, v1, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    iget-object v4, v1, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 161
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    iget-object v4, v1, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 162
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 159
    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getHttpProxy()Landroid/net/ProxyInfo;
    .locals 1

    .line 122
    iget-object v0, p0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    return-object v0
.end method

.method public getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;
    .locals 1

    .line 98
    iget-object v0, p0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    return-object v0
.end method

.method public getProxySettings()Landroid/net/IpConfiguration$ProxySettings;
    .locals 1

    .line 114
    iget-object v0, p0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    return-object v0
.end method

.method public getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;
    .locals 1

    .line 106
    iget-object v0, p0, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 167
    iget-object v0, p0, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xd

    add-int/2addr v1, v0

    const/16 v0, 0x11

    iget-object v2, p0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 168
    invoke-virtual {v2}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v2

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    const/16 v0, 0x2f

    iget-object v2, p0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 169
    invoke-virtual {v2}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v2

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    const/16 v0, 0x53

    iget-object v2, p0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 170
    invoke-virtual {v2}, Landroid/net/ProxyInfo;->hashCode()I

    move-result v2

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 167
    return v1
.end method

.method public setHttpProxy(Landroid/net/ProxyInfo;)V
    .locals 0
    .param p1, "httpProxy"    # Landroid/net/ProxyInfo;

    .line 126
    iput-object p1, p0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 127
    return-void
.end method

.method public setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V
    .locals 0
    .param p1, "ipAssignment"    # Landroid/net/IpConfiguration$IpAssignment;

    .line 102
    iput-object p1, p0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 103
    return-void
.end method

.method public setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V
    .locals 0
    .param p1, "proxySettings"    # Landroid/net/IpConfiguration$ProxySettings;

    .line 118
    iput-object p1, p0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 119
    return-void
.end method

.method public setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V
    .locals 0
    .param p1, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;

    .line 110
    iput-object p1, p0, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 111
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IP assignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v2}, Landroid/net/IpConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-object v1, p0, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    if-eqz v1, :cond_0

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Static configuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-virtual {v2}, Landroid/net/StaticIpConfiguration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proxy settings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v2}, Landroid/net/IpConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v1, p0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    if-eqz v1, :cond_1

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP proxy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 180
    iget-object v0, p0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v0}, Landroid/net/IpConfiguration$IpAssignment;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v0}, Landroid/net/IpConfiguration$ProxySettings;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 183
    iget-object v0, p0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 184
    return-void
.end method
