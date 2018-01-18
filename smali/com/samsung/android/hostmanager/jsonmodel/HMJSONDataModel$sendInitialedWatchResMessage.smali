.class public final Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendInitialedWatchResMessage;
.super Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;
.source "HMJSONDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "sendInitialedWatchResMessage"
.end annotation


# instance fields
.field isInitialedWatch:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4437
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;-><init>()V

    .line 4438
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_FIRST_CONNECTION_RES:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendInitialedWatchResMessage;->msgId:Ljava/lang/String;

    .line 4439
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isFirst"    # Z

    .prologue
    .line 4441
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;-><init>()V

    .line 4442
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_FIRST_CONNECTION_RES:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendInitialedWatchResMessage;->msgId:Ljava/lang/String;

    .line 4443
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendInitialedWatchResMessage;->isInitialedWatch:Z

    .line 4444
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
    .line 4460
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "jsonObj":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4461
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "msgId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendInitialedWatchResMessage;->msgId:Ljava/lang/String;

    .line 4462
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendInitialedWatchResMessage;->isInitialedWatch:Z

    .line 4463
    return-void
.end method

.method public getIsInitialedWatch()Z
    .locals 1

    .prologue
    .line 4447
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendInitialedWatchResMessage;->isInitialedWatch:Z

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
    .line 4452
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4453
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "msgId"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendInitialedWatchResMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4454
    const-string v1, "data"

    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$sendInitialedWatchResMessage;->isInitialedWatch:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 4455
    return-object v0
.end method
