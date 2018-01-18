.class Lcom/samsung/android/hostmanager/service/HMSAPProviderService$9;
.super Landroid/database/ContentObserver;
.source "HMSAPProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/service/HMSAPProviderService;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 9358
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$9;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 12
    .param p1, "selfChange"    # Z

    .prologue
    .line 9363
    const/4 v4, -0x1

    .line 9365
    .local v4, "safetyStatus":I
    :try_start_0
    iget-object v8, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$9;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "block_emergency_message"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 9366
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "safetyDeclaredObserver Observed SafetyDeclared status : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9371
    :goto_0
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "safetyDeclaredObserver contentSafetyDeclaredObserver ::  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9374
    const/4 v6, 0x0

    .line 9375
    .local v6, "sockets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;>;"
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$1400()Lcom/samsung/android/hostmanager/connection/IWSocketManager;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 9376
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$1400()Lcom/samsung/android/hostmanager/connection/IWSocketManager;

    move-result-object v8

    invoke-interface {v8}, Lcom/samsung/android/hostmanager/connection/IWSocketManager;->getSASockets()Ljava/util/Map;

    move-result-object v6

    .line 9378
    :cond_0
    if-eqz v6, :cond_1

    .line 9379
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 9380
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;>;"
    if-eqz v0, :cond_1

    .line 9381
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;

    .line 9382
    .local v5, "socket":Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;
    invoke-virtual {v5}, Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;->getDeviceBTAddress()Ljava/lang/String;

    move-result-object v1

    .line 9383
    .local v1, "deviceID":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "safetyDeclaredObserver deviceID="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9384
    new-instance v3, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$safetyDeclaredStatusReqMessage;

    invoke-direct {v3, v4, v1}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$safetyDeclaredStatusReqMessage;-><init>(ILjava/lang/String;)V

    .line 9386
    .local v3, "req":Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$safetyDeclaredStatusReqMessage;
    const-string v7, ""

    .line 9388
    .local v7, "uJsonStringToSend":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v3}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$safetyDeclaredStatusReqMessage;->toJSON()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 9392
    :goto_2
    iget-object v9, p0, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$9;->this$0:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-static {v9}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->access$2300(Lcom/samsung/android/hostmanager/service/HMSAPProviderService;)Lcom/samsung/android/hostmanager/service/HMSAPProviderService$MessageHandler;

    move-result-object v9

    const/16 v10, 0x1000

    invoke-virtual {v9, v10, v7}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 9368
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;>;"
    .end local v1    # "deviceID":Ljava/lang/String;
    .end local v3    # "req":Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$safetyDeclaredStatusReqMessage;
    .end local v5    # "socket":Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;
    .end local v6    # "sockets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;>;"
    .end local v7    # "uJsonStringToSend":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 9369
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 9389
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;>;"
    .restart local v1    # "deviceID":Ljava/lang/String;
    .restart local v3    # "req":Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$safetyDeclaredStatusReqMessage;
    .restart local v5    # "socket":Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;
    .restart local v6    # "sockets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;>;"
    .restart local v7    # "uJsonStringToSend":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 9390
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 9397
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;>;"
    .end local v1    # "deviceID":Ljava/lang/String;
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v3    # "req":Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$safetyDeclaredStatusReqMessage;
    .end local v5    # "socket":Lcom/samsung/android/hostmanager/connection/HMSAPSASocket;
    .end local v7    # "uJsonStringToSend":Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 9398
    return-void
.end method
