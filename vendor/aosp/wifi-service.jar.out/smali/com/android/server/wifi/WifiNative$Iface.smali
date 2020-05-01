.class Lcom/android/server/wifi/WifiNative$Iface;
.super Ljava/lang/Object;
.source "WifiNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Iface"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiNative$Iface$IfaceType;
    }
.end annotation


# static fields
.field public static final IFACE_TYPE_AP:I = 0x0

.field public static final IFACE_TYPE_FST:I = 0x2

.field public static final IFACE_TYPE_STA:I = 0x1


# instance fields
.field public externalListener:Lcom/android/server/wifi/WifiNative$InterfaceCallback;

.field public final id:I

.field public isUp:Z

.field public name:Ljava/lang/String;

.field public networkObserver:Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;

.field public final type:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "type"    # I

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput p1, p0, Lcom/android/server/wifi/WifiNative$Iface;->id:I

    .line 143
    iput p2, p0, Lcom/android/server/wifi/WifiNative$Iface;->type:I

    .line 144
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 148
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 149
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "Iface:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "{"

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "Name="

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/server/wifi/WifiNative$Iface;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ","

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "Id="

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/android/server/wifi/WifiNative$Iface;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ","

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "Type="

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/android/server/wifi/WifiNative$Iface;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "STA"

    goto :goto_0

    .line 156
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/WifiNative$Iface;->type:I

    if-nez v1, :cond_1

    const-string v1, "AP"

    goto :goto_0

    :cond_1
    const-string v1, "FST"

    .line 155
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "}"

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
