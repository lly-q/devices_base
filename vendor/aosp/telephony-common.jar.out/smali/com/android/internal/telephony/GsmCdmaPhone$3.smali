.class synthetic Lcom/android/internal/telephony/GsmCdmaPhone$3;
.super Ljava/lang/Object;
.source "GsmCdmaPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/GsmCdmaPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$telephony$DctConstants$Activity:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$DctConstants$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 595
    invoke-static {}, Lcom/android/internal/telephony/DctConstants$Activity;->values()[Lcom/android/internal/telephony/DctConstants$Activity;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/GsmCdmaPhone$3;->$SwitchMap$com$android$internal$telephony$DctConstants$Activity:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/GsmCdmaPhone$3;->$SwitchMap$com$android$internal$telephony$DctConstants$Activity:[I

    sget-object v2, Lcom/android/internal/telephony/DctConstants$Activity;->DATAIN:Lcom/android/internal/telephony/DctConstants$Activity;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DctConstants$Activity;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/android/internal/telephony/GsmCdmaPhone$3;->$SwitchMap$com$android$internal$telephony$DctConstants$Activity:[I

    sget-object v3, Lcom/android/internal/telephony/DctConstants$Activity;->DATAOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DctConstants$Activity;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/android/internal/telephony/GsmCdmaPhone$3;->$SwitchMap$com$android$internal$telephony$DctConstants$Activity:[I

    sget-object v4, Lcom/android/internal/telephony/DctConstants$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    invoke-virtual {v4}, Lcom/android/internal/telephony/DctConstants$Activity;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    :goto_2
    :try_start_3
    sget-object v3, Lcom/android/internal/telephony/GsmCdmaPhone$3;->$SwitchMap$com$android$internal$telephony$DctConstants$Activity:[I

    sget-object v4, Lcom/android/internal/telephony/DctConstants$Activity;->DORMANT:Lcom/android/internal/telephony/DctConstants$Activity;

    invoke-virtual {v4}, Lcom/android/internal/telephony/DctConstants$Activity;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v3

    .line 568
    :goto_3
    invoke-static {}, Lcom/android/internal/telephony/DctConstants$State;->values()[Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/android/internal/telephony/GsmCdmaPhone$3;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    :try_start_4
    sget-object v3, Lcom/android/internal/telephony/GsmCdmaPhone$3;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v4}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    :try_start_5
    sget-object v0, Lcom/android/internal/telephony/GsmCdmaPhone$3;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_5
    :try_start_6
    sget-object v0, Lcom/android/internal/telephony/GsmCdmaPhone$3;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    :goto_6
    return-void
.end method
