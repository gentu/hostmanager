.class public final Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;
.super Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;
.source "HMJSONDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WappListInfoReqMessage"
.end annotation


# static fields
.field public static final APPS_IMAGE_DATA:Ljava/lang/String; = "appsimagedata"

.field public static final APPS_IMAGE_NAME:Ljava/lang/String; = "appsimagename"

.field public static final APPS_XML:Ljava/lang/String; = "appsxml"

.field public static final IMAGE_DATA_ARRAY:Ljava/lang/String; = "imagedataarray"

.field public static final IMAGE_NAME_ARRAY:Ljava/lang/String; = "imagenamearray"

.field public static final LIST:Ljava/lang/String; = "clocklist"

.field public static final LIST_NAME:Ljava/lang/String; = "wapplistname"

.field public static final SETTING_DATA_ARRAY:Ljava/lang/String; = "settingdataarray"

.field public static final SETTING_NAME_ARRAY:Ljava/lang/String; = "settinganmearray"


# instance fields
.field public mAppsImageData:Ljava/lang/String;

.field public mAppsImageName:Ljava/lang/String;

.field public mAppsXml:Ljava/lang/String;

.field public mImageListData:[Ljava/lang/String;

.field public mImageListName:[Ljava/lang/String;

.field public mSettingListData:[Ljava/lang/String;

.field public mSettingListName:[Ljava/lang/String;

.field public mWapplist:Ljava/lang/String;

.field public mWapplistName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 3219
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;-><init>()V

    .line 3220
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_WAPPS_LIST_REQ:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->msgId:Ljava/lang/String;

    .line 3221
    iput-object p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mDeviceId:Ljava/lang/String;

    .line 3222
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "listData"    # Ljava/lang/String;
    .param p2, "listName"    # Ljava/lang/String;
    .param p3, "settingListName"    # [Ljava/lang/String;
    .param p4, "settingListData"    # [Ljava/lang/String;
    .param p5, "imageListName"    # [Ljava/lang/String;
    .param p6, "imageListData"    # [Ljava/lang/String;
    .param p7, "appsXml"    # Ljava/lang/String;
    .param p8, "appsImageName"    # Ljava/lang/String;
    .param p9, "appsImageData"    # Ljava/lang/String;
    .param p10, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 3225
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;-><init>()V

    .line 3226
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_WAPPS_LIST_REQ:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->msgId:Ljava/lang/String;

    .line 3227
    iput-object p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mWapplist:Ljava/lang/String;

    .line 3228
    iput-object p2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mWapplistName:Ljava/lang/String;

    .line 3229
    iput-object p3, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mSettingListName:[Ljava/lang/String;

    .line 3230
    iput-object p4, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mSettingListData:[Ljava/lang/String;

    .line 3231
    iput-object p5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mImageListName:[Ljava/lang/String;

    .line 3232
    iput-object p6, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mImageListData:[Ljava/lang/String;

    .line 3233
    iput-object p7, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mAppsXml:Ljava/lang/String;

    .line 3234
    iput-object p8, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mAppsImageName:Ljava/lang/String;

    .line 3235
    iput-object p9, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mAppsImageData:Ljava/lang/String;

    .line 3236
    iput-object p10, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mDeviceId:Ljava/lang/String;

    .line 3237
    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/lang/Object;)V
    .locals 13
    .param p1, "json"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 3312
    new-instance v6, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "json":Ljava/lang/Object;
    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3313
    .local v6, "jsonObj":Lorg/json/JSONObject;
    const-string v11, "clocklist"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mWapplist:Ljava/lang/String;

    .line 3314
    const-string v11, "wapplistname"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mWapplistName:Ljava/lang/String;

    .line 3317
    :try_start_0
    const-string v11, "settinganmearray"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 3318
    .local v9, "setting_names":Lorg/json/JSONArray;
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    iput-object v11, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mSettingListName:[Ljava/lang/String;

    .line 3319
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    .line 3320
    .local v10, "setting_names_count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v10, :cond_0

    .line 3321
    iget-object v12, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mSettingListName:[Ljava/lang/String;

    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    aput-object v11, v12, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3320
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3323
    .end local v1    # "i":I
    .end local v9    # "setting_names":Lorg/json/JSONArray;
    .end local v10    # "setting_names_count":I
    :catch_0
    move-exception v0

    .line 3324
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 3328
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    :try_start_1
    const-string v11, "settingdataarray"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 3329
    .local v7, "setting_datas":Lorg/json/JSONArray;
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    iput-object v11, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mSettingListData:[Ljava/lang/String;

    .line 3330
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 3331
    .local v8, "setting_datas_count":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v8, :cond_1

    .line 3332
    iget-object v12, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mSettingListData:[Ljava/lang/String;

    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    aput-object v11, v12, v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3331
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3334
    .end local v1    # "i":I
    .end local v7    # "setting_datas":Lorg/json/JSONArray;
    .end local v8    # "setting_datas_count":I
    :catch_1
    move-exception v0

    .line 3335
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 3339
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    :try_start_2
    const-string v11, "imagenamearray"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 3340
    .local v4, "image_names":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    iput-object v11, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mImageListName:[Ljava/lang/String;

    .line 3341
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 3342
    .local v5, "image_names_count":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v5, :cond_2

    .line 3343
    iget-object v12, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mImageListName:[Ljava/lang/String;

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    aput-object v11, v12, v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3342
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3345
    .end local v1    # "i":I
    .end local v4    # "image_names":Lorg/json/JSONArray;
    .end local v5    # "image_names_count":I
    :catch_2
    move-exception v0

    .line 3346
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 3350
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    :try_start_3
    const-string v11, "imagedataarray"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 3351
    .local v2, "image_datas":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    iput-object v11, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mImageListData:[Ljava/lang/String;

    .line 3352
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 3353
    .local v3, "image_datas_count":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v3, :cond_3

    .line 3354
    iget-object v12, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mImageListData:[Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    aput-object v11, v12, v1
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3353
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3356
    .end local v1    # "i":I
    .end local v2    # "image_datas":Lorg/json/JSONArray;
    .end local v3    # "image_datas_count":I
    :catch_3
    move-exception v0

    .line 3357
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 3361
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3
    :try_start_4
    const-string v11, "appsxml"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mAppsXml:Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 3367
    :goto_4
    :try_start_5
    const-string v11, "appsimagename"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mAppsImageName:Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 3373
    :goto_5
    :try_start_6
    const-string v11, "appsimagedata"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mAppsImageData:Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    .line 3378
    :goto_6
    const-string v11, "msgId"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->msgId:Ljava/lang/String;

    .line 3379
    return-void

    .line 3362
    :catch_4
    move-exception v0

    .line 3363
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 3368
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_5
    move-exception v0

    .line 3369
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5

    .line 3374
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_6
    move-exception v0

    .line 3375
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6
.end method

.method public getAppsImageData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3272
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mAppsImageData:Ljava/lang/String;

    return-object v0
.end method

.method public getAppsImageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3268
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mAppsImageName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppsXml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3264
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mAppsXml:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3198
    invoke-super {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageListData()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3260
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mImageListData:[Ljava/lang/String;

    return-object v0
.end method

.method public getImageListName()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3256
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mImageListName:[Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3198
    invoke-super {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;->getMsgId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSettingListData()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3252
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mSettingListData:[Ljava/lang/String;

    return-object v0
.end method

.method public getSettingListName()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3248
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mSettingListName:[Ljava/lang/String;

    return-object v0
.end method

.method public getWappList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3240
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mWapplist:Ljava/lang/String;

    return-object v0
.end method

.method public getWappListName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3244
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mWapplistName:Ljava/lang/String;

    return-object v0
.end method

.method public toJSON()Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 3277
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 3278
    .local v3, "json":Lorg/json/JSONObject;
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 3279
    .local v6, "setting_names":Lorg/json/JSONArray;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 3280
    .local v5, "setting_datas":Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 3281
    .local v2, "image_names":Lorg/json/JSONArray;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 3283
    .local v1, "image_datas":Lorg/json/JSONArray;
    iget-object v9, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mSettingListName:[Ljava/lang/String;

    array-length v10, v9

    move v8, v7

    :goto_0
    if-ge v8, v10, :cond_0

    aget-object v4, v9, v8

    .line 3284
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 3283
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3286
    .end local v4    # "s":Ljava/lang/String;
    :cond_0
    iget-object v9, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mSettingListData:[Ljava/lang/String;

    array-length v10, v9

    move v8, v7

    :goto_1
    if-ge v8, v10, :cond_1

    aget-object v4, v9, v8

    .line 3287
    .restart local v4    # "s":Ljava/lang/String;
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 3286
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 3289
    .end local v4    # "s":Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mImageListName:[Ljava/lang/String;

    array-length v10, v9

    move v8, v7

    :goto_2
    if-ge v8, v10, :cond_2

    aget-object v0, v9, v8

    .line 3290
    .local v0, "i":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 3289
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 3292
    .end local v0    # "i":Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mImageListData:[Ljava/lang/String;

    array-length v9, v8

    :goto_3
    if-ge v7, v9, :cond_3

    aget-object v0, v8, v7

    .line 3293
    .restart local v0    # "i":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 3292
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 3296
    .end local v0    # "i":Ljava/lang/String;
    :cond_3
    const-string v7, "msgId"

    iget-object v8, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3297
    const-string v7, "wapplistname"

    iget-object v8, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mWapplistName:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3298
    const-string v7, "clocklist"

    iget-object v8, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mWapplist:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3299
    const-string v7, "settinganmearray"

    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3300
    const-string v7, "settingdataarray"

    invoke-virtual {v3, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3301
    const-string v7, "imagenamearray"

    invoke-virtual {v3, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3302
    const-string v7, "imagedataarray"

    invoke-virtual {v3, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3303
    const-string v7, "appsxml"

    iget-object v8, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mAppsXml:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3304
    const-string v7, "appsimagename"

    iget-object v8, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mAppsImageName:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3305
    const-string v7, "appsimagedata"

    iget-object v8, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mAppsImageData:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3306
    const-string v7, "deviceid"

    iget-object v8, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappListInfoReqMessage;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3307
    return-object v3
.end method
