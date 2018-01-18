.class public final Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;
.super Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;
.source "HMJSONDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FontListReqMessage"
.end annotation


# static fields
.field public static final IMAGE_DATA_ARRAY:Ljava/lang/String; = "imagedataarray"

.field public static final IMAGE_NAME_ARRAY:Ljava/lang/String; = "imagenamearray"

.field public static final LIST:Ljava/lang/String; = "fontlist"

.field public static final LIST_NAME:Ljava/lang/String; = "fontlistname"

.field public static final RESULT_DATA_ARRAY:Ljava/lang/String; = "resultdataarray"

.field public static final RESULT_NAME_ARRAY:Ljava/lang/String; = "resultnamearray"

.field public static final SETTING_DATA_ARRAY:Ljava/lang/String; = "settingdataarray"

.field public static final SETTING_NAME_ARRAY:Ljava/lang/String; = "settinganmearray"


# instance fields
.field public mFontlist:Ljava/lang/String;

.field public mFontlistName:Ljava/lang/String;

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
    .line 2480
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;-><init>()V

    .line 2481
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_FONT_LIST_REQ:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->msgId:Ljava/lang/String;

    .line 2482
    iput-object p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mDeviceId:Ljava/lang/String;

    .line 2483
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "listData"    # Ljava/lang/String;
    .param p2, "listName"    # Ljava/lang/String;
    .param p3, "settingListName"    # [Ljava/lang/String;
    .param p4, "settingListData"    # [Ljava/lang/String;
    .param p5, "imageListName"    # [Ljava/lang/String;
    .param p6, "imageListData"    # [Ljava/lang/String;
    .param p7, "resultListName"    # [Ljava/lang/String;
    .param p8, "resultListData"    # [Ljava/lang/String;
    .param p9, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 2486
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;-><init>()V

    .line 2487
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_FONT_LIST_REQ:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->msgId:Ljava/lang/String;

    .line 2488
    iput-object p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mFontlist:Ljava/lang/String;

    .line 2489
    iput-object p2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mFontlistName:Ljava/lang/String;

    .line 2490
    iput-object p3, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mSettingListName:[Ljava/lang/String;

    .line 2491
    iput-object p4, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mSettingListData:[Ljava/lang/String;

    .line 2492
    iput-object p5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mImageListName:[Ljava/lang/String;

    .line 2493
    iput-object p6, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mImageListData:[Ljava/lang/String;

    .line 2494
    iput-object p7, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mResultListName:[Ljava/lang/String;

    .line 2495
    iput-object p8, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mResultListData:[Ljava/lang/String;

    .line 2496
    iput-object p9, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mDeviceId:Ljava/lang/String;

    .line 2497
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
    .line 2575
    new-instance v8, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "json":Ljava/lang/Object;
    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2577
    .local v8, "jsonObj":Lorg/json/JSONObject;
    const-string v17, "msgId"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->msgId:Ljava/lang/String;

    .line 2578
    const-string v17, "fontlist"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mFontlist:Ljava/lang/String;

    .line 2579
    const-string v17, "fontlistname"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mFontlistName:Ljava/lang/String;

    .line 2582
    :try_start_0
    const-string v17, "settinganmearray"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 2583
    .local v15, "setting_names":Lorg/json/JSONArray;
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mSettingListName:[Ljava/lang/String;

    .line 2584
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v16

    .line 2585
    .local v16, "setting_names_count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v3, v0, :cond_0

    .line 2586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mSettingListName:[Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual {v15, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    aput-object v17, v18, v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2585
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2588
    .end local v3    # "i":I
    .end local v15    # "setting_names":Lorg/json/JSONArray;
    .end local v16    # "setting_names_count":I
    :catch_0
    move-exception v2

    .line 2589
    .local v2, "e":Lorg/json/JSONException;
    sget-object v17, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;->TAG:Ljava/lang/String;

    const-string v18, "mgr_font_list_req doens\'t have SETTING_NAME_ARRAY field"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_0
    :try_start_1
    const-string v17, "settingdataarray"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 2594
    .local v13, "setting_datas":Lorg/json/JSONArray;
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mSettingListData:[Ljava/lang/String;

    .line 2595
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v14

    .line 2596
    .local v14, "setting_datas_count":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v14, :cond_1

    .line 2597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mSettingListData:[Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual {v13, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    aput-object v17, v18, v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2596
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2599
    .end local v3    # "i":I
    .end local v13    # "setting_datas":Lorg/json/JSONArray;
    .end local v14    # "setting_datas_count":I
    :catch_1
    move-exception v2

    .line 2600
    .restart local v2    # "e":Lorg/json/JSONException;
    sget-object v17, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;->TAG:Ljava/lang/String;

    const-string v18, "mgr_font_list_req doens\'t have SETTING_DATA_ARRAY field"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2603
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_1
    const-string v17, "imagenamearray"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 2604
    .local v6, "image_names":Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mImageListName:[Ljava/lang/String;

    .line 2605
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 2606
    .local v7, "image_names_count":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v7, :cond_2

    .line 2607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mImageListName:[Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    aput-object v17, v18, v3

    .line 2606
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2609
    :cond_2
    const-string v17, "imagedataarray"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 2610
    .local v4, "image_datas":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mImageListData:[Ljava/lang/String;

    .line 2611
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 2612
    .local v5, "image_datas_count":I
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v5, :cond_3

    .line 2613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mImageListData:[Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    aput-object v17, v18, v3

    .line 2612
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2617
    :cond_3
    :try_start_2
    const-string v17, "resultnamearray"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 2618
    .local v11, "result_names":Lorg/json/JSONArray;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mResultListName:[Ljava/lang/String;

    .line 2619
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v12

    .line 2620
    .local v12, "result_names_count":I
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v12, :cond_4

    .line 2621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mResultListName:[Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    aput-object v17, v18, v3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2620
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2623
    .end local v11    # "result_names":Lorg/json/JSONArray;
    .end local v12    # "result_names_count":I
    :catch_2
    move-exception v2

    .line 2624
    .restart local v2    # "e":Lorg/json/JSONException;
    sget-object v17, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;->TAG:Ljava/lang/String;

    const-string v18, "mgr_font_list_req doens\'t have RESULT_NAME_ARRAY field"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_4
    :try_start_3
    const-string v17, "resultdataarray"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 2628
    .local v9, "result_data":Lorg/json/JSONArray;
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mResultListData:[Ljava/lang/String;

    .line 2629
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    .line 2630
    .local v10, "result_data_count":I
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v10, :cond_5

    .line 2631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mResultListData:[Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    aput-object v17, v18, v3
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2630
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 2633
    .end local v9    # "result_data":Lorg/json/JSONArray;
    .end local v10    # "result_data_count":I
    :catch_3
    move-exception v2

    .line 2634
    .restart local v2    # "e":Lorg/json/JSONException;
    sget-object v17, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;->TAG:Ljava/lang/String;

    const-string v18, "mgr_font_list_req doens\'t have RESULT_DATA_ARRAY field"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2636
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_5
    return-void
.end method

.method public bridge synthetic getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2461
    invoke-super {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2500
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mFontlist:Ljava/lang/String;

    return-object v0
.end method

.method public getFontListName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2504
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mFontlistName:Ljava/lang/String;

    return-object v0
.end method

.method public getImageListData()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2520
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mImageListData:[Ljava/lang/String;

    return-object v0
.end method

.method public getImageListName()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2516
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mImageListName:[Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2461
    invoke-super {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;->getMsgId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResultListData()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2528
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mResultListData:[Ljava/lang/String;

    return-object v0
.end method

.method public getResultListName()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2524
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mResultListName:[Ljava/lang/String;

    return-object v0
.end method

.method public getSettingListData()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2512
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mSettingListData:[Ljava/lang/String;

    return-object v0
.end method

.method public getSettingListName()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2508
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mSettingListName:[Ljava/lang/String;

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

    .line 2533
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2534
    .local v3, "json":Lorg/json/JSONObject;
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 2535
    .local v8, "setting_names":Lorg/json/JSONArray;
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 2536
    .local v7, "setting_datas":Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 2537
    .local v2, "image_names":Lorg/json/JSONArray;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 2538
    .local v1, "image_datas":Lorg/json/JSONArray;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 2539
    .local v5, "result_names":Lorg/json/JSONArray;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 2541
    .local v4, "result_data":Lorg/json/JSONArray;
    iget-object v11, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mSettingListName:[Ljava/lang/String;

    array-length v12, v11

    move v10, v9

    :goto_0
    if-ge v10, v12, :cond_0

    aget-object v6, v11, v10

    .line 2542
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2541
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2544
    .end local v6    # "s":Ljava/lang/String;
    :cond_0
    iget-object v11, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mSettingListData:[Ljava/lang/String;

    array-length v12, v11

    move v10, v9

    :goto_1
    if-ge v10, v12, :cond_1

    aget-object v6, v11, v10

    .line 2545
    .restart local v6    # "s":Ljava/lang/String;
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2544
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2547
    .end local v6    # "s":Ljava/lang/String;
    :cond_1
    iget-object v11, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mImageListName:[Ljava/lang/String;

    array-length v12, v11

    move v10, v9

    :goto_2
    if-ge v10, v12, :cond_2

    aget-object v0, v11, v10

    .line 2548
    .local v0, "i":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2547
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 2550
    .end local v0    # "i":Ljava/lang/String;
    :cond_2
    iget-object v11, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mImageListData:[Ljava/lang/String;

    array-length v12, v11

    move v10, v9

    :goto_3
    if-ge v10, v12, :cond_3

    aget-object v0, v11, v10

    .line 2551
    .restart local v0    # "i":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2550
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 2553
    .end local v0    # "i":Ljava/lang/String;
    :cond_3
    iget-object v11, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mResultListName:[Ljava/lang/String;

    array-length v12, v11

    move v10, v9

    :goto_4
    if-ge v10, v12, :cond_4

    aget-object v0, v11, v10

    .line 2554
    .restart local v0    # "i":Ljava/lang/String;
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2553
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 2556
    .end local v0    # "i":Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mResultListData:[Ljava/lang/String;

    array-length v11, v10

    :goto_5
    if-ge v9, v11, :cond_5

    aget-object v0, v10, v9

    .line 2557
    .restart local v0    # "i":Ljava/lang/String;
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2556
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 2560
    .end local v0    # "i":Ljava/lang/String;
    :cond_5
    const-string v9, "msgId"

    iget-object v10, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2561
    const-string v9, "fontlistname"

    iget-object v10, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mFontlistName:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2562
    const-string v9, "fontlist"

    iget-object v10, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mFontlist:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2563
    const-string v9, "settinganmearray"

    invoke-virtual {v3, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2564
    const-string v9, "settingdataarray"

    invoke-virtual {v3, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2565
    const-string v9, "imagenamearray"

    invoke-virtual {v3, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2566
    const-string v9, "imagedataarray"

    invoke-virtual {v3, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2567
    const-string v9, "resultnamearray"

    invoke-virtual {v3, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2568
    const-string v9, "resultdataarray"

    invoke-virtual {v3, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2569
    const-string v9, "deviceid"

    iget-object v10, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$FontListReqMessage;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2570
    return-object v3
.end method
