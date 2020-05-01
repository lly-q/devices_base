.class Lcom/android/internal/telephony/OPOnlineConfigTelephony$OPOnlineConfigTelephonyUpdater;
.super Ljava/lang/Object;
.source "OPOnlineConfigTelephony.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/OPOnlineConfigTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OPOnlineConfigTelephonyUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/OPOnlineConfigTelephony;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/OPOnlineConfigTelephony;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/OPOnlineConfigTelephony;

    .line 147
    iput-object p1, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony$OPOnlineConfigTelephonyUpdater;->this$0:Lcom/android/internal/telephony/OPOnlineConfigTelephony;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 2
    .param p1, "configJsonArray"    # Lorg/json/JSONArray;

    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony$OPOnlineConfigTelephonyUpdater;->this$0:Lcom/android/internal/telephony/OPOnlineConfigTelephony;

    const-string v1, "updateConfig() call triggerOPOnlineConfigTelephonyLoading(0)"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->access$000(Lcom/android/internal/telephony/OPOnlineConfigTelephony;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony$OPOnlineConfigTelephonyUpdater;->this$0:Lcom/android/internal/telephony/OPOnlineConfigTelephony;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->access$100(Lcom/android/internal/telephony/OPOnlineConfigTelephony;I)V

    .line 152
    return-void
.end method
