.class public final Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$InstallHostAppResMessage;
.super Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;
.source "HMJSONDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstallHostAppResMessage"
.end annotation


# static fields
.field public static final RESULT:Ljava/lang/String; = "result"


# instance fields
.field public mResult:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8537
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;-><init>()V

    .line 8538
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_INSTALL_HOST_APP_RES:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$InstallHostAppResMessage;->msgId:Ljava/lang/String;

    .line 8539
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "Result"    # Ljava/lang/String;
    .param p2, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 8541
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;-><init>()V

    .line 8542
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_INSTALL_HOST_APP_RES:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$InstallHostAppResMessage;->msgId:Ljava/lang/String;

    .line 8543
    iput-object p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$InstallHostAppResMessage;->mResult:Ljava/lang/String;

    .line 8544
    iput-object p2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$InstallHostAppResMessage;->mDeviceId:Ljava/lang/String;

    .line 8545
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
    .line 8562
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "json":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8563
    .local v0, "jsonObj":Lorg/json/JSONObject;
    const-string v1, "msgId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$InstallHostAppResMessage;->msgId:Ljava/lang/String;

    .line 8564
    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$InstallHostAppResMessage;->mResult:Ljava/lang/String;

    .line 8565
    return-void
.end method

.method public getRegisterType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8548
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$InstallHostAppResMessage;->mResult:Ljava/lang/String;

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
    .line 8553
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 8554
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "msgId"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$InstallHostAppResMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8555
    const-string v1, "result"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$InstallHostAppResMessage;->mResult:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8556
    const-string v1, "deviceid"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$InstallHostAppResMessage;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8557
    return-object v0
.end method
