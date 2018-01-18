.class public final Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeGalleryDelReq;
.super Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;
.source "HMJSONDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HomeGalleryDelReq"
.end annotation


# static fields
.field public static final DEVICE_ID:Ljava/lang/String; = "deviceid"

.field public static final FILENAME:Ljava/lang/String; = "filename"


# instance fields
.field public DeviceId:Ljava/lang/String;

.field private fileNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6512
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;-><init>()V

    .line 6513
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_HOME_GALLERY_DEL_REQ:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeGalleryDelReq;->msgId:Ljava/lang/String;

    .line 6514
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "fileNames"    # [Ljava/lang/String;
    .param p2, "DeviceId"    # Ljava/lang/String;

    .prologue
    .line 6516
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;-><init>()V

    .line 6517
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_HOME_GALLERY_DEL_REQ:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeGalleryDelReq;->msgId:Ljava/lang/String;

    .line 6518
    iput-object p2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeGalleryDelReq;->DeviceId:Ljava/lang/String;

    .line 6519
    iput-object p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeGalleryDelReq;->fileNames:[Ljava/lang/String;

    .line 6520
    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/lang/Object;)V
    .locals 7
    .param p1, "jsonObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 6539
    new-instance v4, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "jsonObj":Ljava/lang/Object;
    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6540
    .local v4, "json":Lorg/json/JSONObject;
    const-string v5, "msgId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeGalleryDelReq;->msgId:Ljava/lang/String;

    .line 6542
    :try_start_0
    const-string v5, "deviceid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeGalleryDelReq;->DeviceId:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6548
    :goto_0
    const-string v5, "filename"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 6549
    .local v0, "data":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeGalleryDelReq;->fileNames:[Ljava/lang/String;

    .line 6550
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 6551
    .local v1, "data_count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 6552
    iget-object v6, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeGalleryDelReq;->fileNames:[Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v6, v3

    .line 6551
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6543
    .end local v0    # "data":Lorg/json/JSONArray;
    .end local v1    # "data_count":I
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 6544
    .local v2, "e":Lorg/json/JSONException;
    sget-object v5, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;->TAG:Ljava/lang/String;

    const-string v6, "MGR_HOME_BG_REQ doesn\'t have DEVICE_ID"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6545
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 6554
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v0    # "data":Lorg/json/JSONArray;
    .restart local v1    # "data_count":I
    .restart local v3    # "i":I
    :cond_0
    return-void
.end method

.method public bridge synthetic getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6505
    invoke-super {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 6557
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeGalleryDelReq;->fileNames:[Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6505
    invoke-super {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;->getMsgId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJSON()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 6524
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 6525
    .local v1, "json":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 6527
    .local v0, "data":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeGalleryDelReq;->fileNames:[Ljava/lang/String;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v2, v4, v3

    .line 6528
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 6527
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6531
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    const-string v3, "msgId"

    iget-object v4, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeGalleryDelReq;->msgId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6532
    const-string v3, "deviceid"

    iget-object v4, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeGalleryDelReq;->DeviceId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6533
    const-string v3, "filename"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6534
    return-object v1
.end method
