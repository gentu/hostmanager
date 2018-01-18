.class Lcom/samsung/android/hostmanager/service/ICHostManager$2$1;
.super Ljava/lang/Object;
.source "ICHostManager.java"

# interfaces
.implements Lcom/samsung/android/app/watchmanager/plugin/libinterface/pm/OnstatusReturned;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/service/ICHostManager$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/hostmanager/service/ICHostManager$2;

.field final synthetic val$deviceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/service/ICHostManager$2;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/hostmanager/service/ICHostManager$2;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/samsung/android/hostmanager/service/ICHostManager$2$1;->this$1:Lcom/samsung/android/hostmanager/service/ICHostManager$2;

    iput-object p2, p0, Lcom/samsung/android/hostmanager/service/ICHostManager$2$1;->val$deviceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .prologue
    .line 326
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 329
    :cond_0
    return-void
.end method

.method public packageUninstalled(Ljava/lang/String;I)V
    .locals 36
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .prologue
    .line 333
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v33

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "packageUninstalled() silent uninstaled H.apk, package name = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", returnCode = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const/16 v19, 0x0

    .line 338
    .local v19, "pm":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager$2$1;->val$deviceId:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getDeviceManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/DeviceManager;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getPackageManager()Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 344
    :goto_0
    const/16 v18, 0x0

    .line 345
    .local v18, "packageType":I
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getGearModelName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    .line 346
    .local v17, "modelName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager$2$1;->this$1:Lcom/samsung/android/hostmanager/service/ICHostManager$2;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager$2;->this$0:Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$300(Lcom/samsung/android/hostmanager/service/ICHostManager;)Landroid/content/Context;

    move-result-object v33

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "_"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "installed_clock_app"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    invoke-virtual/range {v33 .. v35}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 347
    .local v21, "prefsInstalledClock":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager$2$1;->this$1:Lcom/samsung/android/hostmanager/service/ICHostManager$2;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager$2;->this$0:Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$300(Lcom/samsung/android/hostmanager/service/ICHostManager;)Landroid/content/Context;

    move-result-object v33

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "_"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "installed_wapp_app"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    invoke-virtual/range {v33 .. v35}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v25

    .line 348
    .local v25, "prefsInstalledWapp":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager$2$1;->this$1:Lcom/samsung/android/hostmanager/service/ICHostManager$2;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager$2;->this$0:Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$300(Lcom/samsung/android/hostmanager/service/ICHostManager;)Landroid/content/Context;

    move-result-object v33

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "_"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "installed_font_app"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    invoke-virtual/range {v33 .. v35}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 349
    .local v22, "prefsInstalledFont":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager$2$1;->this$1:Lcom/samsung/android/hostmanager/service/ICHostManager$2;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager$2;->this$0:Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$300(Lcom/samsung/android/hostmanager/service/ICHostManager;)Landroid/content/Context;

    move-result-object v33

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "_"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "installed_tts_app"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    invoke-virtual/range {v33 .. v35}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 350
    .local v24, "prefsInstalledTTSapp":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager$2$1;->this$1:Lcom/samsung/android/hostmanager/service/ICHostManager$2;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager$2;->this$0:Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$300(Lcom/samsung/android/hostmanager/service/ICHostManager;)Landroid/content/Context;

    move-result-object v33

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "_"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "installed_ime_app"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    invoke-virtual/range {v33 .. v35}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 352
    .local v23, "prefsInstalledIMEapp":Landroid/content/SharedPreferences;
    const-string v33, "empty"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 353
    .local v5, "clockBPackageName":Ljava/lang/String;
    const-string v33, "empty"

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 354
    .local v32, "wappBPackageName":Ljava/lang/String;
    const-string v33, "empty"

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 355
    .local v10, "fontBPackageName":Ljava/lang/String;
    const-string v33, "empty"

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 356
    .local v30, "ttsBPackageName":Ljava/lang/String;
    const-string v33, "empty"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 358
    .local v12, "imeBPackageName":Ljava/lang/String;
    const/16 v20, 0x0

    .line 359
    .local v20, "prefsInstalledApp":Landroid/content/SharedPreferences;
    const-string v4, "empty"

    .line 360
    .local v4, "bPackageName":Ljava/lang/String;
    const-string v33, "empty"

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_7

    .line 361
    const/16 v18, 0x1

    .line 362
    move-object/from16 v20, v21

    .line 363
    move-object v4, v5

    .line 388
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager$2$1;->this$1:Lcom/samsung/android/hostmanager/service/ICHostManager$2;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager$2;->this$0:Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$300(Lcom/samsung/android/hostmanager/service/ICHostManager;)Landroid/content/Context;

    move-result-object v33

    const-string v34, "uninstall_from_where"

    const/16 v35, 0x0

    invoke-virtual/range {v33 .. v35}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v27

    .line 389
    .local v27, "prefsUninstallFrom":Landroid/content/SharedPreferences;
    const/16 v33, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 390
    .local v11, "fromWhere":I
    invoke-interface/range {v27 .. v27}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 391
    .local v8, "ed":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v8, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 392
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 395
    if-nez v18, :cond_1

    .line 396
    const/16 v33, 0x2

    move/from16 v0, v33

    if-ne v11, v0, :cond_b

    .line 397
    const/16 v18, 0x1

    .line 412
    :cond_1
    :goto_2
    if-eqz v11, :cond_10

    const/16 v33, 0x1

    move/from16 v0, v33

    if-eq v11, v0, :cond_10

    const/4 v14, 0x1

    .line 414
    .local v14, "isRequestFromUI":Z
    :goto_3
    const/4 v13, 0x0

    .line 415
    .local v13, "isNeedToUpdateAppListXML":Z
    const/16 v28, 0x0

    .line 417
    .local v28, "reson":I
    const/16 v33, 0x1

    move/from16 v0, p2

    move/from16 v1, v33

    if-ne v0, v1, :cond_13

    .line 419
    if-eqz v20, :cond_11

    const-string v33, "empty"

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_11

    .line 420
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v33

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Case MESSAGE_UNINSTALL_PROVIDER_APP: removing entries from shared pref for app: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 423
    .local v9, "edInstalledApp":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v9, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 424
    move-object/from16 v0, p1

    invoke-interface {v9, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 425
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "_master_app_packagename"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    const-string v34, "empty"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 426
    .local v16, "masterAppPackageName":Ljava/lang/String;
    const-string v33, "empty"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_2

    .line 427
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "_master_app_name"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-interface {v9, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 428
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "_slave_app_name"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-interface {v9, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 429
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "_master_app_packagename"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-interface {v9, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 430
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "_master_app_deeplink"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-interface {v9, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 431
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "_consumer_packagename"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-interface {v9, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 433
    :cond_2
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 440
    .end local v9    # "edInstalledApp":Landroid/content/SharedPreferences$Editor;
    .end local v16    # "masterAppPackageName":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager$2$1;->this$1:Lcom/samsung/android/hostmanager/service/ICHostManager$2;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager$2;->this$0:Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-object/from16 v33, v0

    .line 441
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$300(Lcom/samsung/android/hostmanager/service/ICHostManager;)Landroid/content/Context;

    move-result-object v33

    const-string v34, "bside_uninstall_finish_checker"

    const/16 v35, 0x0

    invoke-virtual/range {v33 .. v35}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v26

    .line 442
    .local v26, "prefsUninstallChecker":Landroid/content/SharedPreferences;
    const-string v33, "packageName"

    new-instance v34, Ljava/util/HashSet;

    invoke-direct/range {v34 .. v34}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v29

    .line 443
    .local v29, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    .line 444
    .local v15, "isSapDisconnected":Z
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v33

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Case MESSAGE_UNINSTALL_WGT_ONLY_RESULT: isSapDisconnected = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    if-eqz v15, :cond_12

    .line 447
    const/4 v13, 0x1

    .line 448
    const/16 v28, 0x3

    .line 459
    .end local v15    # "isSapDisconnected":Z
    .end local v26    # "prefsUninstallChecker":Landroid/content/SharedPreferences;
    .end local v29    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_5
    if-eqz v13, :cond_3

    .line 460
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v33

    const-string v34, "Case MESSAGE_UNINSTALL_WGT_ONLY_RESULT: removing app entry from applist.xml"

    invoke-static/range {v33 .. v34}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager$2$1;->this$1:Lcom/samsung/android/hostmanager/service/ICHostManager$2;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager$2;->this$0:Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager$2$1;->val$deviceId:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v33

    move/from16 v1, v18

    move-object/from16 v2, v34

    invoke-virtual {v0, v11, v4, v1, v2}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->updateAppListOnUninstalled(ILjava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 470
    :cond_3
    :goto_6
    if-nez v14, :cond_4

    const/16 v33, 0x1

    move/from16 v0, v28

    move/from16 v1, v33

    if-ne v0, v1, :cond_19

    .line 471
    :cond_4
    move/from16 v31, v11

    .line 472
    .local v31, "uninstallRequestType":I
    if-nez v31, :cond_5

    .line 473
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v33

    const-string v34, "Case MESSAGE_UNINSTALL_PROVIDER_RESULT: need to get exact app menu (e.g. HMClocks, HMWapps, HMFonts etc.) to update respective UI"

    invoke-static/range {v33 .. v34}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const/16 v33, 0x1

    move/from16 v0, v18

    move/from16 v1, v33

    if-ne v0, v1, :cond_14

    .line 476
    const/16 v31, 0x2

    .line 490
    :cond_5
    :goto_7
    const/16 v33, -0x1

    move/from16 v0, v31

    move/from16 v1, v33

    if-eq v0, v1, :cond_6

    .line 491
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v33

    const-string v34, "Case MESSAGE_UNINSTALL_PROVIDER_RESULT: need to send uninstall result to UI."

    invoke-static/range {v33 .. v34}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    if-eqz v19, :cond_6

    .line 493
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v33

    const-string v34, "Case MESSAGE_UNINSTALL_PROVIDER_RESULT: sending uninstallation result to UI."

    invoke-static/range {v33 .. v34}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager$2$1;->val$deviceId:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    move/from16 v2, v31

    move/from16 v3, v28

    invoke-interface {v0, v1, v4, v2, v3}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->onWearableAppUninstallResultReceived(Ljava/lang/String;Ljava/lang/String;II)V

    .line 500
    .end local v31    # "uninstallRequestType":I
    :cond_6
    :goto_8
    return-void

    .line 339
    .end local v4    # "bPackageName":Ljava/lang/String;
    .end local v5    # "clockBPackageName":Ljava/lang/String;
    .end local v8    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v10    # "fontBPackageName":Ljava/lang/String;
    .end local v11    # "fromWhere":I
    .end local v12    # "imeBPackageName":Ljava/lang/String;
    .end local v13    # "isNeedToUpdateAppListXML":Z
    .end local v14    # "isRequestFromUI":Z
    .end local v17    # "modelName":Ljava/lang/String;
    .end local v18    # "packageType":I
    .end local v20    # "prefsInstalledApp":Landroid/content/SharedPreferences;
    .end local v21    # "prefsInstalledClock":Landroid/content/SharedPreferences;
    .end local v22    # "prefsInstalledFont":Landroid/content/SharedPreferences;
    .end local v23    # "prefsInstalledIMEapp":Landroid/content/SharedPreferences;
    .end local v24    # "prefsInstalledTTSapp":Landroid/content/SharedPreferences;
    .end local v25    # "prefsInstalledWapp":Landroid/content/SharedPreferences;
    .end local v27    # "prefsUninstallFrom":Landroid/content/SharedPreferences;
    .end local v28    # "reson":I
    .end local v30    # "ttsBPackageName":Ljava/lang/String;
    .end local v32    # "wappBPackageName":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 340
    .local v7, "e1":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v7}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto/16 :goto_0

    .line 365
    .end local v7    # "e1":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    .restart local v4    # "bPackageName":Ljava/lang/String;
    .restart local v5    # "clockBPackageName":Ljava/lang/String;
    .restart local v10    # "fontBPackageName":Ljava/lang/String;
    .restart local v12    # "imeBPackageName":Ljava/lang/String;
    .restart local v17    # "modelName":Ljava/lang/String;
    .restart local v18    # "packageType":I
    .restart local v20    # "prefsInstalledApp":Landroid/content/SharedPreferences;
    .restart local v21    # "prefsInstalledClock":Landroid/content/SharedPreferences;
    .restart local v22    # "prefsInstalledFont":Landroid/content/SharedPreferences;
    .restart local v23    # "prefsInstalledIMEapp":Landroid/content/SharedPreferences;
    .restart local v24    # "prefsInstalledTTSapp":Landroid/content/SharedPreferences;
    .restart local v25    # "prefsInstalledWapp":Landroid/content/SharedPreferences;
    .restart local v30    # "ttsBPackageName":Ljava/lang/String;
    .restart local v32    # "wappBPackageName":Ljava/lang/String;
    :cond_7
    const-string v33, "empty"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_8

    .line 366
    const/16 v18, 0x2

    .line 367
    move-object/from16 v20, v25

    .line 368
    move-object/from16 v4, v32

    goto/16 :goto_1

    .line 370
    :cond_8
    const-string v33, "empty"

    move-object/from16 v0, v33

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_9

    .line 371
    const/16 v18, 0x3

    .line 372
    move-object/from16 v20, v22

    .line 373
    move-object v4, v10

    goto/16 :goto_1

    .line 375
    :cond_9
    const-string v33, "empty"

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_a

    .line 376
    const/16 v18, 0x4

    .line 377
    move-object/from16 v20, v24

    .line 378
    move-object/from16 v4, v30

    goto/16 :goto_1

    .line 380
    :cond_a
    const-string v33, "empty"

    move-object/from16 v0, v33

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_0

    .line 381
    const/16 v18, 0x5

    .line 382
    move-object/from16 v20, v23

    .line 383
    move-object v4, v12

    goto/16 :goto_1

    .line 398
    .restart local v8    # "ed":Landroid/content/SharedPreferences$Editor;
    .restart local v11    # "fromWhere":I
    .restart local v27    # "prefsUninstallFrom":Landroid/content/SharedPreferences;
    :cond_b
    const/16 v33, 0x3

    move/from16 v0, v33

    if-ne v11, v0, :cond_c

    .line 399
    const/16 v18, 0x2

    goto/16 :goto_2

    .line 400
    :cond_c
    const/16 v33, 0x4

    move/from16 v0, v33

    if-ne v11, v0, :cond_d

    .line 401
    const/16 v18, 0x3

    goto/16 :goto_2

    .line 402
    :cond_d
    const/16 v33, 0x5

    move/from16 v0, v33

    if-ne v11, v0, :cond_e

    .line 403
    const/16 v18, 0x4

    goto/16 :goto_2

    .line 404
    :cond_e
    const/16 v33, 0x6

    move/from16 v0, v33

    if-ne v11, v0, :cond_f

    .line 405
    const/16 v18, 0x5

    goto/16 :goto_2

    .line 407
    :cond_f
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v33

    const-string v34, "package uninstall req source can\'t be determined"

    invoke-static/range {v33 .. v34}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 412
    :cond_10
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 435
    .restart local v13    # "isNeedToUpdateAppListXML":Z
    .restart local v14    # "isRequestFromUI":Z
    .restart local v28    # "reson":I
    :cond_11
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v33

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Case MESSAGE_UNINSTALL_PROVIDER: no entry was found in shared pref for app: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 450
    .restart local v15    # "isSapDisconnected":Z
    .restart local v26    # "prefsUninstallChecker":Landroid/content/SharedPreferences;
    .restart local v29    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_12
    const/16 v28, 0x1

    goto/16 :goto_5

    .line 453
    .end local v15    # "isSapDisconnected":Z
    .end local v26    # "prefsUninstallChecker":Landroid/content/SharedPreferences;
    .end local v29    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_13
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v33

    const-string v34, "is this case exist??"

    invoke-static/range {v33 .. v34}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const/16 v28, 0x2

    .line 455
    const/4 v13, 0x1

    goto/16 :goto_5

    .line 463
    :catch_1
    move-exception v6

    .line 464
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 477
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v31    # "uninstallRequestType":I
    :cond_14
    const/16 v33, 0x2

    move/from16 v0, v18

    move/from16 v1, v33

    if-ne v0, v1, :cond_15

    .line 478
    const/16 v31, 0x3

    goto/16 :goto_7

    .line 479
    :cond_15
    const/16 v33, 0x3

    move/from16 v0, v18

    move/from16 v1, v33

    if-ne v0, v1, :cond_16

    .line 480
    const/16 v31, 0x4

    goto/16 :goto_7

    .line 481
    :cond_16
    const/16 v33, 0x4

    move/from16 v0, v18

    move/from16 v1, v33

    if-ne v0, v1, :cond_17

    .line 482
    const/16 v31, 0x5

    goto/16 :goto_7

    .line 483
    :cond_17
    const/16 v33, 0x5

    move/from16 v0, v18

    move/from16 v1, v33

    if-ne v0, v1, :cond_18

    .line 484
    const/16 v31, 0x6

    goto/16 :goto_7

    .line 486
    :cond_18
    const/16 v31, -0x1

    .line 487
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v33

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "uninstallRequestType is unknwon for wgtOnly app: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 498
    .end local v31    # "uninstallRequestType":I
    :cond_19
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->access$000()Ljava/lang/String;

    move-result-object v33

    const-string v34, "Case MESSAGE_UNINSTALL_PROVIDER_RESULT: no need to send uninstall result to UI."

    invoke-static/range {v33 .. v34}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8
.end method
