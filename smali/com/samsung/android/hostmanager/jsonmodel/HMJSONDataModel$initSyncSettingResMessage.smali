.class public final Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;
.super Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;
.source "HMJSONDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "initSyncSettingResMessage"
.end annotation


# static fields
.field public static final CALLFWDAGREE:Ljava/lang/String; = "callfwduseragreement"

.field public static final FAVORITE_ORDER_TYPE:Ljava/lang/String; = "orderType"

.field public static final HOME_BG_MODE:Ljava/lang/String; = "home_bg_mode"

.field public static final HOME_BG_VALUE:Ljava/lang/String; = "home_bg_value"

.field public static final IDLE_CLOCK:Ljava/lang/String; = "idle_clock"

.field public static final IDLE_FONT_FAMILYNAME:Ljava/lang/String; = "idle_font_familyname"

.field public static final LASTGEARTOPHONECF:Ljava/lang/String; = "LastCallForwardingAction"

.field public static final MOBILE_NETWORK:Ljava/lang/String; = "mobile_network"

.field public static final NOTIFICATION:Ljava/lang/String; = "noti_onoff"

.field public static final PALMOVER:Ljava/lang/String; = "palmOver"

.field public static final POWERKEYDOUBLEPRESSING:Ljava/lang/String; = "powerkeydoublepressing"

.field public static final SETTING_INCOMING_CALL:Ljava/lang/String; = "incomingcall"

.field public static final SETTING_USING_CAMERA:Ljava/lang/String; = "usingcamera"

.field public static final SHAKEGESTURE:Ljava/lang/String; = "shakeGesture"

.field public static final SIMATTAHCED:Ljava/lang/String; = "sim_attached"

.field public static final SMART:Ljava/lang/String; = "smart"

.field public static final SWIPECAPTURE:Ljava/lang/String; = "swipeCapture"

.field public static final WAKEUP:Ljava/lang/String; = "wakeup"


# instance fields
.field public mCallFwdAgree:Z

.field public mFavoriteOrderType:Ljava/lang/String;

.field public mHomeBGMode:I

.field public mHomeBGValue:Ljava/lang/String;

.field public mIdleClock:Ljava/lang/String;

.field public mIdleFontFamilyname:Ljava/lang/String;

.field public mIncomingCall:Ljava/lang/String;

.field public mLastGearToPhoneCF:I

.field public mMobileNetwork:I

.field public mNotification:I

.field public mPDClassname:Ljava/lang/String;

.field public mPalmOver:Ljava/lang/String;

.field public mShakeGesture:Ljava/lang/String;

.field public mSimAttached:Z

.field public mSmart:I

.field public mSwipeCapture:Ljava/lang/String;

.field public mUsingCamera:Ljava/lang/String;

.field public mWake:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5105
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;-><init>()V

    .line 5106
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_SYNC_INIT_SETTING_RES:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->msgId:Ljava/lang/String;

    .line 5107
    return-void
.end method

.method public constructor <init>(ZIIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "sim_attached"    # Z
    .param p2, "noti_onoff"    # I
    .param p3, "smart"    # I
    .param p4, "wakeup"    # I
    .param p5, "powerkeydoublepressing"    # Ljava/lang/String;
    .param p6, "home_bg_mode"    # I
    .param p7, "home_bg_value"    # Ljava/lang/String;
    .param p8, "idle_clock"    # Ljava/lang/String;
    .param p9, "orderType"    # Ljava/lang/String;
    .param p10, "incomingcall"    # Ljava/lang/String;
    .param p11, "usingcamera"    # Ljava/lang/String;
    .param p12, "idleFontFamilyName"    # Ljava/lang/String;
    .param p13, "deviceID"    # Ljava/lang/String;
    .param p14, "shakeGesture"    # Ljava/lang/String;
    .param p15, "palmOver"    # Ljava/lang/String;
    .param p16, "swipeCapture"    # Ljava/lang/String;

    .prologue
    .line 5111
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/ResponseMessage;-><init>()V

    .line 5115
    sget-object v1, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_SYNC_INIT_SETTING_RES:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->msgId:Ljava/lang/String;

    .line 5116
    iput-boolean p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mSimAttached:Z

    .line 5117
    iput p2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mNotification:I

    .line 5118
    iput p3, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mSmart:I

    .line 5119
    iput p4, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mWake:I

    .line 5120
    iput-object p5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mPDClassname:Ljava/lang/String;

    .line 5121
    iput p6, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mHomeBGMode:I

    .line 5122
    iput-object p7, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mHomeBGValue:Ljava/lang/String;

    .line 5123
    iput-object p8, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mIdleClock:Ljava/lang/String;

    .line 5125
    iput-object p9, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mFavoriteOrderType:Ljava/lang/String;

    .line 5126
    iput-object p10, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mIncomingCall:Ljava/lang/String;

    .line 5127
    iput-object p11, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mUsingCamera:Ljava/lang/String;

    .line 5128
    iput-object p12, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mIdleFontFamilyname:Ljava/lang/String;

    .line 5129
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mShakeGesture:Ljava/lang/String;

    .line 5130
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mPalmOver:Ljava/lang/String;

    .line 5131
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mSwipeCapture:Ljava/lang/String;

    .line 5133
    iput-object p13, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mDeviceId:Ljava/lang/String;

    .line 5134
    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/lang/Object;)V
    .locals 3
    .param p1, "jsonObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 5242
    new-instance v1, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "jsonObj":Ljava/lang/Object;
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5243
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "msgId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->msgId:Ljava/lang/String;

    .line 5245
    :try_start_0
    const-string v2, "sim_attached"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mSimAttached:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5250
    :goto_0
    :try_start_1
    const-string v2, "noti_onoff"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mNotification:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5255
    :goto_1
    :try_start_2
    const-string v2, "wakeup"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mWake:I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 5260
    :goto_2
    :try_start_3
    const-string v2, "smart"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mSmart:I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 5265
    :goto_3
    :try_start_4
    const-string v2, "powerkeydoublepressing"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mPDClassname:Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 5270
    :goto_4
    :try_start_5
    const-string v2, "home_bg_mode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mHomeBGMode:I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 5275
    :goto_5
    :try_start_6
    const-string v2, "home_bg_value"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mHomeBGValue:Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    .line 5280
    :goto_6
    :try_start_7
    const-string v2, "idle_clock"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mIdleClock:Ljava/lang/String;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7

    .line 5288
    :goto_7
    :try_start_8
    const-string v2, "orderType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mFavoriteOrderType:Ljava/lang/String;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_8

    .line 5293
    :goto_8
    :try_start_9
    const-string v2, "incomingcall"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mIncomingCall:Ljava/lang/String;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_9

    .line 5298
    :goto_9
    :try_start_a
    const-string v2, "usingcamera"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mUsingCamera:Ljava/lang/String;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_a

    .line 5303
    :goto_a
    :try_start_b
    const-string v2, "idle_font_familyname"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mIdleFontFamilyname:Ljava/lang/String;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_b

    .line 5308
    :goto_b
    :try_start_c
    const-string v2, "shakeGesture"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mShakeGesture:Ljava/lang/String;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_c

    .line 5313
    :goto_c
    :try_start_d
    const-string v2, "palmOver"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mPalmOver:Ljava/lang/String;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_d

    .line 5318
    :goto_d
    :try_start_e
    const-string v2, "swipeCapture"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mSwipeCapture:Ljava/lang/String;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_e

    .line 5323
    :goto_e
    :try_start_f
    const-string v2, "mobile_network"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mMobileNetwork:I
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_f

    .line 5328
    :goto_f
    :try_start_10
    const-string v2, "LastCallForwardingAction"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mLastGearToPhoneCF:I
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_10

    .line 5333
    :goto_10
    :try_start_11
    const-string v2, "callfwduseragreement"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mCallFwdAgree:Z
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_11

    .line 5337
    :goto_11
    return-void

    .line 5246
    :catch_0
    move-exception v0

    .line 5247
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 5251
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 5252
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 5256
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v0

    .line 5257
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    .line 5261
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v0

    .line 5262
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_3

    .line 5266
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_4
    move-exception v0

    .line 5267
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_4

    .line 5271
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_5
    move-exception v0

    .line 5272
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_5

    .line 5276
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_6
    move-exception v0

    .line 5277
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_6

    .line 5281
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_7
    move-exception v0

    .line 5282
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_7

    .line 5289
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_8
    move-exception v0

    .line 5290
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_8

    .line 5294
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_9
    move-exception v0

    .line 5295
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_9

    .line 5299
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_a
    move-exception v0

    .line 5300
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_a

    .line 5304
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_b
    move-exception v0

    .line 5305
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_b

    .line 5309
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_c
    move-exception v0

    .line 5310
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_c

    .line 5314
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_d
    move-exception v0

    .line 5315
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_d

    .line 5319
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_e
    move-exception v0

    .line 5320
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_e

    .line 5324
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_f
    move-exception v0

    .line 5325
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_f

    .line 5329
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_10
    move-exception v0

    .line 5330
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_10

    .line 5334
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_11
    move-exception v0

    .line 5335
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_11
.end method

.method public getCallFwdAgree()Z
    .locals 1

    .prologue
    .line 5209
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mCallFwdAgree:Z

    return v0
.end method

.method public getFavrotieOrderType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5173
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mFavoriteOrderType:Ljava/lang/String;

    return-object v0
.end method

.method public getHomeBgMode()I
    .locals 1

    .prologue
    .line 5157
    iget v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mHomeBGMode:I

    return v0
.end method

.method public getHomeBgValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5161
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mHomeBGValue:Ljava/lang/String;

    return-object v0
.end method

.method public getIdleClock()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5165
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mIdleClock:Ljava/lang/String;

    return-object v0
.end method

.method public getIdleFontFamilyname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5185
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mIdleFontFamilyname:Ljava/lang/String;

    return-object v0
.end method

.method public getLastGearToPhoneCF()I
    .locals 1

    .prologue
    .line 5205
    iget v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mLastGearToPhoneCF:I

    return v0
.end method

.method public getMobileNetwork()I
    .locals 1

    .prologue
    .line 5201
    iget v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mMobileNetwork:I

    return v0
.end method

.method public getNotification()I
    .locals 1

    .prologue
    .line 5141
    iget v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mNotification:I

    return v0
.end method

.method public getPDClassname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5153
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mPDClassname:Ljava/lang/String;

    return-object v0
.end method

.method public getPalmOver()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5193
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mPalmOver:Ljava/lang/String;

    return-object v0
.end method

.method public getShakeGesture()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5189
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mShakeGesture:Ljava/lang/String;

    return-object v0
.end method

.method public getSimAttached()Z
    .locals 1

    .prologue
    .line 5137
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mSimAttached:Z

    return v0
.end method

.method public getSmart()I
    .locals 1

    .prologue
    .line 5145
    iget v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mSmart:I

    return v0
.end method

.method public getSwipeCapture()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5197
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mSwipeCapture:Ljava/lang/String;

    return-object v0
.end method

.method public getUsingCamera()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5181
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mUsingCamera:Ljava/lang/String;

    return-object v0
.end method

.method public getUsingIncomingCall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5177
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mIncomingCall:Ljava/lang/String;

    return-object v0
.end method

.method public getWakeUp()I
    .locals 1

    .prologue
    .line 5149
    iget v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mWake:I

    return v0
.end method

.method public toJSON()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 5214
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 5215
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "msgId"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5216
    const-string v1, "sim_attached"

    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mSimAttached:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 5217
    const-string v1, "noti_onoff"

    iget v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mNotification:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5218
    const-string v1, "wakeup"

    iget v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mWake:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5219
    const-string v1, "smart"

    iget v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mSmart:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5220
    const-string v1, "powerkeydoublepressing"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mPDClassname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5221
    const-string v1, "home_bg_mode"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mHomeBGValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5222
    const-string v1, "home_bg_value"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mHomeBGValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5223
    const-string v1, "idle_clock"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mIdleClock:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5225
    const-string v1, "orderType"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mFavoriteOrderType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5226
    const-string v1, "incomingcall"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mIncomingCall:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5227
    const-string v1, "usingcamera"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mUsingCamera:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5228
    const-string v1, "idle_font_familyname"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mIdleFontFamilyname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5229
    const-string v1, "shakeGesture"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mShakeGesture:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5230
    const-string v1, "palmOver"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mPalmOver:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5231
    const-string v1, "swipeCapture"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mSwipeCapture:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5232
    const-string v1, "mobile_network"

    iget v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mMobileNetwork:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5233
    const-string v1, "LastCallForwardingAction"

    iget v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mLastGearToPhoneCF:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5234
    const-string v1, "callfwduseragreement"

    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mCallFwdAgree:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 5236
    const-string v1, "deviceid"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingResMessage;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5237
    return-object v0
.end method
