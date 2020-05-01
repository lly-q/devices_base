.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;
.super Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;
.source "ImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 3073
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 17
    .param p1, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    move-object/from16 v0, p0

    .line 3097
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onImsDisconnected imsReasonInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3098
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setServiceState(I)V

    .line 3099
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setImsRegistered(Z)V

    .line 3101
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1000(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3102
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$4700(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)V

    .line 3103
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v2

    .line 3104
    .local v2, "errorCode":I
    const/16 v3, 0x1f5

    if-eq v2, v3, :cond_1

    const/16 v3, 0x94

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 3108
    :cond_0
    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v5, 0x3e9

    const/16 v6, 0x3ee

    const-string v7, ""

    const-string v8, ""

    const/4 v9, 0x0

    const-string v10, ""

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v16, ""

    move v15, v2

    invoke-virtual/range {v4 .. v16}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendVowifiEventBroadcastUst(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;IZIIILjava/lang/String;)V

    .end local v2    # "errorCode":I
    goto :goto_1

    .line 3106
    .restart local v2    # "errorCode":I
    :cond_1
    :goto_0
    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v5, 0x3e9

    const/16 v6, 0x3ee

    const-string v7, ""

    const-string v8, ""

    const/4 v9, 0x0

    const-string v10, ""

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v16, ""

    move v15, v2

    invoke-virtual/range {v4 .. v16}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendVowifiEventBroadcastUst(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;IZIIILjava/lang/String;)V

    .line 3112
    .end local v2    # "errorCode":I
    :cond_2
    :goto_1
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->processDisconnectReason(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 3113
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$2100(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsConnectionState(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 3115
    return-void
.end method

.method public onRegistered(I)V
    .locals 4
    .param p1, "imsRadioTech"    # I

    .line 3078
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsConnected imsRadioTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3079
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setServiceState(I)V

    .line 3080
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setImsRegistered(Z)V

    .line 3081
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$2100(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsConnectionState(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 3083
    return-void
.end method

.method public onRegistering(I)V
    .locals 4
    .param p1, "imsRadioTech"    # I

    .line 3088
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsProgressing imsRadioTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3089
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setServiceState(I)V

    .line 3090
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setImsRegistered(Z)V

    .line 3091
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$2100(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsConnectionState(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 3093
    return-void
.end method

.method public onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    .locals 2
    .param p1, "uris"    # [Landroid/net/Uri;

    .line 3119
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "registrationAssociatedUriChanged"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3120
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCurrentSubscriberUris([Landroid/net/Uri;)V

    .line 3121
    return-void
.end method
