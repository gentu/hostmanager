.class public final Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;
.super Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;
.source "HMJSONDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThreeGConnectionSettingReqMessage"
.end annotation


# static fields
.field public static final HOST_ACCESS_TOKEN:Ljava/lang/String; = "host_AccessToken"

.field public static final HOST_APPID:Ljava/lang/String; = "host_appid"

.field public static final HOST_APP_SECRET:Ljava/lang/String; = "host_app_secret"

.field public static final HOST_CC:Ljava/lang/String; = "host_cc"

.field public static final HOST_GUID:Ljava/lang/String; = "host_guid"

.field public static final HOST_LOGIN_ID:Ljava/lang/String; = "host_email"

.field public static final HOST_MCC:Ljava/lang/String; = "host_mcc"

.field public static final HOST_MNC:Ljava/lang/String; = "host_mnc"

.field public static final HOST_REFRESH_TOKEN:Ljava/lang/String; = "host_refresh_token"

.field public static final THREEG_CONNECTION_ENABLED:Ljava/lang/String; = "3gConnectionEnabled"

.field public static final WEARABLE_ACCESS_TOKEN:Ljava/lang/String; = "wearable_AccessToken"

.field public static final WEARABLE_API_SERVER_URL:Ljava/lang/String; = "wearable_api_server_url"

.field public static final WEARABLE_APPID:Ljava/lang/String; = "wearable_appid"

.field public static final WEARABLE_APP_SECRET:Ljava/lang/String; = "wearable_app_secret"

.field public static final WEARABLE_AUTH_SERVER_URL:Ljava/lang/String; = "wearable_auth_server_url"

.field public static final WEARABLE_CC:Ljava/lang/String; = "wearable_cc"

.field public static final WEARABLE_GUID:Ljava/lang/String; = "wearable_guid"

.field public static final WEARABLE_LOGIN_ID:Ljava/lang/String; = "wearable_email"

.field public static final WEARABLE_MCC:Ljava/lang/String; = "wearable_mcc"

.field public static final WEARABLE_REFRESH_TOKEN:Ljava/lang/String; = "wearable_refresh_token"


# instance fields
.field public mHostAccessToken:Ljava/lang/String;

.field public mHostAppSecret:Ljava/lang/String;

.field public mHostAppid:Ljava/lang/String;

.field public mHostCC:Ljava/lang/String;

.field public mHostGuid:Ljava/lang/String;

.field public mHostLoginID:Ljava/lang/String;

.field public mHostMCC:Ljava/lang/String;

.field public mHostMNC:I

.field public mHostRefreshToken:Ljava/lang/String;

.field public mThreeGConnectionEnabled:Z

.field public mWearableAccessToken:Ljava/lang/String;

.field public mWearableApiServerUrl:Ljava/lang/String;

.field public mWearableAppSecret:Ljava/lang/String;

.field public mWearableAppid:Ljava/lang/String;

.field public mWearableAuthServerUrl:Ljava/lang/String;

.field public mWearableCC:Ljava/lang/String;

.field public mWearableGuid:Ljava/lang/String;

.field public mWearableLoginID:Ljava/lang/String;

.field public mWearableMCC:Ljava/lang/String;

.field public mWearableRefreshToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7005
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;-><init>()V

    .line 7006
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_3G_CONNECTION_SETTING_REQ:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->msgId:Ljava/lang/String;

    .line 7007
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "threeGConnectionEnabled"    # Z
    .param p2, "host_guid"    # Ljava/lang/String;
    .param p3, "host_appid"    # Ljava/lang/String;
    .param p4, "host_loginId"    # Ljava/lang/String;
    .param p5, "host_accessToken"    # Ljava/lang/String;
    .param p6, "host_cc"    # Ljava/lang/String;
    .param p7, "host_mcc"    # Ljava/lang/String;
    .param p8, "host_refresh_token"    # Ljava/lang/String;
    .param p9, "host_app_secret"    # Ljava/lang/String;
    .param p10, "wearable_guid"    # Ljava/lang/String;
    .param p11, "wearable_appid"    # Ljava/lang/String;
    .param p12, "wearable_loginId"    # Ljava/lang/String;
    .param p13, "wearable_accessToken"    # Ljava/lang/String;
    .param p14, "wearable_cc"    # Ljava/lang/String;
    .param p15, "wearable_mcc"    # Ljava/lang/String;
    .param p16, "wearable_refresh_token"    # Ljava/lang/String;
    .param p17, "wearable_app_secret"    # Ljava/lang/String;
    .param p18, "deviceId"    # Ljava/lang/String;
    .param p19, "wearable_api_server_url"    # Ljava/lang/String;
    .param p20, "wearable_auth_server_url"    # Ljava/lang/String;

    .prologue
    .line 7013
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;-><init>()V

    .line 7014
    sget-object v1, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_3G_CONNECTION_SETTING_REQ:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->msgId:Ljava/lang/String;

    .line 7015
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mThreeGConnectionEnabled:Z

    .line 7016
    iput-object p2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mHostGuid:Ljava/lang/String;

    .line 7017
    iput-object p3, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mHostAppid:Ljava/lang/String;

    .line 7018
    iput-object p5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mHostAccessToken:Ljava/lang/String;

    .line 7019
    iput-object p6, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mHostCC:Ljava/lang/String;

    .line 7020
    iput-object p7, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mHostMCC:Ljava/lang/String;

    .line 7021
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->_getMNC(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mHostMNC:I

    .line 7022
    iput-object p8, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mHostRefreshToken:Ljava/lang/String;

    .line 7023
    iput-object p4, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mHostLoginID:Ljava/lang/String;

    .line 7024
    iput-object p9, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mHostAppSecret:Ljava/lang/String;

    .line 7026
    iput-object p10, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mWearableGuid:Ljava/lang/String;

    .line 7027
    iput-object p11, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mWearableAppid:Ljava/lang/String;

    .line 7028
    iput-object p13, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mWearableAccessToken:Ljava/lang/String;

    .line 7029
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mWearableCC:Ljava/lang/String;

    .line 7030
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mWearableMCC:Ljava/lang/String;

    .line 7031
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mWearableRefreshToken:Ljava/lang/String;

    .line 7032
    iput-object p12, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mWearableLoginID:Ljava/lang/String;

    .line 7033
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mWearableAppSecret:Ljava/lang/String;

    .line 7034
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mWearableApiServerUrl:Ljava/lang/String;

    .line 7035
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mWearableAuthServerUrl:Ljava/lang/String;

    .line 7036
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mDeviceId:Ljava/lang/String;

    .line 7037
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
    .line 7153
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "jsonObj":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7154
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "msgId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->msgId:Ljava/lang/String;

    .line 7155
    const-string v1, "3gConnectionEnabled"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mThreeGConnectionEnabled:Z

    .line 7157
    const-string v1, "wearable_guid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mHostGuid:Ljava/lang/String;

    .line 7158
    const-string v1, "wearable_appid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mHostAppid:Ljava/lang/String;

    .line 7159
    const-string v1, "wearable_email"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mHostLoginID:Ljava/lang/String;

    .line 7160
    const-string v1, "wearable_AccessToken"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mHostAccessToken:Ljava/lang/String;

    .line 7161
    const-string v1, "wearable_cc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mHostCC:Ljava/lang/String;

    .line 7162
    const-string v1, "wearable_mcc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mHostMCC:Ljava/lang/String;

    .line 7163
    const-string v1, "wearable_refresh_token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mHostRefreshToken:Ljava/lang/String;

    .line 7164
    const-string v1, "wearable_app_secret"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mHostAppSecret:Ljava/lang/String;

    .line 7166
    const-string v1, "wearable_guid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mWearableGuid:Ljava/lang/String;

    .line 7167
    const-string v1, "wearable_appid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mWearableAppid:Ljava/lang/String;

    .line 7168
    const-string v1, "wearable_email"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mWearableLoginID:Ljava/lang/String;

    .line 7169
    const-string v1, "wearable_AccessToken"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mWearableAccessToken:Ljava/lang/String;

    .line 7170
    const-string v1, "wearable_cc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mWearableCC:Ljava/lang/String;

    .line 7171
    const-string v1, "wearable_mcc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mWearableMCC:Ljava/lang/String;

    .line 7172
    const-string v1, "wearable_refresh_token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mWearableRefreshToken:Ljava/lang/String;

    .line 7173
    const-string v1, "wearable_app_secret"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mWearableAppSecret:Ljava/lang/String;

    .line 7174
    const-string v1, "wearable_api_server_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mWearableApiServerUrl:Ljava/lang/String;

    .line 7175
    const-string v1, "wearable_auth_server_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mWearableAuthServerUrl:Ljava/lang/String;

    .line 7176
    return-void
.end method

.method public bridge synthetic getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6959
    invoke-super {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7056
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mHostAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getHostAppSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7076
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mHostAppSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getHostAppid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7048
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mHostAppid:Ljava/lang/String;

    return-object v0
.end method

.method public getHostCC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7060
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mHostCC:Ljava/lang/String;

    return-object v0
.end method

.method public getHostGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7044
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mHostGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getHostLoginId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7052
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mHostLoginID:Ljava/lang/String;

    return-object v0
.end method

.method public getHostMCC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7064
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mHostMCC:Ljava/lang/String;

    return-object v0
.end method

.method public getHostMNC()I
    .locals 1

    .prologue
    .line 7068
    iget v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mHostMNC:I

    return v0
.end method

.method public getHostRefreshToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7072
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mHostRefreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6959
    invoke-super {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;->getMsgId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThreeGConnectionEnabled()Z
    .locals 1

    .prologue
    .line 7040
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mThreeGConnectionEnabled:Z

    return v0
.end method

.method public getWearableAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7093
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mHostAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getWearableApiServerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7113
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mWearableApiServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWearableAppSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7109
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mWearableAppSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getWearableAppid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7085
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mWearableAppid:Ljava/lang/String;

    return-object v0
.end method

.method public getWearableAuthServerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7117
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mWearableAuthServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWearableCC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7097
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mWearableCC:Ljava/lang/String;

    return-object v0
.end method

.method public getWearableGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7081
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mWearableGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getWearableLoginId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7089
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mWearableLoginID:Ljava/lang/String;

    return-object v0
.end method

.method public getWearableMCC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7101
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mWearableMCC:Ljava/lang/String;

    return-object v0
.end method

.method public getWearableRefreshToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7105
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mWearableRefreshToken:Ljava/lang/String;

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
    .line 7122
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7123
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "msgId"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7124
    const-string v1, "3gConnectionEnabled"

    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mThreeGConnectionEnabled:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 7126
    const-string v1, "host_guid"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mHostGuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7127
    const-string v1, "host_appid"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mHostAppid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7128
    const-string v1, "host_email"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mHostLoginID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7129
    const-string v1, "host_AccessToken"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mHostAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7130
    const-string v1, "host_cc"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mHostCC:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7131
    const-string v1, "host_mcc"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mHostMCC:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7132
    const-string v1, "host_mnc"

    iget v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mHostMNC:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7133
    const-string v1, "host_refresh_token"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mHostRefreshToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7134
    const-string v1, "host_app_secret"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mHostAppSecret:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7136
    const-string v1, "wearable_guid"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mWearableGuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7137
    const-string v1, "wearable_appid"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mWearableAppid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7138
    const-string v1, "wearable_email"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mWearableLoginID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7139
    const-string v1, "wearable_AccessToken"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mWearableAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7140
    const-string v1, "wearable_cc"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mWearableCC:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7141
    const-string v1, "wearable_mcc"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mWearableMCC:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7142
    const-string v1, "wearable_refresh_token"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mWearableRefreshToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7143
    const-string v1, "wearable_app_secret"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mWearableAppSecret:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7144
    const-string v1, "wearable_api_server_url"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mWearableApiServerUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7145
    const-string v1, "wearable_auth_server_url"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mWearableAuthServerUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7146
    const-string v1, "deviceid"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$ThreeGConnectionSettingReqMessage;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7148
    return-object v0
.end method
