.class public final Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$updateAppInfoAfterLocaleChangedReqMessage;
.super Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;
.source "HMJSONDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "updateAppInfoAfterLocaleChangedReqMessage"
.end annotation


# static fields
.field public static final APPINFO_LIST:Ljava/lang/String; = "appinfolist"

.field public static final APPS_XML:Ljava/lang/String; = "appsxml"

.field public static final APP_CATEGORY:Ljava/lang/String; = "appcategory"

.field public static final APP_NAME:Ljava/lang/String; = "appname"

.field public static final CLASS_NAME:Ljava/lang/String; = "classname"

.field public static final FAMILY_NAME:Ljava/lang/String; = "familyname"

.field public static final IMAGE_DATA:Ljava/lang/String; = "imagedata"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "packagename"

.field public static final SETTING_FILE_DATA_ARRAY:Ljava/lang/String; = "settingfiledataarray"

.field public static final SETTING_FILE_NAME_ARRAY:Ljava/lang/String; = "settingfilenamearray"


# instance fields
.field private mAppInfoArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$localeRelatedAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mAppsXml:Ljava/lang/String;

.field private mSettingFileDataList:[Ljava/lang/String;

.field private mSetttingFileNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 3015
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;-><init>()V

    .line 3016
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_UPDATE_APPINFO_AFTER_SYNC_LOCALE_REQ:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$updateAppInfoAfterLocaleChangedReqMessage;->msgId:Ljava/lang/String;

    .line 3017
    iput-object p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$updateAppInfoAfterLocaleChangedReqMessage;->mDeviceId:Ljava/lang/String;

    .line 3018
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p3, "settingFileData"    # [Ljava/lang/String;
    .param p4, "appsxml"    # Ljava/lang/String;
    .param p5, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$localeRelatedAppInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3021
    .local p1, "appInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$localeRelatedAppInfo;>;"
    .local p2, "settingFileName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;-><init>()V

    .line 3022
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_UPDATE_APPINFO_AFTER_SYNC_LOCALE_REQ:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$updateAppInfoAfterLocaleChangedReqMessage;->msgId:Ljava/lang/String;

    .line 3023
    iput-object p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$updateAppInfoAfterLocaleChangedReqMessage;->mAppInfoArray:Ljava/util/ArrayList;

    .line 3024
    iput-object p2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$updateAppInfoAfterLocaleChangedReqMessage;->mSetttingFileNameList:Ljava/util/ArrayList;

    .line 3025
    iput-object p3, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$updateAppInfoAfterLocaleChangedReqMessage;->mSettingFileDataList:[Ljava/lang/String;

    .line 3026
    iput-object p4, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$updateAppInfoAfterLocaleChangedReqMessage;->mAppsXml:Ljava/lang/String;

    .line 3027
    iput-object p5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$updateAppInfoAfterLocaleChangedReqMessage;->mDeviceId:Ljava/lang/String;

    .line 3028
    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/lang/Object;)V
    .locals 21
    .param p1, "json"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 3081
    new-instance v13, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "json":Ljava/lang/Object;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3083
    .local v13, "jsonObj":Lorg/json/JSONObject;
    const-string v19, "msgId"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$updateAppInfoAfterLocaleChangedReqMessage;->msgId:Ljava/lang/String;

    .line 3085
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$updateAppInfoAfterLocaleChangedReqMessage;->mAppInfoArray:Ljava/util/ArrayList;

    .line 3087
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 3088
    .local v4, "appInfoArray":Lorg/json/JSONArray;
    const-string v19, "appinfolist"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 3089
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 3091
    .local v6, "appInfosize":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v6, :cond_2

    .line 3092
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 3093
    .local v5, "appInfoJson":Lorg/json/JSONObject;
    invoke-virtual {v4, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "appInfoJson":Lorg/json/JSONObject;
    check-cast v5, Lorg/json/JSONObject;

    .line 3094
    .restart local v5    # "appInfoJson":Lorg/json/JSONObject;
    const-string v19, "appname"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3095
    .local v7, "appName":Ljava/lang/String;
    const-string v19, "classname"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3096
    .local v8, "className":Ljava/lang/String;
    const-string v19, "packagename"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3097
    .local v14, "packageName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 3099
    .local v12, "imagedata":Ljava/lang/String;
    :try_start_0
    const-string v19, "imagedata"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 3103
    :goto_1
    const/4 v2, 0x0

    .line 3105
    .local v2, "appCategory":Ljava/lang/String;
    :try_start_1
    const-string v19, "appcategory"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 3106
    const-string v2, ""
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3114
    :goto_2
    const-string v10, ""

    .line 3116
    .local v10, "familyName":Ljava/lang/String;
    :try_start_2
    const-string v19, "familyname"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 3117
    const-string v10, ""
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3125
    :goto_3
    new-instance v3, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$localeRelatedAppInfo;

    invoke-direct {v3}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$localeRelatedAppInfo;-><init>()V

    .line 3126
    .local v3, "appInfo":Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$localeRelatedAppInfo;
    iput-object v7, v3, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$localeRelatedAppInfo;->appName:Ljava/lang/String;

    .line 3127
    iput-object v8, v3, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$localeRelatedAppInfo;->className:Ljava/lang/String;

    .line 3128
    iput-object v14, v3, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$localeRelatedAppInfo;->packageName:Ljava/lang/String;

    .line 3129
    iput-object v12, v3, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$localeRelatedAppInfo;->imageData:Ljava/lang/String;

    .line 3130
    iput-object v2, v3, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$localeRelatedAppInfo;->appCategory:Ljava/lang/String;

    .line 3131
    iput-object v10, v3, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$localeRelatedAppInfo;->familyName:Ljava/lang/String;

    .line 3132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$updateAppInfoAfterLocaleChangedReqMessage;->mAppInfoArray:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3091
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 3100
    .end local v2    # "appCategory":Ljava/lang/String;
    .end local v3    # "appInfo":Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$localeRelatedAppInfo;
    .end local v10    # "familyName":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 3101
    .local v9, "e":Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 3108
    .end local v9    # "e":Lorg/json/JSONException;
    .restart local v2    # "appCategory":Ljava/lang/String;
    :cond_0
    :try_start_3
    const-string v19, "appcategory"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    goto :goto_2

    .line 3110
    :catch_1
    move-exception v9

    .line 3111
    .restart local v9    # "e":Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 3119
    .end local v9    # "e":Lorg/json/JSONException;
    .restart local v10    # "familyName":Ljava/lang/String;
    :cond_1
    :try_start_4
    const-string v19, "familyname"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v10

    goto :goto_3

    .line 3121
    :catch_2
    move-exception v9

    .line 3122
    .restart local v9    # "e":Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 3136
    .end local v2    # "appCategory":Ljava/lang/String;
    .end local v5    # "appInfoJson":Lorg/json/JSONObject;
    .end local v7    # "appName":Ljava/lang/String;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "e":Lorg/json/JSONException;
    .end local v10    # "familyName":Ljava/lang/String;
    .end local v12    # "imagedata":Ljava/lang/String;
    .end local v14    # "packageName":Ljava/lang/String;
    :cond_2
    new-instance v17, Lorg/json/JSONArray;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONArray;-><init>()V

    .line 3137
    .local v17, "settingFileNameArrary":Lorg/json/JSONArray;
    const-string v19, "settingfilenamearray"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 3138
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$updateAppInfoAfterLocaleChangedReqMessage;->mSetttingFileNameList:Ljava/util/ArrayList;

    .line 3139
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v18

    .line 3140
    .local v18, "settingFileNameSize":I
    const/4 v11, 0x0

    :goto_4
    move/from16 v0, v18

    if-ge v11, v0, :cond_3

    .line 3141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$updateAppInfoAfterLocaleChangedReqMessage;->mSetttingFileNameList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3140
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 3144
    :cond_3
    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    .line 3145
    .local v15, "settingFileDataArray":Lorg/json/JSONArray;
    const-string v19, "settingfiledataarray"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 3146
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v16

    .line 3147
    .local v16, "settingFileDatasize":I
    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$updateAppInfoAfterLocaleChangedReqMessage;->mSettingFileDataList:[Ljava/lang/String;

    .line 3148
    const/4 v11, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v11, v0, :cond_4

    .line 3149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$updateAppInfoAfterLocaleChangedReqMessage;->mSettingFileDataList:[Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual {v15, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v19, v11

    .line 3148
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 3153
    :cond_4
    :try_start_5
    const-string v19, "appsxml"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$updateAppInfoAfterLocaleChangedReqMessage;->mAppsXml:Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    .line 3158
    :goto_6
    return-void

    .line 3154
    :catch_3
    move-exception v9

    .line 3155
    .restart local v9    # "e":Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6
.end method

.method public getAppInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$localeRelatedAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3031
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$updateAppInfoAfterLocaleChangedReqMessage;->mAppInfoArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAppsXml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3043
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$updateAppInfoAfterLocaleChangedReqMessage;->mAppsXml:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2998
    invoke-super {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2998
    invoke-super {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;->getMsgId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSettingFileData()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3039
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$updateAppInfoAfterLocaleChangedReqMessage;->mSettingFileDataList:[Ljava/lang/String;

    return-object v0
.end method

.method public getSettingfileNameArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3035
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$updateAppInfoAfterLocaleChangedReqMessage;->mSetttingFileNameList:Ljava/util/ArrayList;

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
    .line 3048
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 3050
    .local v3, "json":Lorg/json/JSONObject;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 3051
    .local v5, "settingFileNameArrary":Lorg/json/JSONArray;
    iget-object v8, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$updateAppInfoAfterLocaleChangedReqMessage;->mSetttingFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3052
    .local v7, "st":Ljava/lang/String;
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 3054
    .end local v7    # "st":Ljava/lang/String;
    :cond_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 3055
    .local v4, "settingFileDataArray":Lorg/json/JSONArray;
    iget-object v9, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$updateAppInfoAfterLocaleChangedReqMessage;->mSettingFileDataList:[Ljava/lang/String;

    array-length v10, v9

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v10, :cond_1

    aget-object v7, v9, v8

    .line 3056
    .restart local v7    # "st":Ljava/lang/String;
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 3055
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 3058
    .end local v7    # "st":Ljava/lang/String;
    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 3059
    .local v0, "appInfoArray":Lorg/json/JSONArray;
    iget-object v8, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$updateAppInfoAfterLocaleChangedReqMessage;->mAppInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 3060
    .local v6, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v6, :cond_2

    .line 3061
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 3062
    .local v1, "appinfo":Lorg/json/JSONObject;
    const-string v9, "appname"

    iget-object v8, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$updateAppInfoAfterLocaleChangedReqMessage;->mAppInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$localeRelatedAppInfo;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$localeRelatedAppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v1, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3063
    const-string v9, "classname"

    iget-object v8, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$updateAppInfoAfterLocaleChangedReqMessage;->mAppInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$localeRelatedAppInfo;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$localeRelatedAppInfo;->className:Ljava/lang/String;

    invoke-virtual {v1, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3064
    const-string v9, "packagename"

    iget-object v8, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$updateAppInfoAfterLocaleChangedReqMessage;->mAppInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$localeRelatedAppInfo;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$localeRelatedAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3065
    const-string v9, "imagedata"

    iget-object v8, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$updateAppInfoAfterLocaleChangedReqMessage;->mAppInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$localeRelatedAppInfo;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$localeRelatedAppInfo;->imageData:Ljava/lang/String;

    invoke-virtual {v1, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3066
    const-string v9, "appcategory"

    iget-object v8, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$updateAppInfoAfterLocaleChangedReqMessage;->mAppInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$localeRelatedAppInfo;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$localeRelatedAppInfo;->appCategory:Ljava/lang/String;

    invoke-virtual {v1, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3067
    const-string v9, "familyname"

    iget-object v8, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$updateAppInfoAfterLocaleChangedReqMessage;->mAppInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$localeRelatedAppInfo;

    iget-object v8, v8, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$localeRelatedAppInfo;->familyName:Ljava/lang/String;

    invoke-virtual {v1, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3068
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 3060
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3070
    .end local v1    # "appinfo":Lorg/json/JSONObject;
    :cond_2
    const-string v8, "msgId"

    iget-object v9, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$updateAppInfoAfterLocaleChangedReqMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3071
    const-string v8, "appinfolist"

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3072
    const-string v8, "settingfilenamearray"

    invoke-virtual {v3, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3073
    const-string v8, "settingfiledataarray"

    invoke-virtual {v3, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3074
    const-string v8, "appsxml"

    iget-object v9, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$updateAppInfoAfterLocaleChangedReqMessage;->mAppsXml:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3075
    const-string v8, "deviceid"

    iget-object v9, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$updateAppInfoAfterLocaleChangedReqMessage;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3076
    return-object v3
.end method
