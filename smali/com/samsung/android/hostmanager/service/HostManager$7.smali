.class Lcom/samsung/android/hostmanager/service/HostManager$7;
.super Landroid/content/BroadcastReceiver;
.source "HostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/service/HostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/service/HostManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/service/HostManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/service/HostManager;

    .prologue
    .line 2055
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/HostManager$7;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2058
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 2059
    .local v2, "action":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Broadcast onReceive:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2061
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/service/HostManager$7;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/service/HostManager;->startGetAllWearableStatus()Ljava/util/ArrayList;

    move-result-object v3

    .line 2062
    .local v3, "allConnectedDeviceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/DeviceInfo;>;"
    const-string v14, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "android.intent.action.TIME_SET"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 2063
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/service/HostManager$7;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    const-string v15, "phone"

    invoke-virtual {v14, v15}, Lcom/samsung/android/hostmanager/service/HostManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    .line 2064
    .local v13, "telManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    .line 2070
    .local v5, "callStatus":I
    if-nez v5, :cond_2

    .line 2071
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Call state is CALL_STATE_IDLE, sync with B (NO CALL ACTIVITY)"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2080
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/service/HostManager$7;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    iget-object v14, v14, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    if-eqz v14, :cond_8

    .line 2081
    const/4 v6, -0x1

    .line 2082
    .local v6, "connectedDeviceCount":I
    if-eqz v3, :cond_7

    .line 2083
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2084
    if-lez v6, :cond_7

    .line 2085
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v6, :cond_7

    .line 2086
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    .line 2087
    .local v10, "info":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    if-eqz v10, :cond_6

    .line 2088
    invoke-virtual {v10}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v7

    .line 2089
    .local v7, "deviceID":Ljava/lang/String;
    if-eqz v7, :cond_5

    .line 2090
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onReceive DATE_CHANGED or TIME_SET. allConnectedDeviceInfo.size() = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", deviceID = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2092
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/service/HostManager$7;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    iget-object v15, v14, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->onlySendDateTime(Ljava/lang/String;)V

    .line 2093
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/service/HostManager$7;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    iget-object v15, v14, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendTime1224(Ljava/lang/String;)V

    .line 2085
    .end local v7    # "deviceID":Ljava/lang/String;
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2072
    .end local v6    # "connectedDeviceCount":I
    .end local v9    # "i":I
    .end local v10    # "info":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    :cond_2
    const/4 v14, 0x2

    if-ne v5, v14, :cond_4

    .line 2073
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Call state is CALL_STATE_OFFHOOK, no sync with B (IN CALL)"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2216
    .end local v5    # "callStatus":I
    .end local v13    # "telManager":Landroid/telephony/TelephonyManager;
    :cond_3
    :goto_2
    return-void

    .line 2075
    .restart local v5    # "callStatus":I
    .restart local v13    # "telManager":Landroid/telephony/TelephonyManager;
    :cond_4
    const/4 v14, 0x1

    if-ne v5, v14, :cond_1

    .line 2076
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Call state is CALL_STATE_RINGING, no sync with B (INCOMMING CALL)"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2095
    .restart local v6    # "connectedDeviceCount":I
    .restart local v7    # "deviceID":Ljava/lang/String;
    .restart local v9    # "i":I
    .restart local v10    # "info":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    :cond_5
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v14

    const-string v15, "mTimeDateLocaleBroadcastReceiver deviceID is null"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2098
    .end local v7    # "deviceID":Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v14

    const-string v15, "mTimeDateLocaleBroadcastReceiver info is null"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2103
    .end local v9    # "i":I
    .end local v10    # "info":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    :cond_7
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v14

    const-string v15, "sened Date,time data to B"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2105
    .end local v6    # "connectedDeviceCount":I
    :cond_8
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "sending Date,time data failed : mHMProviderService = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HostManager$7;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2137
    .end local v5    # "callStatus":I
    .end local v13    # "telManager":Landroid/telephony/TelephonyManager;
    :cond_9
    const-string v14, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 2138
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/service/HostManager$7;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    const-string v15, "phone"

    invoke-virtual {v14, v15}, Lcom/samsung/android/hostmanager/service/HostManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    .line 2139
    .restart local v13    # "telManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    .line 2140
    .restart local v5    # "callStatus":I
    if-nez v5, :cond_c

    .line 2141
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/service/HostManager$7;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    iget-object v14, v14, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    if-eqz v14, :cond_b

    .line 2142
    const/4 v6, -0x1

    .line 2143
    .restart local v6    # "connectedDeviceCount":I
    if-eqz v3, :cond_a

    .line 2144
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2145
    if-lez v6, :cond_a

    .line 2146
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_3
    if-ge v9, v6, :cond_a

    .line 2147
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v7

    .line 2148
    .restart local v7    # "deviceID":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onReceive android.intent.action.TIMEZONE_CHANGED. allConnectedDeviceInfo.size() = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", deviceID = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2150
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/service/HostManager$7;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    iget-object v15, v14, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->sendTimeZone(Ljava/lang/String;)V

    .line 2151
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/service/HostManager$7;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    iget-object v15, v14, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->onlySendDateTime(Ljava/lang/String;)V

    .line 2146
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 2155
    .end local v7    # "deviceID":Ljava/lang/String;
    .end local v9    # "i":I
    :cond_a
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v14

    const-string v15, "sened time zone to B"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2157
    .end local v6    # "connectedDeviceCount":I
    :cond_b
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "sending time zone data failed : mHMProviderService = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HostManager$7;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2159
    :cond_c
    const/4 v14, 0x2

    if-ne v5, v14, :cond_d

    .line 2160
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Call satate is CALL_STATE_OFFHOOK, no sync with B"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2161
    :cond_d
    const/4 v14, 0x1

    if-ne v5, v14, :cond_3

    .line 2162
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Call satate is CALL_STATE_RINGING, no sync with B"

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2164
    .end local v5    # "callStatus":I
    .end local v13    # "telManager":Landroid/telephony/TelephonyManager;
    :cond_e
    const-string v14, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 2165
    new-instance v11, Lcom/samsung/android/hostmanager/service/HostManager$7$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/samsung/android/hostmanager/service/HostManager$7$1;-><init>(Lcom/samsung/android/hostmanager/service/HostManager$7;)V

    .line 2181
    .local v11, "localeChangeHandler":Landroid/os/Handler;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$000()Landroid/content/Context;

    move-result-object v14

    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.intent.watchmanager.action.LANGUAGE_CHANGING"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2182
    const/4 v6, -0x1

    .line 2183
    .restart local v6    # "connectedDeviceCount":I
    if-eqz v3, :cond_3

    .line 2184
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2185
    if-lez v6, :cond_3

    .line 2186
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_4
    if-ge v9, v6, :cond_3

    .line 2187
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    invoke-virtual {v14}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v7

    .line 2188
    .restart local v7    # "deviceID":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onReceive android.intent.action.TIMEZONE_CHANGED. allConnectedDeviceInfo.size() = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", deviceID = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2190
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2191
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v14, "DEVICEID"

    invoke-virtual {v4, v14, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2192
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 2193
    .local v12, "msg":Landroid/os/Message;
    iput-object v4, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2194
    const-wide/16 v14, 0x3e8

    invoke-virtual {v11, v12, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2196
    invoke-static {}, Lcom/samsung/android/hostmanager/service/HostManager;->access$100()Ljava/lang/String;

    move-result-object v14

    const-string v15, "String of onGoing notification is chagned."

    invoke-static {v14, v15}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2197
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/service/HostManager$7;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    invoke-virtual {v14, v7}, Lcom/samsung/android/hostmanager/service/HostManager;->isConnected(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 2198
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/service/HostManager$7;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    iget-object v14, v14, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    const/4 v15, 0x0

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v14, v7, v15, v0}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->setNotification(Ljava/lang/String;Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;I)V

    .line 2203
    :goto_5
    if-eqz v7, :cond_f

    .line 2205
    :try_start_0
    invoke-static {v7}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getNotificationManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/INotificationManager;

    move-result-object v14

    if-eqz v14, :cond_f

    .line 2206
    invoke-static {v7}, Lcom/samsung/android/hostmanager/manager/ManagerUtils;->getNotificationManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/INotificationManager;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-interface {v14, v0}, Lcom/samsung/android/hostmanager/manager/INotificationManager;->updateAppName(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2186
    :cond_f
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 2200
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hostmanager/service/HostManager$7;->this$0:Lcom/samsung/android/hostmanager/service/HostManager;

    iget-object v14, v14, Lcom/samsung/android/hostmanager/service/HostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v7, v15, v0}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->setNotification(Ljava/lang/String;Lcom/samsung/android/sdk/connectionmanager/ScmWearableDevice;I)V

    goto :goto_5

    .line 2208
    :catch_0
    move-exception v8

    .line 2209
    .local v8, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_6
.end method
