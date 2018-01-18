.class Lcom/samsung/android/hostmanager/service/ICHostManager$2;
.super Landroid/os/Handler;
.source "ICHostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/service/ICHostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/service/ICHostManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/service/ICHostManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/service/ICHostManager;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/ICHostManager$2;->this$0:Lcom/samsung/android/hostmanager/service/ICHostManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 40
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 115
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 116
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "handleMessage msg: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v37

    const-string v38, "Gear"

    invoke-virtual/range {v37 .. v38}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getConnectedDeviceIdByType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 118
    .local v6, "deviceId":Ljava/lang/String;
    const/16 v22, 0x0

    .line 120
    .local v22, "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getDeviceManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/DeviceManager;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getPackageManager()Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    .line 125
    :goto_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v37, v0

    packed-switch v37, :pswitch_data_0

    .line 524
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    .line 121
    :catch_0
    move-exception v8

    .line 122
    .local v8, "e1":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v8}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_0

    .line 133
    .end local v8    # "e1":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    :pswitch_1
    :try_start_1
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->DEBUGGABLE()Z

    move-result v37

    if-eqz v37, :cond_0

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager$2;->this$0:Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$300(Lcom/samsung/android/hostmanager/service/ICHostManager;)Landroid/content/Context;

    move-result-object v37

    const-string v38, "File Receive completed"

    const/16 v39, 0x1

    invoke-static/range {v37 .. v39}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 136
    :catch_1
    move-exception v37

    goto :goto_1

    .line 142
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v37

    const-string v38, "packagename"

    invoke-virtual/range {v37 .. v38}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, "bPackageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v37

    const-string v38, "resultcode"

    invoke-virtual/range {v37 .. v38}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v32

    .line 144
    .local v32, "resultCode":I
    if-eqz v4, :cond_1a

    .line 145
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Uninstalled wgtOnly app: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ", result code: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager$2;->this$0:Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$300(Lcom/samsung/android/hostmanager/service/ICHostManager;)Landroid/content/Context;

    move-result-object v37

    const-string v38, "uninstall_from_where"

    const/16 v39, 0x0

    invoke-virtual/range {v37 .. v39}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v30

    .line 149
    .local v30, "prefsUninstallFrom":Landroid/content/SharedPreferences;
    const/16 v37, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v37

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 150
    .local v12, "fromWhere":I
    invoke-interface/range {v30 .. v30}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 151
    .local v9, "ed":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v9, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 156
    move/from16 v31, v32

    .line 157
    .local v31, "reson":I
    const/16 v21, 0x0

    .line 158
    .local v21, "packageType":I
    if-eqz v12, :cond_7

    const/16 v37, 0x1

    move/from16 v0, v37

    if-eq v12, v0, :cond_7

    const/16 v16, 0x1

    .line 160
    .local v16, "isRequestFromUI":Z
    :goto_2
    const/4 v15, 0x0

    .line 161
    .local v15, "isNeedToUpdateAppListXML":Z
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getGearModelName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    .line 162
    .local v19, "modelName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager$2;->this$0:Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$300(Lcom/samsung/android/hostmanager/service/ICHostManager;)Landroid/content/Context;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "_"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "installed_clock_app"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x0

    invoke-virtual/range {v37 .. v39}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 163
    .local v24, "prefsInstalledClock":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager$2;->this$0:Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$300(Lcom/samsung/android/hostmanager/service/ICHostManager;)Landroid/content/Context;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "_"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "installed_wapp_app"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x0

    invoke-virtual/range {v37 .. v39}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v28

    .line 164
    .local v28, "prefsInstalledWapp":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager$2;->this$0:Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$300(Lcom/samsung/android/hostmanager/service/ICHostManager;)Landroid/content/Context;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "_"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "installed_font_app"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x0

    invoke-virtual/range {v37 .. v39}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v25

    .line 165
    .local v25, "prefsInstalledFont":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager$2;->this$0:Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$300(Lcom/samsung/android/hostmanager/service/ICHostManager;)Landroid/content/Context;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "_"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "installed_tts_app"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x0

    invoke-virtual/range {v37 .. v39}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v27

    .line 166
    .local v27, "prefsInstalledTTSapp":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager$2;->this$0:Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$300(Lcom/samsung/android/hostmanager/service/ICHostManager;)Landroid/content/Context;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "_"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "installed_ime_app"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x0

    invoke-virtual/range {v37 .. v39}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v26

    .line 168
    .local v26, "prefsInstalledIMEapp":Landroid/content/SharedPreferences;
    const-string v37, "empty"

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 169
    .local v5, "clockAppId":Ljava/lang/String;
    const-string v37, "empty"

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 170
    .local v36, "wappAppId":Ljava/lang/String;
    const-string v37, "empty"

    move-object/from16 v0, v25

    move-object/from16 v1, v37

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 171
    .local v11, "fontAppId":Ljava/lang/String;
    const-string v37, "empty"

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 172
    .local v34, "ttsAppId":Ljava/lang/String;
    const-string v37, "empty"

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 173
    .local v14, "imeAppId":Ljava/lang/String;
    const-string v3, "empty"

    .line 174
    .local v3, "appId":Ljava/lang/String;
    const/16 v23, 0x0

    .line 176
    .local v23, "prefsInstalledApp":Landroid/content/SharedPreferences;
    const-string v37, "empty"

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_8

    .line 177
    const/16 v21, 0x1

    .line 178
    move-object v3, v5

    .line 179
    move-object/from16 v23, v24

    .line 199
    :cond_1
    :goto_3
    if-nez v21, :cond_2

    .line 200
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "No valid entry in any shared pref for wgtOnly app: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const/16 v37, 0x2

    move/from16 v0, v37

    if-ne v12, v0, :cond_c

    .line 202
    const/16 v21, 0x1

    .line 215
    :cond_2
    :goto_4
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Case MESSAGE_UNINSTALL_WGT_ONLY_RESULT: isRequestFromUI = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Case MESSAGE_UNINSTALL_WGT_ONLY_RESULT: packageType = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Case MESSAGE_UNINSTALL_WGT_ONLY_RESULT: appId = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const/16 v37, 0x1

    move/from16 v0, v32

    move/from16 v1, v37

    if-ne v0, v1, :cond_13

    .line 221
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Uninstallation succeeded for wgtOnly app: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    if-eqz v23, :cond_11

    const-string v37, "empty"

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_11

    .line 225
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Case MESSAGE_UNINSTALL_WGT_ONLY_RESULT: removing entries from shared pref for app: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 228
    .local v10, "edInstalledApp":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v10, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 229
    invoke-interface {v10, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 230
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "_master_app_packagename"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    const-string v38, "empty"

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 231
    .local v18, "masterAppPackageName":Ljava/lang/String;
    const-string v37, "empty"

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_3

    .line 232
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "_master_app_name"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-interface {v10, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 233
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "_slave_app_name"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-interface {v10, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 234
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "_master_app_packagename"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-interface {v10, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 235
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "_master_app_deeplink"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-interface {v10, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 236
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "_consumer_packagename"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-interface {v10, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 238
    :cond_3
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 244
    .end local v10    # "edInstalledApp":Landroid/content/SharedPreferences$Editor;
    .end local v18    # "masterAppPackageName":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager$2;->this$0:Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-object/from16 v37, v0

    .line 245
    invoke-static/range {v37 .. v37}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$300(Lcom/samsung/android/hostmanager/service/ICHostManager;)Landroid/content/Context;

    move-result-object v37

    const-string v38, "bside_uninstall_finish_checker"

    const/16 v39, 0x0

    invoke-virtual/range {v37 .. v39}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v29

    .line 246
    .local v29, "prefsUninstallChecker":Landroid/content/SharedPreferences;
    const-string v37, "packageName"

    new-instance v38, Ljava/util/HashSet;

    invoke-direct/range {v38 .. v38}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v33

    .line 247
    .local v33, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, v33

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    .line 248
    .local v17, "isSapDisconnected":Z
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Case MESSAGE_UNINSTALL_WGT_ONLY_RESULT: isSapDisconnected = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    if-eqz v17, :cond_12

    .line 250
    const/4 v15, 0x1

    .line 251
    const/16 v31, 0x3

    .line 262
    .end local v17    # "isSapDisconnected":Z
    .end local v29    # "prefsUninstallChecker":Landroid/content/SharedPreferences;
    .end local v33    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_6
    if-eqz v15, :cond_4

    .line 263
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v37

    const-string v38, "Case MESSAGE_UNINSTALL_WGT_ONLY_RESULT: removing app entry from applist.xml"

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager$2;->this$0:Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v21

    invoke-virtual {v0, v12, v4, v1, v6}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->updateAppListOnUninstalled(ILjava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 279
    :cond_4
    :goto_7
    if-nez v16, :cond_5

    const/16 v37, 0x1

    move/from16 v0, v32

    move/from16 v1, v37

    if-ne v0, v1, :cond_19

    .line 280
    :cond_5
    move/from16 v35, v12

    .line 281
    .local v35, "uninstallRequestType":I
    if-nez v35, :cond_6

    .line 282
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v37

    const-string v38, "Case MESSAGE_UNINSTALL_WGT_ONLY_RESULT: need to get exact app menu (e.g. HMClocks, HMWapps, HMFonts etc.) to update respective UI"

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const/16 v37, 0x1

    move/from16 v0, v21

    move/from16 v1, v37

    if-ne v0, v1, :cond_14

    .line 285
    const/16 v35, 0x2

    .line 299
    :cond_6
    :goto_8
    const/16 v37, -0x1

    move/from16 v0, v35

    move/from16 v1, v37

    if-eq v0, v1, :cond_0

    .line 300
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v37

    const-string v38, "Case MESSAGE_UNINSTALL_WGT_ONLY_RESULT: need to send uninstall result to UI."

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    if-eqz v22, :cond_0

    .line 302
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v37

    const-string v38, "Case MESSAGE_UNINSTALL_WGT_ONLY_RESULT: sending uninstallation result to UI."

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    move-object/from16 v0, v22

    move/from16 v1, v35

    move/from16 v2, v31

    invoke-interface {v0, v6, v4, v1, v2}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->onWearableAppUninstallResultReceived(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 158
    .end local v3    # "appId":Ljava/lang/String;
    .end local v5    # "clockAppId":Ljava/lang/String;
    .end local v11    # "fontAppId":Ljava/lang/String;
    .end local v14    # "imeAppId":Ljava/lang/String;
    .end local v15    # "isNeedToUpdateAppListXML":Z
    .end local v16    # "isRequestFromUI":Z
    .end local v19    # "modelName":Ljava/lang/String;
    .end local v23    # "prefsInstalledApp":Landroid/content/SharedPreferences;
    .end local v24    # "prefsInstalledClock":Landroid/content/SharedPreferences;
    .end local v25    # "prefsInstalledFont":Landroid/content/SharedPreferences;
    .end local v26    # "prefsInstalledIMEapp":Landroid/content/SharedPreferences;
    .end local v27    # "prefsInstalledTTSapp":Landroid/content/SharedPreferences;
    .end local v28    # "prefsInstalledWapp":Landroid/content/SharedPreferences;
    .end local v34    # "ttsAppId":Ljava/lang/String;
    .end local v35    # "uninstallRequestType":I
    .end local v36    # "wappAppId":Ljava/lang/String;
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 180
    .restart local v3    # "appId":Ljava/lang/String;
    .restart local v5    # "clockAppId":Ljava/lang/String;
    .restart local v11    # "fontAppId":Ljava/lang/String;
    .restart local v14    # "imeAppId":Ljava/lang/String;
    .restart local v15    # "isNeedToUpdateAppListXML":Z
    .restart local v16    # "isRequestFromUI":Z
    .restart local v19    # "modelName":Ljava/lang/String;
    .restart local v23    # "prefsInstalledApp":Landroid/content/SharedPreferences;
    .restart local v24    # "prefsInstalledClock":Landroid/content/SharedPreferences;
    .restart local v25    # "prefsInstalledFont":Landroid/content/SharedPreferences;
    .restart local v26    # "prefsInstalledIMEapp":Landroid/content/SharedPreferences;
    .restart local v27    # "prefsInstalledTTSapp":Landroid/content/SharedPreferences;
    .restart local v28    # "prefsInstalledWapp":Landroid/content/SharedPreferences;
    .restart local v34    # "ttsAppId":Ljava/lang/String;
    .restart local v36    # "wappAppId":Ljava/lang/String;
    :cond_8
    const-string v37, "empty"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_9

    .line 181
    const/16 v21, 0x2

    .line 182
    move-object/from16 v3, v36

    .line 183
    move-object/from16 v23, v28

    goto/16 :goto_3

    .line 184
    :cond_9
    const-string v37, "empty"

    move-object/from16 v0, v37

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_a

    .line 185
    const/16 v21, 0x3

    .line 186
    move-object v3, v11

    .line 187
    move-object/from16 v23, v25

    goto/16 :goto_3

    .line 188
    :cond_a
    const-string v37, "empty"

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_b

    .line 189
    const/16 v21, 0x4

    .line 190
    move-object/from16 v3, v34

    .line 191
    move-object/from16 v23, v27

    goto/16 :goto_3

    .line 192
    :cond_b
    const-string v37, "empty"

    move-object/from16 v0, v37

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_1

    .line 193
    const/16 v21, 0x5

    .line 194
    move-object v3, v14

    .line 195
    move-object/from16 v23, v26

    goto/16 :goto_3

    .line 203
    :cond_c
    const/16 v37, 0x3

    move/from16 v0, v37

    if-ne v12, v0, :cond_d

    .line 204
    const/16 v21, 0x2

    goto/16 :goto_4

    .line 205
    :cond_d
    const/16 v37, 0x4

    move/from16 v0, v37

    if-ne v12, v0, :cond_e

    .line 206
    const/16 v21, 0x3

    goto/16 :goto_4

    .line 207
    :cond_e
    const/16 v37, 0x5

    move/from16 v0, v37

    if-ne v12, v0, :cond_f

    .line 208
    const/16 v21, 0x4

    goto/16 :goto_4

    .line 209
    :cond_f
    const/16 v37, 0x6

    move/from16 v0, v37

    if-ne v12, v0, :cond_10

    .line 210
    const/16 v21, 0x5

    goto/16 :goto_4

    .line 212
    :cond_10
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "packageType can\'t be determined for wgtOnly app: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 240
    :cond_11
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Case MESSAGE_UNINSTALL_WGT_ONLY_RESULT: no entry was found in shared pref for app: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 253
    .restart local v17    # "isSapDisconnected":Z
    .restart local v29    # "prefsUninstallChecker":Landroid/content/SharedPreferences;
    .restart local v33    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_12
    const/16 v31, 0x1

    goto/16 :goto_6

    .line 256
    .end local v17    # "isSapDisconnected":Z
    .end local v29    # "prefsUninstallChecker":Landroid/content/SharedPreferences;
    .end local v33    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_13
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Uninstallation failed for wgtOnly app: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const/4 v15, 0x1

    .line 258
    const/16 v31, 0x2

    goto/16 :goto_6

    .line 266
    :catch_2
    move-exception v7

    .line 267
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 286
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v35    # "uninstallRequestType":I
    :cond_14
    const/16 v37, 0x2

    move/from16 v0, v21

    move/from16 v1, v37

    if-ne v0, v1, :cond_15

    .line 287
    const/16 v35, 0x3

    goto/16 :goto_8

    .line 288
    :cond_15
    const/16 v37, 0x3

    move/from16 v0, v21

    move/from16 v1, v37

    if-ne v0, v1, :cond_16

    .line 289
    const/16 v35, 0x4

    goto/16 :goto_8

    .line 290
    :cond_16
    const/16 v37, 0x4

    move/from16 v0, v21

    move/from16 v1, v37

    if-ne v0, v1, :cond_17

    .line 291
    const/16 v35, 0x5

    goto/16 :goto_8

    .line 292
    :cond_17
    const/16 v37, 0x5

    move/from16 v0, v21

    move/from16 v1, v37

    if-ne v0, v1, :cond_18

    .line 293
    const/16 v35, 0x6

    goto/16 :goto_8

    .line 295
    :cond_18
    const/16 v35, -0x1

    .line 296
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "uninstallRequestType is unknwon for wgtOnly app: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 307
    .end local v35    # "uninstallRequestType":I
    :cond_19
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v37

    const-string v38, "Case MESSAGE_UNINSTALL_WGT_ONLY_RESULT: no need to send uninstall result to UI."

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 311
    .end local v3    # "appId":Ljava/lang/String;
    .end local v5    # "clockAppId":Ljava/lang/String;
    .end local v9    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v11    # "fontAppId":Ljava/lang/String;
    .end local v12    # "fromWhere":I
    .end local v14    # "imeAppId":Ljava/lang/String;
    .end local v15    # "isNeedToUpdateAppListXML":Z
    .end local v16    # "isRequestFromUI":Z
    .end local v19    # "modelName":Ljava/lang/String;
    .end local v21    # "packageType":I
    .end local v23    # "prefsInstalledApp":Landroid/content/SharedPreferences;
    .end local v24    # "prefsInstalledClock":Landroid/content/SharedPreferences;
    .end local v25    # "prefsInstalledFont":Landroid/content/SharedPreferences;
    .end local v26    # "prefsInstalledIMEapp":Landroid/content/SharedPreferences;
    .end local v27    # "prefsInstalledTTSapp":Landroid/content/SharedPreferences;
    .end local v28    # "prefsInstalledWapp":Landroid/content/SharedPreferences;
    .end local v30    # "prefsUninstallFrom":Landroid/content/SharedPreferences;
    .end local v31    # "reson":I
    .end local v34    # "ttsAppId":Ljava/lang/String;
    .end local v36    # "wappAppId":Ljava/lang/String;
    :cond_1a
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v37

    const-string v38, "Case MESSAGE_UNINSTALL_WGT_ONLY_RESULT: bpackageName is null."

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 317
    .end local v4    # "bPackageName":Ljava/lang/String;
    .end local v32    # "resultCode":I
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v37

    const-string v38, "packagename"

    invoke-virtual/range {v37 .. v38}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 319
    .local v13, "hPackageName":Ljava/lang/String;
    :try_start_3
    const-string v37, "empty"

    move-object/from16 v0, v37

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_1b

    .line 320
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Start uninstalling provider app: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager$2;->this$0:Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$300(Lcom/samsung/android/hostmanager/service/ICHostManager;)Landroid/content/Context;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/samsung/android/app/watchmanager/plugin/libfactory/pm/PackageInstallerFactory;->get(Landroid/content/Context;)Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PackageInstallerInterface;

    move-result-object v20

    .line 322
    .local v20, "packageController":Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PackageInstallerInterface;
    new-instance v37, Lcom/samsung/android/hostmanager/service/ICHostManager$2$1;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/hostmanager/service/ICHostManager$2$1;-><init>(Lcom/samsung/android/hostmanager/service/ICHostManager$2;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PackageInstallerInterface;->SetOnStatusReturned(Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/OnstatusReturned;)V

    .line 502
    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PackageInstallerInterface;->uninstallPackage(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_7

    goto/16 :goto_1

    .line 506
    .end local v20    # "packageController":Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/PackageInstallerInterface;
    :catch_3
    move-exception v7

    .line 507
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Uninstall failed for  "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_1

    .line 504
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1b
    :try_start_4
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v37

    const-string v38, "hPackageName is empty, can\'t uninstall it"

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_7

    goto/16 :goto_1

    .line 509
    :catch_4
    move-exception v7

    .line 510
    .local v7, "e":Ljava/lang/SecurityException;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Uninstall failed for  "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-virtual {v7}, Ljava/lang/SecurityException;->printStackTrace()V

    goto/16 :goto_1

    .line 512
    .end local v7    # "e":Ljava/lang/SecurityException;
    :catch_5
    move-exception v7

    .line 513
    .local v7, "e":Ljava/lang/IllegalAccessException;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Uninstall failed for  "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-virtual {v7}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_1

    .line 515
    .end local v7    # "e":Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v7

    .line 516
    .local v7, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Uninstall failed for  "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-virtual {v7}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_1

    .line 518
    .end local v7    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_7
    move-exception v7

    .line 519
    .local v7, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Uninstall failed for  "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-virtual {v7}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/16 :goto_1

    .line 125
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
