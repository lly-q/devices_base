.class public Lcom/android/internal/telephony/dataconnection/ApnSetting;
.super Ljava/lang/Object;
.source "ApnSetting.java"


# static fields
.field private static final DBG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "ApnSetting"

.field static final TAG:Ljava/lang/String; = "ApnSetting"

.field static final V2_FORMAT_REGEX:Ljava/lang/String; = "^\\[ApnSettingV2\\]\\s*"

.field static final V3_FORMAT_REGEX:Ljava/lang/String; = "^\\[ApnSettingV3\\]\\s*"

.field static final V4_FORMAT_REGEX:Ljava/lang/String; = "^\\[ApnSettingV4\\]\\s*"

.field static final V5_FORMAT_REGEX:Ljava/lang/String; = "^\\[ApnSettingV5\\]\\s*"

.field private static final VDBG:Z = false


# instance fields
.field public final apn:Ljava/lang/String;

.field public final apnSetId:I

.field public final authType:I

.field private final bearer:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final bearerBitmask:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final carrier:Ljava/lang/String;

.field public final carrierEnabled:Z

.field public final id:I

.field public final maxConns:I

.field public final maxConnsTime:I

.field public final mmsPort:Ljava/lang/String;

.field public final mmsProxy:Ljava/lang/String;

.field public final mmsc:Ljava/lang/String;

.field public final modemCognitive:Z

.field public final mtu:I

.field public final mvnoMatchData:Ljava/lang/String;

.field public final mvnoType:Ljava/lang/String;

.field public final networkTypeBitmask:I

.field public final numeric:Ljava/lang/String;

.field public final password:Ljava/lang/String;

.field public permanentFailed:Z

.field public final port:Ljava/lang/String;

.field public final profileId:I

.field public final protocol:Ljava/lang/String;

.field public final proxy:Ljava/lang/String;

.field public final roamingProtocol:Ljava/lang/String;

.field public final types:[Ljava/lang/String;

.field public final typesBitmap:I

.field public final user:Ljava/lang/String;

.field public final waitTime:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZIIIILjava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "id"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "carrier"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "proxy"    # Ljava/lang/String;
    .param p6, "port"    # Ljava/lang/String;
    .param p7, "mmsc"    # Ljava/lang/String;
    .param p8, "mmsProxy"    # Ljava/lang/String;
    .param p9, "mmsPort"    # Ljava/lang/String;
    .param p10, "user"    # Ljava/lang/String;
    .param p11, "password"    # Ljava/lang/String;
    .param p12, "authType"    # I
    .param p13, "types"    # [Ljava/lang/String;
    .param p14, "protocol"    # Ljava/lang/String;
    .param p15, "roamingProtocol"    # Ljava/lang/String;
    .param p16, "carrierEnabled"    # Z
    .param p17, "bearer"    # I
    .param p18, "bearerBitmask"    # I
    .param p19, "profileId"    # I
    .param p20, "modemCognitive"    # Z
    .param p21, "maxConns"    # I
    .param p22, "waitTime"    # I
    .param p23, "maxConnsTime"    # I
    .param p24, "mtu"    # I
    .param p25, "mvnoType"    # Ljava/lang/String;
    .param p26, "mvnoMatchData"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p13

    .line 161
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->permanentFailed:Z

    .line 162
    move/from16 v3, p1

    iput v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    .line 163
    move-object/from16 v4, p2

    iput-object v4, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    .line 164
    move-object/from16 v5, p3

    iput-object v5, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    .line 165
    move-object/from16 v6, p4

    iput-object v6, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    .line 166
    move-object/from16 v7, p5

    iput-object v7, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    .line 167
    move-object/from16 v8, p6

    iput-object v8, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    .line 168
    move-object/from16 v9, p7

    iput-object v9, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    .line 169
    move-object/from16 v10, p8

    iput-object v10, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    .line 170
    move-object/from16 v11, p9

    iput-object v11, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    .line 174
    if-eqz p10, :cond_0

    move-object/from16 v12, p10

    goto :goto_0

    :cond_0
    const-string v12, ""

    :goto_0
    iput-object v12, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    .line 175
    if-eqz p11, :cond_1

    move-object/from16 v13, p11

    goto :goto_1

    :cond_1
    const-string v13, ""

    :goto_1
    iput-object v13, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    .line 181
    move/from16 v13, p12

    iput v13, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    .line 182
    array-length v14, v1

    new-array v14, v14, [Ljava/lang/String;

    iput-object v14, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    .line 183
    const/4 v14, 0x0

    .line 184
    .local v14, "apnBitmap":I
    move/from16 v16, v14

    move v14, v2

    move/from16 v2, v16

    .local v2, "apnBitmap":I
    .local v14, "i":I
    :goto_2
    array-length v3, v1

    if-ge v14, v3, :cond_2

    .line 185
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v4, v1, v14

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v14

    .line 186
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v3, v3, v14

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getApnBitmask(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v2, v3

    .line 184
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, p1

    move-object/from16 v4, p2

    goto :goto_2

    .line 188
    .end local v14    # "i":I
    :cond_2
    iput v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->typesBitmap:I

    .line 192
    if-eqz p14, :cond_3

    move-object/from16 v4, p14

    goto :goto_3

    :cond_3
    const-string v4, ""

    :goto_3
    iput-object v4, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    .line 193
    if-eqz p15, :cond_4

    move-object/from16 v14, p15

    goto :goto_4

    :cond_4
    const-string v14, ""

    :goto_4
    iput-object v14, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    .line 199
    move/from16 v14, p16

    iput-boolean v14, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    .line 200
    move/from16 v1, p17

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    .line 201
    invoke-static/range {p17 .. p17}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v15

    or-int v1, p18, v15

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    .line 202
    move/from16 v1, p19

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    .line 203
    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    .line 204
    move/from16 v1, p21

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    .line 205
    move/from16 v1, p22

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    .line 206
    move/from16 v1, p23

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    .line 207
    move/from16 v1, p24

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    .line 208
    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    .line 209
    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    .line 210
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apnSetId:I

    .line 211
    iget v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    invoke-static {v1}, Landroid/telephony/ServiceState;->convertBearerBitmaskToNetworkTypeBitmask(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->networkTypeBitmask:I

    .line 213
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIIIILjava/lang/String;Ljava/lang/String;)V
    .locals 27
    .param p1, "id"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "carrier"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "proxy"    # Ljava/lang/String;
    .param p6, "port"    # Ljava/lang/String;
    .param p7, "mmsc"    # Ljava/lang/String;
    .param p8, "mmsProxy"    # Ljava/lang/String;
    .param p9, "mmsPort"    # Ljava/lang/String;
    .param p10, "user"    # Ljava/lang/String;
    .param p11, "password"    # Ljava/lang/String;
    .param p12, "authType"    # I
    .param p13, "types"    # [Ljava/lang/String;
    .param p14, "protocol"    # Ljava/lang/String;
    .param p15, "roamingProtocol"    # Ljava/lang/String;
    .param p16, "carrierEnabled"    # Z
    .param p17, "networkTypeBitmask"    # I
    .param p18, "profileId"    # I
    .param p19, "modemCognitive"    # Z
    .param p20, "maxConns"    # I
    .param p21, "waitTime"    # I
    .param p22, "maxConnsTime"    # I
    .param p23, "mtu"    # I
    .param p24, "mvnoType"    # Ljava/lang/String;
    .param p25, "mvnoMatchData"    # Ljava/lang/String;

    .line 224
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    invoke-direct/range {v0 .. v26}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIIIILjava/lang/String;Ljava/lang/String;I)V

    .line 228
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIIIILjava/lang/String;Ljava/lang/String;I)V
    .locals 16
    .param p1, "id"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "carrier"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "proxy"    # Ljava/lang/String;
    .param p6, "port"    # Ljava/lang/String;
    .param p7, "mmsc"    # Ljava/lang/String;
    .param p8, "mmsProxy"    # Ljava/lang/String;
    .param p9, "mmsPort"    # Ljava/lang/String;
    .param p10, "user"    # Ljava/lang/String;
    .param p11, "password"    # Ljava/lang/String;
    .param p12, "authType"    # I
    .param p13, "types"    # [Ljava/lang/String;
    .param p14, "protocol"    # Ljava/lang/String;
    .param p15, "roamingProtocol"    # Ljava/lang/String;
    .param p16, "carrierEnabled"    # Z
    .param p17, "networkTypeBitmask"    # I
    .param p18, "profileId"    # I
    .param p19, "modemCognitive"    # Z
    .param p20, "maxConns"    # I
    .param p21, "waitTime"    # I
    .param p22, "maxConnsTime"    # I
    .param p23, "mtu"    # I
    .param p24, "mvnoType"    # Ljava/lang/String;
    .param p25, "mvnoMatchData"    # Ljava/lang/String;
    .param p26, "apnSetId"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p13

    .line 237
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->permanentFailed:Z

    .line 238
    move/from16 v3, p1

    iput v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    .line 239
    move-object/from16 v4, p2

    iput-object v4, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    .line 240
    move-object/from16 v5, p3

    iput-object v5, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    .line 241
    move-object/from16 v6, p4

    iput-object v6, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    .line 242
    move-object/from16 v7, p5

    iput-object v7, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    .line 243
    move-object/from16 v8, p6

    iput-object v8, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    .line 244
    move-object/from16 v9, p7

    iput-object v9, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    .line 245
    move-object/from16 v10, p8

    iput-object v10, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    .line 246
    move-object/from16 v11, p9

    iput-object v11, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    .line 250
    if-eqz p10, :cond_0

    move-object/from16 v12, p10

    goto :goto_0

    :cond_0
    const-string v12, ""

    :goto_0
    iput-object v12, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    .line 251
    if-eqz p11, :cond_1

    move-object/from16 v13, p11

    goto :goto_1

    :cond_1
    const-string v13, ""

    :goto_1
    iput-object v13, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    .line 257
    move/from16 v13, p12

    iput v13, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    .line 258
    array-length v14, v1

    new-array v14, v14, [Ljava/lang/String;

    iput-object v14, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    .line 259
    const/4 v14, 0x0

    .line 260
    .local v14, "apnBitmap":I
    move v15, v14

    move v14, v2

    move v2, v15

    .local v2, "apnBitmap":I
    .local v14, "i":I
    :goto_2
    array-length v3, v1

    if-ge v14, v3, :cond_2

    .line 261
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v4, v1, v14

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v14

    .line 262
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v3, v3, v14

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->getApnBitmask(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v2, v3

    .line 260
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, p1

    move-object/from16 v4, p2

    goto :goto_2

    .line 264
    .end local v14    # "i":I
    :cond_2
    iput v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->typesBitmap:I

    .line 268
    if-eqz p14, :cond_3

    move-object/from16 v4, p14

    goto :goto_3

    :cond_3
    const-string v4, ""

    :goto_3
    iput-object v4, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    .line 269
    if-eqz p15, :cond_4

    move-object/from16 v14, p15

    goto :goto_4

    :cond_4
    const-string v14, ""

    :goto_4
    iput-object v14, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    .line 275
    move/from16 v14, p16

    iput-boolean v14, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    .line 276
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    .line 277
    nop

    .line 278
    invoke-static/range {p17 .. p17}, Landroid/telephony/ServiceState;->convertNetworkTypeBitmaskToBearerBitmask(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    .line 279
    move/from16 v1, p17

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->networkTypeBitmask:I

    .line 280
    move/from16 v1, p18

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    .line 281
    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    .line 282
    move/from16 v1, p20

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    .line 283
    move/from16 v1, p21

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    .line 284
    move/from16 v1, p22

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    .line 285
    move/from16 v1, p23

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    .line 286
    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    .line 287
    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    .line 288
    move/from16 v1, p26

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apnSetId:I

    .line 289
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V
    .locals 39
    .param p1, "apn"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 292
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    iget v13, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    move-object/from16 v28, v15

    iget-boolean v15, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    move/from16 v29, v15

    iget v15, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->networkTypeBitmask:I

    move/from16 v30, v15

    iget v15, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    move/from16 v31, v15

    iget-boolean v15, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    move/from16 v32, v15

    iget v15, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    move/from16 v33, v15

    iget v15, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    move/from16 v34, v15

    iget v15, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    move/from16 v35, v15

    iget v15, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    move/from16 v36, v15

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    move-object/from16 v37, v15

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    move-object/from16 v38, v15

    iget v15, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apnSetId:I

    move-object/from16 v16, v1

    move-object/from16 v1, p0

    move/from16 v27, v15

    move/from16 v17, v29

    move/from16 v18, v30

    move/from16 v19, v31

    move/from16 v20, v32

    move/from16 v21, v33

    move/from16 v22, v34

    move/from16 v23, v35

    move/from16 v24, v36

    move-object/from16 v25, v37

    move-object/from16 v26, v38

    move-object/from16 v15, v28

    invoke-direct/range {v1 .. v27}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIIIILjava/lang/String;Ljava/lang/String;I)V

    .line 297
    return-void
.end method

.method public static arrayFromString(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation

    .line 454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .local v0, "retVal":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    return-object v0

    .line 458
    :cond_0
    const-string v1, "\\s*;\\s*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 459
    .local v1, "apnStrings":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 460
    .local v4, "apnString":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->fromString(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v5

    .line 461
    .local v5, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v5, :cond_1

    .line 462
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    .end local v4    # "apnString":Ljava/lang/String;
    .end local v5    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 465
    :cond_2
    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 46
    .param p0, "data"    # Ljava/lang/String;

    .line 342
    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 346
    :cond_0
    const-string v2, "^\\[ApnSettingV5\\]\\s*.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 347
    const/4 v2, 0x5

    .line 348
    .local v2, "version":I
    const-string v4, "^\\[ApnSettingV5\\]\\s*"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    .end local p0    # "data":Ljava/lang/String;
    .local v0, "data":Ljava/lang/String;
    .local v4, "data":Ljava/lang/String;
    :goto_0
    move-object v4, v0

    goto :goto_1

    .line 349
    .end local v0    # "data":Ljava/lang/String;
    .end local v2    # "version":I
    .end local v4    # "data":Ljava/lang/String;
    .restart local p0    # "data":Ljava/lang/String;
    :cond_1
    const-string v2, "^\\[ApnSettingV4\\]\\s*.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 350
    const/4 v2, 0x4

    .line 351
    .restart local v2    # "version":I
    const-string v4, "^\\[ApnSettingV4\\]\\s*"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 352
    .end local v2    # "version":I
    :cond_2
    const-string v2, "^\\[ApnSettingV3\\]\\s*.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 353
    const/4 v2, 0x3

    .line 354
    .restart local v2    # "version":I
    const-string v4, "^\\[ApnSettingV3\\]\\s*"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 355
    .end local v2    # "version":I
    :cond_3
    const-string v2, "^\\[ApnSettingV2\\]\\s*.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 356
    const/4 v2, 0x2

    .line 357
    .restart local v2    # "version":I
    const-string v4, "^\\[ApnSettingV2\\]\\s*"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 359
    .end local v2    # "version":I
    :cond_4
    move-object v4, v0

    move v2, v3

    .line 362
    .end local p0    # "data":Ljava/lang/String;
    .restart local v2    # "version":I
    .restart local v4    # "data":Ljava/lang/String;
    :goto_1
    const-string v0, "\\s*,\\s*"

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 363
    .local v5, "a":[Ljava/lang/String;
    array-length v0, v5

    const/16 v6, 0xe

    if-ge v0, v6, :cond_5

    .line 364
    return-object v1

    .line 369
    :cond_5
    const/16 v0, 0xc

    const/4 v7, 0x0

    :try_start_0
    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    .local v0, "authType":I
    nop

    .line 371
    move/from16 v20, v0

    goto :goto_2

    .line 370
    .end local v0    # "authType":I
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/NumberFormatException;
    nop

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    move/from16 v20, v7

    .line 377
    .local v20, "authType":I
    :goto_2
    const/4 v0, 0x0

    .line 378
    .local v0, "bearerBitmask":I
    const/4 v8, 0x0

    .line 379
    .local v8, "networkTypeBitmask":I
    const/4 v9, 0x0

    .line 380
    .local v9, "profileId":I
    const/4 v10, 0x0

    .line 381
    .local v10, "modemCognitive":Z
    const/4 v11, 0x0

    .line 382
    .local v11, "maxConns":I
    const/4 v12, 0x0

    .line 383
    .local v12, "waitTime":I
    const/4 v13, 0x0

    .line 384
    .local v13, "maxConnsTime":I
    const/4 v14, 0x0

    .line 385
    .local v14, "mtu":I
    const-string v15, ""

    .line 386
    .local v15, "mvnoType":Ljava/lang/String;
    const-string v16, ""

    .line 387
    .local v16, "mvnoMatchData":Ljava/lang/String;
    const/16 v17, 0x0

    .line 388
    .local v17, "apnSetId":I
    const/16 v6, 0xd

    if-ne v2, v3, :cond_6

    .line 389
    array-length v1, v5

    sub-int/2addr v1, v6

    new-array v1, v1, [Ljava/lang/String;

    .line 390
    .local v1, "typeArray":[Ljava/lang/String;
    array-length v3, v5

    sub-int/2addr v3, v6

    invoke-static {v5, v6, v1, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 391
    const-string v3, "IP"

    .line 392
    .local v3, "protocol":Ljava/lang/String;
    const-string v6, "IP"

    .line 393
    .local v6, "roamingProtocol":Ljava/lang/String;
    const/16 v18, 0x1

    .line 435
    .local v18, "carrierEnabled":Z
    move-object/from16 v38, v1

    move v1, v9

    move/from16 v35, v10

    move/from16 v36, v11

    move/from16 v37, v12

    move/from16 v39, v13

    move/from16 v40, v14

    move-object/from16 v41, v15

    move-object/from16 v42, v16

    move/from16 v43, v17

    move/from16 v7, v18

    goto/16 :goto_6

    .line 395
    .end local v1    # "typeArray":[Ljava/lang/String;
    .end local v3    # "protocol":Ljava/lang/String;
    .end local v6    # "roamingProtocol":Ljava/lang/String;
    .end local v18    # "carrierEnabled":Z
    :cond_6
    array-length v3, v5

    const/16 v7, 0x12

    if-ge v3, v7, :cond_7

    .line 396
    return-object v1

    .line 398
    :cond_7
    aget-object v1, v5, v6

    const-string v3, "\\s*\\|\\s*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 399
    .restart local v1    # "typeArray":[Ljava/lang/String;
    const/16 v3, 0xe

    aget-object v3, v5, v3

    .line 400
    .restart local v3    # "protocol":Ljava/lang/String;
    const/16 v6, 0xf

    aget-object v6, v5, v6

    .line 401
    .restart local v6    # "roamingProtocol":Ljava/lang/String;
    const/16 v18, 0x10

    aget-object v7, v5, v18

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 403
    .local v7, "carrierEnabled":Z
    const/16 v18, 0x11

    move/from16 v37, v0

    aget-object v0, v5, v18

    .end local v0    # "bearerBitmask":I
    .local v37, "bearerBitmask":I
    invoke-static {v0}, Landroid/telephony/ServiceState;->getBitmaskFromString(Ljava/lang/String;)I

    move-result v18

    .line 405
    .end local v37    # "bearerBitmask":I
    .local v18, "bearerBitmask":I
    array-length v0, v5

    move-object/from16 v38, v1

    const/16 v1, 0x16

    .end local v1    # "typeArray":[Ljava/lang/String;
    .local v38, "typeArray":[Ljava/lang/String;
    if-le v0, v1, :cond_8

    .line 406
    const/16 v0, 0x13

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 408
    const/16 v0, 0x12

    :try_start_1
    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v9, v0

    .line 409
    const/16 v0, 0x14

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v11, v0

    .line 410
    const/16 v0, 0x15

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v12, v0

    .line 411
    aget-object v0, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v13, v0

    .line 413
    goto :goto_3

    .line 412
    :catch_1
    move-exception v0

    .line 415
    :cond_8
    :goto_3
    array-length v0, v5

    const/16 v1, 0x17

    if-le v0, v1, :cond_9

    .line 417
    :try_start_2
    aget-object v0, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move v14, v0

    .line 419
    goto :goto_4

    .line 418
    :catch_2
    move-exception v0

    .line 421
    :cond_9
    :goto_4
    array-length v0, v5

    const/16 v1, 0x19

    if-le v0, v1, :cond_a

    .line 422
    const/16 v0, 0x18

    aget-object v15, v5, v0

    .line 423
    aget-object v16, v5, v1

    .line 425
    :cond_a
    array-length v0, v5

    const/16 v1, 0x1a

    if-le v0, v1, :cond_b

    .line 426
    aget-object v0, v5, v1

    invoke-static {v0}, Landroid/telephony/ServiceState;->getBitmaskFromString(Ljava/lang/String;)I

    move-result v0

    .line 428
    .end local v8    # "networkTypeBitmask":I
    .local v0, "networkTypeBitmask":I
    move v8, v0

    .end local v0    # "networkTypeBitmask":I
    .restart local v8    # "networkTypeBitmask":I
    :cond_b
    array-length v0, v5

    const/16 v1, 0x1b

    if-le v0, v1, :cond_c

    .line 429
    aget-object v0, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 435
    .end local v17    # "apnSetId":I
    .local v0, "apnSetId":I
    move/from16 v43, v0

    move v1, v9

    move/from16 v35, v10

    move/from16 v36, v11

    move/from16 v37, v12

    move/from16 v39, v13

    move/from16 v40, v14

    move-object/from16 v41, v15

    move-object/from16 v42, v16

    goto :goto_5

    .end local v0    # "apnSetId":I
    .restart local v17    # "apnSetId":I
    :cond_c
    move v1, v9

    move/from16 v35, v10

    move/from16 v36, v11

    move/from16 v37, v12

    move/from16 v39, v13

    move/from16 v40, v14

    move-object/from16 v41, v15

    move-object/from16 v42, v16

    move/from16 v43, v17

    .end local v9    # "profileId":I
    .end local v10    # "modemCognitive":Z
    .end local v11    # "maxConns":I
    .end local v12    # "waitTime":I
    .end local v13    # "maxConnsTime":I
    .end local v14    # "mtu":I
    .end local v15    # "mvnoType":Ljava/lang/String;
    .end local v16    # "mvnoMatchData":Ljava/lang/String;
    .end local v17    # "apnSetId":I
    .end local v18    # "bearerBitmask":I
    .local v0, "bearerBitmask":I
    .local v1, "profileId":I
    .local v35, "modemCognitive":Z
    .local v36, "maxConns":I
    .local v37, "waitTime":I
    .local v39, "maxConnsTime":I
    .local v40, "mtu":I
    .local v41, "mvnoType":Ljava/lang/String;
    .local v42, "mvnoMatchData":Ljava/lang/String;
    .local v43, "apnSetId":I
    :goto_5
    move/from16 v0, v18

    :goto_6
    if-nez v8, :cond_d

    .line 436
    nop

    .line 437
    invoke-static {v0}, Landroid/telephony/ServiceState;->convertBearerBitmaskToNetworkTypeBitmask(I)I

    move-result v8

    .line 439
    .end local v8    # "networkTypeBitmask":I
    .local v44, "networkTypeBitmask":I
    :cond_d
    move/from16 v44, v8

    new-instance v45, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    const/4 v9, -0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v10, 0xa

    aget-object v10, v5, v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0xb

    aget-object v10, v5, v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v8, 0x0

    aget-object v11, v5, v8

    const/4 v8, 0x1

    aget-object v12, v5, v8

    const/4 v8, 0x2

    aget-object v13, v5, v8

    const/4 v8, 0x3

    aget-object v14, v5, v8

    const/4 v8, 0x7

    aget-object v15, v5, v8

    const/16 v8, 0x8

    aget-object v16, v5, v8

    const/16 v8, 0x9

    aget-object v17, v5, v8

    const/4 v8, 0x4

    aget-object v18, v5, v8

    const/4 v8, 0x5

    aget-object v19, v5, v8

    move-object/from16 v8, v45

    move-object/from16 v21, v38

    move-object/from16 v22, v3

    move-object/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v44

    move/from16 v26, v1

    move/from16 v27, v35

    move/from16 v28, v36

    move/from16 v29, v37

    move/from16 v30, v39

    move/from16 v31, v40

    move-object/from16 v32, v41

    move-object/from16 v33, v42

    move/from16 v34, v43

    invoke-direct/range {v8 .. v34}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIIIILjava/lang/String;Ljava/lang/String;I)V

    return-object v45
.end method

.method private static getApnBitmask(Ljava/lang/String;)I
    .locals 6
    .param p0, "apn"    # Ljava/lang/String;

    .line 872
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "emergency"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "default"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "hipri"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_3
    const-string v0, "supl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_4
    const-string v0, "fota"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_5
    const-string v0, "mms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_6
    const-string v0, "ims"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string v0, "dun"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_8
    const-string v0, "cbs"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_9
    const-string v0, "ia"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_a
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 884
    return v5

    .line 883
    :pswitch_0
    const/16 v0, 0x3ff

    return v0

    .line 882
    :pswitch_1
    const/16 v0, 0x200

    return v0

    .line 881
    :pswitch_2
    const/16 v0, 0x100

    return v0

    .line 880
    :pswitch_3
    const/16 v0, 0x80

    return v0

    .line 879
    :pswitch_4
    const/16 v0, 0x40

    return v0

    .line 878
    :pswitch_5
    const/16 v0, 0x20

    return v0

    .line 877
    :pswitch_6
    const/16 v0, 0x10

    return v0

    .line 876
    :pswitch_7
    return v1

    .line 875
    :pswitch_8
    return v4

    .line 874
    :pswitch_9
    return v3

    .line 873
    :pswitch_a
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_a
        0xd18 -> :sswitch_9
        0x17ff4 -> :sswitch_8
        0x185fd -> :sswitch_7
        0x197cf -> :sswitch_6
        0x1a6d3 -> :sswitch_5
        0x300cf6 -> :sswitch_4
        0x360bde -> :sswitch_3
        0x5eafa06 -> :sswitch_2
        0x5c13d641 -> :sswitch_1
        0x6118c591 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static iccidMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "mvnoData"    # Ljava/lang/String;
    .param p1, "iccId"    # Ljava/lang/String;

    .line 531
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, "mvnoIccidList":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 533
    .local v4, "mvnoIccid":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 534
    const-string v1, "ApnSetting"

    const-string v2, "mvno icc id match found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const/4 v1, 0x1

    return v1

    .line 532
    .end local v4    # "mvnoIccid":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 538
    :cond_1
    return v2
.end method

.method private static imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "imsiDB"    # Ljava/lang/String;
    .param p1, "imsiSIM"    # Ljava/lang/String;

    .line 548
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 549
    .local v0, "len":I
    const/4 v1, 0x0

    .line 551
    .local v1, "idxCompare":I
    const/4 v2, 0x0

    if-gtz v0, :cond_0

    return v2

    .line 552
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v0, v3, :cond_1

    return v2

    .line 554
    :cond_1
    move v3, v2

    .local v3, "idx":I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 555
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 556
    .local v4, "c":C
    const/16 v5, 0x78

    if-eq v4, v5, :cond_3

    const/16 v5, 0x58

    if-eq v4, v5, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_2

    .line 557
    goto :goto_1

    .line 559
    :cond_2
    return v2

    .line 554
    .end local v4    # "c":C
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 562
    .end local v3    # "idx":I
    :cond_4
    const/4 v2, 0x1

    return v2
.end method

.method public static isMeteredApnType(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Z
    .locals 11
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 624
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 625
    return v0

    .line 628
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v1

    .line 629
    .local v1, "isRoaming":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    const/16 v3, 0x12

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v4

    .line 631
    .local v2, "isIwlan":Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    .line 637
    .local v3, "subId":I
    if-eqz v2, :cond_2

    .line 638
    const-string v5, "carrier_metered_iwlan_apn_types_strings"

    .local v5, "carrierConfig":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 639
    .end local v5    # "carrierConfig":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    .line 640
    const-string v5, "carrier_metered_roaming_apn_types_strings"

    goto :goto_1

    .line 642
    :cond_3
    const-string v5, "carrier_metered_apn_types_strings"

    .line 649
    .restart local v5    # "carrierConfig":Ljava/lang/String;
    :goto_2
    nop

    .line 650
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "carrier_config"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/CarrierConfigManager;

    .line 651
    .local v6, "configManager":Landroid/telephony/CarrierConfigManager;
    if-nez v6, :cond_4

    .line 652
    const-string v4, "ApnSetting"

    const-string v7, "Carrier config service is not available"

    invoke-static {v4, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    return v0

    .line 656
    :cond_4
    invoke-virtual {v6, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v7

    .line 657
    .local v7, "b":Landroid/os/PersistableBundle;
    if-nez v7, :cond_5

    .line 658
    const-string v4, "ApnSetting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t get the config. subId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    return v0

    .line 662
    :cond_5
    invoke-virtual {v7, v5}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 663
    .local v8, "meteredApnTypes":[Ljava/lang/String;
    if-nez v8, :cond_6

    .line 664
    const-string v4, "ApnSetting"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is not available. subId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    return v0

    .line 668
    :cond_6
    new-instance v9, Ljava/util/HashSet;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 675
    .local v9, "meteredApnSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v10, "*"

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 677
    return v0

    .line 680
    :cond_7
    invoke-virtual {v9, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 682
    return v0

    .line 683
    :cond_8
    const-string v10, "*"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 686
    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v10

    if-lez v10, :cond_9

    .line 688
    return v0

    .line 693
    :cond_9
    return v4
.end method

.method public static mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p0, "r"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .param p1, "mvnoType"    # Ljava/lang/String;
    .param p2, "mvnoMatchData"    # Ljava/lang/String;

    .line 566
    const-string v0, "spn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 568
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 569
    return v2

    .line 571
    :cond_0
    const-string v0, "imsi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 572
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    .line 573
    .local v0, "imsiSIM":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-static {p2, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 574
    return v2

    .line 576
    .end local v0    # "imsiSIM":Ljava/lang/String;
    :cond_1
    goto/16 :goto_3

    :cond_2
    const-string v0, "gid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 577
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid1()Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, "gid1":Ljava/lang/String;
    const-string v3, "ApnSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gid1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",mvnoMatchData:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    if-eqz v0, :cond_5

    .line 588
    const-string v3, ","

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 589
    .local v3, "mvnoGid1List":[Ljava/lang/String;
    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_5

    aget-object v6, v3, v5

    .line 590
    .local v6, "mvnoGid1":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 591
    .local v7, "mvno_match_data_length":I
    const-string v8, "ApnSetting"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mvnoGid1: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 593
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v7, :cond_3

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    .line 589
    .end local v6    # "mvnoGid1":Ljava/lang/String;
    .end local v7    # "mvno_match_data_length":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 594
    .restart local v6    # "mvnoGid1":Ljava/lang/String;
    .restart local v7    # "mvno_match_data_length":I
    :cond_4
    :goto_1
    const-string v1, "ApnSetting"

    const-string v4, "mvno GID1 match found"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    return v2

    .line 599
    .end local v0    # "gid1":Ljava/lang/String;
    .end local v3    # "mvnoGid1List":[Ljava/lang/String;
    .end local v6    # "mvnoGid1":Ljava/lang/String;
    .end local v7    # "mvno_match_data_length":I
    :cond_5
    goto :goto_3

    :cond_6
    const-string v0, "iccid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 600
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, "iccId":Ljava/lang/String;
    if-eqz v0, :cond_8

    .line 602
    const-string v3, ","

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 603
    .local v3, "mvnoIccidList":[Ljava/lang/String;
    array-length v4, v3

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_8

    aget-object v6, v3, v5

    .line 604
    .local v6, "mvnoIccid":Ljava/lang/String;
    const-string v7, "ApnSetting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mvnoIccid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 606
    const-string v1, "ApnSetting"

    const-string v4, "mvno icc id match found"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    return v2

    .line 603
    .end local v6    # "mvnoIccid":Ljava/lang/String;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 613
    .end local v0    # "iccId":Ljava/lang/String;
    .end local v3    # "mvnoIccidList":[Ljava/lang/String;
    :cond_8
    :goto_3
    return v1
.end method

.method private typeSameAny(Lcom/android/internal/telephony/dataconnection/ApnSetting;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Z
    .locals 5
    .param p1, "first"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .param p2, "second"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 848
    const/4 v0, 0x0

    move v1, v0

    .local v1, "index1":I
    :goto_0
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 849
    move v2, v0

    .local v2, "index2":I
    :goto_1
    iget-object v3, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 850
    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v3, v3, v2

    const-string v4, "*"

    .line 851
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v4, v4, v2

    .line 852
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 849
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 854
    :cond_1
    :goto_2
    const/4 v0, 0x1

    return v0

    .line 848
    .end local v2    # "index2":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 860
    .end local v1    # "index1":I
    :cond_3
    return v0
.end method

.method private xorEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "first"    # Ljava/lang/String;
    .param p2, "second"    # Ljava/lang/String;

    .line 865
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 866
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 867
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 865
    :goto_1
    return v0
.end method


# virtual methods
.method public canHandleType(Ljava/lang/String;)Z
    .locals 7
    .param p1, "type"    # Ljava/lang/String;

    .line 515
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 516
    :cond_0
    const/4 v0, 0x1

    .line 517
    .local v0, "wildcardable":Z
    const-string v2, "ia"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 518
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 520
    .local v5, "t":Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz v0, :cond_2

    const-string v6, "*"

    .line 521
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_2
    const-string v6, "default"

    .line 522
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "hipri"

    .line 523
    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    .line 518
    .end local v5    # "t":Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 524
    .restart local v5    # "t":Ljava/lang/String;
    :cond_4
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 527
    .end local v5    # "t":Ljava/lang/String;
    :cond_5
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 720
    instance-of v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 721
    return v1

    .line 724
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 726
    .local v0, "other":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    .line 728
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    .line 729
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    .line 730
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    .line 731
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    .line 732
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    .line 733
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    .line 734
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    .line 735
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    .line 736
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    .line 738
    invoke-static {v2, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->typesBitmap:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->typesBitmap:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    .line 740
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    .line 741
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    iget-boolean v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    iget-boolean v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    .line 751
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    .line 752
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->networkTypeBitmask:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->networkTypeBitmask:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apnSetId:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apnSetId:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    nop

    .line 726
    :cond_1
    return v1
.end method

.method public equals(Ljava/lang/Object;Z)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "isDataRoaming"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 770
    instance-of v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 771
    return v1

    .line 774
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 776
    .local v0, "other":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    .line 777
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    .line 778
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    .line 779
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    .line 780
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    .line 781
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    .line 782
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    .line 783
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    .line 784
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    .line 785
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    .line 787
    invoke-static {v2, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->typesBitmap:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->typesBitmap:I

    if-ne v2, v3, :cond_3

    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    .line 789
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    .line 790
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    iget-boolean v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    iget-boolean v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    .line 798
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    .line 799
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apnSetId:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apnSetId:I

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    nop

    .line 776
    :cond_3
    return v1
.end method

.method public hasMvnoParams()Z
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMetered(Lcom/android/internal/telephony/Phone;)Z
    .locals 7
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 703
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 704
    return v0

    .line 707
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 709
    .local v5, "type":Ljava/lang/String;
    invoke-static {v5, p1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->isMeteredApnType(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 710
    return v0

    .line 707
    .end local v5    # "type":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 713
    :cond_2
    return v3
.end method

.method public similar(Lcom/android/internal/telephony/dataconnection/ApnSetting;)Z
    .locals 2
    .param p1, "other"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 810
    const-string v0, "dun"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dun"

    .line 811
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    .line 812
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    invoke-direct {p0, p0, p1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->typeSameAny(Lcom/android/internal/telephony/dataconnection/ApnSetting;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    .line 814
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    .line 815
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    .line 816
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    .line 817
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    iget-boolean v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    .line 821
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    .line 822
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    .line 823
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    .line 824
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    .line 825
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->networkTypeBitmask:I

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->networkTypeBitmask:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apnSetId:I

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apnSetId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 810
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 471
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[ApnSettingV5] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    .line 472
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 474
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 475
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 476
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 477
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 478
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 479
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 480
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 481
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 483
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 485
    const-string v2, " | "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 488
    .end local v1    # "i":I
    :cond_1
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 491
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 492
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 493
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 494
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 495
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 496
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 497
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 498
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 499
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->permanentFailed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 502
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->networkTypeBitmask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 503
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apnSetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
