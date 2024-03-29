.class public abstract Landroid/se/omapi/ISecureElementReader$Stub;
.super Landroid/os/Binder;
.source "ISecureElementReader.java"

# interfaces
.implements Landroid/se/omapi/ISecureElementReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/se/omapi/ISecureElementReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/se/omapi/ISecureElementReader$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.se.omapi.ISecureElementReader"

.field static final TRANSACTION_closeSessions:I = 0x3

.field static final TRANSACTION_isSecureElementPresent:I = 0x1

.field static final TRANSACTION_openSession:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.se.omapi.ISecureElementReader"

    invoke-virtual {p0, p0, v0}, Landroid/se/omapi/ISecureElementReader$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/se/omapi/ISecureElementReader;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "android.se.omapi.ISecureElementReader"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/se/omapi/ISecureElementReader;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Landroid/se/omapi/ISecureElementReader;

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Landroid/se/omapi/ISecureElementReader$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/se/omapi/ISecureElementReader$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 35
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

    .line 39
    const-string v0, "android.se.omapi.ISecureElementReader"

    .line 40
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 72
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 65
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementReader$Stub;->closeSessions()V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    return v2

    .line 57
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementReader$Stub;->openSession()Landroid/se/omapi/ISecureElementSession;

    move-result-object v1

    .line 59
    .local v1, "_result":Landroid/se/omapi/ISecureElementSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/se/omapi/ISecureElementSession;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 61
    return v2

    .line 49
    .end local v1    # "_result":Landroid/se/omapi/ISecureElementSession;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementReader$Stub;->isSecureElementPresent()Z

    move-result v1

    .line 51
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    return v2

    .line 44
    .end local v1    # "_result":Z
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
