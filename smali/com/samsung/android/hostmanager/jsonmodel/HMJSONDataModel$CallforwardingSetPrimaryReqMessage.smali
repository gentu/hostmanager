.class public final Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$CallforwardingSetPrimaryReqMessage;
.super Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;
.source "HMJSONDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallforwardingSetPrimaryReqMessage"
.end annotation


# static fields
.field public static final TSHARE_CFD_STATE:Ljava/lang/String; = "tshare_cfd_state"


# instance fields
.field mTsharecfdstate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8369
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;-><init>()V

    .line 8370
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_CALLFORWARDING_SET_PRIMARY_REQ:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$CallforwardingSetPrimaryReqMessage;->msgId:Ljava/lang/String;

    .line 8371
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tsharecfwdType"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 8373
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;-><init>()V

    .line 8374
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_CALLFORWARDING_SET_PRIMARY_REQ:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$CallforwardingSetPrimaryReqMessage;->msgId:Ljava/lang/String;

    .line 8375
    iput-object p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$CallforwardingSetPrimaryReqMessage;->mTsharecfdstate:Ljava/lang/String;

    .line 8376
    iput-object p2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$CallforwardingSetPrimaryReqMessage;->mDeviceId:Ljava/lang/String;

    .line 8377
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
    .line 8394
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "json":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8395
    .local v0, "jsonObj":Lorg/json/JSONObject;
    const-string v1, "msgId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$CallforwardingSetPrimaryReqMessage;->msgId:Ljava/lang/String;

    .line 8396
    const-string v1, "tshare_cfd_state"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$CallforwardingSetPrimaryReqMessage;->mTsharecfdstate:Ljava/lang/String;

    .line 8397
    return-void
.end method

.method public bridge synthetic getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8365
    invoke-super {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8365
    invoke-super {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;->getMsgId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gettshareCfwdstate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8380
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$CallforwardingSetPrimaryReqMessage;->mTsharecfdstate:Ljava/lang/String;

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
    .line 8385
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 8386
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "msgId"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$CallforwardingSetPrimaryReqMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8387
    const-string v1, "tshare_cfd_state"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$CallforwardingSetPrimaryReqMessage;->mTsharecfdstate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8388
    const-string v1, "deviceid"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$CallforwardingSetPrimaryReqMessage;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8389
    return-object v0
.end method
