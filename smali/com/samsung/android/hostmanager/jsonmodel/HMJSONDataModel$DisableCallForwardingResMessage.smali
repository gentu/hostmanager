.class public final Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$DisableCallForwardingResMessage;
.super Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;
.source "HMJSONDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisableCallForwardingResMessage"
.end annotation


# static fields
.field public static final DATATIME:Ljava/lang/String; = "time"

.field public static final REGISTER_TYPE:Ljava/lang/String; = "forward_state"

.field public static final RESULT:Ljava/lang/String; = "result"


# instance fields
.field public mDateTime:Ljava/lang/String;

.field public mRegister:I

.field public mResultInt:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8145
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;-><init>()V

    .line 8146
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_WEARABLE_DISABLECALLFORWARDING_RES:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$DisableCallForwardingResMessage;->msgId:Ljava/lang/String;

    .line 8147
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
    .line 8174
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "json":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8175
    .local v0, "jsonObj":Lorg/json/JSONObject;
    const-string v1, "msgId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$DisableCallForwardingResMessage;->msgId:Ljava/lang/String;

    .line 8176
    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$DisableCallForwardingResMessage;->mResultInt:I

    .line 8177
    const-string v1, "forward_state"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$DisableCallForwardingResMessage;->mRegister:I

    .line 8178
    const-string v1, "time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$DisableCallForwardingResMessage;->mDateTime:Ljava/lang/String;

    .line 8179
    return-void
.end method

.method public getDatatime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8158
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$DisableCallForwardingResMessage;->mDateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRegisterType()I
    .locals 1

    .prologue
    .line 8154
    iget v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$DisableCallForwardingResMessage;->mRegister:I

    return v0
.end method

.method public getResultInt()I
    .locals 1

    .prologue
    .line 8150
    iget v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$DisableCallForwardingResMessage;->mResultInt:I

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
    .line 8163
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 8164
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "msgId"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$DisableCallForwardingResMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8165
    const-string v1, "result"

    iget v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$DisableCallForwardingResMessage;->mResultInt:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8166
    const-string v1, "forward_state"

    iget v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$DisableCallForwardingResMessage;->mRegister:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8167
    const-string v1, "time"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$DisableCallForwardingResMessage;->mDateTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8168
    const-string v1, "deviceid"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$DisableCallForwardingResMessage;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8169
    return-object v0
.end method
