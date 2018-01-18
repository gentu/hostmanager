.class public Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HMPackageBroadcastReceiver.java"


# static fields
.field private static final ACTION_FOR_EULA_AGREEMENT:Ljava/lang/String; = "com.samsung.android.app.watchmanager.action.INSTALL_COMPLETE"

.field private static final METADATA_FOR_EULA_AGREEMENT:Ljava/lang/String; = "NeedIntentFromGearManager"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isEssentialProvider(Ljava/lang/String;)Z
    .locals 6
    .param p1, "hPackageName"    # Ljava/lang/String;

    .prologue
    .line 392
    const/4 v0, 0x0

    .line 393
    .local v0, "isEssentialProvider":Z
    sget-object v3, Lcom/samsung/android/hostmanager/constant/GlobalConst;->providerPkgNames:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 394
    .local v1, "pName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 395
    const/4 v0, 0x1

    .line 400
    .end local v1    # "pName":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEssentialProvider("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return v0

    .line 393
    .restart local v1    # "pName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private isWatchApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hPackageName"    # Ljava/lang/String;

    .prologue
    .line 370
    const/4 v1, 0x0

    .line 372
    .local v1, "isWatchApp":Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x1000

    invoke-virtual {v4, p2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 374
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 375
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v3, v5, v4

    .line 376
    .local v3, "reqPermission":Ljava/lang/String;
    const-string v7, "com.samsung.wmanager.APP"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    .line 377
    const/4 v1, 0x1

    .line 386
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "reqPermission":Ljava/lang/String;
    :cond_0
    :goto_1
    sget-object v4, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isWatchApp("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return v1

    .line 375
    .restart local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v3    # "reqPermission":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 382
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "reqPermission":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private updateShealthSupportInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hPackageName"    # Ljava/lang/String;

    .prologue
    .line 407
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/16 v11, 0x80

    invoke-virtual {v10, p2, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 409
    .local v6, "pInfo":Landroid/content/pm/PackageInfo;
    if-eqz v6, :cond_5

    .line 410
    const-string v10, "shealth_support_pref"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 411
    .local v7, "pref":Landroid/content/SharedPreferences;
    const-string v10, "SHealthSupportPackageType"

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 412
    .local v4, "mSHealthSupportPackageType":I
    const-string v10, "SHealthSupportPackageVersionCode"

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 413
    .local v5, "mSHealthSupportPackageVersionCode":I
    sget-object v10, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateShealthSupportInfo(), mSHealthSupportPackageType: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    sget-object v10, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateShealthSupportInfo(), mSHealthSupportPackageVersionCode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const/4 v2, 0x0

    .line 417
    .local v2, "installedShealthPackageType":I
    const-string v10, "com.sec.android.app.shealth"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 418
    const/4 v2, 0x1

    .line 423
    :cond_0
    :goto_0
    iget v3, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 424
    .local v3, "installedVersionCode":I
    sget-object v10, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateShealthSupportInfo(), installedShealthPackageType: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    sget-object v10, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateShealthSupportInfo(), installedVersionCode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/4 v9, 0x0

    .line 427
    .local v9, "updateVersionCode":Z
    const/4 v8, 0x0

    .line 428
    .local v8, "updatePackageType":Z
    const/4 v10, 0x1

    if-ne v2, v10, :cond_7

    const/4 v10, 0x1

    if-ne v4, v10, :cond_7

    if-le v3, v5, :cond_7

    .line 431
    const/4 v9, 0x1

    .line 441
    :cond_1
    :goto_1
    sget-object v10, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateShealthSupportInfo(), updateVersionCode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", updatePackageType:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    if-nez v9, :cond_2

    if-eqz v8, :cond_5

    .line 443
    :cond_2
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 445
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    if-eqz v9, :cond_3

    .line 446
    const-string v10, "SHealthSupportPackageVersionCode"

    invoke-interface {v1, v10, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 448
    :cond_3
    if-eqz v8, :cond_4

    .line 449
    const-string v10, "SHealthSupportPackageType"

    invoke-interface {v1, v10, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 451
    :cond_4
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 457
    .end local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "installedShealthPackageType":I
    .end local v3    # "installedVersionCode":I
    .end local v4    # "mSHealthSupportPackageType":I
    .end local v5    # "mSHealthSupportPackageVersionCode":I
    .end local v6    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v7    # "pref":Landroid/content/SharedPreferences;
    .end local v8    # "updatePackageType":Z
    .end local v9    # "updateVersionCode":Z
    :cond_5
    :goto_2
    return-void

    .line 419
    .restart local v2    # "installedShealthPackageType":I
    .restart local v4    # "mSHealthSupportPackageType":I
    .restart local v5    # "mSHealthSupportPackageVersionCode":I
    .restart local v6    # "pInfo":Landroid/content/pm/PackageInfo;
    .restart local v7    # "pref":Landroid/content/SharedPreferences;
    :cond_6
    const-string v10, "com.sec.android.app.shealthlite"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_0

    .line 420
    const/4 v2, 0x2

    goto/16 :goto_0

    .line 432
    .restart local v3    # "installedVersionCode":I
    .restart local v8    # "updatePackageType":Z
    .restart local v9    # "updateVersionCode":Z
    :cond_7
    const/4 v10, 0x2

    if-ne v2, v10, :cond_8

    const/4 v10, 0x2

    if-ne v4, v10, :cond_8

    if-le v3, v5, :cond_8

    .line 435
    const/4 v9, 0x1

    goto :goto_1

    .line 436
    :cond_8
    const/4 v10, 0x1

    if-ne v2, v10, :cond_1

    const/4 v10, 0x2

    if-ne v4, v10, :cond_1

    .line 438
    const/4 v9, 0x1

    .line 439
    const/4 v8, 0x1

    goto :goto_1

    .line 454
    .end local v2    # "installedShealthPackageType":I
    .end local v3    # "installedVersionCode":I
    .end local v4    # "mSHealthSupportPackageType":I
    .end local v5    # "mSHealthSupportPackageVersionCode":I
    .end local v6    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v7    # "pref":Landroid/content/SharedPreferences;
    .end local v8    # "updatePackageType":Z
    .end local v9    # "updateVersionCode":Z
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 49
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    if-eqz p2, :cond_2a

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 51
    .local v8, "action":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v26

    .line 52
    .local v26, "intentUri":Landroid/net/Uri;
    const/16 v24, 0x0

    .line 53
    .local v24, "hPackageName":Ljava/lang/String;
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "onReceive()-->"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v45

    invoke-static/range {v45 .. v45}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getGearModelName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v30

    .line 57
    .local v30, "modelName":Ljava/lang/String;
    if-eqz v26, :cond_0

    .line 58
    invoke-virtual/range {v26 .. v26}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v24

    .line 61
    :cond_0
    if-eqz v8, :cond_29

    if-eqz v24, :cond_29

    .line 63
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v45

    const-string v46, "Gear"

    invoke-virtual/range {v45 .. v46}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getConnectedDeviceIdByType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 65
    .local v15, "deviceID":Ljava/lang/String;
    const/16 v31, 0x0

    .line 66
    .local v31, "packageManager":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    if-eqz v15, :cond_3

    .line 68
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v15}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getDeviceManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/DeviceManager;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getPackageManager()Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v31

    .line 76
    :goto_0
    const-string v45, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v45

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_d

    .line 77
    const-string v45, "com.sec.android.app.shealth"

    move-object/from16 v0, v24

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_1

    const-string v45, "com.sec.android.app.shealthlite"

    .line 78
    move-object/from16 v0, v24

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_4

    .line 79
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->updateShealthSupportInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 366
    .end local v8    # "action":Ljava/lang/String;
    .end local v15    # "deviceID":Ljava/lang/String;
    .end local v24    # "hPackageName":Ljava/lang/String;
    .end local v26    # "intentUri":Landroid/net/Uri;
    .end local v30    # "modelName":Ljava/lang/String;
    .end local v31    # "packageManager":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :cond_2
    :goto_1
    return-void

    .line 69
    .restart local v8    # "action":Ljava/lang/String;
    .restart local v15    # "deviceID":Ljava/lang/String;
    .restart local v24    # "hPackageName":Ljava/lang/String;
    .restart local v26    # "intentUri":Landroid/net/Uri;
    .restart local v30    # "modelName":Ljava/lang/String;
    .restart local v31    # "packageManager":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    :catch_0
    move-exception v16

    .line 70
    .local v16, "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_0

    .line 73
    .end local v16    # "e":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    :cond_3
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v46, "deviceID is null; so can\'t get a PM instance."

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :cond_4
    const-string v45, "kr.co.rightbrain.RetailModeB2Provider"

    move-object/from16 v0, v24

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_6

    .line 83
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v46, "RETAIL MODE APP is installed. We don\'t need to check Unknown Source."

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    if-eqz v31, :cond_5

    .line 85
    const/16 v45, 0x5

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    move/from16 v2, v45

    invoke-interface {v0, v15, v1, v2}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->installApp(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_1

    .line 87
    :cond_5
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v46, "installApp()-->packageManager instance is null."

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 93
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->isWatchApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->isEssentialProvider(Ljava/lang/String;)Z

    move-result v45

    if-nez v45, :cond_9

    .line 95
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "_"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "gearStore_wgtInApk_signature_path"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    const/16 v46, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 97
    .local v23, "gearStoreSigPrefs":Landroid/content/SharedPreferences;
    const/16 v45, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v45

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 98
    .local v21, "fromGearStore":Z
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "_signPath"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    const-string v46, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 99
    .local v40, "sigPath":Ljava/lang/String;
    if-eqz v21, :cond_8

    .line 100
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "Provider installed from gear store, packageName: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    if-eqz v31, :cond_7

    .line 102
    const-string v45, ""

    const/16 v46, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v45

    move-object/from16 v2, v24

    move/from16 v3, v46

    move-object/from16 v4, v40

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->installAppWithSignature(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    goto/16 :goto_1

    .line 104
    :cond_7
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v46, "installAppWithSignature()--> packageManager instance is null."

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 109
    :cond_8
    const-string v45, "prepared_install_from_samsungapps"

    const/16 v46, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v39

    .line 111
    .local v39, "prefsinstallchecker":Landroid/content/SharedPreferences;
    const/16 v45, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v24

    move/from16 v2, v45

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .line 112
    .local v22, "fromSamsungApps":Z
    if-nez v22, :cond_c

    .line 113
    if-eqz v31, :cond_b

    .line 114
    const-string v45, ""

    const/16 v46, 0x2

    move-object/from16 v0, v31

    move-object/from16 v1, v45

    move-object/from16 v2, v24

    move/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->installApp(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 244
    .end local v21    # "fromGearStore":Z
    .end local v22    # "fromSamsungApps":Z
    .end local v23    # "gearStoreSigPrefs":Landroid/content/SharedPreferences;
    .end local v39    # "prefsinstallchecker":Landroid/content/SharedPreferences;
    .end local v40    # "sigPath":Ljava/lang/String;
    :cond_9
    :goto_2
    const-string v45, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v45

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_22

    .line 246
    const-string v45, "preapkinstall"

    const/16 v46, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v41

    .line 247
    .local v41, "sp":Landroid/content/SharedPreferences;
    const-string v45, "finished"

    const/16 v46, 0x1

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 250
    .local v18, "finished":Z
    if-eqz v18, :cond_2

    .line 252
    const/4 v7, 0x0

    .line 253
    .local v7, "MetadataInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v32

    .line 254
    .local v32, "pm":Landroid/content/pm/PackageManager;
    if-eqz v32, :cond_a

    .line 256
    const/16 v45, 0x80

    :try_start_1
    move-object/from16 v0, v32

    move-object/from16 v1, v24

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v7

    .line 260
    :goto_3
    if-eqz v7, :cond_1e

    .line 261
    const/16 v29, 0x0

    .line 262
    .local v29, "metaBundle":Landroid/os/Bundle;
    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v29, v0

    .line 263
    if-eqz v29, :cond_a

    .line 264
    const/16 v33, 0x0

    .line 265
    .local v33, "pn":Ljava/lang/String;
    const-string v45, "NeedIntentFromGearManager"

    move-object/from16 v0, v29

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 266
    if-eqz v33, :cond_1d

    .line 267
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v46

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " has a METADATA for EULA agreement"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    new-instance v6, Landroid/content/Intent;

    const-string v45, "com.samsung.android.app.watchmanager.action.INSTALL_COMPLETE"

    move-object/from16 v0, v45

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 269
    .local v6, "EULA_intent":Landroid/content/Intent;
    const-string v45, "pkg_name"

    move-object/from16 v0, v45

    move-object/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 271
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "sendBroadcast() for EULA agreement : packageName = "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .end local v6    # "EULA_intent":Landroid/content/Intent;
    .end local v29    # "metaBundle":Landroid/os/Bundle;
    .end local v33    # "pn":Ljava/lang/String;
    :cond_a
    :goto_4
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "onReceive(), "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " is installed, "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "requesting to sync..."

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 284
    .local v42, "timeStamp":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v45

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v45, v0

    if-eqz v45, :cond_21

    .line 285
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "apk installed"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-static {v15, v0}, Lcom/samsung/android/hostmanager/status/StatusUtils;->putTimeStampFromPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v45, "scs"

    move-object/from16 v0, v45

    invoke-static {v15, v0}, Lcom/samsung/android/hostmanager/status/StatusUtils;->isSupportFeatureWearable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_20

    .line 288
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v15}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getConnectedType(Ljava/lang/String;)I

    move-result v12

    .line 289
    .local v12, "connectedType":I
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "ST::connectedType : "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/16 v45, 0x2

    move/from16 v0, v45

    if-eq v12, v0, :cond_1f

    .line 292
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v46, "ST::Package installed. Status Sync perform"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v45

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v45, v0

    const-string v46, "sync"

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    invoke-virtual {v0, v1, v15}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->requestGetWearableStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 116
    .end local v7    # "MetadataInfo":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "connectedType":I
    .end local v18    # "finished":Z
    .end local v32    # "pm":Landroid/content/pm/PackageManager;
    .end local v41    # "sp":Landroid/content/SharedPreferences;
    .end local v42    # "timeStamp":Ljava/lang/String;
    .restart local v21    # "fromGearStore":Z
    .restart local v22    # "fromSamsungApps":Z
    .restart local v23    # "gearStoreSigPrefs":Landroid/content/SharedPreferences;
    .restart local v39    # "prefsinstallchecker":Landroid/content/SharedPreferences;
    .restart local v40    # "sigPath":Ljava/lang/String;
    :cond_b
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v46, "installApp()--> packageManager instance is null."

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 119
    :cond_c
    invoke-interface/range {v39 .. v39}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 120
    .local v17, "editor":Landroid/content/SharedPreferences$Editor;
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 121
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    .line 124
    .end local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v21    # "fromGearStore":Z
    .end local v22    # "fromSamsungApps":Z
    .end local v23    # "gearStoreSigPrefs":Landroid/content/SharedPreferences;
    .end local v39    # "prefsinstallchecker":Landroid/content/SharedPreferences;
    .end local v40    # "sigPath":Ljava/lang/String;
    :cond_d
    const-string v45, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v45

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_1c

    .line 125
    const-string v45, "android.intent.extra.REPLACING"

    const/16 v46, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    .line 126
    .local v20, "forReplacing":Z
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "forReplacing = "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ", intent = "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/16 v45, 0x1

    move/from16 v0, v20

    move/from16 v1, v45

    if-eq v0, v1, :cond_2

    .line 136
    const-string v45, "com.samsung.android.app.watchmanager"

    move-object/from16 v0, v24

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_f

    .line 137
    sget v45, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v46, 0x17

    move/from16 v0, v45

    move/from16 v1, v46

    if-lt v0, v1, :cond_e

    .line 139
    :try_start_2
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v45

    const-string v46, "UHMVersion"

    const/16 v47, -0x2

    invoke-static/range {v45 .. v47}, Lcom/samsung/android/uhm/framework/ui/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 140
    :catch_1
    move-exception v16

    .line 141
    .local v16, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_1

    .line 144
    .end local v16    # "e":Ljava/lang/IllegalArgumentException;
    :cond_e
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v45

    const-string v46, "UHMVersion"

    const/16 v47, -0x2

    invoke-static/range {v45 .. v47}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 152
    :cond_f
    const/4 v10, 0x0

    .line 153
    .local v10, "bPackageName":Ljava/lang/String;
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "_"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "installed_clock_app"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    const/16 v46, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v34

    .line 154
    .local v34, "prefsInstalledClock":Landroid/content/SharedPreferences;
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "_"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "installed_wapp_app"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    const/16 v46, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v38

    .line 155
    .local v38, "prefsInstalledWapp":Landroid/content/SharedPreferences;
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "_"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "installed_font_app"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    const/16 v46, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v35

    .line 156
    .local v35, "prefsInstalledFont":Landroid/content/SharedPreferences;
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "_"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "installed_tts_app"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    const/16 v46, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v37

    .line 157
    .local v37, "prefsInstalledTTSapp":Landroid/content/SharedPreferences;
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "_"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "installed_ime_app"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    const/16 v46, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v36

    .line 159
    .local v36, "prefsInstalledIMEapp":Landroid/content/SharedPreferences;
    const-string v45, "empty"

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 160
    .local v11, "clockBpackageName":Ljava/lang/String;
    const-string v45, "empty"

    move-object/from16 v0, v38

    move-object/from16 v1, v24

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 161
    .local v44, "wappBpackageName":Ljava/lang/String;
    const-string v45, "empty"

    move-object/from16 v0, v35

    move-object/from16 v1, v24

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 162
    .local v19, "fontBpackageName":Ljava/lang/String;
    const-string v45, "empty"

    move-object/from16 v0, v37

    move-object/from16 v1, v24

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 163
    .local v43, "ttsBpackageName":Ljava/lang/String;
    const-string v45, "empty"

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 165
    .local v25, "imeBpackageName":Ljava/lang/String;
    const-string v45, "empty"

    move-object/from16 v0, v45

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_11

    .line 166
    move-object v10, v11

    .line 177
    :cond_10
    :goto_5
    if-eqz v10, :cond_16

    .line 178
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "uninstalled watch app - provider apk... "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    if-eqz v31, :cond_15

    .line 180
    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->handleIfUninstallFromGearManager(Ljava/lang/String;)Z

    move-result v14

    .line 181
    .local v14, "consumerUninstalled":Z
    if-nez v14, :cond_9

    .line 183
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "uninstalling consumer app for provider..."

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v45, ""

    const/16 v46, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v45

    move-object/from16 v2, v24

    move/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/hostmanager/manager/IPackageManager;->uninstallApp(Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 167
    .end local v14    # "consumerUninstalled":Z
    :cond_11
    const-string v45, "empty"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_12

    .line 168
    move-object/from16 v10, v44

    goto :goto_5

    .line 169
    :cond_12
    const-string v45, "empty"

    move-object/from16 v0, v19

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_13

    .line 170
    move-object/from16 v10, v19

    goto :goto_5

    .line 171
    :cond_13
    const-string v45, "empty"

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_14

    .line 172
    move-object/from16 v10, v43

    goto :goto_5

    .line 173
    :cond_14
    const-string v45, "empty"

    move-object/from16 v0, v25

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_10

    .line 174
    move-object/from16 v10, v25

    goto/16 :goto_5

    .line 187
    :cond_15
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v46, "Uninstallation from ApplicationManager; PackageManager instance is null."

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 191
    :cond_16
    const/4 v13, 0x0

    .line 192
    .local v13, "consumerPackageName":Ljava/lang/String;
    const-string v28, "empty"

    .line 193
    .local v28, "masterAppName":Ljava/lang/String;
    const-string v9, "empty"

    .line 194
    .local v9, "bAppName":Ljava/lang/String;
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "_consumer_packagename"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    const-string v46, "empty"

    move-object/from16 v0, v34

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 195
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "_consumer_packagename"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    const-string v46, "empty"

    move-object/from16 v0, v38

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 196
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "_consumer_packagename"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    const-string v46, "empty"

    move-object/from16 v0, v35

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 197
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "_consumer_packagename"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    const-string v46, "empty"

    move-object/from16 v0, v37

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 198
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "_consumer_packagename"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    const-string v46, "empty"

    move-object/from16 v0, v36

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 199
    const-string v45, "empty"

    move-object/from16 v0, v45

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_18

    .line 200
    move-object v13, v11

    .line 201
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v46, "master app of clock was unisntalled."

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "_master_app_name"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    const-string v46, "empty"

    move-object/from16 v0, v34

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 203
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "_slave_app_name"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    const-string v46, "empty"

    move-object/from16 v0, v34

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 225
    :cond_17
    :goto_6
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "Possible masterPackageName: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ", consumerPackageName: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    if-eqz v13, :cond_9

    .line 227
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "Master app might be uninstalled, masterAppName: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ", bAppName : "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-string v45, "empty"

    move-object/from16 v0, v28

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_9

    .line 229
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v46, "Master app uninstallation confirmed, show notification."

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string v45, "empty"

    move-object/from16 v0, v45

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_9

    .line 231
    new-instance v27, Landroid/content/Intent;

    const-string v45, "com.samsung.android.gear2plugin.ACTION_MASTER_APP_UNINSTALLED_NOTI"

    move-object/from16 v0, v27

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    .local v27, "masterAppIntent":Landroid/content/Intent;
    const-string v45, "masterAppName"

    move-object/from16 v0, v27

    move-object/from16 v1, v45

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v45, "installedAppName"

    move-object/from16 v0, v27

    move-object/from16 v1, v45

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 204
    .end local v27    # "masterAppIntent":Landroid/content/Intent;
    :cond_18
    const-string v45, "empty"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_19

    .line 205
    move-object/from16 v13, v44

    .line 206
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v46, "master app of wapp was uninstalled."

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "_master_app_name"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    const-string v46, "empty"

    move-object/from16 v0, v38

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 208
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "_slave_app_name"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    const-string v46, "empty"

    move-object/from16 v0, v38

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_6

    .line 209
    :cond_19
    const-string v45, "empty"

    move-object/from16 v0, v19

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_1a

    .line 210
    move-object/from16 v13, v19

    .line 211
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v46, "master app of font was uninstalled."

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "_master_app_name"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    const-string v46, "empty"

    move-object/from16 v0, v35

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 213
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "_slave_app_name"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    const-string v46, "empty"

    move-object/from16 v0, v35

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_6

    .line 214
    :cond_1a
    const-string v45, "empty"

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_1b

    .line 215
    move-object/from16 v13, v43

    .line 216
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v46, "master app of tts was uninstalled."

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "_master_app_name"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    const-string v46, "empty"

    move-object/from16 v0, v37

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 218
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "_slave_app_name"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    const-string v46, "empty"

    move-object/from16 v0, v37

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_6

    .line 219
    :cond_1b
    const-string v45, "empty"

    move-object/from16 v0, v25

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_17

    .line 220
    move-object/from16 v13, v25

    .line 221
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v46, "master app of ime was uninstalled."

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "_master_app_name"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    const-string v46, "empty"

    move-object/from16 v0, v36

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 223
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "_slave_app_name"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    const-string v46, "empty"

    move-object/from16 v0, v36

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_6

    .line 239
    .end local v9    # "bAppName":Ljava/lang/String;
    .end local v10    # "bPackageName":Ljava/lang/String;
    .end local v11    # "clockBpackageName":Ljava/lang/String;
    .end local v13    # "consumerPackageName":Ljava/lang/String;
    .end local v19    # "fontBpackageName":Ljava/lang/String;
    .end local v20    # "forReplacing":Z
    .end local v25    # "imeBpackageName":Ljava/lang/String;
    .end local v28    # "masterAppName":Ljava/lang/String;
    .end local v34    # "prefsInstalledClock":Landroid/content/SharedPreferences;
    .end local v35    # "prefsInstalledFont":Landroid/content/SharedPreferences;
    .end local v36    # "prefsInstalledIMEapp":Landroid/content/SharedPreferences;
    .end local v37    # "prefsInstalledTTSapp":Landroid/content/SharedPreferences;
    .end local v38    # "prefsInstalledWapp":Landroid/content/SharedPreferences;
    .end local v43    # "ttsBpackageName":Ljava/lang/String;
    .end local v44    # "wappBpackageName":Ljava/lang/String;
    :cond_1c
    const-string v45, "android.intent.action.PACKAGE_REPLACED"

    move-object/from16 v0, v45

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_9

    .line 240
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "Updated package: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 257
    .restart local v7    # "MetadataInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v18    # "finished":Z
    .restart local v32    # "pm":Landroid/content/pm/PackageManager;
    .restart local v41    # "sp":Landroid/content/SharedPreferences;
    :catch_2
    move-exception v16

    .line 258
    .local v16, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_3

    .line 273
    .end local v16    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v29    # "metaBundle":Landroid/os/Bundle;
    .restart local v33    # "pn":Ljava/lang/String;
    :cond_1d
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v46

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " has not METADATA for EULA agreement"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 278
    .end local v29    # "metaBundle":Landroid/os/Bundle;
    .end local v33    # "pn":Ljava/lang/String;
    :cond_1e
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v46

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " has not METADATA"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 295
    .restart local v12    # "connectedType":I
    .restart local v42    # "timeStamp":Ljava/lang/String;
    :cond_1f
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v46, "ST::Package installed. Status Sync postponed until next reconnection"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 298
    .end local v12    # "connectedType":I
    :cond_20
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v46, "ST::Package installed. Status Sync perform"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v45

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v45, v0

    const-string v46, "sync"

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    invoke-virtual {v0, v1, v15}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->requestGetWearableStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 302
    :cond_21
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v46, "mHMProviderService is null by some reason; can not request."

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "apk installed when there is no connection."

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-static {v15, v0}, Lcom/samsung/android/hostmanager/status/StatusUtils;->putTimeStampFromPref(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 306
    .end local v7    # "MetadataInfo":Landroid/content/pm/ApplicationInfo;
    .end local v18    # "finished":Z
    .end local v32    # "pm":Landroid/content/pm/PackageManager;
    .end local v41    # "sp":Landroid/content/SharedPreferences;
    .end local v42    # "timeStamp":Ljava/lang/String;
    :cond_22
    const-string v45, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v45

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_2

    .line 308
    const-string v45, "com.samsung.android.app.watchmanager"

    move-object/from16 v0, v24

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_23

    .line 309
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v46, "onReceive(), uhm is deleting. Ignoring this..."

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-string v45, "preapkinstall"

    const/16 v46, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v41

    .line 311
    .restart local v41    # "sp":Landroid/content/SharedPreferences;
    invoke-interface/range {v41 .. v41}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 312
    .restart local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v45, "finished"

    const/16 v46, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 313
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 315
    .end local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v41    # "sp":Landroid/content/SharedPreferences;
    :cond_23
    const-string v45, "preapkinstall"

    const/16 v46, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v41

    .line 316
    .restart local v41    # "sp":Landroid/content/SharedPreferences;
    const-string v45, "finished"

    const/16 v46, 0x1

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 319
    .restart local v18    # "finished":Z
    if-eqz v18, :cond_24

    .line 320
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "onReceive() "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " is deleted, "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "requesting to sync..."

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 322
    .restart local v42    # "timeStamp":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v45

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v45, v0

    if-eqz v45, :cond_27

    .line 323
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "apk removed"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-static {v15, v0}, Lcom/samsung/android/hostmanager/status/StatusUtils;->putTimeStampFromPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v45, "scs"

    move-object/from16 v0, v45

    invoke-static {v15, v0}, Lcom/samsung/android/hostmanager/status/StatusUtils;->isSupportFeatureWearable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_26

    .line 326
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v15}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getConnectedType(Ljava/lang/String;)I

    move-result v12

    .line 327
    .restart local v12    # "connectedType":I
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "ST::connectedType : "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/16 v45, 0x2

    move/from16 v0, v45

    if-eq v12, v0, :cond_25

    .line 330
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v46, "ST::Package removed. Status Sync perform"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v45

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v45, v0

    const-string v46, "sync"

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    invoke-virtual {v0, v1, v15}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->requestGetWearableStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .end local v12    # "connectedType":I
    .end local v42    # "timeStamp":Ljava/lang/String;
    :cond_24
    :goto_7
    const-string v45, "com.sk.vas.tshare"

    move-object/from16 v0, v24

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_2

    .line 348
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v46, "TShare is deleted."

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    sget v45, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v46, 0x17

    move/from16 v0, v45

    move/from16 v1, v46

    if-lt v0, v1, :cond_28

    .line 350
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v45

    const-string v46, "tshare_login_state"

    const/16 v47, 0x0

    invoke-static/range {v45 .. v47}, Lcom/samsung/android/uhm/framework/ui/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 351
    const/16 v45, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/callforward/CallForwardManager;->sendLoginStateToTshare(Landroid/content/Context;I)V

    .line 352
    invoke-static {}, Lcom/samsung/android/hostmanager/service/IUHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/IUHostManager;

    move-result-object v45

    const/16 v46, 0x0

    invoke-virtual/range {v45 .. v46}, Lcom/samsung/android/hostmanager/service/IUHostManager;->sendLoginStateToGear(I)V

    .line 356
    :goto_8
    invoke-static {}, Lcom/samsung/android/hostmanager/HMApplication;->getAppContext()Landroid/content/Context;

    move-result-object v45

    const-string v46, "gear_number_pref"

    const-string v47, "tshare_login_state"

    const-string v48, "false"

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    move-object/from16 v3, v48

    invoke-static {v0, v15, v1, v2, v3}, Lcom/samsung/android/hostmanager/utils/PrefUtils;->setPreferenceWithFilename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 333
    .restart local v12    # "connectedType":I
    .restart local v42    # "timeStamp":Ljava/lang/String;
    :cond_25
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v46, "ST::Package removed. Status Sync postponed until next reconnection"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 336
    .end local v12    # "connectedType":I
    :cond_26
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v46, "ST::Package removed. Status Sync perform"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-static {}, Lcom/samsung/android/hostmanager/service/ICHostManager;->getInstance()Lcom/samsung/android/hostmanager/service/ICHostManager;

    move-result-object v45

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/samsung/android/hostmanager/service/ICHostManager;->mHMProviderService:Lcom/samsung/android/hostmanager/service/HMSAPProviderService;

    move-object/from16 v45, v0

    const-string v46, "sync"

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    invoke-virtual {v0, v1, v15}, Lcom/samsung/android/hostmanager/service/HMSAPProviderService;->requestGetWearableStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 341
    :cond_27
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v46, "mHMProviderService is null by some reason; can not request."

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "apk removed when there is no connection."

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-static {v15, v0}, Lcom/samsung/android/hostmanager/status/StatusUtils;->putTimeStampFromPref(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 354
    .end local v42    # "timeStamp":Ljava/lang/String;
    :cond_28
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v45

    const-string v46, "tshare_login_state"

    const/16 v47, 0x0

    invoke-static/range {v45 .. v47}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_8

    .line 361
    .end local v15    # "deviceID":Ljava/lang/String;
    .end local v18    # "finished":Z
    .end local v31    # "packageManager":Lcom/samsung/android/hostmanager/manager/IPackageManager;
    .end local v41    # "sp":Landroid/content/SharedPreferences;
    :cond_29
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v46, "Invalid intent received."

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 364
    .end local v8    # "action":Ljava/lang/String;
    .end local v24    # "hPackageName":Ljava/lang/String;
    .end local v26    # "intentUri":Landroid/net/Uri;
    .end local v30    # "modelName":Ljava/lang/String;
    :cond_2a
    sget-object v45, Lcom/samsung/android/hostmanager/pm/HMPackageBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v46, "Intent is null."

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
