.class public Lcom/android/internal/telephony/HardwareConfig;
.super Ljava/lang/Object;
.source "HardwareConfig.java"


# static fields
.field public static final DEV_HARDWARE_STATE_DISABLED:I = 0x2

.field public static final DEV_HARDWARE_STATE_ENABLED:I = 0x0

.field public static final DEV_HARDWARE_STATE_STANDBY:I = 0x1

.field public static final DEV_HARDWARE_TYPE_MODEM:I = 0x0

.field public static final DEV_HARDWARE_TYPE_SIM:I = 0x1

.field public static final DEV_MODEM_RIL_MODEL_MULTIPLE:I = 0x1

.field public static final DEV_MODEM_RIL_MODEL_SINGLE:I = 0x0

.field static final LOG_TAG:Ljava/lang/String; = "HardwareConfig"


# instance fields
.field public maxActiveDataCall:I

.field public maxActiveVoiceCall:I

.field public maxStandby:I

.field public modemUuid:Ljava/lang/String;

.field public rat:Ljava/util/BitSet;

.field public rilModel:I

.field public state:I

.field public type:I

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput p1, p0, Lcom/android/internal/telephony/HardwareConfig;->type:I

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 12
    .param p1, "res"    # Ljava/lang/String;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "split":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/HardwareConfig;->type:I

    .line 126
    iget v1, p0, Lcom/android/internal/telephony/HardwareConfig;->type:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 140
    :pswitch_0
    aget-object v1, v0, v4

    .line 141
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aget-object v3, v0, v3

    .line 142
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v0, v2

    .line 143
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/internal/telephony/HardwareConfig;->assignSim(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 128
    :pswitch_1
    aget-object v1, v0, v4

    .line 129
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aget-object v1, v0, v3

    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v1, v0, v2

    .line 131
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v1, 0x4

    aget-object v1, v0, v1

    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v1, 0x5

    aget-object v1, v0, v1

    .line 133
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v1, 0x6

    aget-object v1, v0, v1

    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v1, 0x7

    aget-object v1, v0, v1

    .line 135
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 128
    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/telephony/HardwareConfig;->assignModem(Ljava/lang/String;IIIIII)V

    .line 137
    nop

    .line 148
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public assignModem(Ljava/lang/String;IIIIII)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "model"    # I
    .param p4, "ratBits"    # I
    .param p5, "maxV"    # I
    .param p6, "maxD"    # I
    .param p7, "maxS"    # I

    .line 152
    iget v0, p0, Lcom/android/internal/telephony/HardwareConfig;->type:I

    if-nez v0, :cond_2

    .line 153
    invoke-static {p4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 154
    .local v0, "bits":[C
    iput-object p1, p0, Lcom/android/internal/telephony/HardwareConfig;->uuid:Ljava/lang/String;

    .line 155
    iput p2, p0, Lcom/android/internal/telephony/HardwareConfig;->state:I

    .line 156
    iput p3, p0, Lcom/android/internal/telephony/HardwareConfig;->rilModel:I

    .line 157
    new-instance v1, Ljava/util/BitSet;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/HardwareConfig;->rat:Ljava/util/BitSet;

    .line 158
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 159
    iget-object v3, p0, Lcom/android/internal/telephony/HardwareConfig;->rat:Ljava/util/BitSet;

    aget-char v4, v0, v2

    const/16 v5, 0x31

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-virtual {v3, v2, v4}, Ljava/util/BitSet;->set(IZ)V

    .line 158
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    .end local v2    # "i":I
    :cond_1
    iput p5, p0, Lcom/android/internal/telephony/HardwareConfig;->maxActiveVoiceCall:I

    .line 162
    iput p6, p0, Lcom/android/internal/telephony/HardwareConfig;->maxActiveDataCall:I

    .line 163
    iput p7, p0, Lcom/android/internal/telephony/HardwareConfig;->maxStandby:I

    .line 165
    .end local v0    # "bits":[C
    :cond_2
    return-void
.end method

.method public assignSim(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "link"    # Ljava/lang/String;

    .line 168
    iget v0, p0, Lcom/android/internal/telephony/HardwareConfig;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 169
    iput-object p1, p0, Lcom/android/internal/telephony/HardwareConfig;->uuid:Ljava/lang/String;

    .line 170
    iput-object p3, p0, Lcom/android/internal/telephony/HardwareConfig;->modemUuid:Ljava/lang/String;

    .line 171
    iput p2, p0, Lcom/android/internal/telephony/HardwareConfig;->state:I

    .line 173
    :cond_0
    return-void
.end method

.method public compareTo(Lcom/android/internal/telephony/HardwareConfig;)I
    .locals 3
    .param p1, "hw"    # Lcom/android/internal/telephony/HardwareConfig;

    .line 200
    invoke-virtual {p0}, Lcom/android/internal/telephony/HardwareConfig;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "one":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/HardwareConfig;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "two":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/internal/telephony/HardwareConfig;->type:I

    if-nez v1, :cond_0

    .line 178
    const-string v1, "Modem "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{ uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/HardwareConfig;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/HardwareConfig;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", rilModel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/HardwareConfig;->rilModel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", rat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/HardwareConfig;->rat:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", maxActiveVoiceCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/HardwareConfig;->maxActiveVoiceCall:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", maxActiveDataCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/HardwareConfig;->maxActiveDataCall:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", maxStandby="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/HardwareConfig;->maxStandby:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 187
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/HardwareConfig;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 188
    const-string v1, "Sim "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{ uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/HardwareConfig;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", modemUuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/HardwareConfig;->modemUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/HardwareConfig;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 194
    :cond_1
    const-string v1, "Invalid Configration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
