.class public final Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeGalleryDelRes;
.super Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;
.source "HMJSONDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HomeGalleryDelRes"
.end annotation


# static fields
.field public static final DEVICE_ID:Ljava/lang/String; = "deviceid"

.field public static final REASON:Ljava/lang/String; = "reason"

.field public static final RESULT:Ljava/lang/String; = "result"


# instance fields
.field public DeviceId:Ljava/lang/String;

.field private reason:I

.field private result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6570
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;-><init>()V

    .line 6571
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_HOME_GALLERY_DEL_RES:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeGalleryDelRes;->msgId:Ljava/lang/String;

    .line 6572
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "reason"    # I
    .param p3, "DeviceId"    # Ljava/lang/String;

    .prologue
    .line 6574
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;-><init>()V

    .line 6575
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_HOME_GALLERY_DEL_RES:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeGalleryDelRes;->msgId:Ljava/lang/String;

    .line 6576
    iput-object p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeGalleryDelRes;->result:Ljava/lang/String;

    .line 6577
    iput p2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeGalleryDelRes;->reason:I

    .line 6578
    iput-object p3, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeGalleryDelRes;->DeviceId:Ljava/lang/String;

    .line 6579
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
    .line 6593
    new-instance v1, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "jsonObj":Ljava/lang/Object;
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6594
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "msgId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeGalleryDelRes;->msgId:Ljava/lang/String;

    .line 6595
    const-string v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeGalleryDelRes;->result:Ljava/lang/String;

    .line 6596
    const-string v2, "reason"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeGalleryDelRes;->reason:I

    .line 6598
    :try_start_0
    const-string v2, "deviceid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeGalleryDelRes;->DeviceId:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6603
    :goto_0
    return-void

    .line 6599
    :catch_0
    move-exception v0

    .line 6600
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;->TAG:Ljava/lang/String;

    const-string v3, "MGR_HOME_BG_REQ doesn\'t have DEVICE_ID"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6601
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getReason()I
    .locals 1

    .prologue
    .line 6612
    iget v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeGalleryDelRes;->reason:I

    return v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6607
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeGalleryDelRes;->result:Ljava/lang/String;

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
    .line 6583
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6584
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "msgId"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeGalleryDelRes;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6585
    const-string v1, "result"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeGalleryDelRes;->result:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6586
    const-string v1, "reason"

    iget v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeGalleryDelRes;->reason:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6587
    const-string v1, "deviceid"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HomeGalleryDelRes;->DeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6588
    return-object v0
.end method
