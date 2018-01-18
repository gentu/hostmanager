.class public Lcom/samsung/android/hostmanager/status/HostDevice;
.super Ljava/lang/Object;
.source "HostDevice.java"


# static fields
.field private static final BIXBY_PACKAGE_NAME_HOST:Ljava/lang/String; = "com.samsung.android.bixby.bridge"

.field private static final RETAIL_MODE_APP:Ljava/lang/String; = "kr.co.rightbrain.RetailModeB2Provider"

.field private static final SVOICE_PACKAGE_NAME_HOST:Ljava/lang/String; = "com.vlingo.midas"

.field private static final SVOICE_SS_PACKAGE_NAME_HOST:Ljava/lang/String; = "com.samsung.voiceserviceplatform"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeviceId:Ljava/lang/String;

.field private mStatusManager:Lcom/samsung/android/hostmanager/manager/IStatusManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/samsung/android/hostmanager/status/HostDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hostmanager/status/HostDevice;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/samsung/android/hostmanager/status/HostDevice;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/samsung/android/hostmanager/status/HostDevice;->mDeviceId:Ljava/lang/String;

    .line 72
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/hostmanager/status/HostDevice;->mStatusManager:Lcom/samsung/android/hostmanager/manager/IStatusManager;

    .line 74
    :try_start_0
    invoke-static {}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getInstance()Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hostmanager/status/HostDevice;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/hostmanager/manager/WearableDeviceFactory;->getDeviceManager(Ljava/lang/String;)Lcom/samsung/android/hostmanager/manager/DeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hostmanager/manager/DeviceManager;->getStatusManager()Lcom/samsung/android/hostmanager/manager/IStatusManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hostmanager/status/HostDevice;->mStatusManager:Lcom/samsung/android/hostmanager/manager/IStatusManager;
    :try_end_0
    .catch Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e1":Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;
    invoke-virtual {v0}, Lcom/samsung/android/hostmanager/exception/DeviceNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method private getHostAppInfo(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 54
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hostmanager/aidl/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    sget-object v48, Lcom/samsung/android/hostmanager/status/HostDevice;->TAG:Ljava/lang/String;

    const-string v49, "ST::getHostAppInfo()"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v42

    .line 272
    .local v42, "start":J
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v31, "mHostAppInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/AppInfo;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v38

    .line 276
    .local v38, "pm":Landroid/content/pm/PackageManager;
    const/16 v40, 0x0

    .line 278
    .local v40, "setInfo":Lcom/samsung/android/hostmanager/aidl/AppInfo;
    new-instance v21, Landroid/content/Intent;

    const-string v48, "android.intent.action.MAIN"

    move-object/from16 v0, v21

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .local v21, "intentLauncher":Landroid/content/Intent;
    const-string v48, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v21

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const/16 v48, 0x20

    move-object/from16 v0, v38

    move-object/from16 v1, v21

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 286
    .local v6, "LauncherApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v20, Landroid/content/Intent;

    const-string v48, "com.samsung.accessory.action.SERVICE_CONNECTION_REQUESTED"

    move-object/from16 v0, v20

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 288
    .local v20, "intent":Landroid/content/Intent;
    const/16 v48, 0x20

    move-object/from16 v0, v38

    move-object/from16 v1, v20

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 290
    .local v4, "AccessoryApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 291
    .local v5, "AccessoryAppsSize":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    if-ge v0, v5, :cond_f

    .line 292
    new-instance v28, Ljava/lang/StringBuffer;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuffer;-><init>()V

    .line 294
    .local v28, "logData":Ljava/lang/StringBuffer;
    new-instance v40, Lcom/samsung/android/hostmanager/aidl/AppInfo;

    .end local v40    # "setInfo":Lcom/samsung/android/hostmanager/aidl/AppInfo;
    invoke-direct/range {v40 .. v40}, Lcom/samsung/android/hostmanager/aidl/AppInfo;-><init>()V

    .line 295
    .restart local v40    # "setInfo":Lcom/samsung/android/hostmanager/aidl/AppInfo;
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v18

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v48

    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, ""

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v40

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->setName(Ljava/lang/String;)V

    .line 296
    move/from16 v0, v18

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->setPackageName(Ljava/lang/String;)V

    .line 297
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v18

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, ""

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v40

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->setClassName(Ljava/lang/String;)V

    .line 298
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, "_features"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, ".xml"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v40

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->setAppFeatureFileName(Ljava/lang/String;)V

    .line 300
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, " [HostPackageName]=["

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, "]"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v28

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v48

    :cond_0
    :goto_1
    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->hasNext()Z

    move-result v49

    if-eqz v49, :cond_1

    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/pm/ResolveInfo;

    .line 302
    .local v25, "launcherAppItem":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_0

    .line 303
    const-string v49, " [launcherApp]=true"

    move-object/from16 v0, v28

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 316
    .end local v25    # "launcherAppItem":Landroid/content/pm/ResolveInfo;
    :cond_1
    move/from16 v0, v18

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v48, v0

    .line 315
    move-object/from16 v0, p1

    move-object/from16 v1, v48

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/status/StatusUtils;->isPreloadedApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v48

    if-eqz v48, :cond_5

    const-string v22, "true"

    .line 317
    .local v22, "isPreloadedApp":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->setPreloaded(Ljava/lang/String;)V

    .line 318
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, " [isPreloadedApp]="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v28

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    :try_start_0
    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v48

    const/16 v49, 0x1000

    move-object/from16 v0, v38

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 323
    .local v7, "PkgInfo":Landroid/content/pm/PackageInfo;
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, ""

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v40

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->setVersion(Ljava/lang/String;)V

    .line 324
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, " [appVersion]="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getVersion()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v28

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    const-string v48, "false"

    move-object/from16 v0, v40

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->setIsAppWidget(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    .end local v7    # "PkgInfo":Landroid/content/pm/PackageInfo;
    :goto_3
    const/16 v30, 0x0

    .line 346
    .local v30, "mApkResources":Landroid/content/res/Resources;
    :try_start_1
    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v38

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v30

    .line 350
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, " [isInstalledApp]="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, p1

    move-object/from16 v1, v49

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isInstalledApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v28

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    :goto_4
    if-eqz v30, :cond_4

    .line 354
    invoke-virtual/range {v30 .. v30}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    .line 355
    .local v10, "assetManager":Landroid/content/res/AssetManager;
    const/4 v8, 0x0

    .line 357
    .local v8, "ais":Landroid/content/res/AssetManager$AssetInputStream;
    const/16 v46, 0x0

    .line 361
    .local v46, "xmlData":Ljava/io/InputStream;
    :try_start_2
    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getAppFeatureFileName()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v10, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v48

    move-object/from16 v0, v48

    check-cast v0, Landroid/content/res/AssetManager$AssetInputStream;

    move-object v8, v0

    .line 362
    if-eqz v8, :cond_2

    .line 364
    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getAppFeatureFileName()Ljava/lang/String;

    move-result-object v48

    const/16 v49, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v15

    .line 368
    .local v15, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v8}, Landroid/content/res/AssetManager$AssetInputStream;->available()I

    move-result v48

    const v49, 0xf4240

    move/from16 v0, v48

    move/from16 v1, v49

    if-le v0, v1, :cond_6

    .line 369
    sget-object v48, Lcom/samsung/android/hostmanager/status/HostDevice;->TAG:Ljava/lang/String;

    const-string v49, "ST:: ais.available() is too large"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    .end local v15    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :goto_5
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 392
    .local v9, "appFeature":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/16 v27, 0x0

    .line 393
    .local v27, "loadFile":Ljava/io/File;
    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getAppFeatureFileName()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, p1

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v27

    .line 394
    new-instance v47, Ljava/io/BufferedInputStream;

    new-instance v48, Ljava/io/FileInputStream;

    move-object/from16 v0, v48

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct/range {v47 .. v48}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 395
    .end local v46    # "xmlData":Ljava/io/InputStream;
    .local v47, "xmlData":Ljava/io/InputStream;
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2, v9}, Lcom/samsung/android/hostmanager/status/HostDevice;->parseAppFeatureXMLFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/util/HashMap;)V

    .line 396
    move-object/from16 v0, v40

    invoke-virtual {v0, v9}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->setFeatures(Ljava/util/HashMap;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 405
    if-eqz v8, :cond_3

    .line 407
    :try_start_4
    invoke-virtual {v8}, Landroid/content/res/AssetManager$AssetInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 413
    :cond_3
    :goto_6
    if-eqz v47, :cond_4

    .line 415
    :try_start_5
    invoke-virtual/range {v47 .. v47}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 425
    .end local v8    # "ais":Landroid/content/res/AssetManager$AssetInputStream;
    .end local v9    # "appFeature":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v10    # "assetManager":Landroid/content/res/AssetManager;
    .end local v27    # "loadFile":Ljava/io/File;
    .end local v47    # "xmlData":Ljava/io/InputStream;
    :cond_4
    :goto_7
    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    const/16 v30, 0x0

    .line 432
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v29

    .line 433
    .local v29, "logRet":Ljava/lang/String;
    sget-object v48, Lcom/samsung/android/hostmanager/status/HostDevice;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "ST::getHostAppInfo::"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 315
    .end local v22    # "isPreloadedApp":Ljava/lang/String;
    .end local v29    # "logRet":Ljava/lang/String;
    .end local v30    # "mApkResources":Landroid/content/res/Resources;
    :cond_5
    const-string v22, "false"

    goto/16 :goto_2

    .line 339
    .restart local v22    # "isPreloadedApp":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 340
    .local v13, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v13}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_3

    .line 347
    .end local v13    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v30    # "mApkResources":Landroid/content/res/Resources;
    :catch_1
    move-exception v13

    .line 348
    .restart local v13    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_6
    invoke-virtual {v13}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 350
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, " [isInstalledApp]="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, p1

    move-object/from16 v1, v49

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isInstalledApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v28

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .end local v13    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v48

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, " [isInstalledApp]="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p1

    move-object/from16 v1, v50

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isInstalledApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v28

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    throw v48

    .line 371
    .restart local v8    # "ais":Landroid/content/res/AssetManager$AssetInputStream;
    .restart local v10    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v15    # "fos":Ljava/io/FileOutputStream;
    .restart local v46    # "xmlData":Ljava/io/InputStream;
    :cond_6
    :try_start_7
    invoke-virtual {v8}, Landroid/content/res/AssetManager$AssetInputStream;->available()I

    move-result v48

    move/from16 v0, v48

    new-array v12, v0, [B
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 373
    .local v12, "buffer":[B
    if-eqz v8, :cond_7

    .line 374
    :try_start_8
    invoke-virtual {v8, v12}, Landroid/content/res/AssetManager$AssetInputStream;->read([B)I

    move-result v26

    .line 375
    .local v26, "length":I
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, " [AppFeature:"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getAppFeatureFileName()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, "]:exist size="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v28

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    const/16 v48, 0x0

    array-length v0, v12

    move/from16 v49, v0

    move/from16 v0, v48

    move/from16 v1, v49

    invoke-virtual {v15, v12, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 379
    .end local v26    # "length":I
    :cond_7
    if-eqz v15, :cond_8

    .line 380
    :try_start_9
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    .line 382
    :cond_8
    if-eqz v8, :cond_2

    .line 383
    invoke-virtual {v8}, Landroid/content/res/AssetManager$AssetInputStream;->close()V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_5

    .line 398
    .end local v12    # "buffer":[B
    .end local v15    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v13

    .line 399
    .local v13, "e":Ljava/io/FileNotFoundException;
    :goto_8
    :try_start_a
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, " [AppFeature:"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v40 .. v40}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getAppFeatureFileName()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, "]:not exist"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v28

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 405
    if-eqz v8, :cond_9

    .line 407
    :try_start_b
    invoke-virtual {v8}, Landroid/content/res/AssetManager$AssetInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 413
    .end local v13    # "e":Ljava/io/FileNotFoundException;
    :cond_9
    :goto_9
    if-eqz v46, :cond_4

    .line 415
    :try_start_c
    invoke-virtual/range {v46 .. v46}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_7

    .line 416
    :catch_3
    move-exception v13

    .line 417
    .local v13, "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 379
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v12    # "buffer":[B
    .restart local v15    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v48

    if-eqz v15, :cond_a

    .line 380
    :try_start_d
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    .line 382
    :cond_a
    if-eqz v8, :cond_b

    .line 383
    invoke-virtual {v8}, Landroid/content/res/AssetManager$AssetInputStream;->close()V

    :cond_b
    throw v48
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 400
    .end local v12    # "buffer":[B
    .end local v15    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v14

    .line 401
    .local v14, "e1":Ljava/io/IOException;
    :goto_a
    :try_start_e
    const-string v48, "null"

    move-object/from16 v0, v40

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->setAppFeatureFileName(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 405
    if-eqz v8, :cond_c

    .line 407
    :try_start_f
    invoke-virtual {v8}, Landroid/content/res/AssetManager$AssetInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 413
    :cond_c
    :goto_b
    if-eqz v46, :cond_4

    .line 415
    :try_start_10
    invoke-virtual/range {v46 .. v46}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    goto/16 :goto_7

    .line 416
    :catch_5
    move-exception v13

    .line 417
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 408
    .end local v13    # "e":Ljava/io/IOException;
    .end local v14    # "e1":Ljava/io/IOException;
    .end local v46    # "xmlData":Ljava/io/InputStream;
    .restart local v9    # "appFeature":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v27    # "loadFile":Ljava/io/File;
    .restart local v47    # "xmlData":Ljava/io/InputStream;
    :catch_6
    move-exception v13

    .line 409
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 416
    .end local v13    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v13

    .line 417
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 408
    .end local v9    # "appFeature":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v27    # "loadFile":Ljava/io/File;
    .end local v47    # "xmlData":Ljava/io/InputStream;
    .local v13, "e":Ljava/io/FileNotFoundException;
    .restart local v46    # "xmlData":Ljava/io/InputStream;
    :catch_8
    move-exception v13

    .line 409
    .local v13, "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 408
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v14    # "e1":Ljava/io/IOException;
    :catch_9
    move-exception v13

    .line 409
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 405
    .end local v13    # "e":Ljava/io/IOException;
    .end local v14    # "e1":Ljava/io/IOException;
    :catchall_2
    move-exception v48

    :goto_c
    if-eqz v8, :cond_d

    .line 407
    :try_start_11
    invoke-virtual {v8}, Landroid/content/res/AssetManager$AssetInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    .line 413
    :cond_d
    :goto_d
    if-eqz v46, :cond_e

    .line 415
    :try_start_12
    invoke-virtual/range {v46 .. v46}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    .line 418
    :cond_e
    :goto_e
    throw v48

    .line 408
    :catch_a
    move-exception v13

    .line 409
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 416
    .end local v13    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v13

    .line 417
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 436
    .end local v8    # "ais":Landroid/content/res/AssetManager$AssetInputStream;
    .end local v10    # "assetManager":Landroid/content/res/AssetManager;
    .end local v13    # "e":Ljava/io/IOException;
    .end local v22    # "isPreloadedApp":Ljava/lang/String;
    .end local v28    # "logData":Ljava/lang/StringBuffer;
    .end local v30    # "mApkResources":Landroid/content/res/Resources;
    .end local v46    # "xmlData":Ljava/io/InputStream;
    :cond_f
    new-instance v35, Lcom/samsung/android/hostmanager/status/HostDevice$1;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/status/HostDevice$1;-><init>(Lcom/samsung/android/hostmanager/status/HostDevice;)V

    .line 446
    .local v35, "myComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/samsung/android/hostmanager/aidl/AppInfo;>;"
    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 449
    const/16 v44, 0x0

    .line 451
    .local v44, "wearablestatus":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/status/HostDevice;->mStatusManager:Lcom/samsung/android/hostmanager/manager/IStatusManager;

    move-object/from16 v48, v0

    if-eqz v48, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/status/HostDevice;->mStatusManager:Lcom/samsung/android/hostmanager/manager/IStatusManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/samsung/android/hostmanager/manager/IStatusManager;->hasWearableStatus()Z

    move-result v48

    if-eqz v48, :cond_10

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/status/HostDevice;->mDeviceId:Ljava/lang/String;

    move-object/from16 v48, v0

    if-nez v48, :cond_11

    .line 454
    sget-object v48, Lcom/samsung/android/hostmanager/status/HostDevice;->TAG:Ljava/lang/String;

    const-string v49, "ST::getHostAppInfo:: deviceID is null"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_10
    :goto_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 565
    .local v16, "end":J
    sget-object v48, Lcom/samsung/android/hostmanager/status/HostDevice;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "ST::getHostAppInfo:: done, Elapsed time ::"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    sub-long v50, v16, v42

    move-wide/from16 v0, v50

    long-to-double v0, v0

    move-wide/from16 v50, v0

    const-wide v52, 0x408f400000000000L    # 1000.0

    div-double v50, v50, v52

    invoke-virtual/range {v49 .. v51}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    return-object v31

    .line 456
    .end local v16    # "end":J
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/status/HostDevice;->mStatusManager:Lcom/samsung/android/hostmanager/manager/IStatusManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/samsung/android/hostmanager/manager/IStatusManager;->getWearableStatus()Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    move-result-object v44

    .line 457
    sget-object v48, Lcom/samsung/android/hostmanager/status/HostDevice;->TAG:Ljava/lang/String;

    const-string v49, "ST::getHostAppInfo:: Checking RequiredPackage"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    if-nez v44, :cond_12

    .line 459
    sget-object v48, Lcom/samsung/android/hostmanager/status/HostDevice;->TAG:Ljava/lang/String;

    const-string v49, "ST::getHostAppInfo:: wearablestatus is null"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 461
    :cond_12
    invoke-virtual/range {v44 .. v44}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->size()I

    move-result v45

    .line 462
    .local v45, "wearablestatusGetAppInfoListSize":I
    const/16 v18, 0x0

    :goto_10
    move/from16 v0, v18

    move/from16 v1, v45

    if-ge v0, v1, :cond_10

    .line 464
    invoke-virtual/range {v44 .. v44}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/samsung/android/hostmanager/aidl/AppInfo;

    invoke-virtual/range {v48 .. v48}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getFeatures()Ljava/util/HashMap;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v48

    invoke-interface/range {v48 .. v48}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .line 465
    .local v23, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_13
    :goto_11
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v48

    if-eqz v48, :cond_26

    .line 467
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 469
    .local v24, "key":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuffer;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuffer;-><init>()V

    .line 470
    .restart local v28    # "logData":Ljava/lang/StringBuffer;
    const-string v48, "ST::getHostAppInfo::"

    move-object/from16 v0, v28

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 472
    const-string v48, "requiredPackage"

    move-object/from16 v0, v24

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v48

    if-nez v48, :cond_14

    const-string v48, "RequiredPackage"

    move-object/from16 v0, v24

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v48

    if-eqz v48, :cond_13

    .line 473
    :cond_14
    invoke-virtual/range {v44 .. v44}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/samsung/android/hostmanager/aidl/AppInfo;

    invoke-virtual/range {v48 .. v48}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getFeatures()Ljava/util/HashMap;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/util/HashMap;

    move-object/from16 v0, v48

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/String;

    .line 475
    .local v41, "value":Ljava/lang/String;
    new-instance v37, Lcom/samsung/android/hostmanager/aidl/AppInfo;

    invoke-direct/range {v37 .. v37}, Lcom/samsung/android/hostmanager/aidl/AppInfo;-><init>()V

    .line 476
    .local v37, "packageexistInfo":Lcom/samsung/android/hostmanager/aidl/AppInfo;
    move-object/from16 v0, v37

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->setPackageName(Ljava/lang/String;)V

    .line 477
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, " [RequiredPackage]=["

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, "]"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v28

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 481
    const/16 v48, 0x1000

    :try_start_13
    move-object/from16 v0, v38

    move-object/from16 v1, v41

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 482
    .restart local v7    # "PkgInfo":Landroid/content/pm/PackageInfo;
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, ""

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v37

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->setVersion(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_13} :catch_c

    .line 487
    .end local v7    # "PkgInfo":Landroid/content/pm/PackageInfo;
    :goto_12
    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isInstalledApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v19

    .line 488
    .local v19, "installed":Z
    new-instance v32, Ljava/util/HashMap;

    invoke-direct/range {v32 .. v32}, Ljava/util/HashMap;-><init>()V

    .line 496
    .local v32, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v49, "com.samsung.svoice-w"

    invoke-virtual/range {v44 .. v44}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/samsung/android/hostmanager/aidl/AppInfo;

    invoke-virtual/range {v48 .. v48}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_24

    .line 497
    sget-object v48, Lcom/samsung/android/hostmanager/status/HostDevice;->TAG:Ljava/lang/String;

    const-string v49, "ST::S Voice Wearable package [com.samsung.svoice-w] Detected"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getSalesCode()Ljava/lang/String;

    move-result-object v39

    .line 500
    .local v39, "salesCode":Ljava/lang/String;
    sget-object v34, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 503
    .local v34, "model":Ljava/lang/String;
    const/16 v19, 0x0

    .line 505
    sget-object v48, Lcom/samsung/android/hostmanager/status/HostDevice;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "ST::salesCode="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, " model="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const-string v48, "CHM"

    move-object/from16 v0, v48

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_24

    .line 509
    const-string v48, "GT-N7102I"

    move-object/from16 v0, v34

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_15

    const-string v48, "CHU"

    move-object/from16 v0, v39

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_24

    :cond_15
    const-string v48, "GT-N7102I"

    .line 510
    move-object/from16 v0, v34

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_16

    const-string v48, "CHN"

    move-object/from16 v0, v39

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_24

    :cond_16
    const-string v48, "GT-N7102"

    .line 511
    move-object/from16 v0, v34

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_17

    const-string v48, "CHU"

    move-object/from16 v0, v39

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_24

    :cond_17
    const-string v48, "GT-N7102"

    .line 512
    move-object/from16 v0, v34

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_18

    const-string v48, "CHN"

    move-object/from16 v0, v39

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_24

    :cond_18
    const-string v48, "SCH-N719UD1"

    .line 513
    move-object/from16 v0, v34

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_19

    const-string v48, "CTC"

    move-object/from16 v0, v39

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_24

    :cond_19
    const-string v48, "SCH-I939I"

    .line 514
    move-object/from16 v0, v34

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_1a

    const-string v48, "CTC"

    move-object/from16 v0, v39

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_24

    :cond_1a
    const-string v48, "GT-I9300I"

    .line 515
    move-object/from16 v0, v34

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_1b

    const-string v48, "CHU"

    move-object/from16 v0, v39

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_24

    :cond_1b
    const-string v48, "GT-I9300I"

    .line 516
    move-object/from16 v0, v34

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_1c

    const-string v48, "CHN"

    move-object/from16 v0, v39

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_24

    :cond_1c
    const-string v48, "SCH-I939"

    .line 517
    move-object/from16 v0, v34

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_1d

    const-string v48, "CTC"

    move-object/from16 v0, v39

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_24

    :cond_1d
    const-string v48, "SCH-N719U"

    .line 518
    move-object/from16 v0, v34

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_1e

    const-string v48, "CTC"

    move-object/from16 v0, v39

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_24

    :cond_1e
    const-string v48, "SCH-N719"

    .line 519
    move-object/from16 v0, v34

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_1f

    const-string v48, "CTC"

    move-object/from16 v0, v39

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_24

    :cond_1f
    const-string v48, "GT-I9300"

    .line 520
    move-object/from16 v0, v34

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_20

    const-string v48, "CHU"

    move-object/from16 v0, v39

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_24

    :cond_20
    const-string v48, "GT-I9300"

    .line 521
    move-object/from16 v0, v34

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_21

    const-string v48, "CHN"

    move-object/from16 v0, v39

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_24

    :cond_21
    const-string v48, "SCH-I939D"

    .line 522
    move-object/from16 v0, v34

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_22

    const-string v48, "CTC"

    move-object/from16 v0, v39

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_24

    :cond_22
    const-string v48, "GT-N7100"

    .line 523
    move-object/from16 v0, v34

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_23

    const-string v48, "CHN"

    move-object/from16 v0, v39

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_24

    .line 525
    :cond_23
    const-string v48, "com.samsung.android.bixby.bridge"

    move-object/from16 v0, p1

    move-object/from16 v1, v48

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isInstalledApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    .line 526
    .local v11, "bixbyInstalled":Z
    if-nez v11, :cond_25

    .line 527
    const-string v48, "com.vlingo.midas"

    move-object/from16 v0, p1

    move-object/from16 v1, v48

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isInstalledApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v19

    .line 528
    sget-object v48, Lcom/samsung/android/hostmanager/status/HostDevice;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "ST::[com.vlingo.midas] installed="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    if-nez v19, :cond_24

    .line 531
    const-string v48, "com.samsung.voiceserviceplatform"

    move-object/from16 v0, p1

    move-object/from16 v1, v48

    invoke-static {v0, v1}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isInstalledApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v19

    .line 532
    sget-object v48, Lcom/samsung/android/hostmanager/status/HostDevice;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "ST::[com.samsung.voiceserviceplatform] installed="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    .end local v11    # "bixbyInstalled":Z
    .end local v34    # "model":Ljava/lang/String;
    .end local v39    # "salesCode":Ljava/lang/String;
    :cond_24
    :goto_13
    const-string v48, "Installed"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v49

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ""

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v32

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    invoke-virtual/range {v37 .. v37}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getFeatures()Ljava/util/HashMap;

    move-result-object v48

    const-string v49, "Installed"

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, " [installed]="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v28

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 544
    new-instance v33, Ljava/util/HashMap;

    invoke-direct/range {v33 .. v33}, Ljava/util/HashMap;-><init>()V

    .line 545
    .local v33, "map2":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v44 .. v44}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/samsung/android/hostmanager/aidl/AppInfo;

    invoke-virtual/range {v48 .. v48}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v36

    .line 547
    .local v36, "packageName":Ljava/lang/String;
    const-string v48, "RequiringPackage"

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    invoke-virtual/range {v37 .. v37}, Lcom/samsung/android/hostmanager/aidl/AppInfo;->getFeatures()Ljava/util/HashMap;

    move-result-object v48

    const-string v49, "RequiringPackage"

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, " [RequiringPackage]=["

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, "]"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v28

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 552
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v29

    .line 553
    .restart local v29    # "logRet":Ljava/lang/String;
    sget-object v48, Lcom/samsung/android/hostmanager/status/HostDevice;->TAG:Ljava/lang/String;

    move-object/from16 v0, v48

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    move-object/from16 v0, v31

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 483
    .end local v19    # "installed":Z
    .end local v29    # "logRet":Ljava/lang/String;
    .end local v32    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v33    # "map2":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v36    # "packageName":Ljava/lang/String;
    :catch_c
    move-exception v13

    .line 484
    .local v13, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v13}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_12

    .line 535
    .end local v13    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v11    # "bixbyInstalled":Z
    .restart local v19    # "installed":Z
    .restart local v32    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v34    # "model":Ljava/lang/String;
    .restart local v39    # "salesCode":Ljava/lang/String;
    :cond_25
    sget-object v48, Lcom/samsung/android/hostmanager/status/HostDevice;->TAG:Ljava/lang/String;

    const-string v49, "ST::[com.samsung.android.bixby.bridge] Bixby installed. Do not support SVoice"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 462
    .end local v11    # "bixbyInstalled":Z
    .end local v19    # "installed":Z
    .end local v24    # "key":Ljava/lang/String;
    .end local v28    # "logData":Ljava/lang/StringBuffer;
    .end local v32    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v34    # "model":Ljava/lang/String;
    .end local v37    # "packageexistInfo":Lcom/samsung/android/hostmanager/aidl/AppInfo;
    .end local v39    # "salesCode":Ljava/lang/String;
    .end local v41    # "value":Ljava/lang/String;
    :cond_26
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_10

    .line 405
    .end local v23    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v35    # "myComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/samsung/android/hostmanager/aidl/AppInfo;>;"
    .end local v44    # "wearablestatus":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    .end local v45    # "wearablestatusGetAppInfoListSize":I
    .restart local v8    # "ais":Landroid/content/res/AssetManager$AssetInputStream;
    .restart local v9    # "appFeature":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v10    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v22    # "isPreloadedApp":Ljava/lang/String;
    .restart local v27    # "loadFile":Ljava/io/File;
    .restart local v28    # "logData":Ljava/lang/StringBuffer;
    .restart local v30    # "mApkResources":Landroid/content/res/Resources;
    .restart local v47    # "xmlData":Ljava/io/InputStream;
    :catchall_3
    move-exception v48

    move-object/from16 v46, v47

    .end local v47    # "xmlData":Ljava/io/InputStream;
    .restart local v46    # "xmlData":Ljava/io/InputStream;
    goto/16 :goto_c

    .line 400
    .end local v46    # "xmlData":Ljava/io/InputStream;
    .restart local v47    # "xmlData":Ljava/io/InputStream;
    :catch_d
    move-exception v14

    move-object/from16 v46, v47

    .end local v47    # "xmlData":Ljava/io/InputStream;
    .restart local v46    # "xmlData":Ljava/io/InputStream;
    goto/16 :goto_a

    .line 398
    .end local v46    # "xmlData":Ljava/io/InputStream;
    .restart local v47    # "xmlData":Ljava/io/InputStream;
    :catch_e
    move-exception v13

    move-object/from16 v46, v47

    .end local v47    # "xmlData":Ljava/io/InputStream;
    .restart local v46    # "xmlData":Ljava/io/InputStream;
    goto/16 :goto_8
.end method


# virtual methods
.method public parseAppFeatureXMLFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/util/HashMap;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlData"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/InputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 573
    .local p3, "appFeature":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    sget-object v14, Lcom/samsung/android/hostmanager/status/HostDevice;->TAG:Ljava/lang/String;

    const-string v15, "ST::parseAppFeatureXMLFile()"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const/4 v12, 0x0

    .line 584
    .local v12, "root":Lorg/w3c/dom/Document;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v14

    invoke-virtual {v14}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 585
    .local v4, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v14}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v12

    .line 587
    if-eqz v12, :cond_2

    .line 590
    const-string v14, "features"

    invoke-interface {v12, v14}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 591
    .local v5, "childNodesLength":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v5, :cond_2

    .line 593
    const-string v14, "features"

    invoke-interface {v12, v14}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v14

    invoke-interface {v14, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    .line 594
    .local v9, "key":Ljava/lang/String;
    const-string v14, "features"

    invoke-interface {v12, v14}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v14

    invoke-interface {v14, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    .line 595
    .local v11, "pkgName":Ljava/lang/String;
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 596
    .local v13, "value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v13, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    const-string v14, "features"

    invoke-interface {v12, v14}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v14

    invoke-interface {v14, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 599
    .local v10, "node":Lorg/w3c/dom/Node;
    invoke-interface {v10}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 600
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 601
    .local v2, "attrs":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    .line 602
    .local v3, "attrsLength":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v3, :cond_0

    .line 603
    invoke-interface {v2, v8}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Attr;

    .line 604
    .local v1, "attribute":Lorg/w3c/dom/Attr;
    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 607
    .end local v1    # "attribute":Lorg/w3c/dom/Attr;
    .end local v2    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    .end local v3    # "attrsLength":I
    .end local v8    # "j":I
    :cond_0
    const-string v14, "#text"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 608
    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 619
    .end local v5    # "childNodesLength":I
    .end local v7    # "i":I
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "node":Lorg/w3c/dom/Node;
    .end local v11    # "pkgName":Ljava/lang/String;
    .end local v13    # "value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    if-eqz p2, :cond_3

    .line 620
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 626
    .end local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :cond_3
    :goto_2
    return-void

    .line 622
    .restart local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_0
    move-exception v6

    .line 623
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 612
    .end local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 613
    .local v6, "e":Ljava/lang/RuntimeException;
    :try_start_2
    sget-object v14, Lcom/samsung/android/hostmanager/status/HostDevice;->TAG:Ljava/lang/String;

    const-string v15, "ST::parseAppFeatureXMLFile::RuntimeException"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    invoke-virtual {v6}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 619
    if-eqz p2, :cond_3

    .line 620
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 622
    :catch_2
    move-exception v6

    .line 623
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 615
    .end local v6    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 616
    .local v6, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v14, Lcom/samsung/android/hostmanager/status/HostDevice;->TAG:Ljava/lang/String;

    const-string v15, "ST::parseAppFeatureXMLFile::failed to remove uninstalled app\'s notification."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 619
    if-eqz p2, :cond_3

    .line 620
    :try_start_5
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 622
    :catch_4
    move-exception v6

    .line 623
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 618
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    .line 619
    if-eqz p2, :cond_4

    .line 620
    :try_start_6
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 624
    :cond_4
    :goto_3
    throw v14

    .line 622
    :catch_5
    move-exception v6

    .line 623
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public requestGetHostStatus()Lcom/samsung/android/hostmanager/status/HostStatus;
    .locals 24

    .prologue
    .line 82
    sget-object v21, Lcom/samsung/android/hostmanager/status/HostDevice;->TAG:Ljava/lang/String;

    const-string v22, "ST::requestGetHostStatus()"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v9, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;

    invoke-direct {v9}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;-><init>()V

    .line 85
    .local v9, "deviceinfo":Lcom/samsung/android/hostmanager/aidl/DeviceInfo;
    new-instance v10, Lcom/samsung/android/hostmanager/status/HostStatus;

    invoke-direct {v10}, Lcom/samsung/android/hostmanager/status/HostStatus;-><init>()V

    .line 87
    .local v10, "hoststatus":Lcom/samsung/android/hostmanager/status/HostStatus;
    const/4 v3, 0x0

    .line 88
    .local v3, "btAdapt":Landroid/bluetooth/BluetoothAdapter;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 89
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 92
    .local v6, "deviceID":Ljava/lang/String;
    invoke-virtual {v9, v6}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->setDeviceID(Ljava/lang/String;)V

    .line 95
    const/4 v7, 0x0

    .line 96
    .local v7, "deviceName":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v7

    .line 98
    if-eqz v7, :cond_3

    .line 99
    invoke-virtual {v9, v7}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->setDeviceName(Ljava/lang/String;)V

    .line 105
    :goto_0
    const-string v21, "android"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->setDevicePlatform(Ljava/lang/String;)V

    .line 108
    sget-object v21, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->setDevicePlatformVersion(Ljava/lang/String;)V

    .line 111
    sget-object v21, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->setModelNumber(Ljava/lang/String;)V

    .line 114
    sget-object v21, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->setSwVersion(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->getSalesCode()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->setSalesCode(Ljava/lang/String;)V

    .line 120
    const-string v21, "Host"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->setDeviceType(Ljava/lang/String;)V

    .line 123
    const/4 v2, 0x0

    .line 124
    .local v2, "appinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/AppInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/status/HostDevice;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsung/android/hostmanager/status/HostDevice;->getHostAppInfo(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 125
    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {v9, v2}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->setAppInfoList(Ljava/util/ArrayList;)V

    .line 130
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/status/HostDevice;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getMCC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 131
    .local v11, "mcc":Ljava/lang/String;
    sget-object v21, Lcom/samsung/android/hostmanager/status/HostDevice;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ST::requestGetHostStatus::MCC="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {v9, v11}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->setMCC(Ljava/lang/String;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/status/HostDevice;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getMNC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 136
    .local v12, "mnc":Ljava/lang/String;
    sget-object v21, Lcom/samsung/android/hostmanager/status/HostDevice;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ST::requestGetHostStatus::MNC="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {v9, v12}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->setMNC(Ljava/lang/String;)V

    .line 140
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 142
    .local v8, "devicefeature":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/status/HostDevice;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "kr.co.rightbrain.RetailModeB2Provider"

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isInstalledApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_1

    sget-object v21, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v22, "SM-G900X"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 144
    :cond_1
    sget-object v21, Lcom/samsung/android/hostmanager/status/HostDevice;->TAG:Ljava/lang/String;

    const-string v22, "ST::requestGetHostStatus:: LDU Device found"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v21, "telephony"

    const-string v22, "true"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v21, "messaging"

    const-string v22, "true"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :goto_1
    const-string v21, "tablet"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/status/HostDevice;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isTablet(Landroid/content/Context;)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v21, "vendor"

    sget-object v22, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v21, "smartrelay"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/status/HostDevice;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/samsung/android/hostmanager/status/StatusUtils;->supportSmartRelay(Landroid/content/Context;)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v21, "safetyassistance"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/status/HostDevice;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/samsung/android/hostmanager/status/StatusUtils;->supportSafetyAssistance(Landroid/content/Context;)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-static {}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isSamsungDevice()Z

    move-result v21

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/status/HostDevice;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isAdminUser(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/status/HostDevice;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->isSmartLockSupport(Landroid/content/Context;)Z

    move-result v21

    if-nez v21, :cond_5

    .line 158
    const-string v21, "autolock"

    const-string v22, "true"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v21, Lcom/samsung/android/hostmanager/status/HostDevice;->TAG:Ljava/lang/String;

    const-string v22, "DEVICE_FEATURE_HOST_AUTOLOCK :: TRUE"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_2
    const-string v21, "telephony"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    const-string v22, "true"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/status/HostDevice;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/hostmanager/status/StatusUtils;->getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 168
    .local v14, "phoneNumber":Ljava/lang/String;
    if-eqz v14, :cond_6

    .line 169
    const-string v21, "phonenumber"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v21, Lcom/samsung/android/hostmanager/status/HostDevice;->TAG:Ljava/lang/String;

    const-string v22, "ST::requestGetHostStatus:: success to get phonenumber of host"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v14}, Lcom/samsung/android/hostmanager/utils/CommonUtils;->printPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .end local v14    # "phoneNumber":Ljava/lang/String;
    :cond_2
    :goto_3
    const-string v21, "support.ime.wordstransfer"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/status/HostDevice;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/samsung/android/hostmanager/status/StatusUtils;->supportSwiftKey(Landroid/content/Context;)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->getInstance()Lcom/samsung/android/hostmanager/callforward/CallForwardParser;

    move-result-object v21

    .line 182
    invoke-static {}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->getInstance()Lcom/samsung/android/hostmanager/callforward/CallForwardParser;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->getInputStreamCF()Ljava/io/InputStream;

    move-result-object v22

    .line 181
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v11, v12}, Lcom/samsung/android/hostmanager/callforward/CallForwardParser;->parseCallForwardSetupInfo(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;

    move-result-object v4

    .line 183
    .local v4, "callForwardSetup":Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    if-eqz v4, :cond_7

    .line 184
    const/16 v18, 0x0

    .line 185
    .local v18, "supportCallForward":Z
    const/16 v19, 0x0

    .line 186
    .local v19, "supportMultiSIM":Z
    const/16 v20, 0x0

    .line 187
    .local v20, "supportPrimary":Z
    const-string v5, ""

    .line 188
    .local v5, "carrier":Ljava/lang/String;
    const-string v15, ""

    .line 189
    .local v15, "primaryNumber":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->getCfSupport()Z

    move-result v18

    .line 190
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->getMultiSim()Z

    move-result v19

    .line 191
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->getSupportPrimary()Z

    move-result v20

    .line 192
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->getCarrier()Ljava/lang/String;

    move-result-object v5

    .line 193
    invoke-virtual {v4}, Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;->getPrimaryNum()Ljava/lang/String;

    move-result-object v15

    .line 194
    sget-object v21, Lcom/samsung/android/hostmanager/status/HostDevice;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ST::requestGetHostStatus::supportCallForward="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    sget-object v21, Lcom/samsung/android/hostmanager/status/HostDevice;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ST::requestGetHostStatus::supportMultiSIM="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    sget-object v21, Lcom/samsung/android/hostmanager/status/HostDevice;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ST::requestGetHostStatus::supportPrimary="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    sget-object v21, Lcom/samsung/android/hostmanager/status/HostDevice;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ST::requestGetHostStatus::carrier="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget-object v21, Lcom/samsung/android/hostmanager/status/HostDevice;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ST::requestGetHostStatus::primaryNumber="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-string v21, "support.callforward"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v21, "support.callforward.multisim"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v21, "support.callforward.primary"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v21, "support.callforward.carrier"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v21, "support.callforward.primarynum"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .end local v5    # "carrier":Ljava/lang/String;
    .end local v15    # "primaryNumber":Ljava/lang/String;
    .end local v18    # "supportCallForward":Z
    .end local v19    # "supportMultiSIM":Z
    .end local v20    # "supportPrimary":Z
    :goto_4
    const-string v21, "support.callforward.auto"

    const-string v22, "true"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v21, "support.callforward.reverse"

    const-string v22, "true"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-virtual {v9, v8}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->setDeviceFeature(Ljava/util/HashMap;)V

    .line 222
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 226
    .local v16, "security":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->setSecurity(Ljava/util/HashMap;)V

    .line 229
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 234
    .local v13, "notification":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v9, v13}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->setNotification(Ljava/util/HashMap;)V

    .line 237
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 249
    .local v17, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->setSettings(Ljava/util/HashMap;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/status/HostDevice;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "HostStatus.xml"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v9, v1}, Lcom/samsung/android/hostmanager/status/StatusParser;->SaveDeviceStatusToXML(Landroid/content/Context;Lcom/samsung/android/hostmanager/aidl/DeviceInfo;Ljava/lang/String;)V

    .line 255
    invoke-virtual {v10, v9}, Lcom/samsung/android/hostmanager/status/HostStatus;->setHostStatus(Lcom/samsung/android/hostmanager/aidl/DeviceInfo;)V

    .line 257
    return-object v10

    .line 101
    .end local v2    # "appinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/AppInfo;>;"
    .end local v4    # "callForwardSetup":Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    .end local v8    # "devicefeature":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "mcc":Ljava/lang/String;
    .end local v12    # "mnc":Ljava/lang/String;
    .end local v13    # "notification":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "security":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const-string v21, "none"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/samsung/android/hostmanager/aidl/DeviceInfo;->setDeviceName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 148
    .restart local v2    # "appinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hostmanager/aidl/AppInfo;>;"
    .restart local v8    # "devicefeature":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "mcc":Ljava/lang/String;
    .restart local v12    # "mnc":Ljava/lang/String;
    :cond_4
    const-string v21, "telephony"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/status/HostDevice;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/samsung/android/hostmanager/status/StatusUtils;->supportTelephony(Landroid/content/Context;)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v21, "messaging"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hostmanager/status/HostDevice;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/samsung/android/hostmanager/status/StatusUtils;->supportMessaging(Landroid/content/Context;)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 161
    :cond_5
    const-string v21, "autolock"

    const-string v22, "false"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v21, Lcom/samsung/android/hostmanager/status/HostDevice;->TAG:Ljava/lang/String;

    const-string v22, "DEVICE_FEATURE_HOST_AUTOLOCK :: FALSE"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 172
    .restart local v14    # "phoneNumber":Ljava/lang/String;
    :cond_6
    sget-object v21, Lcom/samsung/android/hostmanager/status/HostDevice;->TAG:Ljava/lang/String;

    const-string v22, "ST::requestGetHostStatus:: phoneNumber is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 205
    .end local v14    # "phoneNumber":Ljava/lang/String;
    .restart local v4    # "callForwardSetup":Lcom/samsung/android/hostmanager/aidl/CallForwardSetup;
    :cond_7
    sget-object v21, Lcom/samsung/android/hostmanager/status/HostDevice;->TAG:Ljava/lang/String;

    const-string v22, "ST::requestGetHostStatus::callForwardSetup is null. default set"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string v21, "support.callforward"

    const-string v22, "true"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v21, "support.callforward.multisim"

    const-string v22, "false"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v21, "support.callforward.primary"

    const-string v22, "false"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v21, "support.callforward.carrier"

    const-string v22, "open"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v21, "support.callforward.primarynum"

    const-string v22, "none"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4
.end method
