.class public abstract Landroid/location/ICountryDetector$Stub;
.super Landroid/os/Binder;
.source "ICountryDetector.java"

# interfaces
.implements Landroid/location/ICountryDetector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/ICountryDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/ICountryDetector$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.ICountryDetector"

.field static final TRANSACTION_addCountryListener:I = 0x2

.field static final TRANSACTION_detectCountry:I = 0x1

.field static final TRANSACTION_removeCountryListener:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.location.ICountryDetector"

    invoke-virtual {p0, p0, v0}, Landroid/location/ICountryDetector$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/ICountryDetector;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    const-string v0, "android.location.ICountryDetector"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/location/ICountryDetector;

    if-eqz v1, :cond_1

    .line 33
    move-object v1, v0

    check-cast v1, Landroid/location/ICountryDetector;

    return-object v1

    .line 35
    :cond_1
    new-instance v1, Landroid/location/ICountryDetector$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/ICountryDetector$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    const-string v0, "android.location.ICountryDetector"

    .line 44
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 76
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/ICountryListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ICountryListener;

    move-result-object v1

    .line 79
    .local v1, "_arg0":Landroid/location/ICountryListener;
    invoke-virtual {p0, v1}, Landroid/location/ICountryDetector$Stub;->removeCountryListener(Landroid/location/ICountryListener;)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    return v2

    .line 67
    .end local v1    # "_arg0":Landroid/location/ICountryListener;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/ICountryListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ICountryListener;

    move-result-object v1

    .line 70
    .restart local v1    # "_arg0":Landroid/location/ICountryListener;
    invoke-virtual {p0, v1}, Landroid/location/ICountryDetector$Stub;->addCountryListener(Landroid/location/ICountryListener;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    return v2

    .line 53
    .end local v1    # "_arg0":Landroid/location/ICountryListener;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Landroid/location/ICountryDetector$Stub;->detectCountry()Landroid/location/Country;

    move-result-object v1

    .line 55
    .local v1, "_result":Landroid/location/Country;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    invoke-virtual {v1, p3, v2}, Landroid/location/Country;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 61
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    :goto_0
    return v2

    .line 48
    .end local v1    # "_result":Landroid/location/Country;
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
