.class public final Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoReqMessage;
.super Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;
.source "HMJSONDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WearableCallforwardingInfoReqMessage"
.end annotation


# static fields
.field public static final WEARABLE_MCC:Ljava/lang/String; = "wearableMcc"

.field public static final WEARABLE_MNC:Ljava/lang/String; = "wearableMnc"

.field public static final WEARABLE_SIM_CHANGED:Ljava/lang/String; = "simChanged"


# instance fields
.field mWearableMcc:Ljava/lang/String;

.field mWearableMnc:Ljava/lang/String;

.field mWearableSimChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8245
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;-><init>()V

    .line 8243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoReqMessage;->mWearableSimChanged:Z

    .line 8246
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_WEARABLE_CALLFORWARDING_INFO_REQ:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoReqMessage;->msgId:Ljava/lang/String;

    .line 8247
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 8249
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;-><init>()V

    .line 8243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoReqMessage;->mWearableSimChanged:Z

    .line 8250
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_WEARABLE_CALLFORWARDING_INFO_REQ:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoReqMessage;->msgId:Ljava/lang/String;

    .line 8251
    iput-object p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoReqMessage;->mDeviceId:Ljava/lang/String;

    .line 8252
    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/lang/Object;)V
    .locals 6
    .param p1, "json"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 8279
    new-instance v2, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "json":Ljava/lang/Object;
    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8280
    .local v2, "jsonObj":Lorg/json/JSONObject;
    const-string v3, "msgId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoReqMessage;->msgId:Ljava/lang/String;

    .line 8281
    const-string v3, "wearableMcc"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoReqMessage;->mWearableMcc:Ljava/lang/String;

    .line 8282
    const-string v3, "wearableMnc"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoReqMessage;->mWearableMnc:Ljava/lang/String;

    .line 8283
    const/4 v0, 0x0

    .line 8285
    .local v0, "WearableSimChangedStr":Ljava/lang/String;
    :try_start_0
    const-string v3, "simChanged"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 8289
    :goto_0
    const-string v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoReqMessage;->mWearableSimChanged:Z

    .line 8290
    return-void

    .line 8286
    :catch_0
    move-exception v1

    .line 8287
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception at simChanged\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8236
    invoke-super {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8236
    invoke-super {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;->getMsgId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWearableMcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8255
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoReqMessage;->mWearableMcc:Ljava/lang/String;

    return-object v0
.end method

.method public getWearableMnc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8259
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoReqMessage;->mWearableMnc:Ljava/lang/String;

    return-object v0
.end method

.method public getWearableSimChanged()Z
    .locals 1

    .prologue
    .line 8263
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoReqMessage;->mWearableSimChanged:Z

    return v0
.end method

.method public toJSON()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 8268
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 8269
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "msgId"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoReqMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8270
    const-string v1, "wearableMcc"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoReqMessage;->mWearableMcc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8271
    const-string v1, "wearableMnc"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoReqMessage;->mWearableMnc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8272
    const-string v2, "simChanged"

    iget-boolean v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoReqMessage;->mWearableSimChanged:Z

    if-eqz v1, :cond_0

    const-string v1, "true"

    :goto_0
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8273
    const-string v1, "deviceid"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoReqMessage;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8274
    return-object v0

    .line 8272
    :cond_0
    const-string v1, "false"

    goto :goto_0
.end method
