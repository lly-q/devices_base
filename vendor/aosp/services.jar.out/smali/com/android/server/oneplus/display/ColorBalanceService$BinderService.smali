.class final Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;
.super Lcom/oneplus/display/IColorBalanceManager$Stub;
.source "ColorBalanceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oneplus/display/ColorBalanceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/oneplus/display/ColorBalanceService;


# direct methods
.method private constructor <init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .locals 0

    .line 3795
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-direct {p0}, Lcom/oneplus/display/IColorBalanceManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/oneplus/display/ColorBalanceService;Lcom/android/server/oneplus/display/ColorBalanceService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p2, "x1"    # Lcom/android/server/oneplus/display/ColorBalanceService$1;

    .line 3795
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    return-void
.end method


# virtual methods
.method public ColorBalance2GrayColor()V
    .locals 1

    .line 3850
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->sendMsg(I)V

    .line 3851
    return-void
.end method

.method public DisableColor(I)V
    .locals 2
    .param p1, "enable"    # I

    .line 3872
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/16 v1, 0x17

    invoke-virtual {v0, v1, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 3873
    return-void
.end method

.method public GrayColor2ColorBalance()V
    .locals 5

    .line 3854
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1600(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3855
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1600(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "fingerprint"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$5302(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager;

    .line 3857
    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$5300(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 3858
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    new-array v2, v1, [I

    const/16 v3, 0x47

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$5300(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 3859
    invoke-static {v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$5300(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    sget v2, Lcom/android/server/power/PowerManagerService;->mGo_to_sleep_Reason:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    sget v2, Lcom/android/server/power/PowerManagerService;->mGo_to_sleep_Reason:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    move v4, v1

    nop

    :cond_1
    iput-boolean v4, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->has_fingerprint:Z

    .line 3862
    :cond_2
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    iget-boolean v0, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->has_fingerprint:Z

    if-eqz v0, :cond_3

    .line 3863
    return-void

    .line 3864
    :cond_3
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2900(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3865
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$5402(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 3866
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$5502(Lcom/android/server/oneplus/display/ColorBalanceService;I)I

    .line 3868
    :cond_4
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->sendMsg(I)V

    .line 3869
    return-void
.end method

.method public autoModeonStart()V
    .locals 2

    .line 3842
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$5200(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3843
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$5200(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->onStart()V

    goto :goto_0

    .line 3845
    :cond_0
    const-string v0, "ColorBalanceService"

    const-string v1, "autoModeonStart mAutoMode is NULL"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3847
    :goto_0
    return-void
.end method

.method public getIsAutoTime()Z
    .locals 1

    .line 3838
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-virtual {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getAutoTime()Z

    move-result v0

    return v0
.end method

.method public sendMsg(I)V
    .locals 3
    .param p1, "v"    # I

    .line 3798
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3799
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4900(Lcom/android/server/oneplus/display/ColorBalanceService;I)V

    .line 3800
    return-void
.end method

.method public setActiveMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 3803
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 3804
    return-void
.end method

.method public setColorBalance(I)V
    .locals 3
    .param p1, "value"    # I

    .line 3812
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3813
    const/16 v0, -0x200

    if-ne p1, v0, :cond_0

    .line 3814
    return-void

    .line 3815
    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$5000(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3816
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1400(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3817
    const/16 v0, 0x200

    if-gt p1, v0, :cond_1

    if-ne p1, v0, :cond_3

    .line 3818
    :cond_1
    add-int/lit16 p1, p1, -0x200

    goto :goto_0

    .line 3821
    :cond_2
    add-int/lit8 p1, p1, -0x1a

    .line 3824
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$5104(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    .line 3825
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 3826
    return-void
.end method

.method public setColorBalanceActivated(I)V
    .locals 2
    .param p1, "activated"    # I

    .line 3834
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/16 v1, 0x13

    invoke-virtual {v0, v1, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 3835
    return-void
.end method

.method public setDefaultMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 3807
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 3808
    return-void
.end method

.method public setGrayColorActivated(I)V
    .locals 2
    .param p1, "activated"    # I

    .line 3830
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 3831
    return-void
.end method
