.class Lcom/android/internal/telephony/OPOnlineConfigTelephony$1;
.super Landroid/content/BroadcastReceiver;
.source "OPOnlineConfigTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/OPOnlineConfigTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/OPOnlineConfigTelephony;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/OPOnlineConfigTelephony;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/OPOnlineConfigTelephony;

    .line 211
    iput-object p1, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony$1;->this$0:Lcom/android/internal/telephony/OPOnlineConfigTelephony;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 214
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony$1;->this$0:Lcom/android/internal/telephony/OPOnlineConfigTelephony;

    const-string v3, "ACTION_BOOT_COMPLETED call triggerOPOnlineConfigApnLoading(0)"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->access$000(Lcom/android/internal/telephony/OPOnlineConfigTelephony;Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony$1;->this$0:Lcom/android/internal/telephony/OPOnlineConfigTelephony;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->access$100(Lcom/android/internal/telephony/OPOnlineConfigTelephony;I)V

    goto/16 :goto_0

    .line 219
    :cond_0
    const-string v1, "android.intent.action.restoreDefaultAPN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony$1;->this$0:Lcom/android/internal/telephony/OPOnlineConfigTelephony;

    const-string v2, "RESTORE_DEFAULT_APN_CMD_ACTION call triggerOPOnlineConfigApnLoading(1)"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->access$000(Lcom/android/internal/telephony/OPOnlineConfigTelephony;Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony$1;->this$0:Lcom/android/internal/telephony/OPOnlineConfigTelephony;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->access$100(Lcom/android/internal/telephony/OPOnlineConfigTelephony;I)V

    goto/16 :goto_0

    .line 225
    :cond_1
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 227
    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "simStatus":Ljava/lang/String;
    const-string v3, "phone"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 230
    .local v3, "phoneId":I
    iget-object v5, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony$1;->this$0:Lcom/android/internal/telephony/OPOnlineConfigTelephony;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got ACTION_SIM_STATE_CHANGED intent, phoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " simStatus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->access$000(Lcom/android/internal/telephony/OPOnlineConfigTelephony;Ljava/lang/String;)V

    .line 231
    if-ne v3, v4, :cond_2

    .line 233
    return-void

    .line 235
    :cond_2
    const-string v4, "READY"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "IMSI"

    .line 236
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "LOADED"

    .line 237
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 240
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony$1;->this$0:Lcom/android/internal/telephony/OPOnlineConfigTelephony;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got ACTION_SIM_STATE_CHANGED intent, start to load CarrierConfig for phoneId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->access$000(Lcom/android/internal/telephony/OPOnlineConfigTelephony;Ljava/lang/String;)V

    .line 241
    new-instance v4, Lcom/oneplus/config/ConfigGrabber;

    iget-object v5, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony$1;->this$0:Lcom/android/internal/telephony/OPOnlineConfigTelephony;

    invoke-static {v5}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->access$200(Lcom/android/internal/telephony/OPOnlineConfigTelephony;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "OPOnlineCarrierConfig"

    invoke-direct {v4, v5, v6}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 242
    .local v4, "carrierConfigGrabber":Lcom/oneplus/config/ConfigGrabber;
    invoke-virtual {v4}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v5

    .line 243
    .local v5, "jsonCarrierConfigArr":Lorg/json/JSONArray;
    iget-object v6, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony$1;->this$0:Lcom/android/internal/telephony/OPOnlineConfigTelephony;

    invoke-static {v6, v5, v2, v3}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->access$400(Lcom/android/internal/telephony/OPOnlineConfigTelephony;Lorg/json/JSONArray;ZI)V

    .line 247
    .end local v1    # "simStatus":Ljava/lang/String;
    .end local v3    # "phoneId":I
    .end local v4    # "carrierConfigGrabber":Lcom/oneplus/config/ConfigGrabber;
    .end local v5    # "jsonCarrierConfigArr":Lorg/json/JSONArray;
    :cond_4
    :goto_0
    return-void
.end method
