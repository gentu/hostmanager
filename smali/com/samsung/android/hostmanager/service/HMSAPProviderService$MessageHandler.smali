.class Lcom/samsung/android/hostmanager/service/HMSAPProviderService$MessageHandler;
.super Landroid/os/Handler;
.source "HMSAPProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageHandler"
.end annotation


# instance fields
.field private final mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/hostmanager/service/HMSAPProviderService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;)V
    .locals 1
    .param p1, "service"    # Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    .prologue
    .line 3027
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 3028
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$MessageHandler;->mService:Ljava/lang/ref/WeakReference;

    .line 3029
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3033
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v18

    const-string v19, "handleMessage()"

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3035
    const/4 v6, 0x0

    .line 3036
    .local v6, "deviceId":Ljava/lang/String;
    const/4 v11, 0x0

    .line 3037
    .local v11, "jsonObj":Lorg/json/JSONObject;
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 3038
    .local v10, "json":Ljava/lang/String;
    const/4 v14, 0x0

    .line 3040
    .local v14, "msgId":Ljava/lang/String;
    const/16 v17, 0x0

    .line 3042
    .local v17, "socket":Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;
    if-nez v10, :cond_0

    .line 3043
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v18

    const-string v19, "MessageHandler : json is null"

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3158
    :goto_0
    return-void

    .line 3047
    :cond_0
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3048
    .end local v11    # "jsonObj":Lorg/json/JSONObject;
    .local v12, "jsonObj":Lorg/json/JSONObject;
    :try_start_1
    const-string v18, "deviceid"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3049
    const-string v18, "msgId"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v14

    move-object v11, v12

    .line 3054
    .end local v12    # "jsonObj":Lorg/json/JSONObject;
    .restart local v11    # "jsonObj":Lorg/json/JSONObject;
    :goto_1
    if-nez v6, :cond_2

    .line 3055
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v18

    const-string v19, "CM::MessageHandler : deviceId is null)"

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3056
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "CM::MessageHandler : json = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$MessageHandler;->mService:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    .line 3058
    .local v15, "service":Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
    const/4 v14, 0x0

    .line 3060
    if-eqz v11, :cond_1

    .line 3061
    :try_start_2
    const-string v18, "msgId"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v14

    .line 3066
    :cond_1
    :goto_2
    if-nez v14, :cond_3

    .line 3067
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->DEBUGGABLE()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 3068
    const-string v18, "All message should have deviceID."

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v15, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 3077
    .end local v15    # "service":Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
    :cond_2
    :goto_3
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$1400()Lcom/samsung/android/hostmanager/connection/IWSocketManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Lcom/samsung/android/hostmanager/connection/IWSocketManager;->getSASocket(Ljava/lang/String;)Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    move-result-object v17

    .line 3079
    if-nez v17, :cond_4

    .line 3080
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "MessageHandler : socket is null ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3050
    :catch_0
    move-exception v7

    .line 3051
    .local v7, "e":Lorg/json/JSONException;
    :goto_4
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 3063
    .end local v7    # "e":Lorg/json/JSONException;
    .restart local v15    # "service":Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
    :catch_1
    move-exception v7

    .line 3064
    .restart local v7    # "e":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 3072
    .end local v7    # "e":Lorg/json/JSONException;
    :cond_3
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->DEBUGGABLE()Z

    move-result v18

    if-eqz v18, :cond_2

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "All message should have deviceID. "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v15, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 3084
    .end local v15    # "service":Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
    :cond_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    sparse-switch v18, :sswitch_data_0

    goto/16 :goto_0

    .line 3120
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 3121
    .local v2, "b":Landroid/os/Bundle;
    const-string v18, "data"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3123
    .local v5, "data":Ljava/lang/String;
    if-eqz v10, :cond_8

    .line 3125
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Message_Send_Json_data: json="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", deviceId="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3126
    const/16 v18, 0x67

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->send(I[B)V

    goto/16 :goto_0

    .line 3086
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v5    # "data":Ljava/lang/String;
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 3087
    .restart local v2    # "b":Landroid/os/Bundle;
    const-string v18, "data"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3089
    .restart local v5    # "data":Ljava/lang/String;
    invoke-static {v10}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->stripPhonenumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3090
    .local v13, "logJson":Ljava/lang/String;
    if-eqz v10, :cond_6

    .line 3092
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->DEBUGGABLE()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 3093
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Message_Send_Json_data(Secure): json="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", deviceId="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3099
    :goto_5
    const/16 v18, 0x67

    :try_start_3
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->secureSend(I[B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 3100
    :catch_2
    move-exception v7

    .line 3101
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 3095
    .end local v7    # "e":Ljava/io/IOException;
    :cond_5
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Message_Send_Json_data(Secure): json= ["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] , deviceId="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 3104
    :cond_6
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->DEBUGGABLE()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 3105
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Message_Send_Json_data(Secure): data="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", deviceId= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3111
    :goto_6
    const/16 v18, 0x67

    :try_start_4
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->secureSend(I[B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 3112
    :catch_3
    move-exception v7

    .line 3113
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 3107
    .end local v7    # "e":Ljava/io/IOException;
    :cond_7
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Message_Send_Json_data(Secure): json= ["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] , deviceId="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 3130
    .end local v13    # "logJson":Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Message_Send_Json_data: data= [] , deviceId="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3131
    const/16 v18, 0x67

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->send(I[B)V

    goto/16 :goto_0

    .line 3136
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v5    # "data":Ljava/lang/String;
    :sswitch_2
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v18

    const-string v19, "Inside MESSAGE_SEND_FILE_VIA_BT case"

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3137
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 3138
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v18, "filePath"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3139
    .local v8, "filePath":Ljava/lang/String;
    const-string v18, "deviceid"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$MessageHandler;->mService:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    .line 3141
    .restart local v15    # "service":Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
    move-object/from16 v0, v17

    invoke-virtual {v0, v15, v8}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->sendFile(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3145
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v8    # "filePath":Ljava/lang/String;
    .end local v15    # "service":Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
    :sswitch_3
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v18

    const-string v19, "Inside MESSAGE_SEND_FILE_VIA_WIFI case"

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3146
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    .line 3147
    .local v4, "bundleWifi":Landroid/os/Bundle;
    const-string v18, "filePath"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3148
    .local v9, "filePathWifi":Ljava/lang/String;
    const-string v18, "deviceid"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$MessageHandler;->mService:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    .line 3150
    .local v16, "serviceWifi":Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v9}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->sendFileViaWifi(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3154
    .end local v4    # "bundleWifi":Landroid/os/Bundle;
    .end local v9    # "filePathWifi":Ljava/lang/String;
    .end local v16    # "serviceWifi":Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
    :sswitch_4
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v18

    const-string v19, "Inside BOOTUP_REQUEST_GC case"

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3155
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_0

    .line 3050
    .end local v11    # "jsonObj":Lorg/json/JSONObject;
    .restart local v12    # "jsonObj":Lorg/json/JSONObject;
    :catch_4
    move-exception v7

    move-object v11, v12

    .end local v12    # "jsonObj":Lorg/json/JSONObject;
    .restart local v11    # "jsonObj":Lorg/json/JSONObject;
    goto/16 :goto_4

    .line 3084
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_2
        0x3000 -> :sswitch_4
        0x4000 -> :sswitch_1
        0x5000 -> :sswitch_3
    .end sparse-switch
.end method
