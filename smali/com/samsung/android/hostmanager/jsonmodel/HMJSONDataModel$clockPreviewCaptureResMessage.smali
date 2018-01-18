.class public final Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$clockPreviewCaptureResMessage;
.super Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;
.source "HMJSONDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "clockPreviewCaptureResMessage"
.end annotation


# static fields
.field public static final CLOCK_PKG_NAME:Ljava/lang/String; = "clockPkgName"


# instance fields
.field mClockPkgName:Ljava/lang/String;

.field mImageData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1841
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;-><init>()V

    .line 1839
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$clockPreviewCaptureResMessage;->mClockPkgName:Ljava/lang/String;

    .line 1842
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_CLOCK_PREVIEW_CAPTURE_RES:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$clockPreviewCaptureResMessage;->msgId:Ljava/lang/String;

    .line 1843
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "imageData"    # Ljava/lang/String;
    .param p2, "clockPkgName"    # Ljava/lang/String;
    .param p3, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 1845
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;-><init>()V

    .line 1839
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$clockPreviewCaptureResMessage;->mClockPkgName:Ljava/lang/String;

    .line 1846
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_CLOCK_PREVIEW_CAPTURE_RES:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$clockPreviewCaptureResMessage;->msgId:Ljava/lang/String;

    .line 1847
    iput-object p2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$clockPreviewCaptureResMessage;->mClockPkgName:Ljava/lang/String;

    .line 1848
    iput-object p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$clockPreviewCaptureResMessage;->mImageData:Ljava/lang/String;

    .line 1849
    iput-object p3, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$clockPreviewCaptureResMessage;->mDeviceId:Ljava/lang/String;

    .line 1850
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
    .line 1872
    new-instance v1, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "json":Ljava/lang/Object;
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1873
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string v2, "msgId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$clockPreviewCaptureResMessage;->msgId:Ljava/lang/String;

    .line 1875
    :try_start_0
    const-string v2, "clockPkgName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$clockPreviewCaptureResMessage;->mClockPkgName:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1880
    :goto_0
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$clockPreviewCaptureResMessage;->mImageData:Ljava/lang/String;

    .line 1881
    return-void

    .line 1876
    :catch_0
    move-exception v0

    .line 1877
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;->TAG:Ljava/lang/String;

    const-string v3, "clockPreviewCaptureResMessage fromJson : mClockPkgName is not received."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getClockPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1857
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$clockPreviewCaptureResMessage;->mClockPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getImageData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$clockPreviewCaptureResMessage;->mImageData:Ljava/lang/String;

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
    .line 1862
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1863
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "msgId"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$clockPreviewCaptureResMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1864
    const-string v1, "clockPkgName"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$clockPreviewCaptureResMessage;->mClockPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1865
    const-string v1, "data"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$clockPreviewCaptureResMessage;->mImageData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1866
    const-string v1, "deviceid"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$clockPreviewCaptureResMessage;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1867
    return-object v0
.end method
