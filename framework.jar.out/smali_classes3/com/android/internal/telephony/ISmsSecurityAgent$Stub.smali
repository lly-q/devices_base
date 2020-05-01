.class public abstract Lcom/android/internal/telephony/ISmsSecurityAgent$Stub;
.super Landroid/os/Binder;
.source "ISmsSecurityAgent.java"

# interfaces
.implements Lcom/android/internal/telephony/ISmsSecurityAgent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISmsSecurityAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISmsSecurityAgent$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ISmsSecurityAgent"

.field static final TRANSACTION_onAuthorize:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "com.android.internal.telephony.ISmsSecurityAgent"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ISmsSecurityAgent$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISmsSecurityAgent;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    return-object v0

    .line 32
    :cond_0
    const-string v0, "com.android.internal.telephony.ISmsSecurityAgent"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ISmsSecurityAgent;

    if-eqz v1, :cond_1

    .line 34
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/ISmsSecurityAgent;

    return-object v1

    .line 36
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ISmsSecurityAgent$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ISmsSecurityAgent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    const-string v0, "com.android.internal.telephony.ISmsSecurityAgent"

    .line 45
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 49
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    return v1

    .line 54
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 57
    sget-object v2, Lcom/android/internal/telephony/SmsAuthorizationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SmsAuthorizationRequest;

    .local v2, "_arg0":Lcom/android/internal/telephony/SmsAuthorizationRequest;
    goto :goto_0

    .line 60
    .end local v2    # "_arg0":Lcom/android/internal/telephony/SmsAuthorizationRequest;
    :cond_2
    const/4 v2, 0x0

    .line 62
    .restart local v2    # "_arg0":Lcom/android/internal/telephony/SmsAuthorizationRequest;
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISmsSecurityAgent$Stub;->onAuthorize(Lcom/android/internal/telephony/SmsAuthorizationRequest;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    return v1
.end method