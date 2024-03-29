.class public abstract Landroid/security/IConfirmationPromptCallback$Stub;
.super Landroid/os/Binder;
.source "IConfirmationPromptCallback.java"

# interfaces
.implements Landroid/security/IConfirmationPromptCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/IConfirmationPromptCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/IConfirmationPromptCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.security.IConfirmationPromptCallback"

.field static final TRANSACTION_onConfirmationPromptCompleted:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.security.IConfirmationPromptCallback"

    invoke-virtual {p0, p0, v0}, Landroid/security/IConfirmationPromptCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/security/IConfirmationPromptCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    return-object v0

    .line 32
    :cond_0
    const-string v0, "android.security.IConfirmationPromptCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/security/IConfirmationPromptCallback;

    if-eqz v1, :cond_1

    .line 34
    move-object v1, v0

    check-cast v1, Landroid/security/IConfirmationPromptCallback;

    return-object v1

    .line 36
    :cond_1
    new-instance v1, Landroid/security/IConfirmationPromptCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/security/IConfirmationPromptCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 40
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

    .line 44
    const-string v0, "android.security.IConfirmationPromptCallback"

    .line 45
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 64
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

    .line 58
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 59
    .local v3, "_arg1":[B
    invoke-virtual {p0, v2, v3}, Landroid/security/IConfirmationPromptCallback$Stub;->onConfirmationPromptCompleted(I[B)V

    .line 60
    return v1
.end method
