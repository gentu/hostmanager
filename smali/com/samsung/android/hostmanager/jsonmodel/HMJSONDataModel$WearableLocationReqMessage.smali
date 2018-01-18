.class public final Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableLocationReqMessage;
.super Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;
.source "HMJSONDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WearableLocationReqMessage"
.end annotation


# static fields
.field private static REASON:Ljava/lang/String;


# instance fields
.field mData:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5834
    const-string v0, "reason"

    sput-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableLocationReqMessage;->REASON:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 5837
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;-><init>()V

    .line 5838
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_WEARABLE_LOCATION_REQ:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableLocationReqMessage;->msgId:Ljava/lang/String;

    .line 5839
    iput-object p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableLocationReqMessage;->mDeviceId:Ljava/lang/String;

    .line 5840
    iput-object p2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableLocationReqMessage;->mData:Ljava/lang/String;

    .line 5841
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
    .line 5854
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "json":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5855
    .local v0, "jsonObj":Lorg/json/JSONObject;
    const-string v1, "msgId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableLocationReqMessage;->msgId:Ljava/lang/String;

    .line 5856
    return-void
.end method

.method public bridge synthetic getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5833
    invoke-super {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5833
    invoke-super {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;->getMsgId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJSON()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 5845
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 5846
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "msgId"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableLocationReqMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5847
    const-string v1, "deviceid"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableLocationReqMessage;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5848
    sget-object v1, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableLocationReqMessage;->REASON:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableLocationReqMessage;->mData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5849
    return-object v0
.end method
