.class Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;
.super Ljava/lang/Object;
.source "RuimRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfCsimLiLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;
    .param p2, "x1"    # Lcom/android/internal/telephony/uicc/RuimRecords$1;

    .line 312
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .line 315
    const-string v0, "EF_CSIM_LI"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 320
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$102(Lcom/android/internal/telephony/uicc/RuimRecords;[B)[B

    .line 322
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aget-byte v1, v1, v2

    const/16 v2, 0x68

    const/16 v3, 0x65

    packed-switch v1, :pswitch_data_0

    .line 331
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v1

    const/16 v2, 0x20

    aput-byte v2, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v1

    add-int/lit8 v3, v0, 0x1

    aput-byte v2, v1, v3

    goto/16 :goto_1

    .line 330
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v1

    aput-byte v2, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aput-byte v3, v1, v2

    goto/16 :goto_1

    .line 329
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v1

    const/16 v3, 0x7a

    aput-byte v3, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v1

    add-int/lit8 v3, v0, 0x1

    aput-byte v2, v1, v3

    goto :goto_1

    .line 328
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v1

    const/16 v2, 0x6b

    aput-byte v2, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x6f

    aput-byte v3, v1, v2

    goto :goto_1

    .line 327
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v1

    const/16 v2, 0x6a

    aput-byte v2, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x61

    aput-byte v3, v1, v2

    goto :goto_1

    .line 326
    :pswitch_4
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v1

    aput-byte v3, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x73

    aput-byte v3, v1, v2

    goto :goto_1

    .line 325
    :pswitch_5
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v1

    const/16 v2, 0x66

    aput-byte v2, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x72

    aput-byte v3, v1, v2

    goto :goto_1

    .line 324
    :pswitch_6
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v1

    aput-byte v3, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x6e

    aput-byte v3, v1, v2

    .line 322
    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_0

    .line 335
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EF_LI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 336
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
