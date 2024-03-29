.class public final Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatusCode;
.super Ljava/lang/Object;
.source "SupplicantStatusCode.java"


# static fields
.field public static final FAILURE_ARGS_INVALID:I = 0x2

.field public static final FAILURE_IFACE_DISABLED:I = 0x6

.field public static final FAILURE_IFACE_EXISTS:I = 0x5

.field public static final FAILURE_IFACE_INVALID:I = 0x3

.field public static final FAILURE_IFACE_NOT_DISCONNECTED:I = 0x7

.field public static final FAILURE_IFACE_UNKNOWN:I = 0x4

.field public static final FAILURE_NETWORK_INVALID:I = 0x8

.field public static final FAILURE_NETWORK_UNKNOWN:I = 0x9

.field public static final FAILURE_UNKNOWN:I = 0x1

.field public static final SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 72
    .local v1, "flipped":I
    const-string v2, "SUCCESS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 74
    const-string v2, "FAILURE_UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    or-int/lit8 v1, v1, 0x1

    .line 77
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 78
    const-string v2, "FAILURE_ARGS_INVALID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    or-int/lit8 v1, v1, 0x2

    .line 81
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 82
    const-string v2, "FAILURE_IFACE_INVALID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    or-int/lit8 v1, v1, 0x3

    .line 85
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 86
    const-string v2, "FAILURE_IFACE_UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    or-int/lit8 v1, v1, 0x4

    .line 89
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 90
    const-string v2, "FAILURE_IFACE_EXISTS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    or-int/lit8 v1, v1, 0x5

    .line 93
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 94
    const-string v2, "FAILURE_IFACE_DISABLED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    or-int/lit8 v1, v1, 0x6

    .line 97
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 98
    const-string v2, "FAILURE_IFACE_NOT_DISCONNECTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    or-int/lit8 v1, v1, 0x7

    .line 101
    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 102
    const-string v2, "FAILURE_NETWORK_INVALID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    or-int/lit8 v1, v1, 0x8

    .line 105
    :cond_7
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    .line 106
    const-string v2, "FAILURE_NETWORK_UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    or-int/lit8 v1, v1, 0x9

    .line 109
    :cond_8
    if-eq p0, v1, :cond_9

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_9
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 36
    if-nez p0, :cond_0

    .line 37
    const-string v0, "SUCCESS"

    return-object v0

    .line 39
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 40
    const-string v0, "FAILURE_UNKNOWN"

    return-object v0

    .line 42
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 43
    const-string v0, "FAILURE_ARGS_INVALID"

    return-object v0

    .line 45
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 46
    const-string v0, "FAILURE_IFACE_INVALID"

    return-object v0

    .line 48
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 49
    const-string v0, "FAILURE_IFACE_UNKNOWN"

    return-object v0

    .line 51
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 52
    const-string v0, "FAILURE_IFACE_EXISTS"

    return-object v0

    .line 54
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 55
    const-string v0, "FAILURE_IFACE_DISABLED"

    return-object v0

    .line 57
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 58
    const-string v0, "FAILURE_IFACE_NOT_DISCONNECTED"

    return-object v0

    .line 60
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 61
    const-string v0, "FAILURE_NETWORK_INVALID"

    return-object v0

    .line 63
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 64
    const-string v0, "FAILURE_NETWORK_UNKNOWN"

    return-object v0

    .line 66
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
