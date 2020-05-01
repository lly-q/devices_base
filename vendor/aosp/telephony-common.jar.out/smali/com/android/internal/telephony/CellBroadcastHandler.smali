.class public Lcom/android/internal/telephony/CellBroadcastHandler;
.super Lcom/android/internal/telephony/WakeLockStateMachine;
.source "CellBroadcastHandler.java"


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 43
    const-string v0, "CellBroadcastHandler"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/CellBroadcastHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    .line 44
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .param p1, "debugTag"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/WakeLockStateMachine;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    .line 48
    return-void
.end method

.method public static makeCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CellBroadcastHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 56
    new-instance v0, Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/CellBroadcastHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    .line 57
    .local v0, "handler":Lcom/android/internal/telephony/CellBroadcastHandler;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->start()V

    .line 58
    return-object v0
.end method


# virtual methods
.method protected handleBroadcastSms(Landroid/telephony/SmsCbMessage;)V
    .locals 25
    .param p1, "message"    # Landroid/telephony/SmsCbMessage;

    move-object/from16 v0, p0

    .line 88
    move-object/from16 v1, p1

    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v9

    .line 89
    .local v9, "metrics":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    iget-object v2, v0, Lcom/android/internal/telephony/CellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsCbMessage;->getMessageFormat()I

    move-result v4

    .line 90
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsCbMessage;->getMessagePriority()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsCbMessage;->isCmasMessage()Z

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsCbMessage;->isEtwsMessage()Z

    move-result v7

    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsCbMessage;->getServiceCategory()I

    move-result v8

    .line 89
    move-object v2, v9

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeNewCBSms(IIIZZI)V

    .line 94
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsCbMessage;->isEmergencyMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dispatching emergency SMS CB, SmsCbMessage is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 96
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, v0, Lcom/android/internal/telephony/CellBroadcastHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104013d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    .line 101
    .local v3, "receiverPermission":Ljava/lang/String;
    const/16 v4, 0x11

    .line 109
    .local v14, "appOp":I
    :goto_0
    move v14, v4

    goto :goto_1

    .line 103
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "receiverPermission":Ljava/lang/String;
    .end local v14    # "appOp":I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dispatching SMS CB, SmsCbMessage is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 104
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .restart local v2    # "intent":Landroid/content/Intent;
    const/high16 v3, 0x1000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 108
    const-string v3, "android.permission.RECEIVE_SMS"

    .line 109
    .restart local v3    # "receiverPermission":Ljava/lang/String;
    const/16 v4, 0x10

    goto :goto_0

    .line 112
    .restart local v14    # "appOp":I
    :goto_1
    const-string v4, "message"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 113
    iget-object v4, v0, Lcom/android/internal/telephony/CellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-static {v2, v4}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 115
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_1

    .line 118
    iget-object v4, v0, Lcom/android/internal/telephony/CellBroadcastHandler;->mContext:Landroid/content/Context;

    .line 119
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "cmas_additional_broadcast_pkg"

    .line 118
    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 120
    .local v4, "additionalPackage":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 121
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 122
    .local v5, "additionalIntent":Landroid/content/Intent;
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    iget-object v10, v0, Lcom/android/internal/telephony/CellBroadcastHandler;->mContext:Landroid/content/Context;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v15, 0x0

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object v16

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 123
    move-object v11, v5

    move-object v13, v3

    invoke-virtual/range {v10 .. v19}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 129
    .end local v4    # "additionalPackage":Ljava/lang/String;
    .end local v5    # "additionalIntent":Landroid/content/Intent;
    :cond_1
    iget-object v15, v0, Lcom/android/internal/telephony/CellBroadcastHandler;->mContext:Landroid/content/Context;

    sget-object v17, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, v0, Lcom/android/internal/telephony/CellBroadcastHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object v21

    const/16 v22, -0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 129
    move-object/from16 v16, v2

    move-object/from16 v18, v3

    move/from16 v19, v14

    move-object/from16 v20, v4

    invoke-virtual/range {v15 .. v24}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 131
    return-void
.end method

.method protected handleSmsMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .line 70
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/telephony/SmsCbMessage;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/SmsCbMessage;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->handleBroadcastSms(Landroid/telephony/SmsCbMessage;)V

    .line 72
    const/4 v0, 0x1

    return v0

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage got object of type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->loge(Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x0

    return v0
.end method
