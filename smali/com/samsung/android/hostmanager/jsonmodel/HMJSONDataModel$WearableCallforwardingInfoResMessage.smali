.class public final Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoResMessage;
.super Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;
.source "HMJSONDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WearableCallforwardingInfoResMessage"
.end annotation


# static fields
.field public static final CFWD_DISABLE_NUM:Ljava/lang/String; = "cfwdDisableNum"

.field public static final CFWD_OPTION:Ljava/lang/String; = "cfwdOption"

.field public static final CFWD_SET_NUM:Ljava/lang/String; = "cfwdSetNum"

.field public static final CFWD_SUPPORT:Ljava/lang/String; = "cfwdSupport"

.field public static final CFWD_TYPE:Ljava/lang/String; = "cfwdType"


# instance fields
.field mCfwdDisableNum:Ljava/lang/String;

.field mCfwdOption:Ljava/lang/String;

.field mCfwdSetNum:Ljava/lang/String;

.field mCfwdSupport:Ljava/lang/Boolean;

.field mCfwdType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8305
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;-><init>()V

    .line 8306
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_WEARABLE_CALLFORWARDING_INFO_RES:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoResMessage;->msgId:Ljava/lang/String;

    .line 8307
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "cfwdSupport"    # Ljava/lang/Boolean;
    .param p2, "cfwdType"    # Ljava/lang/String;
    .param p3, "cfwdOption"    # Ljava/lang/String;
    .param p4, "cfwdSetNum"    # Ljava/lang/String;
    .param p5, "cfwdDisableNum"    # Ljava/lang/String;
    .param p6, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 8310
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;-><init>()V

    .line 8311
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_WEARABLE_CALLFORWARDING_INFO_RES:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoResMessage;->msgId:Ljava/lang/String;

    .line 8312
    iput-object p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoResMessage;->mCfwdSupport:Ljava/lang/Boolean;

    .line 8313
    iput-object p2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoResMessage;->mCfwdType:Ljava/lang/String;

    .line 8314
    iput-object p3, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoResMessage;->mCfwdOption:Ljava/lang/String;

    .line 8315
    iput-object p4, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoResMessage;->mCfwdSetNum:Ljava/lang/String;

    .line 8316
    iput-object p5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoResMessage;->mCfwdDisableNum:Ljava/lang/String;

    .line 8317
    iput-object p6, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoResMessage;->mDeviceId:Ljava/lang/String;

    .line 8318
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
    .line 8355
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "json":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8356
    .local v0, "jsonObj":Lorg/json/JSONObject;
    const-string v1, "msgId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoResMessage;->msgId:Ljava/lang/String;

    .line 8357
    const-string v1, "cfwdSupport"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoResMessage;->mCfwdSupport:Ljava/lang/Boolean;

    .line 8358
    const-string v1, "cfwdType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoResMessage;->mCfwdType:Ljava/lang/String;

    .line 8359
    const-string v1, "cfwdOption"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoResMessage;->mCfwdOption:Ljava/lang/String;

    .line 8360
    const-string v1, "cfwdSetNum"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoResMessage;->mCfwdOption:Ljava/lang/String;

    .line 8361
    const-string v1, "cfwdDisableNum"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoResMessage;->mCfwdDisableNum:Ljava/lang/String;

    .line 8362
    return-void
.end method

.method public getCfwdDisableNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8337
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoResMessage;->mCfwdDisableNum:Ljava/lang/String;

    return-object v0
.end method

.method public getCfwdOption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8329
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoResMessage;->mCfwdOption:Ljava/lang/String;

    return-object v0
.end method

.method public getCfwdSetNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8333
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoResMessage;->mCfwdSetNum:Ljava/lang/String;

    return-object v0
.end method

.method public getCfwdSupport()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 8321
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoResMessage;->mCfwdSupport:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCfwdType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8325
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoResMessage;->mCfwdType:Ljava/lang/String;

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
    .line 8342
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 8343
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "msgId"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoResMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8344
    const-string v1, "cfwdSupport"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoResMessage;->mCfwdSupport:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8345
    const-string v1, "cfwdType"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoResMessage;->mCfwdType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8346
    const-string v1, "cfwdOption"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoResMessage;->mCfwdOption:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8347
    const-string v1, "cfwdSetNum"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoResMessage;->mCfwdSetNum:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8348
    const-string v1, "cfwdDisableNum"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoResMessage;->mCfwdDisableNum:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8349
    const-string v1, "deviceid"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WearableCallforwardingInfoResMessage;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8350
    return-object v0
.end method
