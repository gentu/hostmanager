.class public final Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;
.super Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;
.source "HMJSONDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClockListInfoReqMessage"
.end annotation


# static fields
.field public static final FAVORITE_XML_FILE_DATA:Ljava/lang/String; = "favoritexmldata"

.field public static final IMAGE_DATA_ARRAY:Ljava/lang/String; = "imagedataarray"

.field public static final IMAGE_NAME_ARRAY:Ljava/lang/String; = "imagenamearray"

.field public static final LIST:Ljava/lang/String; = "clocklist"

.field public static final LIST_NAME:Ljava/lang/String; = "clocklistname"

.field public static final RESULT_DATA_ARRAY:Ljava/lang/String; = "resultdataarray"

.field public static final RESULT_NAME_ARRAY:Ljava/lang/String; = "resultnamearray"

.field public static final SETTING_DATA_ARRAY:Ljava/lang/String; = "settingdataarray"

.field public static final SETTING_NAME_ARRAY:Ljava/lang/String; = "settinganmearray"


# instance fields
.field public mClocklist:Ljava/lang/String;

.field public mClocklistName:Ljava/lang/String;

.field public mFavoriteXMLData:Ljava/lang/String;

.field public mImageListData:[Ljava/lang/String;

.field public mImageListName:[Ljava/lang/String;

.field public mResultListData:[Ljava/lang/String;

.field public mResultListName:[Ljava/lang/String;

.field public mSettingListData:[Ljava/lang/String;

.field public mSettingListName:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 2283
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;-><init>()V

    .line 2284
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_CLOCKS_LIST_REQ:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->msgId:Ljava/lang/String;

    .line 2285
    iput-object p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mDeviceId:Ljava/lang/String;

    .line 2286
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "listData"    # Ljava/lang/String;
    .param p2, "listName"    # Ljava/lang/String;
    .param p3, "favoriteXMLData"    # Ljava/lang/String;
    .param p4, "settingListName"    # [Ljava/lang/String;
    .param p5, "settingListData"    # [Ljava/lang/String;
    .param p6, "imageListName"    # [Ljava/lang/String;
    .param p7, "imageListData"    # [Ljava/lang/String;
    .param p8, "resultListName"    # [Ljava/lang/String;
    .param p9, "resultListData"    # [Ljava/lang/String;
    .param p10, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 2290
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;-><init>()V

    .line 2291
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_CLOCKS_LIST_REQ:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->msgId:Ljava/lang/String;

    .line 2292
    iput-object p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mClocklist:Ljava/lang/String;

    .line 2293
    iput-object p2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mClocklistName:Ljava/lang/String;

    .line 2294
    iput-object p3, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mFavoriteXMLData:Ljava/lang/String;

    .line 2295
    iput-object p4, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mSettingListName:[Ljava/lang/String;

    .line 2296
    iput-object p5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mSettingListData:[Ljava/lang/String;

    .line 2297
    iput-object p6, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mImageListName:[Ljava/lang/String;

    .line 2298
    iput-object p7, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mImageListData:[Ljava/lang/String;

    .line 2299
    iput-object p8, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mResultListName:[Ljava/lang/String;

    .line 2300
    iput-object p9, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mResultListData:[Ljava/lang/String;

    .line 2301
    iput-object p10, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mDeviceId:Ljava/lang/String;

    .line 2302
    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/lang/Object;)V
    .locals 19
    .param p1, "json"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 2385
    new-instance v8, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "json":Ljava/lang/Object;
    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2387
    .local v8, "jsonObj":Lorg/json/JSONObject;
    const-string v17, "clocklist"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mClocklist:Ljava/lang/String;

    .line 2388
    const-string v17, "clocklistname"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mClocklistName:Ljava/lang/String;

    .line 2389
    const-string v17, "favoritexmldata"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mFavoriteXMLData:Ljava/lang/String;

    .line 2392
    :try_start_0
    const-string v17, "settinganmearray"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 2393
    .local v15, "setting_names":Lorg/json/JSONArray;
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mSettingListName:[Ljava/lang/String;

    .line 2394
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v16

    .line 2395
    .local v16, "setting_names_count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v3, v0, :cond_0

    .line 2396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mSettingListName:[Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual {v15, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    aput-object v17, v18, v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2395
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2398
    .end local v3    # "i":I
    .end local v15    # "setting_names":Lorg/json/JSONArray;
    .end local v16    # "setting_names_count":I
    :catch_0
    move-exception v2

    .line 2399
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 2403
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_0
    :try_start_1
    const-string v17, "settingdataarray"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 2404
    .local v13, "setting_datas":Lorg/json/JSONArray;
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mSettingListData:[Ljava/lang/String;

    .line 2405
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v14

    .line 2406
    .local v14, "setting_datas_count":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v14, :cond_1

    .line 2407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mSettingListData:[Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual {v13, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    aput-object v17, v18, v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2406
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2409
    .end local v3    # "i":I
    .end local v13    # "setting_datas":Lorg/json/JSONArray;
    .end local v14    # "setting_datas_count":I
    :catch_1
    move-exception v2

    .line 2410
    .restart local v2    # "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 2414
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_1
    :try_start_2
    const-string v17, "imagenamearray"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 2415
    .local v6, "image_names":Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mImageListName:[Ljava/lang/String;

    .line 2416
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 2417
    .local v7, "image_names_count":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v7, :cond_2

    .line 2418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mImageListName:[Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    aput-object v17, v18, v3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2417
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2420
    .end local v3    # "i":I
    .end local v6    # "image_names":Lorg/json/JSONArray;
    .end local v7    # "image_names_count":I
    :catch_2
    move-exception v2

    .line 2421
    .restart local v2    # "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 2425
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_2
    :try_start_3
    const-string v17, "imagedataarray"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 2426
    .local v4, "image_datas":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mImageListData:[Ljava/lang/String;

    .line 2427
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 2428
    .local v5, "image_datas_count":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v5, :cond_3

    .line 2429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mImageListData:[Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    aput-object v17, v18, v3
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2428
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2431
    .end local v3    # "i":I
    .end local v4    # "image_datas":Lorg/json/JSONArray;
    .end local v5    # "image_datas_count":I
    :catch_3
    move-exception v2

    .line 2432
    .restart local v2    # "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 2436
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_3
    :try_start_4
    const-string v17, "resultnamearray"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 2437
    .local v11, "result_names":Lorg/json/JSONArray;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mResultListName:[Ljava/lang/String;

    .line 2438
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v12

    .line 2439
    .local v12, "result_names_count":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    if-ge v3, v12, :cond_4

    .line 2440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mResultListName:[Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    aput-object v17, v18, v3
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 2439
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2442
    .end local v3    # "i":I
    .end local v11    # "result_names":Lorg/json/JSONArray;
    .end local v12    # "result_names_count":I
    :catch_4
    move-exception v2

    .line 2443
    .restart local v2    # "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 2447
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_4
    :try_start_5
    const-string v17, "resultdataarray"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 2448
    .local v9, "result_data":Lorg/json/JSONArray;
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mResultListData:[Ljava/lang/String;

    .line 2449
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    .line 2450
    .local v10, "result_data_count":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    if-ge v3, v10, :cond_5

    .line 2451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mResultListData:[Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    aput-object v17, v18, v3
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 2450
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 2453
    .end local v3    # "i":I
    .end local v9    # "result_data":Lorg/json/JSONArray;
    .end local v10    # "result_data_count":I
    :catch_5
    move-exception v2

    .line 2454
    .restart local v2    # "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 2457
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_5
    const-string v17, "msgId"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->msgId:Ljava/lang/String;

    .line 2458
    return-void
.end method

.method public getClockList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2305
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mClocklist:Ljava/lang/String;

    return-object v0
.end method

.method public getClockListName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2309
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mClocklistName:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2262
    invoke-super {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFavoriteXMLData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2317
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mFavoriteXMLData:Ljava/lang/String;

    return-object v0
.end method

.method public getImageListData()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2329
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mImageListData:[Ljava/lang/String;

    return-object v0
.end method

.method public getImageListName()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2325
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mImageListName:[Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2262
    invoke-super {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;->getMsgId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResultListData()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2337
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mResultListData:[Ljava/lang/String;

    return-object v0
.end method

.method public getResultListName()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2333
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mResultListName:[Ljava/lang/String;

    return-object v0
.end method

.method public getSettingListData()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2321
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mSettingListData:[Ljava/lang/String;

    return-object v0
.end method

.method public getSettingListName()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2313
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mSettingListName:[Ljava/lang/String;

    return-object v0
.end method

.method public toJSON()Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 2342
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2343
    .local v3, "json":Lorg/json/JSONObject;
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 2344
    .local v8, "setting_names":Lorg/json/JSONArray;
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 2345
    .local v7, "setting_datas":Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 2346
    .local v2, "image_names":Lorg/json/JSONArray;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 2347
    .local v1, "image_datas":Lorg/json/JSONArray;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 2348
    .local v5, "result_names":Lorg/json/JSONArray;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 2350
    .local v4, "result_data":Lorg/json/JSONArray;
    iget-object v11, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mSettingListName:[Ljava/lang/String;

    array-length v12, v11

    move v10, v9

    :goto_0
    if-ge v10, v12, :cond_0

    aget-object v6, v11, v10

    .line 2351
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2350
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2353
    .end local v6    # "s":Ljava/lang/String;
    :cond_0
    iget-object v11, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mSettingListData:[Ljava/lang/String;

    array-length v12, v11

    move v10, v9

    :goto_1
    if-ge v10, v12, :cond_1

    aget-object v6, v11, v10

    .line 2354
    .restart local v6    # "s":Ljava/lang/String;
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2353
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2356
    .end local v6    # "s":Ljava/lang/String;
    :cond_1
    iget-object v11, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mImageListName:[Ljava/lang/String;

    array-length v12, v11

    move v10, v9

    :goto_2
    if-ge v10, v12, :cond_2

    aget-object v0, v11, v10

    .line 2357
    .local v0, "i":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2356
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 2359
    .end local v0    # "i":Ljava/lang/String;
    :cond_2
    iget-object v11, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mImageListData:[Ljava/lang/String;

    array-length v12, v11

    move v10, v9

    :goto_3
    if-ge v10, v12, :cond_3

    aget-object v0, v11, v10

    .line 2360
    .restart local v0    # "i":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2359
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 2362
    .end local v0    # "i":Ljava/lang/String;
    :cond_3
    iget-object v11, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mResultListName:[Ljava/lang/String;

    array-length v12, v11

    move v10, v9

    :goto_4
    if-ge v10, v12, :cond_4

    aget-object v0, v11, v10

    .line 2363
    .restart local v0    # "i":Ljava/lang/String;
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2362
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 2365
    .end local v0    # "i":Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mResultListData:[Ljava/lang/String;

    array-length v11, v10

    :goto_5
    if-ge v9, v11, :cond_5

    aget-object v0, v10, v9

    .line 2366
    .restart local v0    # "i":Ljava/lang/String;
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2365
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 2369
    .end local v0    # "i":Ljava/lang/String;
    :cond_5
    const-string v9, "msgId"

    iget-object v10, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2370
    const-string v9, "clocklistname"

    iget-object v10, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mClocklistName:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2371
    const-string v9, "clocklist"

    iget-object v10, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mClocklist:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2372
    const-string v9, "favoritexmldata"

    iget-object v10, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mFavoriteXMLData:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2373
    const-string v9, "settinganmearray"

    invoke-virtual {v3, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2374
    const-string v9, "settingdataarray"

    invoke-virtual {v3, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2375
    const-string v9, "imagenamearray"

    invoke-virtual {v3, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2376
    const-string v9, "imagedataarray"

    invoke-virtual {v3, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2377
    const-string v9, "resultnamearray"

    invoke-virtual {v3, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2378
    const-string v9, "resultdataarray"

    invoke-virtual {v3, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2379
    const-string v9, "deviceid"

    iget-object v10, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ClockListInfoReqMessage;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2380
    return-object v3
.end method
