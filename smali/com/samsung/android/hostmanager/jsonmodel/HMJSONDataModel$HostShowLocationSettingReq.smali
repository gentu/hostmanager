.class public final Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HostShowLocationSettingReq;
.super Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;
.source "HMJSONDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HostShowLocationSettingReq"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6011
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;-><init>()V

    .line 6012
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_SHARE_LOCATION_SETTING_SHOW_ON_DEVICE_REQ:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HostShowLocationSettingReq;->msgId:Ljava/lang/String;

    .line 6013
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 6015
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;-><init>()V

    .line 6016
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_SHARE_LOCATION_SETTING_SHOW_ON_DEVICE_REQ:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HostShowLocationSettingReq;->msgId:Ljava/lang/String;

    .line 6017
    iput-object p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HostShowLocationSettingReq;->mDeviceId:Ljava/lang/String;

    .line 6018
    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/lang/Object;)V
    .locals 2
    .param p1, "json"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 6027
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "json":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6028
    .local v0, "jsonObj":Lorg/json/JSONObject;
    const-string v1, "msgId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HostShowLocationSettingReq;->msgId:Ljava/lang/String;

    .line 6029
    return-void
.end method

.method public bridge synthetic getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6009
    invoke-super {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6009
    invoke-super {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;->getMsgId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJSON()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 6022
    const/4 v0, 0x0

    return-object v0
.end method
