.class public final Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeBGWallpaperReqMessage;
.super Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;
.source "HMJSONDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HomeBGWallpaperReqMessage"
.end annotation


# instance fields
.field private data:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 6298
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;-><init>()V

    .line 6299
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_BG_WALLPAPER_IMG_REQ:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeBGWallpaperReqMessage;->msgId:Ljava/lang/String;

    .line 6300
    iput-object p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeBGWallpaperReqMessage;->mDeviceId:Ljava/lang/String;

    .line 6301
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1
    .param p1, "data"    # Z
    .param p2, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 6303
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;-><init>()V

    .line 6304
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_BG_WALLPAPER_IMG_REQ:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeBGWallpaperReqMessage;->msgId:Ljava/lang/String;

    .line 6305
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeBGWallpaperReqMessage;->data:Z

    .line 6306
    iput-object p2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeBGWallpaperReqMessage;->mDeviceId:Ljava/lang/String;

    .line 6307
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
    .line 6320
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "jsonObj":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6321
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "msgId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeBGWallpaperReqMessage;->msgId:Ljava/lang/String;

    .line 6322
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeBGWallpaperReqMessage;->data:Z

    .line 6323
    return-void
.end method

.method public getData()Z
    .locals 1

    .prologue
    .line 6326
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeBGWallpaperReqMessage;->data:Z

    return v0
.end method

.method public bridge synthetic getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6295
    invoke-super {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6295
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
    .line 6311
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6312
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "msgId"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeBGWallpaperReqMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6313
    const-string v1, "data"

    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeBGWallpaperReqMessage;->data:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 6314
    const-string v1, "deviceid"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeBGWallpaperReqMessage;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6315
    return-object v0
.end method
