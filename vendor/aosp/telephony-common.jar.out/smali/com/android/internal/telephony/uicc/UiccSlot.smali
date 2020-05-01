.class public Lcom/android/internal/telephony/uicc/UiccSlot;
.super Landroid/os/Handler;
.source "UiccSlot.java"


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_CARD_ADDED:I = 0xe

.field private static final EVENT_CARD_REMOVED:I = 0xd

.field public static final EXTRA_ICC_CARD_ADDED:Ljava/lang/String; = "com.android.internal.telephony.uicc.ICC_CARD_ADDED"

.field public static final INVALID_PHONE_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "UiccSlot"


# instance fields
.field private mActive:Z

.field private mAtr:Lcom/android/internal/telephony/uicc/AnswerToReset;

.field private mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mIccId:Ljava/lang/String;

.field private mIsEuicc:Z

.field private mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field private final mLock:Ljava/lang/Object;

.field private mPhoneId:I

.field private mStateIsUnknown:Z

.field private mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "isActive"    # Z

    .line 70
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mStateIsUnknown:Z

    .line 61
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPhoneId:I

    .line 71
    const-string v0, "Creating"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    .line 73
    iput-boolean p2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mActive:Z

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 75
    return-void
.end method

.method private absentStateUpdateNeeded(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;)Z
    .locals 2
    .param p1, "oldState"    # Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 164
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/uicc/UiccSlot;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccSlot;

    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/uicc/UiccSlot;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccSlot;
    .param p1, "x1"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/uicc/UiccSlot;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccSlot;

    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkIsEuiccSupported()V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mAtr:Lcom/android/internal/telephony/uicc/AnswerToReset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mAtr:Lcom/android/internal/telephony/uicc/AnswerToReset;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->isEuiccSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    goto :goto_0

    .line 213
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    .line 215
    :goto_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 386
    const-string v0, "UiccSlot"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 390
    const-string v0, "UiccSlot"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    return-void
.end method

.method private nullifyUiccCard(Z)V
    .locals 1
    .param p1, "stateUnknown"    # Z

    .line 201
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mStateIsUnknown:Z

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 203
    return-void
.end method

.method private onIccSwap(Z)V
    .locals 2
    .param p1, "isAdded"    # Z

    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 261
    .local v0, "isHotSwapSupported":Z
    if-eqz v0, :cond_0

    .line 262
    const-string v1, "onIccSwap: isHotSwapSupported is true, don\'t prompt for rebooting"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 263
    return-void

    .line 265
    :cond_0
    const-string v1, "onIccSwap: isHotSwapSupported is false, prompt for rebooting"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 267
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->promptForRestart(Z)V

    .line 268
    return-void
.end method

.method private parseAtr(Ljava/lang/String;)V
    .locals 1
    .param p1, "atr"    # Ljava/lang/String;

    .line 218
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->parseAtr(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/AnswerToReset;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mAtr:Lcom/android/internal/telephony/uicc/AnswerToReset;

    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mAtr:Lcom/android/internal/telephony/uicc/AnswerToReset;

    if-nez v0, :cond_0

    .line 220
    return-void

    .line 222
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->checkIsEuiccSupported()V

    .line 223
    return-void
.end method

.method private promptForRestart(Z)V
    .locals 11
    .param p1, "isAdded"    # Z

    .line 271
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 273
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x1040160

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, "dialogComponent":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 276
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000000

    .line 277
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.android.internal.telephony.uicc.ICC_CARD_ADDED"

    .line 278
    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    .local v3, "intent":Landroid/content/Intent;
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    :try_start_2
    monitor-exit v0

    return-void

    .line 282
    :catch_0
    move-exception v4

    .line 283
    .local v4, "e":Landroid/content/ActivityNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find ICC hotswap prompt for restart activity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccSlot;->loge(Ljava/lang/String;)V

    .line 291
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    const/4 v3, 0x0

    .line 297
    .local v3, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v4, Lcom/android/internal/telephony/uicc/UiccSlot$1;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/uicc/UiccSlot$1;-><init>(Lcom/android/internal/telephony/uicc/UiccSlot;)V

    move-object v3, v4

    .line 312
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 314
    .local v4, "r":Landroid/content/res/Resources;
    if-eqz p1, :cond_1

    const v5, 0x1040619

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 315
    :cond_1
    const v5, 0x104061c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 316
    .local v5, "title":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_2

    const v6, 0x1040618

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 317
    :cond_2
    const v6, 0x104061b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 318
    .local v6, "message":Ljava/lang/String;
    :goto_1
    const v7, 0x104061d

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 320
    .local v7, "buttonTxt":Ljava/lang/String;
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 321
    invoke-virtual {v8, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 322
    invoke-virtual {v8, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 323
    invoke-virtual {v8, v7, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 324
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 325
    .local v8, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d3

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    .line 326
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 327
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "dialogComponent":Ljava/lang/String;
    .end local v3    # "listener":Landroid/content/DialogInterface$OnClickListener;
    .end local v4    # "r":Landroid/content/res/Resources;
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "message":Ljava/lang/String;
    .end local v7    # "buttonTxt":Ljava/lang/String;
    .end local v8    # "dialog":Landroid/app/AlertDialog;
    monitor-exit v0

    .line 328
    return-void

    .line 327
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private updateCardStateAbsent()V
    .locals 5

    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 172
    .local v0, "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v3, :cond_1

    .line 173
    const-string v1, "update: notify card removed"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 174
    const/16 v1, 0xd

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->sendMessage(Landroid/os/Message;)Z

    .line 179
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update: set mPhoneId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPhoneId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " state = ABSENT"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 182
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    iget v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPhoneId:I

    const-string v4, "ABSENT"

    invoke-virtual {v1, v3, v4}, Landroid/telephony/TelephonyManager;->setSimStateForPhone(ILjava/lang/String;)V

    .line 186
    const-string v3, "ABSENT"

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPhoneId:I

    invoke-static {v3, v2, v4}, Lcom/android/internal/telephony/uicc/UiccController;->updateInternalIccState(Ljava/lang/String;Ljava/lang/String;I)V

    .line 190
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v2, :cond_2

    .line 191
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->dispose()V

    .line 193
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->nullifyUiccCard(Z)V

    .line 194
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 195
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 397
    const-string v0, "UiccSlot:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLastRadioState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCardState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_0

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUiccCard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCard;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    .line 406
    :cond_0
    const-string v0, " mUiccCard=null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    :goto_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 409
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 410
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 411
    return-void
.end method

.method protected finalize()V
    .locals 1

    .line 253
    const-string v0, "UiccSlot finalized"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 350
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-nez v1, :cond_0

    .line 351
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    monitor-exit v0

    return-object v1

    .line 353
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    monitor-exit v0

    return-object v1

    .line 355
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIccId()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIccId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIccId:Ljava/lang/String;

    return-object v0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 243
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .line 234
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPhoneId:I

    return v0
.end method

.method public getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 363
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    monitor-exit v0

    return-object v1

    .line 364
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 332
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->onIccSwap(Z)V

    .line 338
    goto :goto_0

    .line 334
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->onIccSwap(Z)V

    .line 335
    nop

    .line 342
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isActive()Z
    .locals 1

    .line 230
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mActive:Z

    return v0
.end method

.method public isEuicc()Z
    .locals 1

    .line 226
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    return v0
.end method

.method public isExtendedApduSupported()Z
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mAtr:Lcom/android/internal/telephony/uicc/AnswerToReset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mAtr:Lcom/android/internal/telephony/uicc/AnswerToReset;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->isExtendedApduSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStateUnknown()Z
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mStateIsUnknown:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onRadioStateUnavailable()V
    .locals 3

    .line 371
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->dispose()V

    .line 374
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->nullifyUiccCard(Z)V

    .line 376
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPhoneId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 377
    const-string v0, "UNKNOWN"

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->updateInternalIccState(Ljava/lang/String;Ljava/lang/String;I)V

    .line 381
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 382
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 383
    return-void
.end method

.method public update(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;I)V
    .locals 10
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p2, "ics"    # Lcom/android/internal/telephony/uicc/IccCardStatus;
    .param p3, "phoneId"    # I

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cardStatus update: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/IccCardStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 84
    .local v1, "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    iget-object v2, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 85
    iget-object v2, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->iccid:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIccId:Ljava/lang/String;

    .line 86
    iput p3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPhoneId:I

    .line 87
    iget-object v2, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->atr:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->parseAtr(Ljava/lang/String;)V

    .line 88
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 90
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    .line 92
    .local v2, "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update: radioState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mLastRadioState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 95
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->absentStateUpdateNeeded(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->updateCardStateAbsent()V

    goto/16 :goto_0

    .line 101
    :cond_0
    if-eqz v1, :cond_1

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-nez v3, :cond_5

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v3, v4, :cond_5

    .line 104
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v3, v4, :cond_2

    .line 105
    const-string v3, "update: notify card added"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 106
    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/uicc/UiccSlot;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->sendMessage(Landroid/os/Message;)Z

    .line 110
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v3, :cond_3

    .line 111
    const-string v3, "update: mUiccCard != null when card was present; disposing it now"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->loge(Ljava/lang/String;)V

    .line 112
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->dispose()V

    .line 115
    :cond_3
    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    if-nez v3, :cond_4

    .line 116
    new-instance v3, Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v8, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPhoneId:I

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    move-object v4, v3

    move-object v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/uicc/UiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILjava/lang/Object;)V

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    goto :goto_0

    .line 118
    :cond_4
    new-instance v9, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    move-object v3, v9

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILjava/lang/Object;)V

    iput-object v9, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    goto :goto_0

    .line 121
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v3, :cond_6

    .line 122
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v3, v4, v5, p2}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V

    .line 125
    :cond_6
    :goto_0
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 126
    .end local v1    # "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .end local v2    # "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    monitor-exit v0

    .line 127
    return-void

    .line 126
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public update(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccSlotStatus;)V
    .locals 5
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p2, "iss"    # Lcom/android/internal/telephony/uicc/IccSlotStatus;

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "slotStatus update: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/IccSlotStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 136
    .local v1, "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 137
    iget-object v2, p2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->atr:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->parseAtr(Ljava/lang/String;)V

    .line 138
    iget-object v2, p2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->cardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 139
    iget-object v2, p2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->iccid:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIccId:Ljava/lang/String;

    .line 140
    iget-object v2, p2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->slotState:Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;

    sget-object v3, Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;->SLOTSTATE_INACTIVE:Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    .line 143
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mActive:Z

    if-eqz v2, :cond_2

    .line 144
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mActive:Z

    .line 145
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 146
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPhoneId:I

    .line 147
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->dispose()V

    .line 148
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccSlot;->nullifyUiccCard(Z)V

    goto :goto_0

    .line 151
    :cond_1
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mActive:Z

    .line 152
    iget v2, p2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->logicalSlotIndex:I

    iput v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPhoneId:I

    .line 153
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->absentStateUpdateNeeded(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->updateCardStateAbsent()V

    .line 160
    .end local v1    # "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :cond_2
    :goto_0
    monitor-exit v0

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
