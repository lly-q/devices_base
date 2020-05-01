.class public Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;
.super Ljava/lang/Object;
.source "DataEnabledSettings.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DataEnabledSettings"

.field public static final REASON_DATA_ENABLED_BY_CARRIER:I = 0x4

.field public static final REASON_INTERNAL_DATA_ENABLED:I = 0x1

.field public static final REASON_POLICY_DATA_ENABLED:I = 0x3

.field public static final REASON_REGISTERED:I = 0x0

.field public static final REASON_USER_DATA_ENABLED:I = 0x2


# instance fields
.field private mCarrierDataEnabled:Z

.field private final mDataEnabledChangedRegistrants:Landroid/os/RegistrantList;

.field private mInternalDataEnabled:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPolicyDataEnabled:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private final mSettingChangeLocalLog:Landroid/util/LocalLog;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mInternalDataEnabled:Z

    .line 65
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPolicyDataEnabled:Z

    .line 71
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mCarrierDataEnabled:Z

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 74
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mResolver:Landroid/content/ContentResolver;

    .line 76
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mDataEnabledChangedRegistrants:Landroid/os/RegistrantList;

    .line 78
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mSettingChangeLocalLog:Landroid/util/LocalLog;

    .line 90
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mResolver:Landroid/content/ContentResolver;

    .line 92
    return-void
.end method

.method private getMobileDataSettingName()Ljava/lang/String;
    .locals 1

    .line 137
    const-string v0, "mobile_data"

    return-object v0
.end method

.method private localLog(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mSettingChangeLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " change to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 239
    const-string v0, "DataEnabledSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void
.end method

.method private notifyDataEnabledChanged(ZI)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "reason"    # I

    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mDataEnabledChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 227
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 247
    const-string v0, " DataEnabledSettings="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mSettingChangeLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public declared-synchronized isCarrierDataEnabled()Z
    .locals 1

    monitor-enter p0

    .line 184
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mCarrierDataEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;
    throw v0
.end method

.method public declared-synchronized isDataEnabled()Z
    .locals 1

    monitor-enter p0

    .line 188
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isProvisioning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isProvisioningDataEnabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 191
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mInternalDataEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isUserDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPolicyDataEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mCarrierDataEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;
    throw v0
.end method

.method public declared-synchronized isInternalDataEnabled()Z
    .locals 1

    monitor-enter p0

    .line 103
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mInternalDataEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;
    throw v0
.end method

.method public declared-synchronized isPolicyDataEnabled()Z
    .locals 1

    monitor-enter p0

    .line 172
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPolicyDataEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;
    throw v0
.end method

.method public isProvisioning()Z
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method public isProvisioningDataEnabled()Z
    .locals 5

    .line 207
    const-string v0, "true"

    .line 208
    .local v0, "prov_property":Ljava/lang/String;
    const/4 v1, 0x1

    .line 209
    .local v1, "prov_mobile_data":I
    const/4 v2, 0x1

    .line 219
    .local v2, "retVal":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataEnabled during provisioning retVal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " - ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->log(Ljava/lang/String;)V

    .line 222
    return v2
.end method

.method public declared-synchronized isUserDataEnabled()Z
    .locals 6

    monitor-enter p0

    .line 117
    :try_start_0
    const-string v0, "true"

    const-string v1, "ro.com.android.mobiledata"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 120
    .local v0, "defaultVal":Z
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->getMobileDataSettingName()Ljava/lang/String;

    move-result-object v2

    .line 121
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 120
    move v5, v4

    goto :goto_0

    .line 121
    :cond_0
    nop

    .line 120
    move v5, v3

    :goto_0
    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    move v3, v4

    nop

    :cond_1
    monitor-exit p0

    return v3

    .line 116
    .end local v0    # "defaultVal":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;
    throw v0
.end method

.method public registerForDataEnabledChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mDataEnabledChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 231
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled()Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->notifyDataEnabledChanged(ZI)V

    .line 232
    return-void
.end method

.method public declared-synchronized setCarrierDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    monitor-enter p0

    .line 176
    :try_start_0
    const-string v0, "CarrierDataEnabled"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->localLog(Ljava/lang/String;Z)V

    .line 177
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled()Z

    move-result v0

    .line 178
    .local v0, "prevDataEnabled":Z
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mCarrierDataEnabled:Z

    .line 179
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 180
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->notifyDataEnabledChanged(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :cond_1
    monitor-exit p0

    return-void

    .line 175
    .end local v0    # "prevDataEnabled":Z
    .end local p1    # "enabled":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;
    throw p1
.end method

.method public setDefaultMobileDataEnabled()V
    .locals 5

    .line 146
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->getMobileDataSettingName()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "setting":Ljava/lang/String;
    const/4 v1, 0x0

    .line 149
    .local v1, "useDefaultValue":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    goto :goto_0

    .line 150
    :catch_0
    move-exception v2

    .line 152
    .local v2, "ex":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x1

    .line 155
    .end local v2    # "ex":Landroid/provider/Settings$SettingNotFoundException;
    :goto_0
    if-eqz v1, :cond_0

    .line 156
    const-string v2, "true"

    const-string v3, "ro.com.android.mobiledata"

    const-string v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 158
    .local v2, "defaultVal":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "etDefaultMobileDataEnabled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "default value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->log(Ljava/lang/String;)V

    .line 159
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v0, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 161
    .end local v2    # "defaultVal":Z
    :cond_0
    return-void
.end method

.method public declared-synchronized setInternalDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    monitor-enter p0

    .line 95
    :try_start_0
    const-string v0, "InternalDataEnabled"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->localLog(Ljava/lang/String;Z)V

    .line 96
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled()Z

    move-result v0

    .line 97
    .local v0, "prevDataEnabled":Z
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mInternalDataEnabled:Z

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 99
    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->notifyDataEnabledChanged(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_1
    monitor-exit p0

    return-void

    .line 94
    .end local v0    # "prevDataEnabled":Z
    .end local p1    # "enabled":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;
    throw p1
.end method

.method public declared-synchronized setPolicyDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    monitor-enter p0

    .line 164
    :try_start_0
    const-string v0, "PolicyDataEnabled"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->localLog(Ljava/lang/String;Z)V

    .line 165
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled()Z

    move-result v0

    .line 166
    .local v0, "prevDataEnabled":Z
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPolicyDataEnabled:Z

    .line 167
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 168
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->notifyDataEnabledChanged(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :cond_1
    monitor-exit p0

    return-void

    .line 163
    .end local v0    # "prevDataEnabled":Z
    .end local p1    # "enabled":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;
    throw p1
.end method

.method public declared-synchronized setUserDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    monitor-enter p0

    .line 107
    :try_start_0
    const-string v0, "UserDataEnabled"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->localLog(Ljava/lang/String;Z)V

    .line 108
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled()Z

    move-result v0

    .line 110
    .local v0, "prevDataEnabled":Z
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->getMobileDataSettingName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 112
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 113
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->notifyDataEnabledChanged(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_1
    monitor-exit p0

    return-void

    .line 106
    .end local v0    # "prevDataEnabled":Z
    .end local p1    # "enabled":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[mInternalDataEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mInternalDataEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isUserDataEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isUserDataEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isProvisioningDataEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isProvisioningDataEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPolicyDataEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPolicyDataEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCarrierDataEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mCarrierDataEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    return-object v0
.end method

.method public unregisterForDataEnabledChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mDataEnabledChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 236
    return-void
.end method
