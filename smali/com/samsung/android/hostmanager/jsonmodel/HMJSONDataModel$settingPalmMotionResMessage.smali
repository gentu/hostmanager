.class public final Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingPalmMotionResMessage;
.super Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;
.source "HMJSONDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "settingPalmMotionResMessage"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8077
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;-><init>()V

    .line 8078
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_SETTING_PALM_MOTION_RES:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingPalmMotionResMessage;->msgId:Ljava/lang/String;

    .line 8079
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 8081
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;-><init>()V

    .line 8082
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_SETTING_PALM_MOTION_RES:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingPalmMotionResMessage;->msgId:Ljava/lang/String;

    .line 8083
    iput-object p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingPalmMotionResMessage;->mDeviceId:Ljava/lang/String;

    .line 8084
    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/lang/Object;)V
    .locals 2
    .param p1, "jsonObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 8096
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "jsonObj":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8097
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "msgId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingPalmMotionResMessage;->msgId:Ljava/lang/String;

    .line 8098
    return-void
.end method

.method public toJSON()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 8088
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 8089
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "msgId"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingPalmMotionResMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8090
    const-string v1, "deviceid"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingPalmMotionResMessage;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8091
    return-object v0
.end method
