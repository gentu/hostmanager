.class public final Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardReqMessage;
.super Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;
.source "HMJSONDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "settingCallForwardReqMessage"
.end annotation


# static fields
.field public static final MODE:Ljava/lang/String; = "type"

.field public static final PHONE_NUMBER:Ljava/lang/String; = "phone_number"

.field public static final REGISTER_TYPE:Ljava/lang/String; = "forward_state"

.field public static final SELECTED_SIM:Ljava/lang/String; = "selected_sim"


# instance fields
.field public mCFMode:Ljava/lang/String;

.field public mPhonenumber:Ljava/lang/String;

.field public mRegister:I

.field public mSelectedSIM:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7239
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;-><init>()V

    .line 7240
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_SETTING_CALL_FORWARDING_REQ:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardReqMessage;->msgId:Ljava/lang/String;

    .line 7241
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "resgister"    # I
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "selectedSIM"    # I
    .param p4, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 7248
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;-><init>()V

    .line 7249
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_SETTING_CALL_FORWARDING_REQ:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardReqMessage;->msgId:Ljava/lang/String;

    .line 7250
    iput p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardReqMessage;->mRegister:I

    .line 7251
    iput-object p2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardReqMessage;->mPhonenumber:Ljava/lang/String;

    .line 7252
    iput p3, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardReqMessage;->mSelectedSIM:I

    .line 7253
    iput-object p4, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardReqMessage;->mDeviceId:Ljava/lang/String;

    .line 7254
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 7243
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;-><init>()V

    .line 7244
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_SETTING_CALL_FORWARDING_REQ:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardReqMessage;->msgId:Ljava/lang/String;

    .line 7245
    iput-object p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardReqMessage;->mDeviceId:Ljava/lang/String;

    .line 7246
    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/lang/Object;)V
    .locals 3
    .param p1, "jsonObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 7286
    new-instance v1, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "jsonObj":Ljava/lang/Object;
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7287
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "msgId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardReqMessage;->msgId:Ljava/lang/String;

    .line 7288
    const-string v2, "forward_state"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardReqMessage;->mRegister:I

    .line 7289
    const-string v2, "phone_number"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardReqMessage;->mPhonenumber:Ljava/lang/String;

    .line 7290
    const-string v2, "selected_sim"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardReqMessage;->mSelectedSIM:I

    .line 7292
    :try_start_0
    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardReqMessage;->mCFMode:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7296
    :goto_0
    return-void

    .line 7293
    :catch_0
    move-exception v0

    .line 7294
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCFMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7269
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardReqMessage;->mCFMode:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7228
    invoke-super {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7228
    invoke-super {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;->getMsgId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7261
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardReqMessage;->mPhonenumber:Ljava/lang/String;

    return-object v0
.end method

.method public getRegisterType()I
    .locals 1

    .prologue
    .line 7257
    iget v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardReqMessage;->mRegister:I

    return v0
.end method

.method public getSelectedSIM()I
    .locals 1

    .prologue
    .line 7265
    iget v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardReqMessage;->mSelectedSIM:I

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
    .line 7274
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7275
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "msgId"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardReqMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7276
    const-string v1, "forward_state"

    iget v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardReqMessage;->mRegister:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7277
    const-string v1, "phone_number"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardReqMessage;->mPhonenumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7278
    const-string v1, "selected_sim"

    iget v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardReqMessage;->mSelectedSIM:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7279
    const-string v1, "deviceid"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardReqMessage;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7280
    const-string v1, "type"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardReqMessage;->mCFMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7281
    return-object v0
.end method
