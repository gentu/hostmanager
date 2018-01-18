.class public final Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingUpdateSimInfoReqMessage;
.super Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;
.source "HMJSONDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "settingUpdateSimInfoReqMessage"
.end annotation


# static fields
.field public static final PhoneNumberSim1:Ljava/lang/String; = "PhoneNumberSim1"

.field public static final PhoneNumberSim2:Ljava/lang/String; = "PhoneNumberSim2"

.field public static final PhoneTypeSim1:Ljava/lang/String; = "PhoneTypeSim1"

.field public static final PhoneTypeSim2:Ljava/lang/String; = "PhoneTypeSim2"

.field public static final dualModel:Ljava/lang/String; = "dualModel"

.field public static final isMultiSim:Ljava/lang/String; = "isMultiSim"


# instance fields
.field public mDualModel:Z

.field public mIsMultiSim:Z

.field public mPhoneNumberSim1:Ljava/lang/String;

.field public mPhoneNumberSim2:Ljava/lang/String;

.field public mPhoneTypeSim1:Ljava/lang/String;

.field public mPhoneTypeSim2:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 7949
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;-><init>()V

    .line 7950
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_UPDATE_SIM_INFO_REQ:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingUpdateSimInfoReqMessage;->msgId:Ljava/lang/String;

    .line 7951
    iput-object p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingUpdateSimInfoReqMessage;->mDeviceId:Ljava/lang/String;

    .line 7952
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 1
    .param p1, "phoneTypeSim1"    # Ljava/lang/String;
    .param p2, "phoneTypeSim2"    # Ljava/lang/String;
    .param p3, "phoneNumberSim1"    # Ljava/lang/String;
    .param p4, "phoneNumberSim2"    # Ljava/lang/String;
    .param p5, "dualmodel"    # Z
    .param p6, "isMultiSim"    # Z
    .param p7, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 7955
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;-><init>()V

    .line 7956
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_UPDATE_SIM_INFO_REQ:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingUpdateSimInfoReqMessage;->msgId:Ljava/lang/String;

    .line 7957
    iput-object p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingUpdateSimInfoReqMessage;->mPhoneTypeSim1:Ljava/lang/String;

    .line 7958
    iput-object p2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingUpdateSimInfoReqMessage;->mPhoneTypeSim2:Ljava/lang/String;

    .line 7959
    iput-object p3, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingUpdateSimInfoReqMessage;->mPhoneNumberSim1:Ljava/lang/String;

    .line 7960
    iput-object p4, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingUpdateSimInfoReqMessage;->mPhoneNumberSim2:Ljava/lang/String;

    .line 7961
    iput-boolean p5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingUpdateSimInfoReqMessage;->mDualModel:Z

    .line 7962
    iput-boolean p6, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingUpdateSimInfoReqMessage;->mIsMultiSim:Z

    .line 7963
    iput-object p7, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingUpdateSimInfoReqMessage;->mDeviceId:Ljava/lang/String;

    .line 7964
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
    .line 7982
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "jsonObj":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7983
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "msgId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingUpdateSimInfoReqMessage;->msgId:Ljava/lang/String;

    .line 7984
    const-string v1, "PhoneTypeSim1"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingUpdateSimInfoReqMessage;->mPhoneTypeSim1:Ljava/lang/String;

    .line 7985
    const-string v1, "PhoneTypeSim2"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingUpdateSimInfoReqMessage;->mPhoneTypeSim2:Ljava/lang/String;

    .line 7986
    const-string v1, "PhoneNumberSim1"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingUpdateSimInfoReqMessage;->mPhoneNumberSim1:Ljava/lang/String;

    .line 7987
    const-string v1, "PhoneNumberSim2"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingUpdateSimInfoReqMessage;->mPhoneNumberSim2:Ljava/lang/String;

    .line 7988
    const-string v1, "dualModel"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingUpdateSimInfoReqMessage;->mDualModel:Z

    .line 7989
    const-string v1, "isMultiSim"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingUpdateSimInfoReqMessage;->mIsMultiSim:Z

    .line 7990
    return-void
.end method

.method public bridge synthetic getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7934
    invoke-super {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7934
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
    .line 7968
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7969
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "msgId"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingUpdateSimInfoReqMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7970
    const-string v1, "PhoneTypeSim1"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingUpdateSimInfoReqMessage;->mPhoneTypeSim1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7971
    const-string v1, "PhoneTypeSim2"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingUpdateSimInfoReqMessage;->mPhoneTypeSim2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7972
    const-string v1, "PhoneNumberSim1"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingUpdateSimInfoReqMessage;->mPhoneNumberSim1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7973
    const-string v1, "PhoneNumberSim2"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingUpdateSimInfoReqMessage;->mPhoneNumberSim2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7974
    const-string v1, "dualModel"

    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingUpdateSimInfoReqMessage;->mDualModel:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 7975
    const-string v1, "isMultiSim"

    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingUpdateSimInfoReqMessage;->mIsMultiSim:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 7976
    const-string v1, "deviceid"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$settingUpdateSimInfoReqMessage;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7977
    return-object v0
.end method
