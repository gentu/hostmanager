.class public final Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;
.super Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;
.source "HMJSONDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "initSyncSettingReqMessage"
.end annotation


# static fields
.field public static final AUTOTIMESYNC:Ljava/lang/String; = "autotimesync"

.field public static final CALLFORWARDING_ACTION_SIM1:Ljava/lang/String; = "LastCallForwardingAction"

.field public static final CALLFORWARDING_ACTION_SIM2:Ljava/lang/String; = "LastCallForwardingActionSim2"

.field public static final CALLFWDAGREE:Ljava/lang/String; = "callfwduseragreement"

.field public static final DATE1224:Ljava/lang/String; = "date1224"

.field public static final DATEFORMAT:Ljava/lang/String; = "dateformat"

.field public static final DATETIME:Ljava/lang/String; = "datetime"

.field public static final DATETIMEEPOCH:Ljava/lang/String; = "datetimeepoch"

.field public static final DEVICE_ID:Ljava/lang/String; = "deviceid"

.field public static final DUAL_MODEL:Ljava/lang/String; = "dualModel"

.field public static final EDITPHONENUMBERSIM1:Ljava/lang/String; = "editPhoneNumberSIM1"

.field public static final EDITPHONENUMBERSIM2:Ljava/lang/String; = "editPhoneNumberSIM2"

.field public static final GMT:Ljava/lang/String; = "gmt"

.field public static final HOSTCF_TYPE:Ljava/lang/String; = "hostcftype"

.field public static final ISAUTOCFD:Ljava/lang/String; = "isautocallforward"

.field public static final ISFROMINITIAL:Ljava/lang/String; = "isfrominitial"

.field public static final ISTABLET:Ljava/lang/String; = "tablet"

.field public static final LOCALE:Ljava/lang/String; = "locale"

.field public static final PHONENUMBER_SIM1:Ljava/lang/String; = "PhoneNumberSim1"

.field public static final PHONENUMBER_SIM2:Ljava/lang/String; = "PhoneNumberSim2"

.field public static final PHONETYPE_SIM1:Ljava/lang/String; = "PhoneTypeSim1"

.field public static final PHONETYPE_SIM2:Ljava/lang/String; = "PhoneTypeSim2"

.field public static final REVERSE_CFD:Ljava/lang/String; = "reversecfd"

.field public static final SAFETY:Ljava/lang/String; = "safety"

.field public static final SAFETY_CAM:Ljava/lang/String; = "safety_cam"

.field public static final SAFETY_DECLARED:Ljava/lang/String; = "safety_declared"

.field public static final SAFETY_VERSION:Ljava/lang/String; = "safetyVersion"

.field public static final SAFETY_VOICE:Ljava/lang/String; = "safety_voice"

.field public static final SETTING_INCOMING_CALL:Ljava/lang/String; = "incomingCall"

.field public static final SETTING_USING_CAMERA:Ljava/lang/String; = "usingCamera"

.field public static final SHOW_AUTOCFD:Ljava/lang/String; = "showautocfd"

.field public static final TIMEZONE:Ljava/lang/String; = "timezone"


# instance fields
.field public mAutotimesync:I

.field public mCallFwdAgree:Z

.field public mDate1224:Ljava/lang/String;

.field public mDateFormat:Ljava/lang/String;

.field public mDateTime:Ljava/lang/String;

.field public mDateTimeEpoch:Ljava/lang/String;

.field public mDualSim:Z

.field public mEditPhoneNumberSIM1:Ljava/lang/String;

.field public mEditPhoneNumberSIM2:Ljava/lang/String;

.field public mFrom:Z

.field public mGmt:Ljava/lang/String;

.field public mHostcftype:Ljava/lang/String;

.field public mIncomingCall:Ljava/lang/String;

.field public mIsAutoCFD:Ljava/lang/String;

.field public mLastCallForwardingActionSim1:I

.field public mLastCallForwardingActionSim2:I

.field public mLocale:Ljava/lang/String;

.field public mPhoneNumberSim1:Ljava/lang/String;

.field public mPhoneNumberSim2:Ljava/lang/String;

.field public mPhoneTypeSim1:Ljava/lang/String;

.field public mPhoneTypeSim2:Ljava/lang/String;

.field public mReverseCFD:Ljava/lang/String;

.field public mSafety:Ljava/lang/String;

.field public mSafetyVersion:I

.field public mSafety_cam:Ljava/lang/String;

.field public mSafety_declared:Ljava/lang/String;

.field public mSafety_voice:Ljava/lang/String;

.field public mShowAutoCFD:Ljava/lang/String;

.field public mTablet:Ljava/lang/String;

.field public mTimezone:Ljava/lang/String;

.field public mUsingCamera:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 4841
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;-><init>()V

    .line 4842
    sget-object v0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_SYNC_INIT_SETTING_REQ:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->msgId:Ljava/lang/String;

    .line 4843
    iput-object p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mDeviceId:Ljava/lang/String;

    .line 4844
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "timezone"    # Ljava/lang/String;
    .param p2, "dateformat"    # Ljava/lang/String;
    .param p3, "date1224"    # Ljava/lang/String;
    .param p4, "datetime"    # Ljava/lang/String;
    .param p5, "autotimesync"    # I
    .param p6, "from"    # Z
    .param p7, "locale"    # Ljava/lang/String;
    .param p8, "tablet"    # Ljava/lang/String;
    .param p9, "datetimeepoch"    # Ljava/lang/String;
    .param p10, "safety"    # Ljava/lang/String;
    .param p11, "safety_cam"    # Ljava/lang/String;
    .param p12, "safety_voice"    # Ljava/lang/String;
    .param p13, "safety_declared"    # Ljava/lang/String;
    .param p14, "incomingCall"    # Ljava/lang/String;
    .param p15, "usingCamera"    # Ljava/lang/String;
    .param p16, "safetyVersion"    # I
    .param p17, "deviceId"    # Ljava/lang/String;
    .param p18, "isDual"    # Z
    .param p19, "phoneTypeSim1"    # Ljava/lang/String;
    .param p20, "phoneTypeSim2"    # Ljava/lang/String;
    .param p21, "phoneNumberSim1"    # Ljava/lang/String;
    .param p22, "phoneNumberSim2"    # Ljava/lang/String;
    .param p23, "LastCallForwardingActionSim1"    # I
    .param p24, "LastCallForwardingActionSim2"    # I
    .param p25, "Hostcftype"    # Ljava/lang/String;
    .param p26, "ShowAutoCFD"    # Ljava/lang/String;
    .param p27, "IsAutoCFD"    # Ljava/lang/String;
    .param p28, "callfwdagree"    # Z
    .param p29, "gmt"    # Ljava/lang/String;
    .param p30, "reverseCFD"    # Ljava/lang/String;
    .param p31, "editPhoneNumberSIM1"    # Ljava/lang/String;
    .param p32, "editPhoneNumberSIM2"    # Ljava/lang/String;

    .prologue
    .line 4850
    invoke-direct {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;-><init>()V

    .line 4851
    sget-object v1, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->MGR_SYNC_INIT_SETTING_REQ:Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$HMMessage;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->msgId:Ljava/lang/String;

    .line 4852
    iput-object p1, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mTimezone:Ljava/lang/String;

    .line 4853
    iput-object p2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mDateFormat:Ljava/lang/String;

    .line 4854
    iput-object p3, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mDate1224:Ljava/lang/String;

    .line 4855
    iput-object p4, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mDateTime:Ljava/lang/String;

    .line 4856
    iput p5, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mAutotimesync:I

    .line 4857
    iput-boolean p6, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mFrom:Z

    .line 4858
    iput-object p7, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mLocale:Ljava/lang/String;

    .line 4859
    iput-object p8, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mTablet:Ljava/lang/String;

    .line 4860
    iput-object p9, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mDateTimeEpoch:Ljava/lang/String;

    .line 4861
    iput-object p10, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mSafety:Ljava/lang/String;

    .line 4862
    iput-object p11, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mSafety_cam:Ljava/lang/String;

    .line 4863
    iput-object p12, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mSafety_voice:Ljava/lang/String;

    .line 4864
    iput-object p13, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mSafety_declared:Ljava/lang/String;

    .line 4865
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mIncomingCall:Ljava/lang/String;

    .line 4866
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mUsingCamera:Ljava/lang/String;

    .line 4867
    move/from16 v0, p16

    iput v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mSafetyVersion:I

    .line 4868
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mDeviceId:Ljava/lang/String;

    .line 4869
    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mDualSim:Z

    .line 4870
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mPhoneTypeSim1:Ljava/lang/String;

    .line 4871
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mPhoneTypeSim2:Ljava/lang/String;

    .line 4872
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mPhoneNumberSim1:Ljava/lang/String;

    .line 4873
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mPhoneNumberSim2:Ljava/lang/String;

    .line 4874
    move/from16 v0, p23

    iput v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mLastCallForwardingActionSim1:I

    .line 4875
    move/from16 v0, p24

    iput v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mLastCallForwardingActionSim2:I

    .line 4876
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mHostcftype:Ljava/lang/String;

    .line 4877
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mShowAutoCFD:Ljava/lang/String;

    .line 4878
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mIsAutoCFD:Ljava/lang/String;

    .line 4879
    move/from16 v0, p28

    iput-boolean v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mCallFwdAgree:Z

    .line 4880
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mGmt:Ljava/lang/String;

    .line 4881
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mReverseCFD:Ljava/lang/String;

    .line 4882
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mEditPhoneNumberSIM1:Ljava/lang/String;

    .line 4883
    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mEditPhoneNumberSIM2:Ljava/lang/String;

    .line 4884
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
    .line 5024
    new-instance v1, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "jsonObj":Ljava/lang/Object;
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5025
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "msgId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->msgId:Ljava/lang/String;

    .line 5026
    const-string v2, "timezone"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mTimezone:Ljava/lang/String;

    .line 5027
    const-string v2, "dateformat"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mDateFormat:Ljava/lang/String;

    .line 5028
    const-string v2, "date1224"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mDate1224:Ljava/lang/String;

    .line 5029
    const-string v2, "datetime"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mDateTime:Ljava/lang/String;

    .line 5030
    const-string v2, "autotimesync"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mAutotimesync:I

    .line 5031
    const-string v2, "isfrominitial"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mFrom:Z

    .line 5032
    const-string v2, "locale"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mLocale:Ljava/lang/String;

    .line 5033
    const-string v2, "tablet"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mTablet:Ljava/lang/String;

    .line 5034
    const-string v2, "datetimeepoch"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mDateTimeEpoch:Ljava/lang/String;

    .line 5035
    const-string v2, "safety"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mSafety:Ljava/lang/String;

    .line 5036
    const-string v2, "safety_cam"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mSafety_cam:Ljava/lang/String;

    .line 5037
    const-string v2, "safety_voice"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mSafety_voice:Ljava/lang/String;

    .line 5038
    const-string v2, "safety_declared"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mSafety_declared:Ljava/lang/String;

    .line 5039
    const-string v2, "incomingCall"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mIncomingCall:Ljava/lang/String;

    .line 5040
    const-string v2, "usingCamera"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mUsingCamera:Ljava/lang/String;

    .line 5041
    const-string v2, "safetyVersion"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mSafetyVersion:I

    .line 5042
    const-string v2, "dualModel"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mDualSim:Z

    .line 5043
    const-string v2, "PhoneTypeSim1"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mPhoneTypeSim1:Ljava/lang/String;

    .line 5044
    const-string v2, "PhoneTypeSim2"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mPhoneTypeSim2:Ljava/lang/String;

    .line 5045
    const-string v2, "PhoneNumberSim1"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mPhoneNumberSim1:Ljava/lang/String;

    .line 5046
    const-string v2, "PhoneNumberSim2"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mPhoneNumberSim2:Ljava/lang/String;

    .line 5047
    const-string v2, "LastCallForwardingAction"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mLastCallForwardingActionSim1:I

    .line 5048
    const-string v2, "LastCallForwardingActionSim2"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mLastCallForwardingActionSim2:I

    .line 5049
    const-string v2, "hostcftype"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mHostcftype:Ljava/lang/String;

    .line 5050
    const-string v2, "showautocfd"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mShowAutoCFD:Ljava/lang/String;

    .line 5051
    const-string v2, "isautocallforward"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mIsAutoCFD:Ljava/lang/String;

    .line 5052
    const-string v2, "callfwduseragreement"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mCallFwdAgree:Z

    .line 5054
    :try_start_0
    const-string v2, "gmt"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mGmt:Ljava/lang/String;

    .line 5055
    const-string v2, "reversecfd"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mReverseCFD:Ljava/lang/String;

    .line 5056
    const-string v2, "editPhoneNumberSIM1"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mEditPhoneNumberSIM1:Ljava/lang/String;

    .line 5057
    const-string v2, "editPhoneNumberSIM2"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mEditPhoneNumberSIM2:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5061
    :goto_0
    return-void

    .line 5058
    :catch_0
    move-exception v0

    .line 5059
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getAutoCFD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4959
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mIsAutoCFD:Ljava/lang/String;

    return-object v0
.end method

.method public getAutotimesync()I
    .locals 1

    .prologue
    .line 4907
    iget v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mAutotimesync:I

    return v0
.end method

.method public getCallFwdAgree()Z
    .locals 1

    .prologue
    .line 4963
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mCallFwdAgree:Z

    return v0
.end method

.method public getDate1224()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4899
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mDate1224:Ljava/lang/String;

    return-object v0
.end method

.method public getDateFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4895
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mDateFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getDateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4903
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mDateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDateTimeEpoch()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4919
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mDateTimeEpoch:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4775
    invoke-super {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEditPhoneNumberSIM1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4975
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mEditPhoneNumberSIM1:Ljava/lang/String;

    return-object v0
.end method

.method public getEditPhoneNumberSIM2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4979
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mEditPhoneNumberSIM2:Ljava/lang/String;

    return-object v0
.end method

.method public getGmt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4967
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mGmt:Ljava/lang/String;

    return-object v0
.end method

.method public getHostcftype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4951
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mHostcftype:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4915
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mLocale:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4775
    invoke-super {p0}, Lcom/samsung/android/hostmanager/jsonmodel/RequestMessage;->getMsgId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReverseCFD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4971
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mReverseCFD:Ljava/lang/String;

    return-object v0
.end method

.method public getSafety()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4923
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mSafety:Ljava/lang/String;

    return-object v0
.end method

.method public getSafetyCam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4927
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mSafety_cam:Ljava/lang/String;

    return-object v0
.end method

.method public getSafetyDeclared()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4935
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mSafety_declared:Ljava/lang/String;

    return-object v0
.end method

.method public getSafetyVersion()I
    .locals 1

    .prologue
    .line 4947
    iget v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mSafetyVersion:I

    return v0
.end method

.method public getSafetyVoice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4931
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mSafety_voice:Ljava/lang/String;

    return-object v0
.end method

.method public getShowAutoCFD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4955
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mShowAutoCFD:Ljava/lang/String;

    return-object v0
.end method

.method public getTablet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4887
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mTablet:Ljava/lang/String;

    return-object v0
.end method

.method public getTimezone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4891
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mTimezone:Ljava/lang/String;

    return-object v0
.end method

.method public getUsingCamera()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4943
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mUsingCamera:Ljava/lang/String;

    return-object v0
.end method

.method public getUsingIncomingCall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4939
    iget-object v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mIncomingCall:Ljava/lang/String;

    return-object v0
.end method

.method public isFromInitial()Z
    .locals 1

    .prologue
    .line 4911
    iget-boolean v0, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mFrom:Z

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
    .line 4984
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4985
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "msgId"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4986
    const-string v1, "timezone"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mTimezone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4987
    const-string v1, "dateformat"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mDateFormat:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4988
    const-string v1, "date1224"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mDate1224:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4989
    const-string v1, "datetime"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mDateTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4990
    const-string v1, "autotimesync"

    iget v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mAutotimesync:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4991
    const-string v1, "isfrominitial"

    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mFrom:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 4992
    const-string v1, "locale"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mLocale:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4993
    const-string v1, "tablet"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mTablet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4994
    const-string v1, "datetimeepoch"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mDateTimeEpoch:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4995
    const-string v1, "safety"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mSafety:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4996
    const-string v1, "safety_cam"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mSafety_cam:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4997
    const-string v1, "safety_voice"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mSafety_voice:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4998
    const-string v1, "safety_declared"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mSafety_declared:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4999
    const-string v1, "incomingCall"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mIncomingCall:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5000
    const-string v1, "usingCamera"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mUsingCamera:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5001
    const-string v1, "safetyVersion"

    iget v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mSafetyVersion:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5002
    const-string v1, "deviceid"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5003
    const-string v1, "dualModel"

    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mDualSim:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 5004
    const-string v1, "PhoneTypeSim1"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mPhoneTypeSim1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5005
    const-string v1, "PhoneTypeSim2"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mPhoneTypeSim2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5006
    const-string v1, "PhoneNumberSim1"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mPhoneNumberSim1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5007
    const-string v1, "PhoneNumberSim2"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mPhoneNumberSim2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5008
    const-string v1, "LastCallForwardingAction"

    iget v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mLastCallForwardingActionSim1:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5009
    const-string v1, "LastCallForwardingActionSim2"

    iget v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mLastCallForwardingActionSim2:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5010
    const-string v1, "hostcftype"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mHostcftype:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5011
    const-string v1, "showautocfd"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mShowAutoCFD:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5012
    const-string v1, "isautocallforward"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mIsAutoCFD:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5013
    const-string v1, "callfwduseragreement"

    iget-boolean v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mCallFwdAgree:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 5014
    const-string v1, "gmt"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mGmt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5015
    const-string v1, "reversecfd"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mReverseCFD:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5016
    const-string v1, "editPhoneNumberSIM1"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mEditPhoneNumberSIM1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5017
    const-string v1, "editPhoneNumberSIM2"

    iget-object v2, p0, Lcom/samsung/android/hostmanager/jsonmodel/HMJSONDataModel$initSyncSettingReqMessage;->mEditPhoneNumberSIM2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5018
    return-object v0
.end method
