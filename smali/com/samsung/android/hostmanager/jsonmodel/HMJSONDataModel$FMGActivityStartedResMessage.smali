.class public final Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FMGActivityStartedResMessage;
.super Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;
.source "HMJSONDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FMGActivityStartedResMessage"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6120
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;-><init>()V

    .line 6121
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_FIND_MY_WATCH_ACTIVITY_START_ALERT_RES:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FMGActivityStartedResMessage;->msgId:Ljava/lang/String;

    .line 6122
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
    .line 6133
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "json":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6134
    .local v0, "jsonObj":Lorg/json/JSONObject;
    const-string v1, "msgId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FMGActivityStartedResMessage;->msgId:Ljava/lang/String;

    .line 6135
    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FMGActivityStartedResMessage;->mResult:Ljava/lang/String;

    .line 6136
    const-string v1, "reason"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FMGActivityStartedResMessage;->mReason:I

    .line 6138
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
    .line 6126
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6127
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "msgId"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FMGActivityStartedResMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6128
    return-object v0
.end method
