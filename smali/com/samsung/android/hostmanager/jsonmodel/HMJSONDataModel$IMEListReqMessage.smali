.class public final Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;
.super Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;
.source "HMJSONDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IMEListReqMessage"
.end annotation


# static fields
.field public static final IMAGE_DATA_ARRAY:Ljava/lang/String; = "imagedataarray"

.field public static final IMAGE_NAME_ARRAY:Ljava/lang/String; = "imagenamearray"

.field public static final LIST:Ljava/lang/String; = "imelist"

.field public static final LIST_NAME:Ljava/lang/String; = "imelistname"

.field public static final RESULT_DATA_ARRAY:Ljava/lang/String; = "resultdataarray"

.field public static final RESULT_NAME_ARRAY:Ljava/lang/String; = "resultnamearray"

.field public static final SETTING_DATA_ARRAY:Ljava/lang/String; = "settingdataarray"

.field public static final SETTING_NAME_ARRAY:Ljava/lang/String; = "settinganmearray"


# instance fields
.field public mIMEList:Ljava/lang/String;

.field public mIMEListName:Ljava/lang/String;

.field public mImageListData:[Ljava/lang/String;

.field public mImageListName:[Ljava/lang/String;

.field public mResultListData:[Ljava/lang/String;

.field public mResultListName:[Ljava/lang/String;

.field public mSettingListData:[Ljava/lang/String;

.field public mSettingListName:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2834
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;-><init>()V

    .line 2835
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_IME_LIST_REQ:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->msgId:Ljava/lang/String;

    .line 2836
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "listData"    # Ljava/lang/String;
    .param p2, "listName"    # Ljava/lang/String;
    .param p3, "settingListName"    # [Ljava/lang/String;
    .param p4, "settingListData"    # [Ljava/lang/String;
    .param p5, "imageListName"    # [Ljava/lang/String;
    .param p6, "imageListData"    # [Ljava/lang/String;
    .param p7, "resultListName"    # [Ljava/lang/String;
    .param p8, "resultListData"    # [Ljava/lang/String;

    .prologue
    .line 2839
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;-><init>()V

    .line 2840
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_IME_LIST_REQ:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->msgId:Ljava/lang/String;

    .line 2841
    iput-object p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->mIMEList:Ljava/lang/String;

    .line 2842
    iput-object p2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->mIMEListName:Ljava/lang/String;

    .line 2843
    iput-object p3, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->mSettingListName:[Ljava/lang/String;

    .line 2844
    iput-object p4, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->mSettingListData:[Ljava/lang/String;

    .line 2845
    iput-object p5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->mImageListName:[Ljava/lang/String;

    .line 2846
    iput-object p6, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->mImageListData:[Ljava/lang/String;

    .line 2847
    iput-object p7, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->mResultListName:[Ljava/lang/String;

    .line 2848
    iput-object p8, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->mResultListData:[Ljava/lang/String;

    .line 2849
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
    .line 2926
    new-instance v8, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "json":Ljava/lang/Object;
    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2927
    .local v8, "jsonObj":Lorg/json/JSONObject;
    const-string v17, "msgId"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->msgId:Ljava/lang/String;

    .line 2928
    const-string v17, "imelist"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->mIMEList:Ljava/lang/String;

    .line 2929
    const-string v17, "imelistname"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->mIMEListName:Ljava/lang/String;

    .line 2932
    :try_start_0
    const-string v17, "settinganmearray"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 2933
    .local v15, "setting_names":Lorg/json/JSONArray;
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->mSettingListName:[Ljava/lang/String;

    .line 2934
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v16

    .line 2935
    .local v16, "setting_names_count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v3, v0, :cond_0

    .line 2936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->mSettingListName:[Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual {v15, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    aput-object v17, v18, v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2935
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2938
    .end local v3    # "i":I
    .end local v15    # "setting_names":Lorg/json/JSONArray;
    .end local v16    # "setting_names_count":I
    :catch_0
    move-exception v2

    .line 2939
    .local v2, "e":Lorg/json/JSONException;
    sget-object v17, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;->TAG:Ljava/lang/String;

    const-string v18, "mgr_ime_list_req doens\'t have SETTING_NAME_ARRAY field"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2943
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_0
    :try_start_1
    const-string v17, "settingdataarray"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 2944
    .local v13, "setting_datas":Lorg/json/JSONArray;
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->mSettingListData:[Ljava/lang/String;

    .line 2945
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v14

    .line 2946
    .local v14, "setting_datas_count":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v14, :cond_1

    .line 2947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->mSettingListData:[Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual {v13, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    aput-object v17, v18, v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2946
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2949
    .end local v3    # "i":I
    .end local v13    # "setting_datas":Lorg/json/JSONArray;
    .end local v14    # "setting_datas_count":I
    :catch_1
    move-exception v2

    .line 2950
    .restart local v2    # "e":Lorg/json/JSONException;
    sget-object v17, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;->TAG:Ljava/lang/String;

    const-string v18, "mgr_ime_list_req doens\'t have SETTING_DATA_ARRAY field"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2953
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_1
    const-string v17, "imagenamearray"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 2954
    .local v6, "image_names":Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->mImageListName:[Ljava/lang/String;

    .line 2955
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 2956
    .local v7, "image_names_count":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v7, :cond_2

    .line 2957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->mImageListName:[Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    aput-object v17, v18, v3

    .line 2956
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2959
    :cond_2
    const-string v17, "imagedataarray"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 2960
    .local v4, "image_datas":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->mImageListData:[Ljava/lang/String;

    .line 2961
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 2962
    .local v5, "image_datas_count":I
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v5, :cond_3

    .line 2963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->mImageListData:[Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    aput-object v17, v18, v3

    .line 2962
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2967
    :cond_3
    :try_start_2
    const-string v17, "resultnamearray"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 2968
    .local v11, "result_names":Lorg/json/JSONArray;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->mResultListName:[Ljava/lang/String;

    .line 2969
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v12

    .line 2970
    .local v12, "result_names_count":I
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v12, :cond_4

    .line 2971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->mResultListName:[Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    aput-object v17, v18, v3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2970
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2973
    .end local v11    # "result_names":Lorg/json/JSONArray;
    .end local v12    # "result_names_count":I
    :catch_2
    move-exception v2

    .line 2974
    .restart local v2    # "e":Lorg/json/JSONException;
    sget-object v17, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;->TAG:Ljava/lang/String;

    const-string v18, "mgr_ime_list_req doens\'t have RESULT_NAME_ARRAY field"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2977
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_4
    :try_start_3
    const-string v17, "resultdataarray"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 2978
    .local v9, "result_data":Lorg/json/JSONArray;
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->mResultListData:[Ljava/lang/String;

    .line 2979
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    .line 2980
    .local v10, "result_data_count":I
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v10, :cond_5

    .line 2981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->mResultListData:[Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    aput-object v17, v18, v3
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2980
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 2983
    .end local v9    # "result_data":Lorg/json/JSONArray;
    .end local v10    # "result_data_count":I
    :catch_3
    move-exception v2

    .line 2984
    .restart local v2    # "e":Lorg/json/JSONException;
    sget-object v17, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;->TAG:Ljava/lang/String;

    const-string v18, "mgr_ime_list_req doens\'t have RESULT_DATA_ARRAY field"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2986
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_5
    return-void
.end method

.method public bridge synthetic getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2815
    invoke-super {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIMEList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2852
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->mIMEList:Ljava/lang/String;

    return-object v0
.end method

.method public getIMEListName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2856
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->mIMEListName:Ljava/lang/String;

    return-object v0
.end method

.method public getImageListData()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2872
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->mImageListData:[Ljava/lang/String;

    return-object v0
.end method

.method public getImageListName()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2868
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->mImageListName:[Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2815
    invoke-super {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;->getMsgId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResultListData()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2880
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->mResultListData:[Ljava/lang/String;

    return-object v0
.end method

.method public getResultListName()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2876
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->mResultListName:[Ljava/lang/String;

    return-object v0
.end method

.method public getSettingListData()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2864
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->mSettingListData:[Ljava/lang/String;

    return-object v0
.end method

.method public getSettingListName()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2860
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->mSettingListName:[Ljava/lang/String;

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

    .line 2885
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2886
    .local v3, "json":Lorg/json/JSONObject;
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 2887
    .local v8, "setting_names":Lorg/json/JSONArray;
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 2888
    .local v7, "setting_datas":Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 2889
    .local v2, "image_names":Lorg/json/JSONArray;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 2890
    .local v1, "image_datas":Lorg/json/JSONArray;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 2891
    .local v5, "result_names":Lorg/json/JSONArray;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 2893
    .local v4, "result_data":Lorg/json/JSONArray;
    iget-object v11, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->mSettingListName:[Ljava/lang/String;

    array-length v12, v11

    move v10, v9

    :goto_0
    if-ge v10, v12, :cond_0

    aget-object v6, v11, v10

    .line 2894
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2893
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2896
    .end local v6    # "s":Ljava/lang/String;
    :cond_0
    iget-object v11, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->mSettingListData:[Ljava/lang/String;

    array-length v12, v11

    move v10, v9

    :goto_1
    if-ge v10, v12, :cond_1

    aget-object v6, v11, v10

    .line 2897
    .restart local v6    # "s":Ljava/lang/String;
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2896
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2899
    .end local v6    # "s":Ljava/lang/String;
    :cond_1
    iget-object v11, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->mImageListName:[Ljava/lang/String;

    array-length v12, v11

    move v10, v9

    :goto_2
    if-ge v10, v12, :cond_2

    aget-object v0, v11, v10

    .line 2900
    .local v0, "i":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2899
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 2902
    .end local v0    # "i":Ljava/lang/String;
    :cond_2
    iget-object v11, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->mImageListData:[Ljava/lang/String;

    array-length v12, v11

    move v10, v9

    :goto_3
    if-ge v10, v12, :cond_3

    aget-object v0, v11, v10

    .line 2903
    .restart local v0    # "i":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2902
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 2905
    .end local v0    # "i":Ljava/lang/String;
    :cond_3
    iget-object v11, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->mResultListName:[Ljava/lang/String;

    array-length v12, v11

    move v10, v9

    :goto_4
    if-ge v10, v12, :cond_4

    aget-object v0, v11, v10

    .line 2906
    .restart local v0    # "i":Ljava/lang/String;
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2905
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 2908
    .end local v0    # "i":Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->mResultListData:[Ljava/lang/String;

    array-length v11, v10

    :goto_5
    if-ge v9, v11, :cond_5

    aget-object v0, v10, v9

    .line 2909
    .restart local v0    # "i":Ljava/lang/String;
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2908
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 2912
    .end local v0    # "i":Ljava/lang/String;
    :cond_5
    const-string v9, "msgId"

    iget-object v10, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2913
    const-string v9, "imelistname"

    iget-object v10, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->mIMEListName:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2914
    const-string v9, "imelist"

    iget-object v10, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$IMEListReqMessage;->mIMEList:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2915
    const-string v9, "settinganmearray"

    invoke-virtual {v3, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2916
    const-string v9, "settingdataarray"

    invoke-virtual {v3, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2917
    const-string v9, "imagenamearray"

    invoke-virtual {v3, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2918
    const-string v9, "imagedataarray"

    invoke-virtual {v3, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2919
    const-string v9, "resultnamearray"

    invoke-virtual {v3, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2920
    const-string v9, "resultdataarray"

    invoke-virtual {v3, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2921
    return-object v3
.end method
