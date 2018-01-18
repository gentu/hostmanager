.class public final Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardResMessage;
.super Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;
.source "HMJSONDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "settingCallForwardResMessage"
.end annotation


# static fields
.field public static final CALLFORWARDING_ACTION_SIM1:Ljava/lang/String; = "LastCallForwardingAction"

.field public static final CALLFORWARDING_ACTION_SIM2:Ljava/lang/String; = "LastCallForwardingActionSim2"

.field public static final DATATIME:Ljava/lang/String; = "time"

.field public static final REASON:Ljava/lang/String; = "reason"

.field public static final REGISTER_TYPE:Ljava/lang/String; = "forward_state"

.field public static final RESULT_SIM1:Ljava/lang/String; = "result"

.field public static final RESULT_SIM2:Ljava/lang/String; = "result_sim2"


# instance fields
.field public mDateTime:Ljava/lang/String;

.field public mLastCallForwardingActionSim1:I

.field public mLastCallForwardingActionSim2:I

.field private mReason:I

.field public mRegister:I

.field public mResultInt:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 7315
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;-><init>()V

    .line 7316
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_SETTING_CALL_FORWARDING_RES:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardResMessage;->msgId:Ljava/lang/String;

    .line 7317
    iput-object p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardResMessage;->mDeviceId:Ljava/lang/String;

    .line 7318
    return-void
.end method

.method public constructor <init>([IILjava/lang/String;IILjava/lang/String;I)V
    .locals 1
    .param p1, "Result"    # [I
    .param p2, "register"    # I
    .param p3, "datatime"    # Ljava/lang/String;
    .param p4, "lastactionSIM1"    # I
    .param p5, "lastactionSIM2"    # I
    .param p6, "deviceID"    # Ljava/lang/String;
    .param p7, "reason"    # I

    .prologue
    .line 7320
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;-><init>()V

    .line 7321
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_SETTING_CALL_FORWARDING_RES:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardResMessage;->msgId:Ljava/lang/String;

    .line 7322
    iput-object p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardResMessage;->mResultInt:[I

    .line 7323
    iput p2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardResMessage;->mRegister:I

    .line 7324
    iput-object p3, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardResMessage;->mDateTime:Ljava/lang/String;

    .line 7325
    iput p4, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardResMessage;->mLastCallForwardingActionSim1:I

    .line 7326
    iput p5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardResMessage;->mLastCallForwardingActionSim2:I

    .line 7327
    iput-object p6, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardResMessage;->mDeviceId:Ljava/lang/String;

    .line 7328
    iput p7, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardResMessage;->mReason:I

    .line 7329
    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/lang/Object;)V
    .locals 4
    .param p1, "json"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 7364
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "json":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7365
    .local v0, "jsonObj":Lorg/json/JSONObject;
    const-string v1, "msgId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardResMessage;->msgId:Ljava/lang/String;

    .line 7366
    iget-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardResMessage;->mResultInt:[I

    if-nez v1, :cond_0

    .line 7367
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardResMessage;->mResultInt:[I

    .line 7369
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardResMessage;->mResultInt:[I

    const/4 v2, 0x0

    const-string v3, "result"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 7370
    iget-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardResMessage;->mResultInt:[I

    const/4 v2, 0x1

    const-string v3, "result_sim2"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 7371
    const-string v1, "forward_state"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardResMessage;->mRegister:I

    .line 7372
    const-string v1, "time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardResMessage;->mDateTime:Ljava/lang/String;

    .line 7373
    const-string v1, "LastCallForwardingAction"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardResMessage;->mLastCallForwardingActionSim1:I

    .line 7374
    const-string v1, "LastCallForwardingActionSim2"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardResMessage;->mLastCallForwardingActionSim2:I

    .line 7375
    const-string v1, "reason"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardResMessage;->mReason:I

    .line 7376
    return-void
.end method

.method public getDatatime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7336
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardResMessage;->mDateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getLastActionSIM1()I
    .locals 1

    .prologue
    .line 7340
    iget v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardResMessage;->mLastCallForwardingActionSim1:I

    return v0
.end method

.method public getLastActionSIM2()I
    .locals 1

    .prologue
    .line 7344
    iget v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardResMessage;->mLastCallForwardingActionSim2:I

    return v0
.end method

.method public getRegisterType()I
    .locals 1

    .prologue
    .line 7332
    iget v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardResMessage;->mRegister:I

    return v0
.end method

.method public toJSON()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 7349
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7350
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "msgId"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardResMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7351
    const-string v1, "result"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardResMessage;->mResultInt:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7352
    const-string v1, "result_sim2"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardResMessage;->mResultInt:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7353
    const-string v1, "forward_state"

    iget v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardResMessage;->mRegister:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7354
    const-string v1, "time"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardResMessage;->mDateTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7355
    const-string v1, "LastCallForwardingAction"

    iget v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardResMessage;->mLastCallForwardingActionSim1:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7356
    const-string v1, "LastCallForwardingActionSim2"

    iget v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardResMessage;->mLastCallForwardingActionSim2:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7357
    const-string v1, "deviceid"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardResMessage;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7358
    const-string v1, "reason"

    iget v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingCallForwardResMessage;->mReason:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7359
    return-object v0
.end method
