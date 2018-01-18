.class public final Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$CircleWearingDetectionMessage;
.super Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;
.source "HMJSONDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CircleWearingDetectionMessage"
.end annotation


# static fields
.field public static final CIRCLE_ADDRESS:Ljava/lang/String; = "circle_address"

.field public static final WEARING_STATE:Ljava/lang/String; = "circle_wearing_state"


# instance fields
.field address:Ljava/lang/String;

.field deviceId:Ljava/lang/String;

.field wearingState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8915
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;-><init>()V

    .line 8911
    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$CircleWearingDetectionMessage;->address:Ljava/lang/String;

    .line 8912
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$CircleWearingDetectionMessage;->wearingState:I

    .line 8913
    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$CircleWearingDetectionMessage;->deviceId:Ljava/lang/String;

    .line 8916
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_CIRCLE_WEARING_STATE_INFO:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$CircleWearingDetectionMessage;->msgId:Ljava/lang/String;

    .line 8917
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "circleAddress"    # Ljava/lang/String;
    .param p2, "circleWearingState"    # I
    .param p3, "deviceId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 8919
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;-><init>()V

    .line 8911
    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$CircleWearingDetectionMessage;->address:Ljava/lang/String;

    .line 8912
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$CircleWearingDetectionMessage;->wearingState:I

    .line 8913
    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$CircleWearingDetectionMessage;->deviceId:Ljava/lang/String;

    .line 8920
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_CIRCLE_WEARING_STATE_INFO:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$CircleWearingDetectionMessage;->msgId:Ljava/lang/String;

    .line 8921
    iput-object p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$CircleWearingDetectionMessage;->address:Ljava/lang/String;

    .line 8922
    iput p2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$CircleWearingDetectionMessage;->wearingState:I

    .line 8923
    iput-object p3, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$CircleWearingDetectionMessage;->deviceId:Ljava/lang/String;

    .line 8924
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
    .line 8938
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "json":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8939
    .local v0, "jsonObj":Lorg/json/JSONObject;
    const-string v1, "msgId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$CircleWearingDetectionMessage;->msgId:Ljava/lang/String;

    .line 8940
    const-string v1, "circle_address"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$CircleWearingDetectionMessage;->address:Ljava/lang/String;

    .line 8941
    const-string v1, "circle_wearing_state"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$CircleWearingDetectionMessage;->wearingState:I

    .line 8942
    return-void
.end method

.method public getCircleAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8945
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$CircleWearingDetectionMessage;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectedState()I
    .locals 1

    .prologue
    .line 8949
    iget v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$CircleWearingDetectionMessage;->wearingState:I

    return v0
.end method

.method public bridge synthetic getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8908
    invoke-super {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8908
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
    .line 8928
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 8929
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "msgId"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$CircleWearingDetectionMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8930
    const-string v1, "deviceid"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$CircleWearingDetectionMessage;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8931
    const-string v1, "circle_address"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$CircleWearingDetectionMessage;->address:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8932
    const-string v1, "circle_wearing_state"

    iget v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$CircleWearingDetectionMessage;->wearingState:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8933
    return-object v0
.end method
