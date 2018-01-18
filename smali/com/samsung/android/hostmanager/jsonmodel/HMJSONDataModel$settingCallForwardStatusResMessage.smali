.class public final Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardStatusResMessage;
.super Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;
.source "HMJSONDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "settingCallForwardStatusResMessage"
.end annotation


# static fields
.field public static final CALLFORWARDING_ACTION_SIM1:Ljava/lang/String; = "LastCallForwardingAction"

.field public static final CALLFORWARDING_ACTION_SIM2:Ljava/lang/String; = "LastCallForwardingActionSim2"

.field public static final PHONE_NUMBER:Ljava/lang/String; = "phone_number"

.field public static final RESULT_SIM1:Ljava/lang/String; = "result"

.field public static final RESULT_SIM2:Ljava/lang/String; = "result_sim2"


# instance fields
.field public mLastCallForwardingActionSim1:I

.field public mLastCallForwardingActionSim2:I

.field public mPhonenumber:Ljava/lang/String;

.field public mResultInt:[I


# direct methods
.method public constructor <init>([ILjava/lang/String;IILjava/lang/String;)V
    .locals 1
    .param p1, "Result"    # [I
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "lastactionSIM1"    # I
    .param p4, "lastactionSIM2"    # I
    .param p5, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 7415
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;-><init>()V

    .line 7416
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_SETTING_CALL_FORWARDING_STATUS_RES:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardStatusResMessage;->msgId:Ljava/lang/String;

    .line 7417
    iput-object p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardStatusResMessage;->mResultInt:[I

    .line 7418
    iput-object p2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardStatusResMessage;->mPhonenumber:Ljava/lang/String;

    .line 7419
    iput p3, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardStatusResMessage;->mLastCallForwardingActionSim1:I

    .line 7420
    iput p4, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardStatusResMessage;->mLastCallForwardingActionSim2:I

    .line 7421
    iput-object p5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardStatusResMessage;->mDeviceId:Ljava/lang/String;

    .line 7422
    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/lang/Object;)V
    .locals 4
    .param p1, "jsonObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 7443
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "jsonObj":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7444
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "msgId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardStatusResMessage;->msgId:Ljava/lang/String;

    .line 7445
    iget-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardStatusResMessage;->mResult:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 7446
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardStatusResMessage;->mResultInt:[I

    .line 7448
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardStatusResMessage;->mResultInt:[I

    const/4 v2, 0x0

    const-string v3, "result"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 7449
    iget-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardStatusResMessage;->mResultInt:[I

    const/4 v2, 0x1

    const-string v3, "result_sim2"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 7450
    const-string v1, "phone_number"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardStatusResMessage;->mPhonenumber:Ljava/lang/String;

    .line 7451
    const-string v1, "LastCallForwardingAction"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardStatusResMessage;->mLastCallForwardingActionSim1:I

    .line 7452
    const-string v1, "LastCallForwardingActionSim2"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardStatusResMessage;->mLastCallForwardingActionSim2:I

    .line 7453
    return-void
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7425
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardStatusResMessage;->mPhonenumber:Ljava/lang/String;

    return-object v0
.end method

.method public toJSON()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 7430
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7431
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "msgId"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardStatusResMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7432
    const-string v1, "result"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardStatusResMessage;->mResultInt:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7433
    const-string v1, "result_sim2"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardStatusResMessage;->mResultInt:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7434
    const-string v1, "phone_number"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardStatusResMessage;->mPhonenumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7435
    const-string v1, "LastCallForwardingAction"

    iget v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardStatusResMessage;->mLastCallForwardingActionSim1:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7436
    const-string v1, "LastCallForwardingActionSim2"

    iget v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardStatusResMessage;->mLastCallForwardingActionSim2:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7437
    const-string v1, "deviceid"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardStatusResMessage;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7438
    return-object v0
.end method
