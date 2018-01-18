.class public final Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;
.super Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;
.source "HMJSONDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WappsInstallResMessage"
.end annotation


# static fields
.field private static final APPCATEGORY:Ljava/lang/String; = "appcategory"

.field private static final APPNAME:Ljava/lang/String; = "appname"

.field private static final APPTYPE:Ljava/lang/String; = "apptype"

.field private static final CLASSNAME:Ljava/lang/String; = "classname"

.field private static final FAMILY_NAME:Ljava/lang/String; = "familyname"

.field private static final FROM_WHERE:Ljava/lang/String; = "from_where"

.field private static final GROUP:Ljava/lang/String; = "group"

.field private static final IMAGEDATA:Ljava/lang/String; = "imagedata"

.field private static final IMAGE_DATA_ARRAY:Ljava/lang/String; = "imagedataarray"

.field private static final IMAGE_NAME_ARRAY:Ljava/lang/String; = "imagenamearray"

.field private static final ISCLOCK:Ljava/lang/String; = "isclock"

.field private static final IS_MULTI_FAVORITE:Ljava/lang/String; = "ismultifavorite"

.field private static final PACKAGENAME:Ljava/lang/String; = "packagename"

.field private static final RETURNNCODE:Ljava/lang/String; = "returncode"

.field private static final SETTING_FILE_DATA:Ljava/lang/String; = "settingfiledata"

.field private static final SETTING_FILE_NANE:Ljava/lang/String; = "settingfilename"

.field private static final VERSION:Ljava/lang/String; = "version"

.field private static final VOICE_TYPE:Ljava/lang/String; = "voicetype"


# instance fields
.field private mAppCategory:Ljava/lang/String;

.field private mAppName:Ljava/lang/String;

.field private mAppType:Ljava/lang/String;

.field private mClassName:Ljava/lang/String;

.field private mFamilyName:Ljava/lang/String;

.field private mFromWhere:I

.field private mGroup:Ljava/lang/String;

.field private mImageData:Ljava/lang/String;

.field private mImageDataList:[Ljava/lang/String;

.field private mImageNameList:[Ljava/lang/String;

.field private mIsClock:Z

.field private mIsMultiFavorite:Z

.field private mPackageName:Ljava/lang/String;

.field private mPackageType:I

.field private mReturnCode:I

.field private mSettingFileData:Ljava/lang/String;

.field private mSettingFileName:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;

.field private mVoiceType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1067
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;-><init>()V

    .line 1068
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_WAPPS_INSTALL_RES:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->msgId:Ljava/lang/String;

    .line 1069
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "returnCode"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "packageType"    # I
    .param p4, "appName"    # Ljava/lang/String;
    .param p5, "className"    # Ljava/lang/String;
    .param p6, "isWidget"    # Ljava/lang/String;
    .param p7, "version"    # Ljava/lang/String;
    .param p8, "fromWhere"    # I
    .param p9, "isMultiFavorite"    # Z
    .param p10, "imageNameList"    # [Ljava/lang/String;
    .param p11, "imageDataList"    # [Ljava/lang/String;
    .param p12, "settingFileName"    # Ljava/lang/String;
    .param p13, "settingFileData"    # Ljava/lang/String;
    .param p14, "family"    # Ljava/lang/String;
    .param p15, "voiceType"    # Ljava/lang/String;

    .prologue
    .line 1119
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;-><init>()V

    .line 1120
    sget-object v1, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_WAPPS_INSTALL_RES:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->msgId:Ljava/lang/String;

    .line 1121
    iput p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mReturnCode:I

    .line 1122
    iput-object p2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mPackageName:Ljava/lang/String;

    .line 1123
    iput p3, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mPackageType:I

    .line 1124
    iget v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mPackageType:I

    packed-switch v1, :pswitch_data_0

    .line 1146
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mIsClock:Z

    .line 1147
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mAppCategory:Ljava/lang/String;

    .line 1150
    :goto_0
    iput-object p4, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mAppName:Ljava/lang/String;

    .line 1151
    iput-object p5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mClassName:Ljava/lang/String;

    .line 1152
    iput-object p6, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mAppType:Ljava/lang/String;

    .line 1153
    iput-object p7, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mVersion:Ljava/lang/String;

    .line 1154
    const-string v1, "empty"

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mImageData:Ljava/lang/String;

    .line 1155
    iput p8, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mFromWhere:I

    .line 1156
    iput-boolean p9, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mIsMultiFavorite:Z

    .line 1157
    iput-object p10, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mImageNameList:[Ljava/lang/String;

    .line 1158
    iput-object p11, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mImageDataList:[Ljava/lang/String;

    .line 1159
    iput-object p12, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mSettingFileName:Ljava/lang/String;

    .line 1160
    iput-object p13, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mSettingFileData:Ljava/lang/String;

    .line 1161
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mFamilyName:Ljava/lang/String;

    .line 1162
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mVoiceType:Ljava/lang/String;

    .line 1163
    return-void

    .line 1126
    :pswitch_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mIsClock:Z

    .line 1127
    const-string v1, "WATCH_CLOCK"

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mAppCategory:Ljava/lang/String;

    goto :goto_0

    .line 1130
    :pswitch_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mIsClock:Z

    .line 1131
    const-string v1, "WATCH_APP"

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mAppCategory:Ljava/lang/String;

    goto :goto_0

    .line 1134
    :pswitch_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mIsClock:Z

    .line 1135
    const-string v1, "FONT"

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mAppCategory:Ljava/lang/String;

    goto :goto_0

    .line 1138
    :pswitch_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mIsClock:Z

    .line 1139
    const-string v1, "TTS"

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mAppCategory:Ljava/lang/String;

    goto :goto_0

    .line 1142
    :pswitch_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mIsClock:Z

    .line 1143
    const-string v1, "IME"

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mAppCategory:Ljava/lang/String;

    goto :goto_0

    .line 1124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "returnCode"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "packageType"    # I
    .param p4, "appName"    # Ljava/lang/String;
    .param p5, "className"    # Ljava/lang/String;
    .param p6, "isWidget"    # Ljava/lang/String;
    .param p7, "version"    # Ljava/lang/String;
    .param p8, "imageData"    # Ljava/lang/String;
    .param p9, "fromWhere"    # I
    .param p10, "settingFileName"    # Ljava/lang/String;
    .param p11, "settingFileData"    # Ljava/lang/String;
    .param p12, "family"    # Ljava/lang/String;
    .param p13, "voiceType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1073
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;-><init>()V

    .line 1074
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_WAPPS_INSTALL_RES:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->msgId:Ljava/lang/String;

    .line 1075
    iput p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mReturnCode:I

    .line 1076
    iput-object p2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mPackageName:Ljava/lang/String;

    .line 1077
    iput p3, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mPackageType:I

    .line 1078
    iget v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mPackageType:I

    packed-switch v0, :pswitch_data_0

    .line 1100
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mIsClock:Z

    .line 1101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mAppCategory:Ljava/lang/String;

    .line 1104
    :goto_0
    iput-object p4, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mAppName:Ljava/lang/String;

    .line 1105
    iput-object p5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mClassName:Ljava/lang/String;

    .line 1106
    iput-object p6, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mAppType:Ljava/lang/String;

    .line 1107
    iput-object p7, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mVersion:Ljava/lang/String;

    .line 1108
    iput-object p8, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mImageData:Ljava/lang/String;

    .line 1109
    iput p9, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mFromWhere:I

    .line 1110
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mIsMultiFavorite:Z

    .line 1111
    iput-object p10, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mSettingFileName:Ljava/lang/String;

    .line 1112
    iput-object p11, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mSettingFileData:Ljava/lang/String;

    .line 1113
    iput-object p12, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mFamilyName:Ljava/lang/String;

    .line 1114
    iput-object p13, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mVoiceType:Ljava/lang/String;

    .line 1115
    return-void

    .line 1080
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mIsClock:Z

    .line 1081
    const-string v0, "WATCH_CLOCK"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mAppCategory:Ljava/lang/String;

    goto :goto_0

    .line 1084
    :pswitch_1
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mIsClock:Z

    .line 1085
    const-string v0, "WATCH_APP"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mAppCategory:Ljava/lang/String;

    goto :goto_0

    .line 1088
    :pswitch_2
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mIsClock:Z

    .line 1089
    const-string v0, "FONT"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mAppCategory:Ljava/lang/String;

    goto :goto_0

    .line 1092
    :pswitch_3
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mIsClock:Z

    .line 1093
    const-string v0, "TTS"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mAppCategory:Ljava/lang/String;

    goto :goto_0

    .line 1096
    :pswitch_4
    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mIsClock:Z

    .line 1097
    const-string v0, "IME"

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mAppCategory:Ljava/lang/String;

    goto :goto_0

    .line 1078
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public fromJSON(Ljava/lang/Object;)V
    .locals 5
    .param p1, "jsonObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1336
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "jsonObj":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1337
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "msgId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->msgId:Ljava/lang/String;

    .line 1338
    const-string v1, "returncode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mReturnCode:I

    .line 1339
    const-string v1, "packagename"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mPackageName:Ljava/lang/String;

    .line 1340
    const-string v1, "isclock"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mIsClock:Z

    .line 1341
    iget-boolean v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mIsClock:Z

    if-eqz v1, :cond_0

    .line 1342
    iput v3, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mPackageType:I

    .line 1343
    const-string v1, "group"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1344
    const-string v1, "group"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mGroup:Ljava/lang/String;

    .line 1347
    :cond_0
    const-string v1, "appcategory"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1348
    const-string v1, "appcategory"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mAppCategory:Ljava/lang/String;

    .line 1349
    const-string v1, "IME"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mAppCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1350
    const/4 v1, 0x5

    iput v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mPackageType:I

    .line 1367
    :cond_1
    :goto_0
    const-string v1, "appname"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mAppName:Ljava/lang/String;

    .line 1368
    const-string v1, "classname"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mClassName:Ljava/lang/String;

    .line 1369
    const-string v1, "apptype"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mAppType:Ljava/lang/String;

    .line 1370
    const-string v1, "imagedata"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mImageData:Ljava/lang/String;

    .line 1371
    const-string v1, "from_where"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mFromWhere:I

    .line 1372
    const-string v1, "ismultifavorite"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mIsMultiFavorite:Z

    .line 1373
    const-string v1, "settingfilename"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mSettingFileName:Ljava/lang/String;

    .line 1374
    const-string v1, "settingfiledata"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mSettingFileData:Ljava/lang/String;

    .line 1375
    const-string v1, "familyname"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1376
    const-string v1, "familyname"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mFamilyName:Ljava/lang/String;

    .line 1378
    :cond_2
    const-string v1, "voicetype"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1379
    const-string v1, "voicetype"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mVoiceType:Ljava/lang/String;

    .line 1381
    :cond_3
    const-string v1, "version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mVersion:Ljava/lang/String;

    .line 1382
    return-void

    .line 1351
    :cond_4
    const-string v1, "FONT"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mAppCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1352
    const/4 v1, 0x3

    iput v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mPackageType:I

    goto :goto_0

    .line 1353
    :cond_5
    const-string v1, "TTS"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mAppCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1354
    const/4 v1, 0x4

    iput v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mPackageType:I

    goto/16 :goto_0

    .line 1355
    :cond_6
    const-string v1, "WATCH_APP"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mAppCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1356
    iput v4, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mPackageType:I

    goto/16 :goto_0

    .line 1357
    :cond_7
    const-string v1, "WATCH_CLOCK"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mAppCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1358
    iput v3, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mPackageType:I

    .line 1359
    const-string v1, "group"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1360
    const-string v1, "group"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mGroup:Ljava/lang/String;

    goto/16 :goto_0

    .line 1363
    :cond_8
    iget-boolean v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mIsClock:Z

    if-nez v1, :cond_1

    .line 1364
    iput v4, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mPackageType:I

    goto/16 :goto_0
.end method

.method public getAppCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mAppCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method public getFromWhere()I
    .locals 1

    .prologue
    .line 1198
    iget v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mFromWhere:I

    return v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getImageData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mImageData:Ljava/lang/String;

    return-object v0
.end method

.method public getImageDataList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mImageDataList:[Ljava/lang/String;

    return-object v0
.end method

.method public getImageNameList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mImageNameList:[Ljava/lang/String;

    return-object v0
.end method

.method public getIsWidget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mAppType:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageType()I
    .locals 1

    .prologue
    .line 1174
    iget v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mPackageType:I

    return v0
.end method

.method public getReturnCode()I
    .locals 1

    .prologue
    .line 1166
    iget v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mReturnCode:I

    return v0
.end method

.method public getSettingFileData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mSettingFileData:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mSettingFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mVoiceType:Ljava/lang/String;

    return-object v0
.end method

.method public isMultiFavorite()Z
    .locals 1

    .prologue
    .line 1202
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mIsMultiFavorite:Z

    return v0
.end method

.method public multiWidgetFromJSON(Ljava/lang/Object;)V
    .locals 9
    .param p1, "jsonObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 1385
    new-instance v3, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "jsonObj":Ljava/lang/Object;
    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1386
    .local v3, "json":Lorg/json/JSONObject;
    const-string v5, "msgId"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->msgId:Ljava/lang/String;

    .line 1387
    const-string v5, "returncode"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mReturnCode:I

    .line 1388
    const-string v5, "packagename"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mPackageName:Ljava/lang/String;

    .line 1389
    const-string v5, "isclock"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mIsClock:Z

    .line 1390
    iget-boolean v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mIsClock:Z

    if-eqz v5, :cond_0

    .line 1391
    iput v7, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mPackageType:I

    .line 1392
    const-string v5, "group"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1393
    const-string v5, "group"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mGroup:Ljava/lang/String;

    .line 1396
    :cond_0
    const-string v5, "appcategory"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1397
    const-string v5, "appcategory"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mAppCategory:Ljava/lang/String;

    .line 1399
    const-string v5, "IME"

    iget-object v6, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mAppCategory:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1400
    const/4 v5, 0x5

    iput v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mPackageType:I

    .line 1417
    :cond_1
    :goto_0
    const-string v5, "appname"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mAppName:Ljava/lang/String;

    .line 1418
    const-string v5, "classname"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mClassName:Ljava/lang/String;

    .line 1419
    const-string v5, "apptype"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mAppType:Ljava/lang/String;

    .line 1420
    const-string v5, "version"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mVersion:Ljava/lang/String;

    .line 1421
    const-string v5, "imagedata"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mImageData:Ljava/lang/String;

    .line 1422
    const-string v5, "from_where"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mFromWhere:I

    .line 1423
    const-string v5, "ismultifavorite"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mIsMultiFavorite:Z

    .line 1424
    const-string v5, "settingfilename"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mSettingFileName:Ljava/lang/String;

    .line 1425
    const-string v5, "settingfiledata"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mSettingFileData:Ljava/lang/String;

    .line 1426
    const-string v5, "imagenamearray"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1427
    .local v2, "image_names":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 1428
    .local v4, "length":I
    new-array v5, v4, [Ljava/lang/String;

    iput-object v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mImageNameList:[Ljava/lang/String;

    .line 1429
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_7

    .line 1430
    iget-object v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mImageNameList:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 1429
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1401
    .end local v0    # "i":I
    .end local v2    # "image_names":Lorg/json/JSONArray;
    .end local v4    # "length":I
    :cond_2
    const-string v5, "FONT"

    iget-object v6, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mAppCategory:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1402
    const/4 v5, 0x3

    iput v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mPackageType:I

    goto :goto_0

    .line 1403
    :cond_3
    const-string v5, "TTS"

    iget-object v6, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mAppCategory:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1404
    const/4 v5, 0x4

    iput v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mPackageType:I

    goto/16 :goto_0

    .line 1405
    :cond_4
    const-string v5, "WATCH_APP"

    iget-object v6, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mAppCategory:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1406
    iput v8, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mPackageType:I

    goto/16 :goto_0

    .line 1407
    :cond_5
    const-string v5, "WATCH_CLOCK"

    iget-object v6, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mAppCategory:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1408
    iput v7, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mPackageType:I

    .line 1409
    const-string v5, "group"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1410
    const-string v5, "group"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mGroup:Ljava/lang/String;

    goto/16 :goto_0

    .line 1413
    :cond_6
    iget-boolean v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mIsClock:Z

    if-nez v5, :cond_1

    .line 1414
    iput v8, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mPackageType:I

    goto/16 :goto_0

    .line 1432
    .restart local v0    # "i":I
    .restart local v2    # "image_names":Lorg/json/JSONArray;
    .restart local v4    # "length":I
    :cond_7
    const-string v5, "imagedataarray"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1433
    .local v1, "image_datas":Lorg/json/JSONArray;
    new-array v5, v4, [Ljava/lang/String;

    iput-object v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mImageDataList:[Ljava/lang/String;

    .line 1434
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_8

    .line 1435
    iget-object v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mImageDataList:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 1434
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1437
    :cond_8
    const-string v5, "familyname"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1438
    const-string v5, "familyname"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mFamilyName:Ljava/lang/String;

    .line 1440
    :cond_9
    const-string v5, "voicetype"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1441
    const-string v5, "voicetype"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mVoiceType:Ljava/lang/String;

    .line 1443
    :cond_a
    return-void
.end method

.method public multiWidgetToJSON()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1281
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1282
    .local v3, "json":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1283
    .local v2, "image_names":Lorg/json/JSONArray;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1285
    .local v1, "image_datas":Lorg/json/JSONArray;
    iget-object v6, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mImageNameList:[Ljava/lang/String;

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v0, v6, v5

    .line 1286
    .local v0, "i":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1285
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1288
    .end local v0    # "i":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mImageDataList:[Ljava/lang/String;

    array-length v6, v5

    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v0, v5, v4

    .line 1289
    .restart local v0    # "i":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1288
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1292
    .end local v0    # "i":Ljava/lang/String;
    :cond_1
    const-string v4, "msgId"

    iget-object v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1293
    const-string v4, "returncode"

    iget v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mReturnCode:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1294
    const-string v4, "packagename"

    iget-object v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1295
    const-string v4, "isclock"

    iget-boolean v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mIsClock:Z

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1296
    iget v4, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mPackageType:I

    packed-switch v4, :pswitch_data_0

    .line 1314
    const-string v4, "appcategory"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1317
    :goto_2
    const-string v4, "appname"

    iget-object v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mAppName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1318
    const-string v4, "classname"

    iget-object v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1319
    const-string v4, "apptype"

    iget-object v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mAppType:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1320
    const-string v4, "version"

    iget-object v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mVersion:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1321
    const-string v4, "imagedata"

    iget-object v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mImageData:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1322
    const-string v4, "from_where"

    iget v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mFromWhere:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1323
    const-string v4, "ismultifavorite"

    iget-boolean v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mIsMultiFavorite:Z

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1324
    const-string v4, "imagenamearray"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1325
    const-string v4, "imagedataarray"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1326
    const-string v4, "settingfilename"

    iget-object v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mSettingFileName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1327
    const-string v4, "settingfiledata"

    iget-object v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mSettingFileData:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1328
    const-string v4, "familyname"

    iget-object v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mFamilyName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1329
    const-string v4, "voicetype"

    iget-object v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mVoiceType:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1331
    return-object v3

    .line 1298
    :pswitch_0
    const-string v4, "appcategory"

    const-string v5, "WATCH_CLOCK"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1299
    const-string v4, "group"

    iget-object v5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mGroup:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 1302
    :pswitch_1
    const-string v4, "appcategory"

    const-string v5, "WATCH_APP"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 1305
    :pswitch_2
    const-string v4, "appcategory"

    const-string v5, "FONT"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 1308
    :pswitch_3
    const-string v4, "appcategory"

    const-string v5, "TTS"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 1311
    :pswitch_4
    const-string v4, "appcategory"

    const-string v5, "IME"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    .line 1296
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public toJSON()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1239
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1240
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "msgId"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1241
    const-string v1, "returncode"

    iget v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mReturnCode:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1242
    const-string v1, "packagename"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1243
    const-string v1, "isclock"

    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mIsClock:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1244
    iget v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mPackageType:I

    packed-switch v1, :pswitch_data_0

    .line 1262
    const-string v1, "appcategory"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1265
    :goto_0
    const-string v1, "appname"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1266
    const-string v1, "classname"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1267
    const-string v1, "apptype"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mAppType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1268
    const-string v1, "version"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1269
    const-string v1, "imagedata"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mImageData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1270
    const-string v1, "from_where"

    iget v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mFromWhere:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1271
    const-string v1, "ismultifavorite"

    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mIsMultiFavorite:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1272
    const-string v1, "settingfilename"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mSettingFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1273
    const-string v1, "settingfiledata"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mSettingFileData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1274
    const-string v1, "familyname"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mFamilyName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1275
    const-string v1, "voicetype"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mVoiceType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1277
    return-object v0

    .line 1246
    :pswitch_0
    const-string v1, "appcategory"

    const-string v2, "WATCH_CLOCK"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1247
    const-string v1, "group"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$WappsInstallResMessage;->mGroup:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1250
    :pswitch_1
    const-string v1, "appcategory"

    const-string v2, "WATCH_APP"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1253
    :pswitch_2
    const-string v1, "appcategory"

    const-string v2, "FONT"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1256
    :pswitch_3
    const-string v1, "appcategory"

    const-string v2, "TTS"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1259
    :pswitch_4
    const-string v1, "appcategory"

    const-string v2, "IME"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1244
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
