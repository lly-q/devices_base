.class Lcom/android/internal/telephony/OPOnlineConfigTelephony$MyHandler;
.super Landroid/os/Handler;
.source "OPOnlineConfigTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/OPOnlineConfigTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/OPOnlineConfigTelephony;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/OPOnlineConfigTelephony;Landroid/os/Looper;)V
    .locals 0
    .param p2, "loop"    # Landroid/os/Looper;

    .line 156
    iput-object p1, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony$MyHandler;->this$0:Lcom/android/internal/telephony/OPOnlineConfigTelephony;

    .line 157
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 158
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 162
    iget-object v0, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony$MyHandler;->this$0:Lcom/android/internal/telephony/OPOnlineConfigTelephony;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage() message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->access$000(Lcom/android/internal/telephony/OPOnlineConfigTelephony;Ljava/lang/String;)V

    .line 163
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony$MyHandler;->this$0:Lcom/android/internal/telephony/OPOnlineConfigTelephony;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage() Don\'t support this handle message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->access$000(Lcom/android/internal/telephony/OPOnlineConfigTelephony;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 166
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 167
    .local v0, "reset_prop_version":I
    new-instance v2, Lcom/oneplus/config/ConfigGrabber;

    iget-object v3, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony$MyHandler;->this$0:Lcom/android/internal/telephony/OPOnlineConfigTelephony;

    invoke-static {v3}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->access$200(Lcom/android/internal/telephony/OPOnlineConfigTelephony;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "OPOnlineConfigApn"

    invoke-direct {v2, v3, v4}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 168
    .local v2, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    invoke-virtual {v2}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v3

    .line 169
    .local v3, "jsonArr":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony$MyHandler;->this$0:Lcom/android/internal/telephony/OPOnlineConfigTelephony;

    invoke-static {v4, v3, v0}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->access$300(Lcom/android/internal/telephony/OPOnlineConfigTelephony;Lorg/json/JSONArray;I)V

    .line 172
    iget-object v4, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony$MyHandler;->this$0:Lcom/android/internal/telephony/OPOnlineConfigTelephony;

    const-string v5, "Got MSG_GET_ONLINECONFIG, start to reload JSON"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->access$000(Lcom/android/internal/telephony/OPOnlineConfigTelephony;Ljava/lang/String;)V

    .line 173
    new-instance v4, Lcom/oneplus/config/ConfigGrabber;

    iget-object v5, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony$MyHandler;->this$0:Lcom/android/internal/telephony/OPOnlineConfigTelephony;

    invoke-static {v5}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->access$200(Lcom/android/internal/telephony/OPOnlineConfigTelephony;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "OPOnlineCarrierConfig"

    invoke-direct {v4, v5, v6}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 174
    .local v4, "carrierConfigGrabber":Lcom/oneplus/config/ConfigGrabber;
    invoke-virtual {v4}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v5

    .line 175
    .local v5, "jsonCarrierConfigArr":Lorg/json/JSONArray;
    iget-object v6, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony$MyHandler;->this$0:Lcom/android/internal/telephony/OPOnlineConfigTelephony;

    const/4 v7, 0x0

    invoke-static {v6, v5, v1, v7}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->access$400(Lcom/android/internal/telephony/OPOnlineConfigTelephony;Lorg/json/JSONArray;ZI)V

    .line 176
    iget-object v6, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony$MyHandler;->this$0:Lcom/android/internal/telephony/OPOnlineConfigTelephony;

    invoke-static {v6, v5, v7, v1}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->access$400(Lcom/android/internal/telephony/OPOnlineConfigTelephony;Lorg/json/JSONArray;ZI)V

    .line 180
    iget-object v1, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony$MyHandler;->this$0:Lcom/android/internal/telephony/OPOnlineConfigTelephony;

    const-string v6, "Got MSG_GET_ONLINECONFIG, start to replace vzw file"

    invoke-static {v1, v6}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->access$000(Lcom/android/internal/telephony/OPOnlineConfigTelephony;Ljava/lang/String;)V

    .line 182
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v6, "/op2/verizon-apns.xml"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v1, "vzwFile":Ljava/io/File;
    iget-object v6, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony$MyHandler;->this$0:Lcom/android/internal/telephony/OPOnlineConfigTelephony;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "vzwFile is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, ""

    goto :goto_0

    :cond_1
    const-string v8, "not "

    :goto_0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "exist."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->access$000(Lcom/android/internal/telephony/OPOnlineConfigTelephony;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 186
    const/4 v6, 0x0

    .line 187
    .local v6, "vzwParser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    .line 188
    .local v7, "vzwReader":Ljava/io/FileReader;
    const/4 v8, 0x0

    .line 189
    .local v8, "vzwContentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    move-object v6, v9

    .line 190
    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v7, v9

    .line 191
    invoke-interface {v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 192
    const-string v9, "apns"

    invoke-static {v6, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 193
    const-string v9, "OPOnlineConfigTelephony"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "vzwParser="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v9, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony$MyHandler;->this$0:Lcom/android/internal/telephony/OPOnlineConfigTelephony;

    invoke-static {v9, v6}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->access$500(Lcom/android/internal/telephony/OPOnlineConfigTelephony;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "vzwFile":Ljava/io/File;
    .end local v6    # "vzwParser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "vzwReader":Ljava/io/FileReader;
    .end local v8    # "vzwContentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    goto :goto_1

    .line 198
    :catch_0
    move-exception v1

    .line 199
    .local v1, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony$MyHandler;->this$0:Lcom/android/internal/telephony/OPOnlineConfigTelephony;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->access$600(Lcom/android/internal/telephony/OPOnlineConfigTelephony;Ljava/lang/String;)V

    .line 202
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 196
    :catch_1
    move-exception v1

    .line 197
    .local v1, "e":Ljava/io/FileNotFoundException;
    iget-object v6, p0, Lcom/android/internal/telephony/OPOnlineConfigTelephony$MyHandler;->this$0:Lcom/android/internal/telephony/OPOnlineConfigTelephony;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FileNotFoundException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/OPOnlineConfigTelephony;->access$600(Lcom/android/internal/telephony/OPOnlineConfigTelephony;Ljava/lang/String;)V

    .line 200
    .end local v0    # "reset_prop_version":I
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    .end local v3    # "jsonArr":Lorg/json/JSONArray;
    .end local v4    # "carrierConfigGrabber":Lcom/oneplus/config/ConfigGrabber;
    .end local v5    # "jsonCarrierConfigArr":Lorg/json/JSONArray;
    :cond_2
    :goto_1
    nop

    .line 208
    :goto_2
    return-void
.end method
