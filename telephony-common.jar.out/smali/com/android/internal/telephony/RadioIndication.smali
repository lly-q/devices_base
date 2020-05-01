.class public Lcom/android/internal/telephony/RadioIndication;
.super Landroid/hardware/radio/V1_2/IRadioIndication$Stub;
.source "RadioIndication.java"


# instance fields
.field mRil:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 0
    .param p1, "ril"    # Lcom/android/internal/telephony/RIL;

    .line 111
    invoke-direct {p0}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    .line 113
    return-void
.end method

.method private getRadioStateFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .locals 3
    .param p1, "stateInt"    # I

    .line 922
    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 933
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized RadioState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 927
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 928
    .local v0, "state":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 924
    .end local v0    # "state":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 925
    .restart local v0    # "state":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 930
    .end local v0    # "state":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 931
    .restart local v0    # "state":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    nop

    .line 933
    :goto_0
    nop

    .line 935
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private responseCellInfos(ILandroid/hardware/radio/V1_1/NetworkScanResult;)V
    .locals 5
    .param p1, "indicationType"    # I
    .param p2, "result"    # Landroid/hardware/radio/V1_1/NetworkScanResult;

    .line 940
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 942
    const/4 v0, 0x0

    .line 943
    .local v0, "nsr":Lcom/android/internal/telephony/NetworkScanResult;
    iget-object v1, p2, Landroid/hardware/radio/V1_1/NetworkScanResult;->networkInfos:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->convertHalCellInfoList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 944
    .local v1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    new-instance v2, Lcom/android/internal/telephony/NetworkScanResult;

    iget v3, p2, Landroid/hardware/radio/V1_1/NetworkScanResult;->status:I

    iget v4, p2, Landroid/hardware/radio/V1_1/NetworkScanResult;->error:I

    invoke-direct {v2, v3, v4, v1}, Lcom/android/internal/telephony/NetworkScanResult;-><init>(IILjava/util/List;)V

    move-object v0, v2

    .line 945
    iget-object v2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v3, 0x419

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 946
    iget-object v2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v2, v2, Lcom/android/internal/telephony/RIL;->mRilNetworkScanResultRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 947
    return-void
.end method

.method private responseCellInfos_1_2(ILandroid/hardware/radio/V1_2/NetworkScanResult;)V
    .locals 5
    .param p1, "indicationType"    # I
    .param p2, "result"    # Landroid/hardware/radio/V1_2/NetworkScanResult;

    .line 951
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 953
    const/4 v0, 0x0

    .line 954
    .local v0, "nsr":Lcom/android/internal/telephony/NetworkScanResult;
    iget-object v1, p2, Landroid/hardware/radio/V1_2/NetworkScanResult;->networkInfos:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->convertHalCellInfoList_1_2(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 955
    .local v1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    new-instance v2, Lcom/android/internal/telephony/NetworkScanResult;

    iget v3, p2, Landroid/hardware/radio/V1_2/NetworkScanResult;->status:I

    iget v4, p2, Landroid/hardware/radio/V1_2/NetworkScanResult;->error:I

    invoke-direct {v2, v3, v4, v1}, Lcom/android/internal/telephony/NetworkScanResult;-><init>(IILjava/util/List;)V

    move-object v0, v2

    .line 956
    iget-object v2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v3, 0x419

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 957
    iget-object v2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v2, v2, Lcom/android/internal/telephony/RIL;->mRilNetworkScanResultRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 958
    return-void
.end method


# virtual methods
.method public callRing(IZLandroid/hardware/radio/V1_0/CdmaSignalInfoRecord;)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "isGsm"    # Z
    .param p3, "record"    # Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    .line 404
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 406
    const/4 v0, 0x0

    .line 409
    .local v0, "response":[C
    if-nez p2, :cond_0

    .line 411
    const/4 v1, 0x4

    new-array v0, v1, [C

    .line 412
    const/4 v1, 0x0

    iget-boolean v2, p3, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->isPresent:Z

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 413
    const/4 v1, 0x1

    iget-byte v2, p3, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->signalType:B

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 414
    const/4 v1, 0x2

    iget-byte v2, p3, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->alertPitch:B

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 415
    const/4 v1, 0x3

    iget-byte v2, p3, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->signal:B

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 416
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RIL;->writeMetricsCallRing([C)V

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v2, 0x3fa

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 421
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mRingRegistrant:Landroid/os/Registrant;

    if-eqz v1, :cond_1

    .line 422
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mRingRegistrant:Landroid/os/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 424
    :cond_1
    return-void
.end method

.method public callStateChanged(I)V
    .locals 3
    .param p1, "indicationType"    # I

    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-boolean v0, v0, Lcom/android/internal/telephony/RIL;->mEMTIsOn:Z

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mEMCallStatusChangedRegistrant:Landroid/os/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 145
    return-void
.end method

.method public carrierInfoForImsiEncryption(I)V
    .locals 3
    .param p1, "indicationType"    # I

    .line 893
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 895
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    const/16 v2, 0x418

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 897
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCarrierInfoForImsiEncryptionRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v1, v1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 899
    return-void
.end method

.method public cdmaCallWaiting(ILandroid/hardware/radio/V1_0/CdmaCallWaiting;)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "callWaitingRecord"    # Landroid/hardware/radio/V1_0/CdmaCallWaiting;

    .line 495
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 499
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;-><init>()V

    .line 500
    .local v0, "notification":Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;
    iget-object v1, p2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->number:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    .line 501
    iget v1, p2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->numberPresentation:I

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->presentationFromCLIP(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPresentation:I

    .line 503
    iget-object v1, p2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->name:Ljava/lang/String;

    .line 504
    iget v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPresentation:I

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->namePresentation:I

    .line 505
    iget-object v1, p2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->signalInfoRecord:Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    iget-boolean v1, v1, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->isPresent:Z

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->isPresent:I

    .line 506
    iget-object v1, p2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->signalInfoRecord:Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    iget-byte v1, v1, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->signalType:B

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signalType:I

    .line 507
    iget-object v1, p2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->signalInfoRecord:Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    iget-byte v1, v1, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->alertPitch:B

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->alertPitch:I

    .line 508
    iget-object v1, p2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->signalInfoRecord:Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    iget-byte v1, v1, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->signal:B

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signal:I

    .line 509
    iget v1, p2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->numberType:I

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberType:I

    .line 510
    iget v1, p2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->numberPlan:I

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPlan:I

    .line 512
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v2, 0x401

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 514
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 516
    return-void
.end method

.method public cdmaInfoRec(ILandroid/hardware/radio/V1_0/CdmaInformationRecords;)V
    .locals 22
    .param p1, "indicationType"    # I
    .param p2, "records"    # Landroid/hardware/radio/V1_0/CdmaInformationRecords;

    move-object/from16 v0, p0

    .line 531
    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 533
    iget-object v2, v1, Landroid/hardware/radio/V1_0/CdmaInformationRecords;->infoRec:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 534
    .local v2, "numberOfInfoRecs":I
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_0

    .line 535
    iget-object v6, v1, Landroid/hardware/radio/V1_0/CdmaInformationRecords;->infoRec:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/CdmaInformationRecord;

    .line 536
    .local v6, "record":Landroid/hardware/radio/V1_0/CdmaInformationRecord;
    iget v14, v6, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->name:I

    .line 538
    .local v14, "id":I
    packed-switch v14, :pswitch_data_0

    .line 615
    :pswitch_0
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RIL_UNSOL_CDMA_INFO_REC: unsupported record. Got "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    invoke-static {v14}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->idToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 606
    :pswitch_1
    iget-object v7, v6, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->audioCtrl:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/radio/V1_0/CdmaT53AudioControlInfoRecord;

    .line 607
    .local v7, "audioControlInfoRecord":Landroid/hardware/radio/V1_0/CdmaT53AudioControlInfoRecord;
    new-instance v8, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;

    iget-byte v9, v7, Landroid/hardware/radio/V1_0/CdmaT53AudioControlInfoRecord;->upLink:B

    iget-byte v10, v7, Landroid/hardware/radio/V1_0/CdmaT53AudioControlInfoRecord;->downLink:B

    invoke-direct {v8, v9, v10}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;-><init>(II)V

    .line 611
    .local v8, "cdmaT53AudioControlInfoRec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;
    new-instance v9, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    invoke-direct {v9, v8}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;-><init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;)V

    .line 612
    .local v9, "cdmaInformationRecords":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    goto/16 :goto_1

    .line 600
    .end local v7    # "audioControlInfoRecord":Landroid/hardware/radio/V1_0/CdmaT53AudioControlInfoRecord;
    .end local v8    # "cdmaT53AudioControlInfoRec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;
    .end local v9    # "cdmaInformationRecords":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    :pswitch_2
    new-instance v7, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;

    iget-object v8, v6, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->clir:Ljava/util/ArrayList;

    .line 601
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/radio/V1_0/CdmaT53ClirInfoRecord;

    iget-byte v8, v8, Landroid/hardware/radio/V1_0/CdmaT53ClirInfoRecord;->cause:B

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;-><init>(I)V

    .line 602
    .local v7, "cdmaT53ClirInfoRec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;
    new-instance v8, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    invoke-direct {v8, v7}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;-><init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;)V

    move-object v9, v8

    .line 603
    .restart local v9    # "cdmaInformationRecords":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    goto/16 :goto_1

    .line 589
    .end local v7    # "cdmaT53ClirInfoRec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;
    .end local v9    # "cdmaInformationRecords":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    :pswitch_3
    iget-object v7, v6, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->lineCtrl:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;

    .line 590
    .local v7, "lineControlInfoRecord":Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;
    new-instance v8, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;

    iget-byte v9, v7, Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;->lineCtrlPolarityIncluded:B

    iget-byte v10, v7, Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;->lineCtrlToggle:B

    iget-byte v11, v7, Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;->lineCtrlReverse:B

    iget-byte v12, v7, Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;->lineCtrlPowerDenial:B

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;-><init>(IIII)V

    .line 596
    .local v8, "cdmaLineControlInfoRec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;
    new-instance v9, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    invoke-direct {v9, v8}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;-><init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;)V

    .line 597
    .restart local v9    # "cdmaInformationRecords":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    goto/16 :goto_1

    .line 573
    .end local v7    # "lineControlInfoRecord":Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;
    .end local v8    # "cdmaLineControlInfoRec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;
    .end local v9    # "cdmaInformationRecords":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    :pswitch_4
    iget-object v7, v6, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->redir:Ljava/util/ArrayList;

    .line 574
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;

    .line 576
    .local v7, "redirectingNumberInfoRecord":Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;
    new-instance v8, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;

    iget-object v9, v7, Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;->redirectingNumber:Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;

    iget-object v9, v9, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->number:Ljava/lang/String;

    iget-object v10, v7, Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;->redirectingNumber:Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;

    iget-byte v10, v10, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->numberType:B

    iget-object v11, v7, Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;->redirectingNumber:Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;

    iget-byte v11, v11, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->numberPlan:B

    iget-object v12, v7, Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;->redirectingNumber:Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;

    iget-byte v12, v12, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->pi:B

    iget-object v13, v7, Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;->redirectingNumber:Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;

    iget-byte v13, v13, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->si:B

    iget v15, v7, Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;->redirectingReason:I

    move/from16 v21, v15

    move-object v15, v8

    move-object/from16 v16, v9

    move/from16 v17, v10

    move/from16 v18, v11

    move/from16 v19, v12

    move/from16 v20, v13

    invoke-direct/range {v15 .. v21}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;-><init>(Ljava/lang/String;IIIII)V

    .line 584
    .local v8, "cdmaRedirectingNumberInfoRec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;
    new-instance v9, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    invoke-direct {v9, v8}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;-><init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;)V

    .line 586
    .restart local v9    # "cdmaInformationRecords":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    goto :goto_1

    .line 562
    .end local v7    # "redirectingNumberInfoRecord":Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;
    .end local v8    # "cdmaRedirectingNumberInfoRec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;
    .end local v9    # "cdmaInformationRecords":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    :pswitch_5
    iget-object v7, v6, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->signal:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    .line 563
    .local v7, "signalInfoRecord":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    new-instance v8, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    .line 565
    iget-boolean v9, v7, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->isPresent:Z

    iget-byte v10, v7, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->signalType:B

    iget-byte v11, v7, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->alertPitch:B

    iget-byte v12, v7, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->signal:B

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;-><init>(IIII)V

    .line 569
    .local v8, "cdmaSignalInfoRec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;
    new-instance v9, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    invoke-direct {v9, v8}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;-><init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;)V

    .line 570
    .restart local v9    # "cdmaInformationRecords":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    goto :goto_1

    .line 550
    .end local v7    # "signalInfoRecord":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    .end local v8    # "cdmaSignalInfoRec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;
    .end local v9    # "cdmaInformationRecords":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    :pswitch_6
    iget-object v7, v6, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->number:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;

    .line 551
    .local v15, "numInfoRecord":Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;
    new-instance v16, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;

    iget-object v9, v15, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->number:Ljava/lang/String;

    iget-byte v10, v15, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->numberType:B

    iget-byte v11, v15, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->numberPlan:B

    iget-byte v12, v15, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->pi:B

    iget-byte v13, v15, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->si:B

    move-object/from16 v7, v16

    move v8, v14

    invoke-direct/range {v7 .. v13}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;-><init>(ILjava/lang/String;IIII)V

    .line 558
    .local v7, "cdmaNumberInfoRec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;
    new-instance v8, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    invoke-direct {v8, v7}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;-><init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;)V

    move-object v9, v8

    .line 559
    .restart local v9    # "cdmaInformationRecords":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    goto :goto_1

    .line 541
    .end local v7    # "cdmaNumberInfoRec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;
    .end local v9    # "cdmaInformationRecords":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    .end local v15    # "numInfoRecord":Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;
    :pswitch_7
    new-instance v7, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    iget-object v8, v6, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->display:Ljava/util/ArrayList;

    .line 543
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/radio/V1_0/CdmaDisplayInfoRecord;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CdmaDisplayInfoRecord;->alphaBuf:Ljava/lang/String;

    invoke-direct {v7, v14, v8}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;-><init>(ILjava/lang/String;)V

    .line 544
    .local v7, "cdmaDisplayInfoRec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;
    new-instance v8, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    invoke-direct {v8, v7}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;-><init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;)V

    move-object v9, v8

    .line 545
    .restart local v9    # "cdmaInformationRecords":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    nop

    .line 616
    .end local v7    # "cdmaDisplayInfoRec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;
    :goto_1
    move-object v7, v9

    .line 619
    .end local v9    # "cdmaInformationRecords":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    .local v7, "cdmaInformationRecords":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    iget-object v8, v0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v9, 0x403

    invoke-virtual {v8, v9, v7}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 620
    iget-object v8, v0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v8, v7}, Lcom/android/internal/telephony/RIL;->notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V

    .line 534
    .end local v6    # "record":Landroid/hardware/radio/V1_0/CdmaInformationRecord;
    .end local v7    # "cdmaInformationRecords":Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    .end local v14    # "id":I
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 622
    .end local v5    # "i":I
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public cdmaNewSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "msg"    # Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    .line 435
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 437
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v1, 0x3fc

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 439
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v1}, Lcom/android/internal/telephony/RIL;->writeMetricsNewSms(II)V

    .line 444
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/SmsMessageConverter;->newSmsMessageFromCdmaSmsMessage(Landroid/hardware/radio/V1_0/CdmaSmsMessage;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 445
    .local v0, "sms":Landroid/telephony/SmsMessage;
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    if-eqz v1, :cond_0

    .line 446
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 448
    :cond_0
    return-void
.end method

.method public cdmaOtaProvisionStatus(II)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "status"    # I

    .line 519
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 521
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 522
    .local v0, "response":[I
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 524
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v2, 0x402

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 526
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 527
    return-void
.end method

.method public cdmaPrlChanged(II)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "version"    # I

    .line 653
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 655
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 656
    .local v0, "response":[I
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 658
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v2, 0x408

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 660
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mCdmaPrlChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 662
    return-void
.end method

.method public cdmaRuimSmsStorageFull(I)V
    .locals 2
    .param p1, "indicationType"    # I

    .line 465
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 467
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v1, 0x3fe

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 469
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 472
    :cond_0
    return-void
.end method

.method public cdmaSubscriptionSourceChanged(II)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "cdmaSource"    # I

    .line 641
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 643
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 644
    .local v0, "response":[I
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 646
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v2, 0x407

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 648
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mCdmaSubscriptionChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 650
    return-void
.end method

.method public cellInfoList(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 704
    .local p2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 706
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->convertHalCellInfoList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 708
    .local v0, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v2, 0x40c

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 710
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mRilCellInfoListRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 711
    return-void
.end method

.method public cellInfoList_1_2(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 716
    .local p2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 718
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->convertHalCellInfoList_1_2(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 720
    .local v0, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v2, 0x40c

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 722
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mRilCellInfoListRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 723
    return-void
.end method

.method public currentLinkCapacityEstimate(ILandroid/hardware/radio/V1_2/LinkCapacityEstimate;)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "lce"    # Landroid/hardware/radio/V1_2/LinkCapacityEstimate;

    .line 253
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 255
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2, v0}, Lcom/android/internal/telephony/RIL;->convertHalLceData(Landroid/hardware/radio/V1_2/LinkCapacityEstimate;Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/LinkCapacityEstimate;

    move-result-object v0

    .line 257
    .local v0, "response":Lcom/android/internal/telephony/LinkCapacityEstimate;
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v2, 0x415

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 259
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mLceInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mLceInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 262
    :cond_0
    return-void
.end method

.method public currentPhysicalChannelConfigs(ILjava/util/ArrayList;)V
    .locals 6
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 286
    .local p2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/PhysicalChannelConfig;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 288
    .local v0, "response":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_2/PhysicalChannelConfig;

    .line 290
    .local v2, "config":Landroid/hardware/radio/V1_2/PhysicalChannelConfig;
    iget v3, v2, Landroid/hardware/radio/V1_2/PhysicalChannelConfig;->status:I

    packed-switch v3, :pswitch_data_0

    .line 299
    iget-object v3, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported CellConnectionStatus in PhysicalChannelConfig: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/hardware/radio/V1_2/PhysicalChannelConfig;->status:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    .line 301
    const v3, 0x7fffffff

    goto :goto_1

    .line 295
    :pswitch_0
    const/4 v3, 0x2

    .line 296
    .local v3, "status":I
    goto :goto_1

    .line 292
    .end local v3    # "status":I
    :pswitch_1
    const/4 v3, 0x1

    .line 293
    .restart local v3    # "status":I
    nop

    .line 301
    :goto_1
    nop

    .line 305
    new-instance v4, Landroid/telephony/PhysicalChannelConfig;

    iget v5, v2, Landroid/hardware/radio/V1_2/PhysicalChannelConfig;->cellBandwidthDownlink:I

    invoke-direct {v4, v3, v5}, Landroid/telephony/PhysicalChannelConfig;-><init>(II)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    .end local v2    # "config":Landroid/hardware/radio/V1_2/PhysicalChannelConfig;
    .end local v3    # "status":I
    goto :goto_0

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v2, 0x41c

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 310
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mPhysicalChannelConfigurationRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 312
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public currentSignalStrength(ILandroid/hardware/radio/V1_0/SignalStrength;)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "signalStrength"    # Landroid/hardware/radio/V1_0/SignalStrength;

    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 237
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RILV1_0 singnal strength :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 239
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->convertHalSignalStrength(Landroid/hardware/radio/V1_0/SignalStrength;)Landroid/telephony/SignalStrength;

    move-result-object v0

    .line 243
    .local v0, "ss":Landroid/telephony/SignalStrength;
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 246
    :cond_0
    return-void
.end method

.method public currentSignalStrength_1_2(ILandroid/hardware/radio/V1_2/SignalStrength;)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "signalStrength"    # Landroid/hardware/radio/V1_2/SignalStrength;

    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 270
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RILV1_2 singnal strength :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 272
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->convertHalSignalStrength_1_2(Landroid/hardware/radio/V1_2/SignalStrength;)Landroid/telephony/SignalStrength;

    move-result-object v0

    .line 276
    .local v0, "ss":Landroid/telephony/SignalStrength;
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 279
    :cond_0
    return-void
.end method

.method public dataCallListChanged(ILjava/util/ArrayList;)V
    .locals 3
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .line 315
    .local p2, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 317
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 319
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mDataCallListChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 321
    return-void
.end method

.method public enterEmergencyCallbackMode(I)V
    .locals 2
    .param p1, "indicationType"    # I

    .line 485
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 487
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 489
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 492
    :cond_0
    return-void
.end method

.method public exitEmergencyCallbackMode(I)V
    .locals 2
    .param p1, "indicationType"    # I

    .line 665
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 667
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v1, 0x409

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 669
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 670
    return-void
.end method

.method public hardwareConfigChanged(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/HardwareConfig;",
            ">;)V"
        }
    .end annotation

    .line 774
    .local p2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 776
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2, v0}, Lcom/android/internal/telephony/RIL;->convertHalHwConfigList(Ljava/util/ArrayList;Lcom/android/internal/telephony/RIL;)Ljava/util/ArrayList;

    move-result-object v0

    .line 778
    .local v0, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/HardwareConfig;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v2, 0x410

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 780
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mHardwareConfigChangeRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 782
    return-void
.end method

.method public imsNetworkStateChanged(I)V
    .locals 2
    .param p1, "indicationType"    # I

    .line 738
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 740
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v1, 0x40d

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 742
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 743
    return-void
.end method

.method public indicateRingbackTone(IZ)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "start"    # Z

    .line 625
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 627
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x405

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 629
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 630
    return-void
.end method

.method public keepaliveStatus(ILandroid/hardware/radio/V1_1/KeepaliveStatus;)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "halStatus"    # Landroid/hardware/radio/V1_1/KeepaliveStatus;

    .line 908
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 911
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Landroid/hardware/radio/V1_1/KeepaliveStatus;->sessionHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Landroid/hardware/radio/V1_1/KeepaliveStatus;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x41b

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 915
    new-instance v0, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;

    iget v1, p2, Landroid/hardware/radio/V1_1/KeepaliveStatus;->sessionHandle:I

    iget v2, p2, Landroid/hardware/radio/V1_1/KeepaliveStatus;->code:I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;-><init>(II)V

    .line 916
    .local v0, "ks":Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mNattKeepaliveStatusRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 917
    return-void
.end method

.method public lceData(ILandroid/hardware/radio/V1_0/LceDataInfo;)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "lce"    # Landroid/hardware/radio/V1_0/LceDataInfo;

    .line 855
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 857
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2, v0}, Lcom/android/internal/telephony/RIL;->convertHalLceData(Landroid/hardware/radio/V1_0/LceDataInfo;Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/LinkCapacityEstimate;

    move-result-object v0

    .line 859
    .local v0, "response":Lcom/android/internal/telephony/LinkCapacityEstimate;
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v2, 0x415

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 861
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mLceInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 862
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mLceInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 864
    :cond_0
    return-void
.end method

.method public modemReset(ILjava/lang/String;)V
    .locals 3
    .param p1, "indicationType"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 880
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 882
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v1, 0x417

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 884
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/RIL;->writeMetricsModemRestartEvent(Ljava/lang/String;)V

    .line 885
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mModemResetRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 886
    return-void
.end method

.method public networkScanResult(ILandroid/hardware/radio/V1_1/NetworkScanResult;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "result"    # Landroid/hardware/radio/V1_1/NetworkScanResult;

    .line 728
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioIndication;->responseCellInfos(ILandroid/hardware/radio/V1_1/NetworkScanResult;)V

    .line 729
    return-void
.end method

.method public networkScanResult_1_2(ILandroid/hardware/radio/V1_2/NetworkScanResult;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "result"    # Landroid/hardware/radio/V1_2/NetworkScanResult;

    .line 734
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioIndication;->responseCellInfos_1_2(ILandroid/hardware/radio/V1_2/NetworkScanResult;)V

    .line 735
    return-void
.end method

.method public networkStateChanged(I)V
    .locals 2
    .param p1, "indicationType"    # I

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mNetworkStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 157
    return-void
.end method

.method public newBroadcastSms(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 451
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 453
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object v0

    .line 455
    .local v0, "response":[B
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    .line 456
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 455
    const/16 v3, 0x3fd

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 459
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    if-eqz v1, :cond_0

    .line 460
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 462
    :cond_0
    return-void
.end method

.method public newSms(ILjava/util/ArrayList;)V
    .locals 5
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 160
    .local p2, "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 162
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object v0

    .line 163
    .local v0, "pduArray":[B
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 165
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Lcom/android/internal/telephony/RIL;->writeMetricsNewSms(II)V

    .line 168
    invoke-static {v0}, Landroid/telephony/SmsMessage;->newFromCMT([B)Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 169
    .local v1, "sms":Landroid/telephony/SmsMessage;
    iget-object v2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v2, v2, Lcom/android/internal/telephony/RIL;->mGsmSmsRegistrant:Landroid/os/Registrant;

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v2, v2, Lcom/android/internal/telephony/RIL;->mGsmSmsRegistrant:Landroid/os/Registrant;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 172
    :cond_0
    return-void
.end method

.method public newSmsOnSim(II)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "recordNumber"    # I

    .line 186
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 190
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 193
    :cond_0
    return-void
.end method

.method public newSmsStatusReport(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 175
    .local p2, "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 177
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object v0

    .line 178
    .local v0, "pduArray":[B
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v2, 0x3ec

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 180
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mSmsStatusRegistrant:Landroid/os/Registrant;

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mSmsStatusRegistrant:Landroid/os/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 183
    :cond_0
    return-void
.end method

.method public nitzTimeReceived(ILjava/lang/String;J)V
    .locals 5
    .param p1, "indicationType"    # I
    .param p2, "nitzTime"    # Ljava/lang/String;
    .param p3, "receivedTime"    # J

    .line 210
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 212
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v1, 0x3f0

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 215
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 216
    .local v0, "result":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 217
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 219
    const-string v2, "telephony.test.ignore.nitz"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 222
    .local v1, "ignoreNitz":Z
    if-eqz v1, :cond_0

    .line 223
    iget-object v2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v3, "ignoring UNSOL_NITZ_TIME_RECEIVED"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v2, v2, Lcom/android/internal/telephony/RIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    if-eqz v2, :cond_1

    .line 226
    iget-object v2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v2, v2, Lcom/android/internal/telephony/RIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 230
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iput-object v0, v2, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:[Ljava/lang/Object;

    .line 232
    :goto_0
    return-void
.end method

.method public onSupplementaryServiceIndication(ILandroid/hardware/radio/V1_0/StkCcUnsolSsResult;)V
    .locals 8
    .param p1, "indicationType"    # I
    .param p2, "ss"    # Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;

    .line 797
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 800
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SsData;-><init>()V

    .line 802
    .local v0, "ssData":Lcom/android/internal/telephony/gsm/SsData;
    iget v1, p2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->serviceType:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SsData;->ServiceTypeFromRILInt(I)Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 803
    iget v1, p2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->requestType:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SsData;->RequestTypeFromRILInt(I)Lcom/android/internal/telephony/gsm/SsData$RequestType;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    .line 804
    iget v1, p2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->teleserviceType:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SsData;->TeleserviceTypeFromRILInt(I)Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SsData;->teleserviceType:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    .line 805
    iget v1, p2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->serviceClass:I

    iput v1, v0, Lcom/android/internal/telephony/gsm/SsData;->serviceClass:I

    .line 806
    iget v1, p2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->result:I

    iput v1, v0, Lcom/android/internal/telephony/gsm/SsData;->result:I

    .line 808
    iget-object v1, v0, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->isTypeCF()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    .line 809
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SsData$RequestType;->isTypeInterrogation()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 810
    iget-object v1, p2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->cfData:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/V1_0/CfData;

    .line 811
    .local v1, "cfData":Landroid/hardware/radio/V1_0/CfData;
    iget-object v3, v1, Landroid/hardware/radio/V1_0/CfData;->cfInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 812
    .local v3, "num":I
    new-array v4, v3, [Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v4, v0, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 814
    nop

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 815
    iget-object v4, v1, Landroid/hardware/radio/V1_0/CfData;->cfInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CallForwardInfo;

    .line 816
    .local v4, "cfInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    new-instance v6, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v6}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v6, v5, v2

    .line 818
    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v5, v5, v2

    iget v6, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->status:I

    iput v6, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 819
    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v5, v5, v2

    iget v6, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->reason:I

    iput v6, v5, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 820
    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v5, v5, v2

    iget v6, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->serviceClass:I

    iput v6, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 821
    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v5, v5, v2

    iget v6, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->toa:I

    iput v6, v5, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 822
    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v5, v5, v2

    iget-object v6, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 823
    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v5, v5, v2

    iget v6, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->timeSeconds:I

    iput v6, v5, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 825
    iget-object v5, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SS Data] CF Info "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 814
    .end local v4    # "cfInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 827
    .end local v1    # "cfData":Landroid/hardware/radio/V1_0/CfData;
    .end local v2    # "i":I
    :cond_0
    goto :goto_2

    .line 828
    .end local v3    # "num":I
    :cond_1
    iget-object v1, p2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->ssInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/V1_0/SsInfoData;

    .line 829
    .local v1, "ssInfo":Landroid/hardware/radio/V1_0/SsInfoData;
    iget-object v3, v1, Landroid/hardware/radio/V1_0/SsInfoData;->ssInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 830
    .restart local v3    # "num":I
    new-array v4, v3, [I

    iput-object v4, v0, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    .line 831
    nop

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 832
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    iget-object v5, v1, Landroid/hardware/radio/V1_0/SsInfoData;->ssInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v2

    .line 833
    iget-object v4, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SS Data] SS Info "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 831
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 837
    .end local v1    # "ssInfo":Landroid/hardware/radio/V1_0/SsInfoData;
    .end local v2    # "i":I
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v2, 0x413

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 839
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mSsRegistrant:Landroid/os/Registrant;

    if-eqz v1, :cond_3

    .line 840
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mSsRegistrant:Landroid/os/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 842
    :cond_3
    return-void
.end method

.method public onUssd(IILjava/lang/String;)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "ussdModeType"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 198
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3ee

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/RIL;->unsljLogMore(ILjava/lang/String;)V

    .line 201
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 202
    .local v0, "resp":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 203
    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 204
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mUSSDRegistrant:Landroid/os/Registrant;

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mUSSDRegistrant:Landroid/os/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 207
    :cond_0
    return-void
.end method

.method public pcoData(ILandroid/hardware/radio/V1_0/PcoDataInfo;)V
    .locals 5
    .param p1, "indicationType"    # I
    .param p2, "pco"    # Landroid/hardware/radio/V1_0/PcoDataInfo;

    .line 867
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 869
    new-instance v0, Landroid/telephony/PcoData;

    iget v1, p2, Landroid/hardware/radio/V1_0/PcoDataInfo;->cid:I

    iget-object v2, p2, Landroid/hardware/radio/V1_0/PcoDataInfo;->bearerProto:Ljava/lang/String;

    iget v3, p2, Landroid/hardware/radio/V1_0/PcoDataInfo;->pcoId:I

    iget-object v4, p2, Landroid/hardware/radio/V1_0/PcoDataInfo;->contents:Ljava/util/ArrayList;

    .line 872
    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/telephony/PcoData;-><init>(ILjava/lang/String;I[B)V

    .line 874
    .local v0, "response":Landroid/telephony/PcoData;
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v2, 0x416

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 876
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mPcoDataRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 877
    return-void
.end method

.method public radioCapabilityIndication(ILandroid/hardware/radio/V1_0/RadioCapability;)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "rc"    # Landroid/hardware/radio/V1_0/RadioCapability;

    .line 786
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 788
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2, v0}, Lcom/android/internal/telephony/RIL;->convertHalRadioCapability(Landroid/hardware/radio/V1_0/RadioCapability;Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RadioCapability;

    move-result-object v0

    .line 790
    .local v0, "response":Lcom/android/internal/telephony/RadioCapability;
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v2, 0x412

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 792
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mPhoneRadioCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 794
    return-void
.end method

.method public radioStateChanged(II)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "radioState"    # I

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 123
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RadioIndication;->getRadioStateFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 125
    .local v0, "newState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioStateChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/RIL;->unsljLogMore(ILjava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 130
    return-void
.end method

.method public resendIncallMute(I)V
    .locals 2
    .param p1, "indicationType"    # I

    .line 633
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 635
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v1, 0x406

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 637
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 638
    return-void
.end method

.method public restrictedStateChanged(II)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "state"    # I

    .line 475
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 477
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3ff

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 479
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 482
    :cond_0
    return-void
.end method

.method public rilConnected(I)V
    .locals 3
    .param p1, "indicationType"    # I

    .line 673
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 675
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v1, 0x40a

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 678
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->setRadioPower(ZLandroid/os/Message;)V

    .line 683
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RIL;->setCellInfoListRate()V

    .line 686
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->notifyRegistrantsRilConnectionChanged(I)V

    .line 687
    return-void
.end method

.method public simRefresh(ILandroid/hardware/radio/V1_0/SimRefreshResult;)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "refreshResult"    # Landroid/hardware/radio/V1_0/SimRefreshResult;

    .line 391
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 393
    new-instance v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccRefreshResponse;-><init>()V

    .line 394
    .local v0, "response":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    iget v1, p2, Landroid/hardware/radio/V1_0/SimRefreshResult;->type:I

    iput v1, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    .line 395
    iget v1, p2, Landroid/hardware/radio/V1_0/SimRefreshResult;->efId:I

    iput v1, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    .line 396
    iget-object v1, p2, Landroid/hardware/radio/V1_0/SimRefreshResult;->aid:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    .line 398
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v2, 0x3f9

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 400
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 401
    return-void
.end method

.method public simSmsStorageFull(I)V
    .locals 2
    .param p1, "indicationType"    # I

    .line 381
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v1, 0x3f8

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 385
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 388
    :cond_0
    return-void
.end method

.method public simStatusChanged(I)V
    .locals 2
    .param p1, "indicationType"    # I

    .line 427
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 429
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v1, 0x3fb

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 431
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 432
    return-void
.end method

.method public srvccStateNotify(II)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "state"    # I

    .line 758
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 760
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 761
    .local v0, "response":[I
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 763
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v2, 0x40f

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 765
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/RIL;->writeMetricsSrvcc(I)V

    .line 767
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mSrvccStateRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 769
    return-void
.end method

.method public stkCallControlAlphaNotify(ILjava/lang/String;)V
    .locals 3
    .param p1, "indicationType"    # I
    .param p2, "alpha"    # Ljava/lang/String;

    .line 845
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 847
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v1, 0x414

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 849
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatCcAlphaRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatCcAlphaRegistrant:Landroid/os/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 852
    :cond_0
    return-void
.end method

.method public stkCallSetup(IJ)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "timeout"    # J

    .line 371
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 373
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x3f7

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 375
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 378
    :cond_0
    return-void
.end method

.method public stkEventNotify(ILjava/lang/String;)V
    .locals 3
    .param p1, "indicationType"    # I
    .param p2, "cmd"    # Ljava/lang/String;

    .line 361
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 363
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v1, 0x3f6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 365
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatEventRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatEventRegistrant:Landroid/os/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 368
    :cond_0
    return-void
.end method

.method public stkProactiveCommand(ILjava/lang/String;)V
    .locals 3
    .param p1, "indicationType"    # I
    .param p2, "cmd"    # Ljava/lang/String;

    .line 351
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 353
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v1, 0x3f5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 358
    :cond_0
    return-void
.end method

.method public stkSessionEnd(I)V
    .locals 3
    .param p1, "indicationType"    # I

    .line 341
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 343
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v1, 0x3f4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 345
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 348
    :cond_0
    return-void
.end method

.method public subscriptionStatusChanged(IZ)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "activate"    # Z

    .line 746
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 748
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 749
    .local v0, "response":[I
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 751
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v2, 0x40e

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 753
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mSubscriptionStatusRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 755
    return-void
.end method

.method public suppSvcNotify(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "suppSvcNotification"    # Landroid/hardware/radio/V1_0/SuppSvcNotification;

    .line 324
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 326
    new-instance v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 327
    .local v0, "notification":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    iget-boolean v1, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->isMT:Z

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 328
    iget v1, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->code:I

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 329
    iget v1, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->index:I

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    .line 330
    iget v1, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->type:I

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->type:I

    .line 331
    iget-object v1, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->number:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    .line 333
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v2, 0x3f3

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 335
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mSsnRegistrant:Landroid/os/Registrant;

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mSsnRegistrant:Landroid/os/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 338
    :cond_0
    return-void
.end method

.method public voiceRadioTechChanged(II)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "rat"    # I

    .line 690
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 692
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 693
    .local v0, "response":[I
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 695
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v2, 0x40b

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 697
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mVoiceRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 699
    return-void
.end method
